ATT.PrintName = "Barrel"
ATT.Icon = Material("entities/acwatt_barrel.png") --Attachment PNG Location
ATT.Description = [[Military grade barrel. Increases accuracy.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/milbarrel.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.SpreadMult = 0.7
ATT.BarrelLengthMult = 1.25

ATT.Category = "muzzle" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"muzzle"}

ATT.AutoStats = true