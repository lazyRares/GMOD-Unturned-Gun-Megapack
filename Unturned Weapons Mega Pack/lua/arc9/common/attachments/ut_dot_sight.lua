ATT.PrintName = "Dot Sight"
ATT.Icon = Material("entities/acwatt_dotsight.png") --Attachment PNG Location
ATT.Description = [[Rail mounted sight with electronic aiming point.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/dotsight.mdl"
ATT.WorldModel = "models/ut_weapons/attachments/dotsight.mdl" -- optional
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 0.9

-- Allows a custom sight position to be defined
ATT.Sights = {
	{
		Pos = Vector(-0.012294,13,-3),
		Ang = Angle(0, 0, 0),
		Magnification = 1,
		IgnoreExtra = false
	},
}

ATT.ModelAngleOffset = Angle(180, 0, 0)

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/holosights/dot.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$selfillum", 1)
ATT.HoloSightSize = 1000
ATT.HoloSightColorable = true -- Holosight takes color from player settings

ATT.Category = "optic" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"optic"}

ATT.AutoStats = true


