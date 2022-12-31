SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - Unturned Mega Weapon Pack" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Herstal"
SWEP.TrueName = "FN FAL"
SWEP.Trivia_Class = "Assault Rifle"
SWEP.Trivia_Desc = "The Herstal is a French assault rifle based on the Fusil Automatique Léger Manufactured by FN Herstal. It was added to Unturned November 23, 2018 along with the France curated map, it has a magazine of 20 bullets, and can be fitted with a drum magazine sporting a sizeable 50 bullets. It packs quite a punch having a moderate fire rate, and strong stopping power."
SWEP.Trivia_Manufacturer = "Renaxon"
SWEP.Trivia_Calibre = "7.62×51mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "France"
SWEP.Trivia_Year = 1984

SWEP.Slot = 2

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
end

sound.Add({
    name =            "herstal.Reload",
    channel =        CHAN_USER_BASE + 1,
    volumel =        1.0,
    sound =            {"weapons/arccw/herstal_reload.mp3"}
})

sound.Add({
    name =            "herstal.ReloadEmpty",
    channel =        CHAN_USER_BASE + 1,
    volumel =        1.0,
    sound =            {"weapons/arccw/herstal_reload_empty.mp3"}
})

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() == wep.ReducedClipSize then return anim .. "_small" end
    -- This sets up reload_small and reload_empty_small as the reduced mag anims.
    -- Change it to wep.ExtendedClipSize to apply them to extended magazines.
end

SWEP.Hook_SelectReloadAnimation = function(wep, anim)
    if wep:GetCapacity() == wep.ExtendedClipSize then return anim .. "_large" end
end

SWEP.UseHands = false
SWEP.ViewModel = "models/ut_weapons/ut_herstal_v.mdl"
SWEP.WorldModel = "models/ut_weapons/ut_herstal_w.mdl"
SWEP.ViewModelFOV = 60

SWEP.WorldModelOffset = {
    pos = Vector(12, 1, -2),
    ang = Angle(180, -5, 0),
    bone = "ValveBiped.Bip01_R_Hand",
    scale = 1
}

SWEP.Damage = 34
SWEP.DamageMin = 21 -- damage done at maximum range
SWEP.Range = 225 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 1050 -- projectile or phys bullet muzzle velocity
SWEP.Force = nil -- bullet force. set nil to autocalculate

SWEP.BodyDamageMults = nil
-- if a limb is not set the damage multiplier will default to 1
-- that means gmod's stupid default limb mults will **NOT** apply
-- {
--     [HITGROUP_HEAD] = 1.25,
--     [HITGROUP_CHEST] = 1,
--     [HITGROUP_LEFTARM] = 0.9,
--     [HITGROUP_RIGHTARM] = 0.9,
-- }


-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 50 --Used for extended magazine size attachments
SWEP.ReducedClipSize = 15 --Used for reduced magazine size attachments

SWEP.Recoil = 0.65
SWEP.RecoilSide = 0.55
SWEP.RecoilRise = 0.65
SWEP.MaxRecoilBlowback = -1
SWEP.VisualRecoilMult = 1.25
SWEP.RecoilPunch = 1.5
SWEP.RecoilPunchBackMax = 1
SWEP.RecoilPunchBackMaxSights = nil -- may clip with scopes
SWEP.RecoilVMShake = 1 -- random viewmodel offset when shooty

SWEP.Sway = 0

SWEP.Delay = 110 / 700 
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemode = 2 -- 0: safe, 1: semi, 2: auto, negative: burst
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 3 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses
SWEP.MagID = "stanag" -- the magazine pool this gun draws from

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/herstal_shot.wav"
SWEP.ShootSound = "weapons/arccw/herstal_shot.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/herstal_shot_distant.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellMaterial = nil
SWEP.ShellEffect = nil
SWEP.ShellEjectPosCorrection = nil
SWEP.ShellScale = 1
SWEP.ShellPhysScale = 1
SWEP.ShellPitch = 100
SWEP.ShellSounds = "autocheck"--ArcCW.ShellSoundsTable
SWEP.ShellRotate = 0
SWEP.ShellTime = 0.5


SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.92
SWEP.SightedSpeedMult = 0.45
SWEP.SightTime = 0.45

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.KeepBaseIrons = false -- do not override iron sights when scope installed
SWEP.BaseIronsFirst = false -- If a sight keeps base irons, irons comes first

SWEP.IronSightStruct = {
    Pos = Vector(-0.202, -45, -16.5),
    Ang = Angle(0, -180, 0),
	
    Magnification = 1,
    BlackBox = false,
    ScopeTexture = nil,
    SwitchToSound = "", -- sound that plays when switching to this sight
    SwitchFromSound = "",
    ScrollFunc = ArcCW.SCROLL_NONE,
    CrosshairInSights = false,
}

SWEP.Jamming = false
SWEP.HeatGain = 1 -- heat gained per shot
SWEP.HeatCapacity = 200 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 2 -- rounds' worth of heat lost per second
SWEP.HeatLockout = false -- overheating means you cannot fire until heat has been fully depleted
SWEP.HeatDelayTime = 0.5
SWEP.HeatFix = false -- when the "fix" animation is played, all heat is restored.
SWEP.HeatOverflow = nil -- if true, heat is allowed to exceed capacity (this only applies when the default overheat handling is overridden)

SWEP.Malfunction = false
SWEP.MalfunctionJam = true -- After a malfunction happens, the gun will dryfire until reload is pressed. If unset, instead plays animation right after.
SWEP.MalfunctionTakeRound = true -- When malfunctioning, a bullet is consumed.
SWEP.MalfunctionPostFire = false -- If set, jam will occur after firing the round successfully.
SWEP.MalfunctionWait = 0.5 -- The amount of time to wait before playing malfunction animation (or can reload)
SWEP.MalfunctionMean = nil -- The mean number of shots between malfunctions, will be autocalculated if nil
SWEP.MalfunctionVariance = 0.25 -- The fraction of mean for variance. e.g. 0.2 means 20% variance
SWEP.MalfunctionSound = "weapons/arccw/malfunction.wav"

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"

//SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-12, -65, -18) --When Just Holding The Gun
SWEP.ActiveAng = Angle(1.5, -180, -2) --When Just Holding The Gun

SWEP.ReloadPos = Vector(-12, -65, -18) --Reloading Pos
SWEP.ReloadAng = Angle(1.5, -180, -2) --Reloading Pos

SWEP.CrouchPos = Vector(-25, -65, -25) --Crouch Pos
SWEP.CrouchAng = Angle(1.5, -155, -25) --Crouch Pos

SWEP.HolsterPos = Vector(-25, -65, -25) 		--PROCEDURAL RUNNING ANIMATION, WE DONT ACTUALLY USE THE RUNNING ANIM
SWEP.HolsterAng = Angle(-5, -125, -25) 			--PROCEDURAL RUNNING ANIMATION, WE DONT ACTUALLY USE THE RUNNING ANIM

SWEP.CustomizePos = Vector(-35, -65, -30) 	--Customization Pos
SWEP.CustomizeAng = Angle(-15, -155, 1.5) 	--Customization Pos

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetHip = Vector(0, 0, 0)

SWEP.BarrelLength = 32
SWEP.ExtraSightDist = 5

SWEP.AttachmentElements = {
    ["dotsight"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
}


SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {"optic_lp", "optic"}, -- what kind of attachments can fit here, can be string or table
		VScale = Vector(0.8, 0.8, 0.8),
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.2, -5, 25.454), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(0, 1.8, -2.597),
            wang = Angle(10.519, -176.495, -180)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "weapon",
        Offset = {
            vpos = Vector(-0.123, -3.694, -15.587),
            vang = Angle(-93.5, -1, -90),
            wpos = Vector(22, 1, -7),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac",
        Bone = "weapon",
        Offset = {
            vpos = Vector(1.386, -2.286, -3.787), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, 90 + 100.628),
            wpos = Vector(10.625, 0.853, -4.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Charm",
        Slot = "charm",
        FreeSlot = true,
        Bone = "weapon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.15, -3.75, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(3, 1.5, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 4
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["ready"] = {
        Source = "fire",
        Time = 1,
        SoundTable = {{s = "weapons/arccw/aug/aug_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["fire"] = {
        Source = {"fire"},
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire",
        Time = 3,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_VM_PULLBACK,
        Checkpoints = {16, 30},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_VM_PULLBACK,
        Checkpoints = {16, 30},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.7,
        LHIKOut = 0.5,
    }
}