
$modelname "ut_weapons/ut_herstal.mdl"
$scale 3
$bodygroup "herstal"
{
	studio "Herstal.smd"
}

$cdmaterials "models/ut_weapons/"
$surfaceprop "metal"

$contents "solid"

$sequence idle {
	"anims\herstal_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence run {
	"anims\herstal_run.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence reload_empty {
	"anims\herstal_reload_empty.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence reload {
	"anims\herstal_reload.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "Herstal_Physics.smd"
{ 
	$concave
    $mass 14
    $rotdamping 0
	$inertia 1
	$damping 0
}

