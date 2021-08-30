// Created by Crowbar 0.44.0.0

$modelname "weapons/v_357.mdl"

$bodygroup "studio"
{
	studio "v_357_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\Weapons\V_hand\"
$cdmaterials "models\Weapons\V_357\"

$attachment "muzzle" "muzzle" 0 0 0 rotate -90 90 0

$cbox 0 0 0 0 0 0

$bbox -5.078 -12.171 -17.396 29.984 5.724 -2.599


$sequence "idle01" {
	"v_357_anims\idle01.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
	loop
}

$sequence "fire" {
	"v_357_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_MUZZLEFLASH 0 "357 muzzle" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "draw" {
	"v_357_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 30
}

$sequence "reload" {
	"v_357_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event AE_CL_PLAYSOUND 28 "Weapon_357.OpenLoader" }
	{ event AE_CL_PLAYSOUND 39 "Weapon_357.RemoveLoader" }
	{ event 3015 55 "" }
	{ event AE_CL_PLAYSOUND 67 "Weapon_357.ReplaceLoader" }
	{ event AE_CL_PLAYSOUND 92 "Weapon_357.Spin" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
}

$sequence "holster" {
	"v_357_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
}

$sequence "idletolow" {
	"v_357_anims\idletolow.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	fadein 0.2
	fadeout 0.2
	transition "Ready" "Low"
	fps 30
}

$sequence "lowtoidle" {
	"v_357_anims\lowtoidle.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	transition "Low" "Ready"
	fps 30
}

$sequence "lowidle" {
	"v_357_anims\lowidle.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "Low"
	fps 30
	loop
}
