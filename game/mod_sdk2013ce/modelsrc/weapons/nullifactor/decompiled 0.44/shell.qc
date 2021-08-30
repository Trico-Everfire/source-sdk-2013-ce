// Created by Crowbar 0.44.0.0

$modelname "Weapons/shell.mdl"

$bodygroup "studio"
{
	studio "shell_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "Models\Weapons\pistol_shell\"

$cbox 0 0 0 0 0 0

$bbox -0.935 -0.548 0 0.936 0.532 1.095


$sequence "shell" {
	"shell_anims\shell.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
