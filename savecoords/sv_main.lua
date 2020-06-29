AddCommand("pos", function(player, name)
    x, y, z = GetPlayerLocation(player)
    h = GetPlayerHeading(player)
    SaveCoords(player, name, x, y, z, h)
end)

function SaveCoords(player, name, x, y, z, h)
    plyName = GetPlayerName(player)
    file = io.open(plyName.."-SavedCoords.txt", "a")
    if name == nil then
        AddPlayerChat(player, "Proper Usage : /pos <name>")
    end
    
    if file then
        local pvehicle = GetPlayerVehicle(player)
        if(pvehicle == 0) then
            file:write(name .." | " ..x.. ", " ..y.. ", " ..z.. ":" ..h.."\n")
            AddPlayerChat(player, "Saved Position " ..name.. " X: " ..x.. " Y: " ..y.. " Z: " ..z.. "H: " ..h.. " to ".. plyName.."-SavedCoords.txt")
        else
            local x,y,z = GetVehicleLocation(pvehicle)
            local h = GetVehicleHeading(pvehicle)
            file:write("vehicle-"..name.." | "..x..", "..y..", "..z..":"..h.."\n")
            AddPlayerChat(player, "Saved Vehicleposition "..name.." X: "..x.." Y: "..y.." Z: "..z.." H: "..h.." to "..plyName.."-SavedCoords.txt")
        end
    end
    file:close()
end
