$modelname "weapons\nullifactor"

$cdmaterials "models/weapons"

$cdmaterials "models/weapons/v_pistol"

$surfaceprop "default"

$origin 0.0 0.0 0.0 0.0

$scale 1.0

$body "v_pistol_reference" "v_pistol_reference.smd"

$sequence "idle" {
    "nullifactor_anims.smd"
    frames 1 25
    fps 24
    activity "ACT_VM_IDLE" 1
}

$attachment "Attachment" "ValveBiped.Bip01" 0.0 0.0 0.0 rotate 0.0 0.0 0.0

$texturegroup "skinfamilies"
{
    { "nullifactor" }
}
