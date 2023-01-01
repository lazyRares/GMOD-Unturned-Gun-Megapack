ATT.PrintName = "Muzzle"
ATT.Icon = Material("entities/acwatt_muzzle.png") --Attachment PNG Location
ATT.Description = [[Military grade muzzle. Hides muzzle flash, tracers and reduces recoil.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/barrel_muzzle.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.NoMuzzleEffect = true -- Disable muzzle effect entirely
ATT.NoFlash = true
ATT.Recoil = 0.95
ATT.TracerColor = Color(0,0,0)

local colors = {
    Color(0, 0, 0),
}

ATT.TracerColorHook = function(swep, col)
    return table.Random(colors)
end 

ATT.Category = "muzzle" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"muzzle"}

ATT.AutoStats = true