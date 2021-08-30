// Created by Crowbar 0.44.0.0

$modelname "weapons/V_hands.mdl"

$bodygroup "studio"
{
	studio "v_hands_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\Weapons\V_hand\"

$cbox 0 0 0 0 0 0

$bbox 4.076 -18.42 -32.038 36.547 20.339 1.158


$sequence "admire" {
	"v_hands_anims\admire.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
