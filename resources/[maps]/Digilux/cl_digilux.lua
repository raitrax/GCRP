ymapPedTab = ymapPedTab or {}
ymapVehTab = ymapVehTab or {}

ymapPedTab = {
        {-27.5472832, -1675.289, 29.5099926, 129.995834, -2018356203, 'WORLD_HUMAN_MOBILE_FILM_SHOCKING', 0, 'Unarmed', 'ymapped0'},
        {-30.9070243, -1674.05371, 29.5100117, 55.0979424, 368603149, 'WORLD_HUMAN_DRINKING', 0, 'Unarmed', 'ymapped1'},
        {-27.71496, -1683.49341, 29.5100117, 30.3299389, 653289389, 'WORLD_HUMAN_CLIPBOARD', 0, 'Unarmed', 'ymapped2'},
}

ymapVehTab = {
}

RegisterNetEvent('Digilux:CreateEnts')
AddEventHandler('Digilux:CreateEnts', function()
    Citizen.CreateThread(function()
        for k,v in pairs(ymapPedTab) do
            local x, y, z, h, hash, action, relationship, weapon, pedname = table.unpack(v)
            RequestModel(hash)
            while not HasModelLoaded(hash) do
                Citizen.Wait(0)
            end
            pedname = CreatePed(-1, hash, x, y, z, h, true, false)
            relationship = tonumber(relationship)
            SetRelationshipBetweenGroups(relationship, GetPedRelationshipGroupHash(GetPlayerPed(-1)), GetPedRelationshipGroupHash(pedname))
            SetRelationshipBetweenGroups(relationship, GetPedRelationshipGroupHash(pedname), GetPedRelationshipGroupHash(GetPlayerPed(-1)))
            TaskStartScenarioInPlace(pedname, action, 0, true)
            if weapon == 'Unarmed' then
            else
                GiveWeaponToPed(pedname, weapon, 60, false, true)
            end
        end

        for k,v in pairs(ymapVehTab) do
            local x, y, z, h, hash, primarycolour, secondarycolour, vehname, sirensactive = table.unpack(v)
            RequestModel(hash)
            while not HasModelLoaded(hash) do
                Citizen.Wait(0)
            end
            vehname = CreateVehicle(hash, x, y, z, h, true, true)
            SetVehicleColours(vehname, primarycolour, secondarycolour)
            SetVehicleSiren(vehname, sirensactive)
        end
    end)
end)

TriggerServerEvent('Digilux:PlyLoaded')