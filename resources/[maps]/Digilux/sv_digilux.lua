local hasTriggered = false
RegisterServerEvent('Digilux:PlyLoaded')
AddEventHandler('Digilux:PlyLoaded', function()
    if hasTriggered then else
        TriggerClientEvent('Digilux:CreateEnts',source)
        hasTriggered = true
    end
end)