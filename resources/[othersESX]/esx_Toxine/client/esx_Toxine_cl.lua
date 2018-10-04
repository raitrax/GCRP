local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local PID           			= 0
local GUI           			= {}
local ToxineQTE       				= 0
ESX 			    			= nil
GUI.Time            			= 0
local Toxine_poochQTE 				= 0
local myJob 					= nil
local PlayerData 				= {}
local GUI 						= {}
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

AddEventHandler('esx_Toxine:hasEnteredMarker', function(zone)

        ESX.UI.Menu.CloseAll()

        --Toxine
        if zone == 'ToxineFarm' then
            if myJob ~= "police" then
                CurrentAction     = 'Toxine_harvest'
                CurrentActionMsg  = _U('press_collect_Toxine')
                CurrentActionData = {}
            end
        end

        if zone == 'ToxineTreatment' then
            if myJob ~= "police" then
                if ToxineQTE >= 10 then
                    CurrentAction     = 'Toxine_treatment'
                    CurrentActionMsg  = _U('press_process_Toxine')
                    CurrentActionData = {}
                end
            end
        end

        if zone == 'ToxineResell' then
            if myJob ~= "police" then
                if Toxine_poochQTE >= 1 then
                    CurrentAction     = 'Toxine_resell'
                    CurrentActionMsg  = _U('press_sell_Toxine')
                    CurrentActionData = {}
                end
            end
        end
    end)

AddEventHandler('esx_Toxine:hasExitedMarker', function(zone)

        CurrentAction = nil
        ESX.UI.Menu.CloseAll()

        TriggerServerEvent('esx_Toxine:stopHarvestToxine')
        TriggerServerEvent('esx_Toxine:stopTransformToxine')
        TriggerServerEvent('esx_Toxine:stopSellToxine')
end)

-- Render markers
Citizen.CreateThread(function()
    while true do

        Wait(0)

        local coords = GetEntityCoords(GetPlayerPed(-1))

        for k,v in pairs(Config.Zones) do
            if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.DrawDistance) then
                DrawMarker(Config.MarkerType, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
            end
        end

    end
end)

-- RETURN NUMBER OF ITEMS FROM SERVER
RegisterNetEvent('esx_Toxine:ReturnInventory')
AddEventHandler('esx_Toxine:ReturnInventory', function(ToxineNbr, ToxinepNbr, jobName, currentZone)
	ToxineQTE       = ToxineNbr
	Toxine_poochQTE = ToxinepNbr
	myJob         = jobName
	TriggerEvent('esx_Toxine:hasEnteredMarker', currentZone)
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
    while true do

        Wait(0)

        local coords      = GetEntityCoords(GetPlayerPed(-1))
        local isInMarker  = false
        local currentZone = nil

        for k,v in pairs(Config.Zones) do
            if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.ZoneSize.x / 2) then
                isInMarker  = true
                currentZone = k
            end
        end

        if isInMarker and not hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = true
            lastZone                = currentZone
            TriggerServerEvent('esx_Toxine:GetUserInventory', currentZone)
        end

        if not isInMarker and hasAlreadyEnteredMarker then
            hasAlreadyEnteredMarker = false
            TriggerEvent('esx_Toxine:hasExitedMarker', lastZone)
        end

    end
end)

-- Key Controls
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if CurrentAction ~= nil then
            SetTextComponentFormat('STRING')
            AddTextComponentString(CurrentActionMsg)
            DisplayHelpTextFromStringLabel(0, 0, 1, -1)
            if IsControlJustReleased(0, 38) then
                if CurrentAction == 'Toxine_harvest' then
                    TriggerServerEvent('esx_Toxine:startHarvestToxine')
                end
                if CurrentAction == 'Toxine_treatment' then
                    TriggerServerEvent('esx_Toxine:startTransformToxine')
                end
                if CurrentAction == 'Toxine_resell' then
                    TriggerServerEvent('esx_Toxine:startSellToxine')
                end
                CurrentAction = nil
            end
        end
    end
end)