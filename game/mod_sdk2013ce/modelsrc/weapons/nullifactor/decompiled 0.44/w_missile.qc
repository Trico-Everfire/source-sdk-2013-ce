// Created by Crowbar 0.44.0.0

$modelname "Weapons/W_missile.mdl"

$bodygroup "studio"
{
	studio "w_missile_reference.smd"
}

$lod 9
{
	replacemodel "w_missile_reference.smd" "w_missile_body0_model0_lod1.smd"
}

$surfaceprop "metal"

$contents "solid"

$cdmaterials "models\weapons\w_missile\"

$attachment "0" "cylinder" 0 -16 0 rotate 0 90 0

$cbox 0 0 0 0 0 0

$bbox -9.489 -3.519 -3.411 9.478 3.74 3.852

// $hboxset "default"
// $hbox 0 "cylinder" -1.19 -9.48 -1.19 1.19 9.48 1.19 ""


$sequence "shell" {
	"w_missile_anims\shell.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
