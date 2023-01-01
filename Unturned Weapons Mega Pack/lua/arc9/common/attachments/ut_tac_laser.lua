ATT.PrintName = "Tactical Laser"
ATT.Icon = Material("entities/acwatt_laser.png") --Attachment PNG Location
ATT.Description = [[Side mounted tactical laser. Increases accuracy.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/tac_laser.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.Laser = true
ATT.RecoilRandomSide = 0.9
ATT.RecoilSide = 0.7
ATT.Recoil = 0.95
ATT.LaserStrength = 5
ATT.LaserColor = Color(255, 0, 0)
ATT.LaserAttachment = 1   


ATT.Category = "tac" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"tac"}

ATT.AutoStats = true



