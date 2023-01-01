ATT.PrintName = "Tactical Light"
ATT.Icon = Material("entities/acwatt_flashlight.png") --Attachment PNG Location
ATT.Description = [[Side mounted tactical light.]]

ATT.SortOrder = 0

ATT.Model = "models/ut_weapons/attachments/tac_flashlight.mdl"
ATT.BoxModel = "models/items/arc9/att_plastic_box.mdl" --"models/items/arc9/att_plastic_box.mdl" 

ATT.ToggleOnF = true -- This attachment is toggleable with the flashlight key.
ATT.ToggleStats = {
    {
        PrintName = "Light",
        Flashlight = true,
        FlashlightColor = Color(255, 255, 255),
        FlashlightMaterial = "effects/flashlight001", -- Not material but texture, you need here path to vtf file
        FlashlightBrightness = 3,
        FlashlightDistance = 1024,
        FlashlightFOV = 70,
        FlashlightAttachment = 1,  
        Flare = true,
        FlareColor = Color(55, 55, 55),
        FlareSize = 300,
        FlareAttachment = 1   
    },
    {
        PrintName = "None"
    }
}

ATT.Category = "tac" -- can be "string" or {"list", "of", "strings"}
ATT.ActivateElements = {"tac"}

ATT.AutoStats = true



