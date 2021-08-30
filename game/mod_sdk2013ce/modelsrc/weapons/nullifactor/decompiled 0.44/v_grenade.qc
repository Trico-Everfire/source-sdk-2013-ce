// Created by Crowbar 0.44.0.0

$modelname "weapons/v_Grenade.mdl"

$bodygroup "studio"
{
	studio "v_grenade_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_Grenade\"

$cbox 0 0 0 0 0 0

$bbox 0.124 -12.047 -30.887 30.865 9.959 -3.127


$sequence "idle01" {
	"v_grenade_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "drawbackhigh" {
	"v_grenade_anims\drawbackhigh.smd"
	activity "ACT_VM_PULLBACK_HIGH" 1
	{ event 3900 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "drawbacklow" {
	"v_grenade_anims\drawbacklow.smd"
	activity "ACT_VM_PULLBACK_LOW" 1
	{ event 3900 4 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "throw" {
	"v_grenade_anims\throw.smd"
	activity "ACT_VM_THROW" 1
	{ event 3005 1 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "roll" {
	"v_grenade_anims\roll.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event 3013 2 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "lob" {
	"v_grenade_anims\lob.smd"
	activity "ACT_VM_HAULBACK" 1
	{ event 3016 2 "" }
	fadein 0.2
	fadeout 0.2
	fps 20
}

$sequence "draw" {
	"v_grenade_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
