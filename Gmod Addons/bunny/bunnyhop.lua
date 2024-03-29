-- activate bunnyhop
local function EnableBunnyhop(ply)
    ply:SetNWBool("BunnyhopEnabled", true)
    ply:PrintMessage(HUD_PRINTTALK, "Bunnyhop activated !")
end

-- deactivate bunnyhop
local function DisableBunnyhop(ply)
    ply:SetNWBool("BunnyhopEnabled", false)
    ply:PrintMessage(HUD_PRINTTALK, "Bunnyhop deactivated.")
end

-- Hook for playerhop
hook.Add("PlayerButtonDown", "Bunnyhop_PlayerButtonDown", function(ply, button)
    if ply:GetNWBool("BunnyhopEnabled") and button == IN_JUMP and ply:OnGround() then
        local currentVelocity = ply:GetVelocity()
        local additionalVelocity = Vector(2, 2, 200)
        ply:SetVelocity(currentVelocity + additionalVelocity)
    end
end)

-- console command for activating Bhop
concommand.Add("enable_bunnyhop", function(ply)
    EnableBunnyhop(ply)
end)

-- console command for deactivating Bhop
concommand.Add("disable_bunnyhop", function(ply)
    DisableBunnyhop(ply)
end)