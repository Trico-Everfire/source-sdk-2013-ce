// Created by Crowbar 0.44.0.0

$modelname "weapons/W_Alyx_Gun.mdl"

$bodygroup "studio"
{
	studio "w_alyx_gun_reference.smd"
}

$lod 15
{
	replacemodel "w_alyx_gun_reference.smd" "w_alyx_gun_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_Alyx_Gun_XSI\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 10.79 -1.67 -2.87 rotate 0 -9.62 -84.76
$attachment "1" "ValveBiped.Bip01_R_Hand" 4.88 -0.67 -2.87 rotate 0 -9.62 -84.76

$cbox 0 0 0 0 0 0

$bbox -5.679 -2.347 -8.145 5.777 2.901 0.625


$sequence "Pistol_idle" {
	"w_alyx_gun_anims\Pistol_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_alyx_gun_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "weapon_pistol2SMG" {
	"w_alyx_gun_anims\weapon_pistol2SMG.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "weapon_SMG2Rifle" {
	"w_alyx_gun_anims\weapon_SMG2Rifle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "weapon_Pistol" {
	"w_alyx_gun_anims\weapon_Pistol.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "weapon_SMG" {
	"w_alyx_gun_anims\weapon_SMG.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "weapon_Rifle" {
	"w_alyx_gun_anims\weapon_Rifle.smd"
	fadein 0.2
	fadeout 0.2
	hidden
	fps 30
}

$sequence "weapon_pistol2Rifle" {
	"w_alyx_gun_anims\weapon_Pistol.smd"
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_Rifle" 0 1.071429 1.071429 1.071429 spline
	fps 30
}

$sequence "weapon_SMG2Pistol" {
	"w_alyx_gun_anims\weapon_SMG.smd"
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_Pistol" 0 1.090909 1.090909 1.090909 spline
	fps 30
}

$sequence "weapon_Rifle2Pistol" {
	"w_alyx_gun_anims\weapon_Rifle.smd"
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_Pistol" 0 1.363636 1.363636 1.363636 spline
	fps 30
}

$sequence "weapon_Rifle2SMG" {
	"w_alyx_gun_anims\weapon_Rifle.smd"
	fadein 0.2
	fadeout 0.2
	blendlayer "weapon_SMG" 0 1.090909 1.090909 1.090909 spline
	fps 30
}

$collisionmodel "w_alyx_gun_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
