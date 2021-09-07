//========= Copyright Valve Corporation, All rights reserved. ============//
//
// Purpose: 
//
//=============================================================================//

#include "cbase.h"
#include "npcevent.h"
#include "in_buttons.h"

#ifdef CLIENT_DLL
	#include "c_basecombatcharacter.h"
	#include "c_hl2mp_player.h"
#else
	#include "basecombatcharacter.h"
	#include "hl2mp_player.h"
#endif

#include "weapon_hl2mpbasehlmpcombatweapon.h"

#ifdef CLIENT_DLL
#define CWeaponNullifactor C_WeaponNullifactor
#endif

//-----------------------------------------------------------------------------
// CWeaponNullifactor
//-----------------------------------------------------------------------------

class CWeaponNullifactor : public CBaseHL2MPCombatWeapon
{
	DECLARE_CLASS( CWeaponNullifactor, CBaseHL2MPCombatWeapon );
public:

	CWeaponNullifactor( void );

	void	PrimaryAttack( void );
	void	ItemPreFrame( void ) override;
#ifndef CLIENT_DLL
	void	Delete(void) override;
	void	Kill(void) override;
#endif // !CLIENT_DLL
	DECLARE_NETWORKCLASS(); 
	DECLARE_PREDICTABLE();

#ifndef CLIENT_DLL
	DECLARE_ACTTABLE();
#endif

private:
	
	CWeaponNullifactor( const CWeaponNullifactor & );

	CBaseEntity* pThingToNullifact;
	int m_timeToNullifaction;
};

IMPLEMENT_NETWORKCLASS_ALIASED( WeaponNullifactor, DT_WeaponNullifactor )

BEGIN_NETWORK_TABLE( CWeaponNullifactor, DT_WeaponNullifactor )
END_NETWORK_TABLE()

BEGIN_PREDICTION_DATA( CWeaponNullifactor )
END_PREDICTION_DATA()

LINK_ENTITY_TO_CLASS( weapon_nullifactor, CWeaponNullifactor );
PRECACHE_WEAPON_REGISTER( weapon_nullifactor );


#ifndef CLIENT_DLL
acttable_t CWeaponNullifactor::m_acttable[] = 
{
	{ ACT_HL2MP_IDLE,					ACT_HL2MP_IDLE_PISTOL,					false },
	{ ACT_HL2MP_RUN,					ACT_HL2MP_RUN_PISTOL,					false },
	{ ACT_HL2MP_IDLE_CROUCH,			ACT_HL2MP_IDLE_CROUCH_PISTOL,			false },
	{ ACT_HL2MP_WALK_CROUCH,			ACT_HL2MP_WALK_CROUCH_PISTOL,			false },
	{ ACT_HL2MP_GESTURE_RANGE_ATTACK,	ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL,	false },
	{ ACT_HL2MP_GESTURE_RELOAD,			ACT_HL2MP_GESTURE_RELOAD_PISTOL,		false },
	{ ACT_HL2MP_JUMP,					ACT_HL2MP_JUMP_PISTOL,					false },
	{ ACT_RANGE_ATTACK1,				ACT_RANGE_ATTACK_PISTOL,				false },
};



IMPLEMENT_ACTTABLE( CWeaponNullifactor );

#endif

//-----------------------------------------------------------------------------
// Purpose: Constructor
//-----------------------------------------------------------------------------
CWeaponNullifactor::CWeaponNullifactor( void )
{
	m_bReloadsSingly	= false;
	m_bFiresUnderwater	= true;
	pThingToNullifact	= NULL;
	m_timeToNullifaction= -1;
}

//-----------------------------------------------------------------------------
// Purpose:
//-----------------------------------------------------------------------------
void CWeaponNullifactor::PrimaryAttack( void )
{
	CBaseCombatCharacter *pCharacter = ToBasePlayer( GetOwner() );

	if ( !pCharacter )
	{
		return;
	}

	if ( m_iClip1 <= 0 )
	{
		if ( !m_bFireOnEmpty )
		{
			Reload();
		}
		else
		{
			WeaponSound( EMPTY );
			m_flNextPrimaryAttack = 0.15;
		}

		return;
	}

	// Only the player fires this way so we can cast
	CBasePlayer* pPlayer = ToBasePlayer(GetOwner());

#ifndef CLIENT_DLL
	// Create Vector for direction
	Vector vecDir;

	// Take the Player's EyeAngles and turn it into a direction
	AngleVectors(pPlayer->EyeAngles(), &vecDir);

	// Get the Start/End
	Vector vecAbsStart = pPlayer->EyePosition();
	Vector vecAbsEnd = vecAbsStart + (vecDir * MAX_TRACE_LENGTH);

	trace_t tr; // Create our trace_t class to hold the end result
	// Do the TraceLine, and write our results to our trace_t class, tr.
	UTIL_TraceLine(vecAbsStart, vecAbsEnd, MASK_ALL, pPlayer, COLLISION_GROUP_NONE, &tr);

	// Do something with the end results
	if (tr.m_pEnt)
	{
		if (tr.m_pEnt->IsNPC() || tr.m_pEnt->IsPlayer())
		{
			((CBaseAnimating*)tr.m_pEnt)->AddGlowEffect();
			pPlayer->AddGlowEffect();
			pThingToNullifact = tr.m_pEnt;
			m_timeToNullifaction = gpGlobals->curtime + 5.0;
		}
		else if (dynamic_cast<CBaseAnimating*>(tr.m_pEnt))
		{
			((CBaseAnimating*)tr.m_pEnt)->AddGlowEffect();
			pPlayer->AddGlowEffect();
			pThingToNullifact = tr.m_pEnt;
			m_timeToNullifaction = gpGlobals->curtime + 5.0;
		}
	}
#else
	EmitSound("Weapon_Nullifactor.Prefire");
#endif

	WeaponSound( SINGLE );
	pPlayer->DoMuzzleFlash();

	SendWeaponAnim( ACT_VM_PRIMARYATTACK );
	pPlayer->SetAnimation( PLAYER_ATTACK1 );

	m_flNextPrimaryAttack = gpGlobals->curtime + 5.0;
	m_flNextSecondaryAttack = gpGlobals->curtime + 5.0;

	m_iClip1--;

	//Disorient the player
	QAngle angles = pPlayer->GetLocalAngles();

	angles.x += random->RandomInt( -1, 1 );
	angles.y += random->RandomInt( -1, 1 );
	angles.z = 0;

#ifndef CLIENT_DLL
	pPlayer->SnapEyeAngles( angles );
#endif

	pPlayer->ViewPunch( QAngle( -8, random->RandomFloat( -2, 2 ), 0 ) );

	if ( !m_iClip1 && pPlayer->GetAmmoCount( m_iPrimaryAmmoType ) <= 0 )
	{
		// HEV suit - indicate out of ammo condition
		pPlayer->SetSuitUpdate( "!HEV_AMO0", FALSE, 0 ); 
	}
}

void CWeaponNullifactor::ItemPreFrame(void)
{
#ifndef CLIENT_DLL
	if (m_timeToNullifaction < 0) return;
	if (gpGlobals->curtime > m_timeToNullifaction)
	{
		ToBasePlayer(GetOwner())->RemoveGlowEffect();
		if (auto* nullifacted = dynamic_cast<CBasePlayer*>(pThingToNullifact))
		{
			ToBasePlayer(GetOwner())->IncrementFragCount(1);
		}
		pThingToNullifact->InputKill(inputdata_t());
		m_timeToNullifaction = -1;
		pThingToNullifact = NULL;
	}
#endif
}

#ifndef CLIENT_DLL
void CWeaponNullifactor::Delete(void)
{
	m_timeToNullifaction = -1;
	if (auto* nullifacted = dynamic_cast<CBaseCombatCharacter*>(pThingToNullifact))
	{
		ToBasePlayer(GetOwner())->RemoveGlowEffect();
		nullifacted->RemoveGlowEffect();
	}
	pThingToNullifact = NULL;
}

void CWeaponNullifactor::Kill(void)
{
	Delete();
}
#endif // !CLIENT_DLL
