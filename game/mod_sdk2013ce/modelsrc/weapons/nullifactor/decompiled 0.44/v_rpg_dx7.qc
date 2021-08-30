// Created by Crowbar 0.44.0.0

$modelname "Weapons/v_RPG_dx7.mdl"

$bodygroup "studio"
{
	studio "v_rpg_dx7_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "Models\Weapons\v_Rocket_launcher\"
$cdmaterials "models\Weapons\V_hand\"

$attachment "0" "muzzle" 0 0 0 rotate 0 0 0
$attachment "laser" "muzzle" -9 -5 0.5 rotate 0 0 0
$attachment "laser_end" "muzzle" 100 -5 0.5 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 20.341 -26.381 -18.703 54.034 -8.438 2.252


$sequence "idle1" {
	"v_rpg_dx7_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
	loop
}

$sequence "draw" {
	"v_rpg_dx7_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	snap
	fps 30
}

$sequence "fire" {
	"v_rpg_dx7_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "" }
	fadein 0.2
	fadeout 0.2
	node "Fire"
	snap
	fps 30
}

$sequence "reload" {
	"v_rpg_dx7_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	node "Idle"
	fps 30
}

$sequence "up_to_down" {
	"v_rpg_dx7_anims\up_to_down.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	transition "Idle" "Low"
	fps 30
}

$sequence "down_to_up" {
	"v_rpg_dx7_anims\down_to_up.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	fadein 0.2
	fadeout 0.2
	transition "Low" "Idle"
	fps 30
}

$sequence "down_idle" {
	"v_rpg_dx7_anims\down_idle.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "Low"
	fps 30
	loop
}
