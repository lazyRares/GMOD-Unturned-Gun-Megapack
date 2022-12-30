//QC file created using QCBasic
$modelname "ut_weapons/ut_hecate.mdl"
$scale 3
$bodygroup "studio"
{
	studio "Hecate.smd"
}

$cdmaterials "models/ut_weapons/"
$surfaceprop "metal"

$texturegroup olivehecate
{
	{ "ut_woods_master"  }
	{ "ut_hecate_green" }
}
$contents "solid"
$sequence "idle" "Hecate.smd"


$collisionmodel "Hecate.smd"
{ 
	$concave
    $mass 14
    $rotdamping 0
	$inertia 1
	$damping 0
}

