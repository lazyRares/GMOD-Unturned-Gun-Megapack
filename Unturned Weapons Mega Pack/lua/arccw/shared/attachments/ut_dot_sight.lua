att.PrintName = "Dot Sight"
att.Icon = Material("entities/acwatt_dotsight.png") --Attachment PNG Location, must be prefixed acwatt_
att.Description = "Rail mounted sight with electronic aiming point"

att.SortOrder = 0

att.Model = "models/ut_weapons/attachments/dotsight.mdl"

att.AdditionalSights = {
    {
		Pos = Vector(0,15, -3),
		Ang = Angle(0, -180, 0),
        Magnification = 1,
        IgnoreExtra = true
    }
}

--You can write your own pro/con text here, but AutoStats can generate most stat-based changes. 
--They should be a table of strings, each entry taking up one line.

att.Desc_Pros = {
	"10% Faster scope in time"
}
att.Desc_Cons = {
"No magnification"
}

att.ActivateElements = {"dotsight"}

att.Desc_Neutrals = {
    "A simple dot sight"
}

att.AutoStats = true

--The slot determines which slot this attachment belongs to. 
--This can either be a string, or a table of strings (if it can go in multiple slots).
--Most variables you want to change can be found listed at ArcCW_Base/lua/arccw/shared/attachments/default.lua. 
--Generally they are in the format of Override_Variable or Mult_Variable. 
--There are also hooks, which are lua functions used for advanced functionality.
--att.ActivateElements can be used to activate AttachmentElements in a weapon. 
--If there is none, it will do nothing. 
--This is used by ammo types that extend or reduce magazine size, remove integrated foregrips etc.

att.Slot = "optic"

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png")
att.HolosightSize = 4
att.HolosightBone = "holosight"

att.Mult_SightTime = 0.9

att.Colorable = true
att.HolosightColor = Color(255, 0, 0)


