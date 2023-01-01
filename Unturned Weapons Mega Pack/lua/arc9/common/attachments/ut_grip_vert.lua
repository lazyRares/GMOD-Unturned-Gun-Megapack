ATT.PrintName = "Vertical Grip"
ATT.Icon = Material("entities/acwatt_grip_vert.png") --Attachment PNG Location
ATT.Description = [[Military grade vertical grip. Reduces vertical recoil.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/vertgrip.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.ModelOffset = Vector(0, 0, 2)

ATT.RecoilUp = 0.7
ATT.RecoilRandomUp = 0.9

ATT.Category = "grip" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"grip"}

ATT.AutoStats = true


