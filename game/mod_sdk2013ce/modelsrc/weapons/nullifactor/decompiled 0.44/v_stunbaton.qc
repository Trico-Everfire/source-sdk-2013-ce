// Created by Crowbar 0.44.0.0

$modelname "Weapons/V_Stunbaton.mdl"

$bodygroup "studio"
{
	studio "v_stunbaton_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_Stunbaton\"

$attachment "0" "tip" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -7.113 -19.458 -25.92 32.734 0.134 0.025


$sequence "idle01" {
	"v_stunbaton_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "draw" {
	"v_stunbaton_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attackch" {
	"v_stunbaton_anims\attackch.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "attackcm" {
	"v_stunbaton_anims\attackcm.smd"
	activity "ACT_VM_MISSCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
