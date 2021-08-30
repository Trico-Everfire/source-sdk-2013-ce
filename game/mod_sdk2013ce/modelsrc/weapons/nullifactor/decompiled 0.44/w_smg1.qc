// Created by Crowbar 0.44.0.0

$modelname "weapons/w_smg1.mdl"

$bodygroup "studio"
{
	studio "w_smg1_reference.smd"
}

$lod 20
{
	replacemodel "w_smg1_reference.smd" "w_smg1_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$maxeyedeflection 90

$mostlyopaque

$cdmaterials "models\weapons\w_smg1\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 12.12 0.03 -3.18 rotate 9.02 -0.33 -91.94
$attachment "1" "ValveBiped.Weapon_bone" 2.4 0.57 -1.96 rotate 1.92 89.98 -80.98

$cbox 0 0 0 0 0 0

$bbox -11.983 -0.553 -8.471 8.398 2.876 5.932


$sequence "idle" {
	"w_smg1_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_smg1_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "attackoffcenter" {
	"w_smg1_anims\attackoffcenter.smd"
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$collisionmodel "w_smg1_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
