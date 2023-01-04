ATT.PrintName = "Dot Sight"
ATT.Icon = Material("entities/acwatt_holo.png") --Attachment PNG Location
ATT.Description = [[Rail mounted sight with electronic aiming halo.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/holosight.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 0.9

-- Allows a custom sight position to be defined
ATT.Sights = {
	{
		Pos = Vector(-0.012294,20,-5),
		Ang = Angle(0, 0, 0),
		Magnification = 1,
		IgnoreExtra = false
	},
}

ATT.ModelOffset = Vector(4,0,0)

ATT.ModelAngleOffset = Angle(180, 0, 0)

ATT.HoloSight = true
ATT.HoloSightReticle = Material("vgui/holosights/holo.png", "mips smooth")
ATT.HoloSightReticle:SetInt("$selfillum", 1)
ATT.HoloSightSize = 500
ATT.HoloSightColorable = true -- Holosight takes color from player settings

ATT.Category = "optic" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"optic"}

ATT.AutoStats = true


