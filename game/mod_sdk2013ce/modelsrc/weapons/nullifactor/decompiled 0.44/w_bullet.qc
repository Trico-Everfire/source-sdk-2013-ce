// Created by Crowbar 0.44.0.0

$modelname "weapons/w_bullet.mdl"

$bodygroup "studio"
{
	studio "w_bullet_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\w_bullet\"

$cbox 0 0 0 0 0 0

$bbox -0.861 -0.481 -0.408 0.985 0.47 0.497


$sequence "idle" {
	"w_bullet_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
