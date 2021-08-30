// Created by Crowbar 0.44.0.0

$modelname "weapons/V_bugbait.mdl"

$bodygroup "studio"
{
	studio "v_bugbait_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_bugbait\"

$attachment "0" "ValveBiped.Bip01_R_Hand" 4 -4 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -1.52 -16.361 -29.433 30.417 0.073 -2.667


$sequence "drawback" {
	"v_bugbait_anims\drawback.smd"
	activity "ACT_VM_HAULBACK" 1
	{ event 3900 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "throw" {
	"v_bugbait_anims\throw.smd"
	activity "ACT_VM_THROW" 1
	{ event 3005 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle01" {
	"v_bugbait_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "draw" {
	"v_bugbait_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "holster" {
	"v_bugbait_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "squeeze" {
	"v_bugbait_anims\squeeze.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
