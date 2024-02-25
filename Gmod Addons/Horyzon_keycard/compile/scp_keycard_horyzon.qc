// Created by Crowbar 0.49.0.0

$modelname "models/pseudo/xxxx.mdl"

$bodygroup "xxxx"
{
	studio "xxxx.smd"
}

$surfaceprop "TYPE"

$contents "solid"

$maxeyedeflection 90
$cdmaterials "models\pseudo\"

$cbox 0 0 0 0 0 0

$bbox 0 -327.694 0 43.767 0 179.656


$sequence "idle" {
	"scp_keycard_horyzon_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$collisionmodel "xxxx.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 1
	$rootbone " "

}
