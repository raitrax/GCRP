ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('hazmat', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('hazmat', 1)
        TriggerClientEvent('esx_tenues:settenuehazmat', _source)
end)

ESX.RegisterUsableItem('lourde', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('lourde', 1)
        TriggerClientEvent('esx_tenues:settenuelourde', _source)
end)
