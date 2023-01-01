ATT.PrintName = "Silencer"
ATT.Icon = Material("entities/acwatt_silencer.png") --Attachment PNG Location
ATT.Description = [[Makes the deafening sound of your gunshots magically disappear.]]

ATT.SortOrder = 0



ATT.Model = "models/ut_weapons/attachments/silencer.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.Silencer = true
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.BarrelLengthMult = 1.25

ATT.Category = "muzzle" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"muzzle"}

ATT.AutoStats = true