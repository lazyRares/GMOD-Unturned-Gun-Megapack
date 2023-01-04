AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Unturned Weapons"
SWEP.AdminOnly = false

SWEP.PrintName = "Herstal"
SWEP.TrueName = "FN FAL"
-- PrintName could be a game's fictional name for a gun, while TrueName is its real name.
-- You could also have it be a generic name, like "Assault Rifle" vs. "AK-47".
-- TrueName should be something that improves the cross-compatibility of weapon naming.

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
	Manufacturer1 = "FN Herstal",
	Calibre2 = "7.62×51mm NATO",
	Mechanism3 = "Gas-Operated",
	Country4 = "France",
	Year5 = 2018
}
 SWEP.Credits = { 
	Original_Gun1 = "Unturned",
    Author2 = "The Mafia"
}

SWEP.Description = [[The Herstal is a French assault rifle based on the Fusil Automatique Léger Manufactured by FN Herstal. It was added to Unturned November 23, 2018 along with the France curated map, it has a magazine of 20 bullets, and can be fitted with a drum magazine sporting a sizeable 50 bullets. It packs quite a punch having a moderate fire rate, and strong stopping power.]]

SWEP.UseHands = false -- Same as weapon_base
SWEP.EntitySelectIcon = false -- Set to true to try and use the Entity image as select icon
SWEP.CustomSelectIcon = Material("arc9/weaponicons/arc9_herstal.vtf") -- Set to use a non-autogenerated select icon

if CLIENT then
	killicon.Add( "arc9_herstal", "arc9/weaponicons/arc9_herstal.vtf", Color( 255, 255, 255, 255 ) )
end

SWEP.ViewModel = "models/ut_weapons/ut_herstal_v.mdl"
SWEP.WorldModel = "models/ut_weapons/ut_herstal_w.mdl" -- If you are going to MirrorVMWM: Put here some optimized model with collisions. Css/hl2 weapon worldmodels that are included in gmod are great for it - like "models/weapons/w_rif_m4a1.mdl"

SWEP.MirrorVMWM = true -- Use this to use the viewmodel as a worldmodel.
-- Highly recommended to save effort!

SWEP.WorldModelMirror = "models/ut_weapons/ut_herstal_w.mdl" -- Use this to set a lower-quality version of the viewmodel, with the same bone structure, as a worldmodel, to take advantage of MirrorVMWM without having to use the viewmodel.

SWEP.WorldModelOffset = {
	Pos = Vector(11,0.5,-2), -- non tpik (while on ground, on npc etc) 
	Ang = Angle(1.5, 0, 180),
	TPIKPos = Vector(11,0.5,-2), -- arc9_tpik 1, you can make cool poses with it
	TPIKAng = Angle(1.5, 0, 180),
	Scale = 1
}

SWEP.NoTPIK = false
SWEP.NoTPIKVMPos = true -- TPIK position is not affected by viewmodel position

SWEP.Crosshair = true
SWEP.LauncherCrosshair = false -- Force the launcher crosshair
SWEP.MissileCrosshair = false -- Force the missile launcher crosshair

SWEP.ViewModelFOVBase = nil -- Set to override viewmodel FOV

SWEP.NoDynamicKillIcon = true

SWEP.NotAWeapon = false -- Set to true to indicate that this is not a weapon.
-- Disables pretty much all base features except for controls and aesthetics, allowing for custom weapons to be implemented.

SWEP.ARC9WeaponCategory = {"weapon_ar2"} -- See sh_common.lua

--------------------------   PROFILE

SWEP.DamageMax = 25 -- Damage done at point blank range
SWEP.DamageMin = 15 -- Damage done at maximum range

SWEP.ImpactForce = 8 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 0 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5000 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.Num = 1 -- Number of bullets to shoot

SWEP.DistributeDamage = false -- If true, damage is distributed evenly across all bullets. If false, damage is dealt to the first bullet only.

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?
SWEP.RicochetSeeking = false -- Whether ricochet bullets will seek living targets in a cone.
SWEP.RicochetSeekingAngle = 30
SWEP.RicochetSeekingRange = 1024

SWEP.DamageType = DMG_BULLET -- The damage type of the gun.
-- DMG_BLAST will create explosive effects and create AOE damage.
-- DMG_BURN will ignite the target.
-- DMG_AIRBOAT will damage Combine Hunter-Choppers.

SWEP.ArmorPiercing = 0.3 -- Between 0-1. A proportion of damage that is done as direct damage, ignoring protection.

-- Individual multipliers that can be used with modifiers
SWEP.HeadshotDamage = 1.1
SWEP.ChestDamage = 0.8
SWEP.StomachDamage = 0.9
SWEP.ArmDamage = 0.6
SWEP.LegDamage = 0.6

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.1,
    [HITGROUP_CHEST] = 0.9,
    [HITGROUP_STOMACH] = 0.8,
    [HITGROUP_LEFTARM] = 0.6,
    [HITGROUP_RIGHTARM] = 0.6,
    [HITGROUP_LEFTLEG] = 0.6,
    [HITGROUP_RIGHTLEG] = 0.6,
}

-- Set the multiplier for each part of the body.
-- If a limb is not set the damage multiplier will default to 1
-- That means gmod's stupid default limb mults will **NOT** apply
-- {
--     [HITGROUP_HEAD] = 1.25,
--     [HITGROUP_CHEST] = 1,
--     [HITGROUP_LEFTARM] = 0.9,
--     [HITGROUP_RIGHTARM] = 0.9,
-- }

SWEP.ExplosionDamage = 0
SWEP.ExplosionRadius = 0
SWEP.ExplosionEffect = nil

-------------------------- SHOOTPOS

SWEP.wsOffset = Vector(0, 0, 0)
SWEP.ShootAngOffset = Angle(0, 0, 0)

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 5 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ForceDefaultClip = 20 -- Set to force a default amount of ammo this gun can have. Otherwise, this is controlled by console variables.

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

SWEP.ShotgunReload = false -- Weapon reloads like shotgun. Uses insert_1, insert_2, etc animations instead.
SWEP.HybridReload = false -- Enable on top of Shotgun Reload. If the weapon is completely empty, use the normal reload animation.
-- Use SWEP.Hook_TranslateAnimation in order to do custom animation stuff.
SWEP.ShotgunReloadIncludesChamber = true -- Shotguns reload to full capacity, assuming that the chamber is loaded as part of the animation.

SWEP.ManualAction = false -- Pump/bolt action. Play the "cycle" animation after firing, when the trigger is released.
SWEP.ManualActionChamber = 1 -- How many shots we go between needing to cycle again.
SWEP.ManualActionNoLastCycle = false -- Do not cycle on the last shot.
SWEP.ManualActionEjectAnyway = false -- Eject a shell when firing anyway.
SWEP.EjectDelay = 0 -- When eject shell on cycle (pretty dumb, better'd just use EjectAt)

SWEP.ReloadWhileSprint = false -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.PartialReloadCountsTowardsNthReload = true -- If the gun is not empty, it counts towards the Nth reload. Useful for guns with spare magazine animations.

SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater.

SWEP.Disposable = false -- When all ammo is expended, this gun will remove itself from the inventory.

SWEP.AutoReload = false -- When the gun is drawn, it will automatically reload.

SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = true

SWEP.DropMagazineModel = nil -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {} -- Table of sounds a dropped magazine should play.
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineSkin = 0 -- Model skin of mag.
SWEP.DropMagazineTime = 0.25
SWEP.DropMagazineQCA = nil -- QC Attachment drop mag from, would drop from shell port if not defined
SWEP.DropMagazinePos = Vector(0, 0, 0) -- offsets
SWEP.DropMagazineAng = Angle(0, 0, 0)
SWEP.DropMagazineVelocity = Vector(0, 0, 0) -- Put something here if your anim throws the mag with force

SWEP.BarrelLength = 32 -- Distance for nearwalling

-------------------------- FIREMODES

SWEP.RPM = 375

SWEP.TriggerDelay = false -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 0.2 -- Time until weapon fires.
SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.
SWEP.TriggerDelayCancellable = true -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.
SWEP.TriggerStartFireAnim = false -- Whether trigger begins the firing animation

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.
SWEP.Firemodes = {
    {
        Mode = -1,
        -- add other attachment modifiers
    }
}

SWEP.SlamFire = false -- Manual action weapons cycle themselves

SWEP.AutoBurst = false -- Hold fire to keep firing bursts
SWEP.PostBurstDelay = 0
SWEP.RunawayBurst = false -- Burst will keep firing until all of the burst has been expended.

SWEP.Akimbo = false

-- Use this hook to modify features of a firemode.
-- SWEP.HookP_ModifyFiremode = function(self, firemode) return firemode end

-------------------------- RECOIL

SWEP.RecoilSeed = nil -- Leave blank to use weapon class name as recoil seed.
-- Should be a number.
SWEP.RecoilPatternDrift = 12 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = nil -- Use to set specific values for predictible recoil. If it runs out, it'll just use Recoil Seed.
-- SWEP.RecoilLookupTable = {
--     15,
--     3,
-- }
SWEP.RecoilLookupTableOverrun = false -- Repeatedly take values from this table if we run out in the main table

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1.5 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1.4 -- Multiplier for vertical recoil

-- This is for recoil that goes directly to camera, makes gun shoot where sights at but center of screen will be in different place. Like Escape From Tarkov.
SWEP.ViewRecoil = true -- true
SWEP.ViewRecoilUpMult = 40 -- 40-100
SWEP.ViewRecoilSideMult = 2 -- 1-20

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.25
SWEP.RecoilRandomSide = 0.25

SWEP.RecoilDissipationRate = 10 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.PushBackForce = 0 -- Push the player back when shooting.

-- SInput rumble configuration
-- Max of 65535
SWEP.RumbleHeavy = 30000
SWEP.RumbleLight = 30000
SWEP.RumbleDuration = 0.12

-------------------------- VISUAL RECOIL

SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true -- Visual recoil actually affects your aim point.

SWEP.VisualRecoilUp = 0.01 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.05 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 0.23 -- Roll tilt for visual recoil.

SWEP.VisualRecoilCenter = Vector(2, 4, 2) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilPunch = 1.5 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.1

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 0.1
SWEP.VisualRecoilPositionBump = 1.5
SWEP.VisualRecoilPositionBumpUp = 0.08 -- its a mult

SWEP.VisualRecoilHipFire = 1

SWEP.VisualRecoilDampingConst = 120 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.RecoilKick = 1 -- Camera recoil
SWEP.RecoilKickDamping = 70.151 -- Camera recoil damping
-------------------------- SPREAD

SWEP.Spread = 0.0016
SWEP.UsePelletSpread = false -- Multiple bullets fired at once clump up, like for a shotgun. Spread affects which direction they get fired, not their spread relative to one another.
SWEP.PelletSpread = 0.2

SWEP.PelletSpreadPattern = {} -- Use to give shotguns custom spread patterns. If Pellet Spread is off, each pellet will be subject to spread. Otherwise, the entire pattern shifts, and each pellet is randomly offset by pellet spread amount.

-- SWEP.PelletSpreadPattern = {
--     {
--         x = -1,
--         y = -1
--     },
--     {
--         x = -1,
--         y = 1
--     }
-- }

SWEP.PelletSpreadPatternOverrun = nil
-- {Angle(1, 1, 0), Angle(1, 0, 0) ..}
-- list of how far each pellet should veer
-- if only one pellet then it'll use the first index
-- if two then the first two
-- in case of overrun pellets will start looping, preferably with the second one, so use that for the loopables

SWEP.SpreadAddMove = 0 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = 0 -- Applied when not sighted.
SWEP.SpreadAddSighted = 0 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = 0 -- Applied when blind firing.
SWEP.SpreadAddCrouch = 0 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0 -- Applied per unit of recoil.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 1.1 -- How much the gun sways.

SWEP.HoldBreathTime = 5 -- time that you can hold breath for
SWEP.RestoreBreathTime = 10

SWEP.FreeAimRadiusMultSights = 0.25

SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

SWEP.NoSprintWhenLocked = false -- You cannot sprint while reloading with this gun

SWEP.ReloadTime = 1
SWEP.DeployTime = 1
SWEP.CycleTime = 1
SWEP.FixTime = 1
SWEP.OverheatTime = 1

SWEP.ShootWhileSprint = false

SWEP.Speed = 1

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

-- Not using melee

-------------------------- LOCKON

-- Not using lockon

-------------------------- MALFUNCTIONS

SWEP.Overheat = false -- Weapon will jam when it overheats, playing the "overheat" animation.
SWEP.HeatPerShot = 1
SWEP.HeatCapacity = 1 -- rounds that can be fired non-stop before the gun jams, playing the "fix" animation
SWEP.HeatDissipation = 10 -- rounds' worth of heat lost per second
SWEP.HeatLockout = true -- overheating means you cannot fire until heat has been fully depleted
SWEP.HeatDelayTime = 0.5 -- Amount of time that passes before heat begins to dissipate.
SWEP.HeatFix = false -- when the "overheat" animation is played, all heat is restored.

-- If Malfunction is enabled, the gun has a random chance to be jammed
-- after the gun is jammed, it won't fire unless reload is pressed, which plays the "fix" animation
-- if no "fix" or "cycle" animations exist, the weapon will reload instead
-- When the trigger is pressed, the gun will try to play the "jamfire" animation. Otherwise, it will try "dryfire". Otherwise, it will do nothing.
SWEP.Malfunction = false
SWEP.MalfunctionJam = true -- After a malfunction happens, the gun will dryfire until reload is pressed. If unset, instead plays animation right after.  -- are you sure? doesnt seem to work
SWEP.MalfunctionNeverLastShoot = true -- Last round will never cause malfunctions (so guns with empty animations wont be fucky)
SWEP.MalfunctionCycle = false -- ManualAction = true only: Roll malfunction roullete not after shoot but before every cycle anim
SWEP.MalfunctionWait = 0 -- The amount of time to wait before playing malfunction animation (or can reload)
SWEP.MalfunctionMeanShotsToFail = 1000 -- The mean number of shots between malfunctions, will be autocalculated if nil

-------------------------- LEAN

SWEP.CanLean = true

-------------------------- NPC

SWEP.NotForNPCs = false -- Won't be given to NPCs.

-------------------------- BIPOD

SWEP.Bipod = false -- This weapon comes with a bipod.
SWEP.RecoilMultBipod = 0.25
SWEP.SwayMultBipod = 0.25
SWEP.FreeAimRadiusMultBipod = 0 

-------------------------- SOUNDS

SWEP.ShootVolume = 450

SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0

SWEP.FirstShootSound = "weapons/arccw/herstal_shot.wav"  
SWEP.ShootSound = "weapons/arccw/herstal_shot.wav"     -- Fire      
SWEP.ShootSoundIndoor = "weapons/arccw/herstal_shot_indoors.wav"    -- Fire indoors
SWEP.ShootSoundSilenced = "weapons/arccw/silenced.wav" -- Fire silenced
SWEP.ShootSoundIndoorSilenced = "weapons/arccw/silenced.wav"  -- Fire indoors silenced
SWEP.FirstShootSoundSilenced = "weapons/arccw/silenced.wav"  -- First fire silenced
SWEP.FirstShootSoundIndoor = "weapons/arccw/herstal_shot_indoors.wav"   -- First fire indoors
SWEP.FirstDistantShootSound = "weapons/arccw/herstal_shot_distant.wav"                -- First distant fire
SWEP.DistantShootSound = "weapons/arccw/herstal_shot_distant.wav"                     -- Distant fire
SWEP.DistantShootSoundIndoor = "weapons/arccw/herstal_shot_distant.wav"              -- Distant fire indoors
SWEP.DistantShootSoundSilenced = "weapons/arccw/silenced.wav"            -- Distant fire silenced
SWEP.DistantShootSoundIndoorSilenced = "weapons/arccw/silenced.wav"      -- Distant fire indoors silenced
SWEP.FirstDistantShootSoundSilenced = "weapons/arccw/silenced.wav"       -- First distant fire silenced

SWEP.ShootSoundLooping = nil
SWEP.ShootSoundLoopingSilenced = nil
SWEP.ShootSoundLoopingIndoor = nil
SWEP.ShootSoundTail = nil -- played after the loop ends
SWEP.ShootSoundTailIndoor = nil

SWEP.Silencer = false -- Silencer installed or not?

SWEP.DryFireSound = ""
SWEP.DryFireSingleAction = false -- Play dryfire sound only once

SWEP.FiremodeSound = "arc9/firemode.wav"
SWEP.ToggleAttSound = {
    "arc9/toggles/flashlight_laser_toggle_on_01.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_02.ogg",
    "arc9/toggles/flashlight_laser_toggle_on_03.ogg",
}

SWEP.EnterSightsSound = ""
SWEP.ExitSightsSound = ""

SWEP.EnterBipodSound = "arc9/bipod_down.wav"
SWEP.ExitBipodSound = "arc9/bipod_up.wav"

SWEP.EnterUBGLSound = ""
SWEP.ExitUBGLSound = ""

SWEP.MalfunctionSound = ""

SWEP.MeleeHitSound = "arc9/melee_hitbody.wav"
SWEP.MeleeHitWallSound = "arc9/melee_hitworld.wav"
SWEP.MeleeSwingSound = "arc9/melee_miss.wav"
SWEP.BackstabSound = "weapons/knife/knife_stab.wav"

SWEP.BreathInSound = "arc9/breath_inhale.wav"
SWEP.BreathOutSound = "arc9/breath_exhale.wav"
SWEP.BreathRunOutSound = "arc9/breath_runout.wav"

SWEP.TriggerDownSound = ""
SWEP.TriggerUpSound = ""

-------------------------- EFFECTS

SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = nil -- Used for some muzzle effects.

SWEP.MuzzleEffect = "MuzzleFlash"
SWEP.FastMuzzleEffect = nil

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting
SWEP.AfterShotParticleDelay = 0.01 -- Delay before spawning the particle

SWEP.ImpactEffect = nil
SWEP.ImpactDecal = nil
SWEP.ImpactSound = nil

SWEP.ShellEffect = nil -- Override the ARC9 shell eject effect for your own.
SWEP.ShellEffectCount = 1

SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellMaterial = nil -- string

SWEP.ExtraShellModels = nil -- For eventtable {{model = "", mat = "", scale = 1, physbox = Vector(1, 1, 1), pitch = 100, sounds = {}}}

SWEP.ShellSmoke = true

SWEP.NoShellEject = false -- Don't eject shell on fire
SWEP.ManualActionEjectAnyway = false -- Overrides standard behaviour to eject a shell when a shot is fired and manual action is on.

SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable

SWEP.RicochetSounds = ARC9.RicochetSounds

SWEP.ShellCorrectPos = Vector(0, 0, 0)
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellVelocity = 0 -- nothing for random, otherwise keep this 0 - 2
SWEP.ShellTime = 0.5 -- Extra time these shells stay on the ground for.

SWEP.IgnoreMuzzleDevice = false -- Do not use the attachment muzzle device, use QCA muzzle instead.

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA = nil -- QC Attachment that controls after shot particle.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = nil -- QC Attachment for camera movement.
SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.DoFireAnimation = true

SWEP.NoViewBob = false

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-0, 45, -16.5),
    Ang = Angle(0, 0, 0),
    Magnification = 1,
	
    CrosshairInSights = false,
    Blur = true, -- If arc9_fx_adsblur 1 then blur gun in that ironsights. Disable if your "ironsights" are not real ironsights 
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
}

SWEP.HasSights = true

-- Alternative "resting" position
--When Just Holding The Gun
SWEP.ActivePos = Vector(19, 50,-24) 
SWEP.ActiveAng = Angle(0, -4, -2) 

-- Position while walking/running (no sprint)
SWEP.MovingPos =  Vector(19,50,-20)  
SWEP.MovingAng = Angle(0, 4, -2) 

-- Position when crouchingw
SWEP.CrouchPos = Vector(19,50,-30) --Crouch Pos
SWEP.CrouchAng = Angle(0, 4, -2) --Crouch Pos

-- Position when sprinting or safe
SWEP.RestPos = Vector(-15,50,-45) 
SWEP.RestAng = Angle(65, 5, -25)

-- Overrides RestPos/Ang but only for sprinting
SWEP.SprintPos = nil
SWEP.SprintAng = nil
SWEP.SprintVerticalOffset = true -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads

SWEP.NearWallPos = nil
SWEP.NearWallAng = nil

SWEP.HolsterPos = Vector(-25, 35, -65)
SWEP.HolsterAng = Angle(120, -15, -0)

SWEP.MovingMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

SWEP.SprintMidPoint = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0)
}

-- Position for customizing
SWEP.CustomizePos = Vector(5, 65, 5) 	--Customization Pos
SWEP.CustomizeAng = Angle(-85,15 , -7) 	--Customization Pos
SWEP.CustomizeSnapshotFOV = 110
SWEP.CustomizeSnapshotPos = Vector(0, 0, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.wNoRotate = false

SWEP.BipodPos = Vector(0, 50, -25)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.HeightOverBore = 1

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "ar2"
SWEP.HoldTypeNPC = nil

SWEP.HideBones = {"arml", "arml.001","arml.002","arml.003","armr", "armr.001","armr.002","armr.003"} -- bones to hide in third person and customize menu. {"list", "of", "bones"}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------- ATTACHMENTS

SWEP.Hook_ModifyBodygroups = function(self, data)

    local vm = data.model
    local attached = data.elements

    if attached["optic"] then
        vm:SetBodygroup(1,1)	
	else
	vm:SetBodygroup(1,0)
    end

end

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        DefaultIcon = Material("ui/att_optic.png"),
        Bone = "weapon",
		Pos = Vector(0.2, -5, 25.454),
        Ang = Angle(90, 0, -90),
        Category = {"optic"},
    },
    [2] = {
        PrintName = "Muzzle",
        DefaultIcon = Material("ui/att_barrel.png"),
        Bone = "weapon",
		Pos = Vector(0, 1.2, -65),
        Ang = Angle(-90, 0, -90),
        Category = {"muzzle"},
    },
    [3] = {
        PrintName = "Tactical",
        DefaultIcon = Material("ui/att_tac.png"),
        Bone = "weapon",
		Pos = Vector(-5, 0, -27),
        Ang = Angle(-90, 0, -90),
        Category = {"tac"},
    },
    [4] = {
        PrintName = "Grip",
        DefaultIcon = Material("ui/att_grip.png"),
        Bone = "weapon",
		Pos = Vector(0, 7, -27),
        Ang = Angle(90, 0, -90),
        Category = {"grip"},
    },
    [5] = {
        PrintName = "Ammo Type",
        DefaultIcon = Material("ui/att_ammo.png"),
        Bone = "weapon",
		Pos = Vector(0.2, -5, 25.454),
        Ang = Angle(90, 0, -90),
        Category = {"ammo_type"},
    }
}	 

-- draw
-- ready
-- holster
-- idle_1, idle_2, idle_3...
-- fire
-- fire_1, fire_2, fire_3...
-- dryfire
-- reload
-- reload_empty
-- trigger Trigger delay
-- untrigger Let go of trigger before fire
-- reload_ubgl
-- reload_start_1, reload_start_2, reload_start_3...: For reloads that require losing the spent shells. For example removing spent shells on a revolver or double barrel shotgun.
-- reload_insert_1, reload_insert_2, reload_insert_3...: Animation that reloads multiple rounds in at once, such as a stripper clip.
-- reload_insert_bullet_1, reload_insert_bullet_2, reload_insert_bullet_3...: Animation that reloads one by one at a time, such as a revolver or double barrel shotguns.
-- reload_finish, reload_finish_1, reload_finish_2...: Animation that finishes the reload based off of how much bullets you insert in your gun. _# prefix is bullets left to full after cancel reload.
-- enter_bipod, exit_bipod
-- enter_inspect, exit_inspect, idle_inspect
-- jam
-- fix
-- bash
-- impact
-- enter_sights, exit_sights, idle_sights
-- enter_sprint, exit_sprint, idle_sprint
-- toggle (F)
-- switchsights (alt+e)

-- pinpull (for grenades)
-- throw
-- toss
-- explodeinhands
-- touchoff (for C4)

-- Suffixes (Must be in this order):
-- _ubgl
-- _primed (Grenade primed)
-- _iron (When sighted)
-- _sights (Alternative to _iron)
-- _blindfire_left
-- _blindfire_right
-- _blindfire
-- _bipod
-- _sprint
-- _walk
-- _empty
-- _ubgl (again)
-- _uncycled
-- _detonator

-- Not necessary; if your sequences are named the same as animations, they will be used automatically.

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 4,
    },
	["ready"] = {
        Source = "fire",
        Time = 1,
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
        EventTable = {
            {s = "weapons/arccw/herstal_reload.wav", t = 22 / 30, c = CHAN_ITEM, shelleject = true },
		}		
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_VM_PULLBACK,
        Checkpoints = {16, 30},
        FrameRate = 30,
        EventTable = {
            {s = "weapons/arccw/herstal_reload_empty.wav", t = 22 / 30, c = CHAN_ITEM, shelleject = true },
		}		
    },
    ["draw"] = {
         Source = "draw",  --QC sequence source, can be {"table", "of", "strings"} or "string"
         RareSource = "draw",  --Has a small chance to play instead of normal source
         RareSourceChance = 0.01,  --chance that rare source will play
         Time = 0.5,  --overrides the duration of the sequence
         Mult = 1,  --multiplies time
         Reverse = false,  --Reverse the animation
         EjectAt = 0,  --Eject a shell at this time
         InstantIdle = false,  --For firing animations, do not delay idle. Use only for guns with long shoot animations
         DelayedIdle = false,  --Idle immediately after playing this animation
	}
}

SWEP.SuppressDefaultSuffixes = false -- Animations won't automatically play _iron, _empty, etc. versions of animations
SWEP.SuppressDefaultAnimations = false -- Animations won't automatically generated based on sequences defined in QC
SWEP.SuppressEmptySuffix = false -- _empty animations won't automatically trigger.
SWEP.SuppressSprintSuffix = false -- _sprint animations won't automatically trigger.
SWEP.SuppressDefaultEvents = false -- Animations will not trigger animation events.
SWEP.SuppressCumulativeShoot = false -- fire_1, fire_2, and fire_3 will not automatically trigger.

SWEP.Primary.Automatic = true
SWEP.Primary.DefaultClip = 20

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.DrawCrosshair = true

SWEP.ARC9 = true

SWEP.m_bPlayPickupSound = false

SWEP.PCFs = {}

