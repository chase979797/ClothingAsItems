local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('qb-clothing-items:useClothing', function(clothingType)
    local playerPed = PlayerPedId()

    if clothingType == "torso" then
        SetPedComponentVariation(playerPed, 11, 15, 0, 2)  -- Example torso
    elseif clothingType == "legs" then
        SetPedComponentVariation(playerPed, 4, 21, 0, 2)   -- Example jeans
    elseif clothingType == "hat" then
        SetPedPropIndex(playerPed, 0, 5, 0, true)          -- Example hat
    elseif clothingType == "jacket" then
        SetPedComponentVariation(playerPed, 9, 2, 0, 2)    -- Example jacket
    elseif clothingType == "shoes" then
        SetPedComponentVariation(playerPed, 6, 34, 0, 2)   -- Example shoes
    end

    QBCore.Functions.Notify("You have equipped " .. clothingType, "success")
end)