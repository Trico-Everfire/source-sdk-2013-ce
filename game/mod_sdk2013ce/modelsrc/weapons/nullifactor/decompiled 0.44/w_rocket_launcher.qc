// Created by Crowbar 0.44.0.0

$modelname "weapons/w_rocket_launcher.mdl"

$bodygroup "studio"
{
	studio "w_rocket_launcher_reference.smd"
}

$lod 35
{
	replacemodel "w_rocket_launcher_reference.smd" "w_rocket_launcher_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\Weapons\w_rocket_launcher\"

$attachment "muzzle" "ValveBiped.Anim_Attachment_RH" -0.01 9.4 15.55 rotate -77.04 88.31 179.77
$attachment "missile" "ValveBiped.Anim_Attachment_RH" 0.04 11.2 23.35 rotate -77.04 88.31 179.77
$attachment "exhaust" "ValveBiped.Anim_Attachment_RH" -0.31 -0.46 -27.32 rotate 77.04 -91.69 -179.77

$cbox 0 0 0 0 0 0

$bbox -4.632 -5.917 -7.459 42.138 2.866 18.224


$sequence "idle" {
	"w_rocket_launcher_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack1" {
	"w_rocket_launcher_anims\attack1.smd"
	activity "ACT_RANGE_ATTACK_RPG" 1
	{ event AE_NPC_MUZZLEFLASH 0 "RPG MUZZLE" }
	{ event 3002 0 "" }
	{ event AE_NPC_MUZZLEFLASH 0 "RPG EXHAUST" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rocket_launcher_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
