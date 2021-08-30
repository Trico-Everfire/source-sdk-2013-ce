// Created by Crowbar 0.44.0.0

$modelname "Weapons/W_missile_launch.mdl"

$bodygroup "studio"
{
	studio "w_missile_launch_reference.smd"
}


$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\weapons\w_missile\"

$attachment "0" "cylinder" 0 -8 0 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -8.177 -1.322 -1.322 8.106 1.322 1.322


$sequence "shell" {
	"w_missile_launch_anims\shell.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_missile_launch_physics.smd"
{
	$mass 0.347317
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "
	$concave

}
