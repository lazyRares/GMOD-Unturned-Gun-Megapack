ATT.PrintName = "Bayonet"
ATT.Icon = Material("entities/acwatt_bayonet.png") --Attachment PNG Location
ATT.Description = [[Side mounted sword.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/tac_bayonet.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.ModelAngleOffset = Angle(90,0,0)
ATT.ModelOffset = Vector(2.5,0,0)

ATT.Bash = true

ATT.Category = "tac" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"tac"}

ATT.AutoStats = true



