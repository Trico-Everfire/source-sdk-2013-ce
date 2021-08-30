// Created by Crowbar 0.44.0.0

$modelname "Weapons/rifleshell.mdl"

$bodygroup "studio"
{
	studio "rifleshell_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "Models\Weapons\rifle_shell\"

$cbox 0 0 0 0 0 0

$bbox -2.265 -0.584 -0.05 2.262 0.584 1.136


$sequence "shell" {
	"rifleshell_anims\shell.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
