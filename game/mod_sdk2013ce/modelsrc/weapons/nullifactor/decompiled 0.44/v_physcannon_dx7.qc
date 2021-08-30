// Created by Crowbar 0.44.0.0

$modelname "weapons/v_physcannon_dx7.mdl"

$bodygroup "studio"
{
	studio "v_physcannon_dx7_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\v_physcannon\"
$cdmaterials "models\weapons\v_hand\"

$attachment "muzzle" "Muzzle" 0 0.25 -2 rotate 0 0 0
$attachment "fork1b" "Base_A" 0 0 0 rotate 0 0 0
$attachment "fork1m" "Prong_A" 0 0 0 rotate 0 0 0
$attachment "fork1t" "Tip_A" 0 0 0 rotate 0 0 0
$attachment "fork2b" "Base_B" 0 0 0 rotate 0 0 0
$attachment "fork2m" "Prong_B" 0 0 0 rotate 0 0 0
$attachment "fork2t" "Tip_B" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 24.48 -19.451 -21.435 69.706 2.438 -1.303


$poseparameter "active" 0 1 0

$weightlist "weights_prong_blend" {
	 "Base" 0
	 "Prong_B" 1
	 "Base_B" 1
	 "Tip_B" 1
	 "Prong_A" 1
	 "Base_A" 1
	 "Tip_A" 1
	 "Doodad_4" 0
	 "Doodad_3" 0
	 "Doodad_2" 0
	 "Doodad_1" 0
	 "Handle" 0
	 "Muzzle" 0
	 "square" 0
}

$animation "ProngsShut" "v_physcannon_dx7_anims\ProngsShut.smd" {
	fps 30
	weightlist "weights_prong_blend"
}

$animation "ProngsOpen" "v_physcannon_dx7_anims\ProngsOpen.smd" {
	fps 30
	weightlist "weights_prong_blend"
}

$sequence "idle" {
	"v_physcannon_dx7_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "hold_idle" {
	"v_physcannon_dx7_anims\hold_idle.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "draw" {
	"v_physcannon_dx7_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "holster" {
	"v_physcannon_dx7_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"v_physcannon_dx7_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "altfire" {
	"v_physcannon_dx7_anims\altfire.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "prong_blend" {
	"ProngsShut"
	"ProngsOpen"
	autoplay
	blend "active" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	fps 30
	weightlist "weights_prong_blend"
}
