AddCommand("pos", function(player, name)
    x, y, z = GetPlayerLocation(player)
    SaveCoords(player, name, x, y, z)
end)

function SaveCoords(player, name, x, y, z)
    plyName = GetPlayerName(player)
    file = io.open(plyName.."-SavedCoords.txt", "a")
    if name == nil then
        AddPlayerChat(player, "Proper Usage : /pos <name>")
    end
    if file then
        file:write(name .." | " ..x.. ", " ..y.. ", " ..z.. "\n")
        AddPlayerChat(player, "Saved Position " ..name.. " X: " ..x.. " Y: " ..y.. " Z: " ..z.. " to ".. plyName.."-SavedCoords.txt")
    end
    file:close()
end
