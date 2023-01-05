ATT.PrintName = "Cross Scope"
ATT.Icon = Material("entities/acwatt_cross.png") --Attachment PNG Location
ATT.Description = [[Rail mounted optic with electronic aiming cross. 6x magnification.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/scope_cross.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.SprintToFireTimeMult = 1.05
ATT.AimDownSightsTimeMult = 0.8
ATT.SpeedMult = 0.8
ATT.SpreadMult = 0.7
ATT.RTScopeSubmatIndex = 1

-- Allows a custom sight position to be defined
ATT.Sights = {
	{
		Pos = Vector(-0.012294,13,-5),
		Ang = Angle(0, 0, 0),
		Magnification = 1,
		IgnoreExtra = false
	},
}

ATT.ModelAngleOffset = Angle(180, 0, 0)

ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 6
ATT.RTScopeRes = 1024
ATT.RTScopeReticle = Material("vgui/holosights/cross.png", "mips smooth")
ATT.RTScopeReticleScale = 1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeColor = Color(255, 255, 255)
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = true

ATT.Category = "optic" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"optic"}

ATT.AutoStats = true


