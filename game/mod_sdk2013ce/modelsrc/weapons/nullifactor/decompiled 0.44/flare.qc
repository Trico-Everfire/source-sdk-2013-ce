// Created by Crowbar 0.44.0.0

$modelname "Weapons/flare.mdl"

$staticprop

$bodygroup "studio"
{
	studio "flare_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\flare\"

$cbox 0 0 0 0 0 0

$bbox -1.294 -0.608 -0.574 1.293 0.542 0.576


$sequence "idle" {
	"flare_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
