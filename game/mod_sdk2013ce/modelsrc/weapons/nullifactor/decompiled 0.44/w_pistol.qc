// Created by Crowbar 0.44.0.0

$modelname "weapons/W_pistol.mdl"

$bodygroup "studio"
{
	studio "w_pistol_reference.smd"
}

$lod 16
{
	replacemodel "w_pistol_reference.smd" "w_pistol_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_pistol\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 6.31 -0.68 0.42 rotate 4.49 -1.17 -98.82
$attachment "1" "ValveBiped.Weapon_bone" 1.06 0.18 0.72 rotate 8.79 89.53 -85.45

$cbox 0 0 0 0 0 0

$bbox -6.034 -1.557 -6.14 5.777 2.54 2.149


$sequence "idle" {
	"w_pistol_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_pistol_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_PISTOL" 1
	{ event 3014 1 "" }
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pistol_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
