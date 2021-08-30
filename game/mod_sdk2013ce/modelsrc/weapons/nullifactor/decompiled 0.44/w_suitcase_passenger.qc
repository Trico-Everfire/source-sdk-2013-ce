// Created by Crowbar 0.44.0.0

$modelname "weapons/w_suitcase_passenger.mdl"

$bodygroup "studio"
{
	studio "w_suitcase_passenger_reference.smd"
}

$lod 32
{
	replacemodel "w_suitcase_passenger_reference.smd" "w_suitcase_passenger_body0_model0_lod1.smd"
}

$surfaceprop "weapon"

$contents "solid"

$cdmaterials "models\props_c17\"

$cbox 0 0 0 0 0 0

$bbox -12.589 -3.619 -17.901 12.589 3.619 5.037


$sequence "idle" {
	"w_suitcase_passenger_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$collisionmodel "w_suitcase_passenger_physics.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
