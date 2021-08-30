// Created by Crowbar 0.44.0.0

$modelname "weapons/W_stunbaton.mdl"

$bodygroup "studio"
{
	studio "w_stunbaton_reference.smd"
}

$lod 13
{
	replacemodel "w_stunbaton_reference.smd" "w_stunbaton_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_stunbaton\"

$attachment "0" "ValveBiped.baton_parent" 0 -11.84 0 rotate 0 -90 0
$attachment "1" "ValveBiped.baton_parent" 0 -7.84 0 rotate 0 -90 0

$cbox 0 0 0 0 0 0

$bbox -12.263 -1.646 -3.59 10.666 2.331 2.313


$sequence "idle" {
	"w_stunbaton_anims\idle.smd"
	activity "ACT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_stunbaton_anims\attack1.smd"
	activity "ACT_MELEE_ATTACK1" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_stunbaton_physics.smd"
{
	$mass 3
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
