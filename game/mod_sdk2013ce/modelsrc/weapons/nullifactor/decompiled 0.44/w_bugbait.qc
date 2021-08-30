// Created by Crowbar 0.44.0.0

$modelname "weapons/w_bugbait.mdl"

$bodygroup "studio"
{
	studio "w_bugbait_reference.smd"
}


$surfaceprop "flesh"

$contents "solid"

$cdmaterials "models\weapons\w_bugbait\"

$cbox 0 0 0 0 0 0

$bbox -4.06 -4.06 -3.678 4.06 4.06 4.6


$sequence "idle" {
	"w_bugbait_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_bugbait_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
