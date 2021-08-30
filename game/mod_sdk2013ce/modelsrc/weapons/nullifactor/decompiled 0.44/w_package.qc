// Created by Crowbar 0.44.0.0

$modelname "weapons/w_package.mdl"

$bodygroup "studio"
{
	studio "w_package_reference.smd"
}

$lod 27
{
	replacemodel "w_package_reference.smd" "w_package_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_package\"

$cbox 0 0 0 0 0 0

$bbox -5.334 -13.485 -6.96 12.906 1.08 3.023


$sequence "idle" {
	"w_package_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "w_package_physics.smd"
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
