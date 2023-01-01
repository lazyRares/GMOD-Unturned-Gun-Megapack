ATT.PrintName = "Makeshift Muffler"
ATT.Icon = Material("entities/acwatt_muffler.png") --Attachment PNG Location
ATT.Description = [[Makeshift suppressor made with metal cans. Makes gunshots a bit quieter. Quite stylish otherwise.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/muffler.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.Silencer = true
ATT.ShootSoundSilenced = "weapons/arccw/silenced_muffler.wav"
ATT.ShootSoundIndoorSilenced = "weapons/arccw/silenced_muffler.wav"  -- Fire indoors silenced
ATT.FirstShootSoundSilenced = "weapons/arccw/silenced_muffler.wav"
ATT.DistantShootSoundSilenced = "weapons/arccw/silenced_muffler.wav"            -- Distant fire silenced
ATT.DistantShootSoundIndoorSilenced = "weapons/arccw/silenced_muffler.wav"      -- Distant fire indoors silenced
ATT.FirstDistantShootSoundSilenced = "weapons/arccw/silenced_muffler.wav"       -- First distant fire silenced

ATT.BarrelLengthMult = 1.25

ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9

ATT.Category = "muzzle" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"muzzle"}

ATT.AutoStats = false