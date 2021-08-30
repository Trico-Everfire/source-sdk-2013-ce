// Created by Crowbar 0.44.0.0

$modelname "weapons/Shotgun_shell.mdl"

$bodygroup "studio"
{
	studio "shotgun_shell_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\shell\"

$cbox 0 0 0 0 0 0

$bbox -2.836 -0.826 -0.059 2.745 0.826 1.618


$sequence "shotshell" {
	"shotgun_shell_anims\shotshell.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
