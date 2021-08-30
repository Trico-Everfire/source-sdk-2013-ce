// Created by Crowbar 0.44.0.0

$modelname "weapons/W_physics.mdl"

$bodygroup "studio"
{
	studio "w_physics_reference.smd"
}

$lod 35
{
	replacemodel "w_physics_reference.smd" "w_physics_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\weapons\w_physics\"

$texturegroup "skinfamilies"
{
	{ "w_physics_sheet"  }
	{ "w_physics_sheet2" }
}

$attachment "core" "Physgun.Core_Attachment" 0 0 0 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -2.826 -6.042 -2.777 28.689 12.496 7.941


$sequence "idle" {
	"w_physics_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_physics_anims\attack1.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "upgrade" {
	"w_physics_anims\upgrade.smd"
	activity "ACT_PHYSCANNON_UPGRADE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_physics_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
