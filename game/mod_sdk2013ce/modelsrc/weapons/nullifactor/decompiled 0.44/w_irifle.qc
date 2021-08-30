// Created by Crowbar 0.44.0.0

$modelname "weapons/w_IRifle.mdl"

$bodygroup "studio"
{
	studio "w_irifle_reference.smd"
}

$lod 10
{
	replacemodel "w_irifle_reference.smd" "w_irifle_body0_model0_lod1.smd"
}
$lod 15
{
	replacemodel "w_irifle_reference.smd" "w_irifle_body0_model0_lod2.smd"
}
$lod 20
{
	replacemodel "w_irifle_reference.smd" "w_irifle_body0_model0_lod3.smd"
}
$lod 25
{
	replacemodel "w_irifle_reference.smd" "w_irifle_body0_model0_lod4.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_Irifle\"

$attachment "muzzle" "ValveBiped.muzzle" -8.5 0 0 rotate 0 0 -90
$attachment "1" "ValveBiped.w_shotgun" 1 -7 3 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -18.562 -6.792 -9.804 26.93 5.482 13.277


$sequence "idle1" {
	"w_irifle_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"w_irifle_anims\fire.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event AE_NPC_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 3007 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_irifle_physics.smd"
{
	$mass 20
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
