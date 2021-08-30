// Created by Crowbar 0.44.0.0

$modelname "Weapons/v_crossbow.mdl"

$bodygroup "studio"
{
	studio "v_crossbow_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\v_crossbow\"
$cdmaterials "models\Weapons\V_hand\"

$texturegroup "skinfamilies"
{
	{ "crossbow dirtmap"      }
	{ "crossbow dirtmap_glow" }
}

$attachment "spark" "Crossbow_model.Spark2" 0.5 0 0 rotate -90 0 0
$attachment "bolt_start" "Crossbow_model.bolt" 0 0 16 rotate -90 0 0
$attachment "bolt_end" "Crossbow_model.bolt" 0 0 -4 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 1.4 -22.504 -24.607 44.68 11.148 -2.065


$sequence "idle" {
	"v_crossbow_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
	loop
}

$sequence "idle_empty" {
	"v_crossbow_anims\idle_empty.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
	loop
}

$sequence "draw" {
	"v_crossbow_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 3013 14 "" }
	{ event 3016 28 "" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 30
}

$sequence "fire" {
	"v_crossbow_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 30
}

$sequence "reload" {
	"v_crossbow_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 3005 28 "" }
	{ event 3013 35 "" }
	{ event 3016 55 "" }
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
}

$sequence "holster" {
	"v_crossbow_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	node "Ready"
	fps 30
}

$sequence "idletolow" {
	"v_crossbow_anims\idletolow.smd"
	activity "ACT_VM_LOWERED_TO_IDLE" 1
	fadein 0.2
	fadeout 0.2
	transition "Ready" "Low"
	fps 30
}

$sequence "lowtoidle" {
	"v_crossbow_anims\lowtoidle.smd"
	activity "ACT_VM_IDLE_TO_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	transition "Low" "Ready"
	fps 30
}

$sequence "lowidle" {
	"v_crossbow_anims\lowidle.smd"
	activity "ACT_VM_IDLE_LOWERED" 1
	fadein 0.2
	fadeout 0.2
	node "Low"
	fps 30
	loop
}
