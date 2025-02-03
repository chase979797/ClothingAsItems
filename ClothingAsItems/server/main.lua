local QBCore = exports['qb-core']:GetCoreObject()

for itemName, itemData in pairs(Config.ClothingItems) do
    QBCore.Functions.CreateUseableItem(itemName, function(source, item)
        TriggerClientEvent('qb-clothing-items:useClothing', source, itemData.type)
    end)
end