
local function SpawnCarProp(pos, ang)
    local carProp = ents.Create("prop_vehicle_jeep")
    carProp:SetModel("models/props_vehicles/car001a.mdl")
    carProp:SetPos(pos)
    carProp:SetAngles(ang)
    carProp:Spawn()
    carProp:Activate()

    return carProp
end


concommand.Add("spawn_car_prop", function(ply, cmd, args)
    if IsValid(ply) and ply:IsAdmin() then
        local trace = ply:GetEyeTrace()
        local carProp = SpawnCarProp(trace.HitPos, ply:EyeAngles())

        print("Voiture prop créée par " .. ply:Nick())
    end
end)