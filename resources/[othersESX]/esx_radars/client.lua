--===============================================--===============================================
--= stationary radars based on  https://github.com/DreanorGTA5Mods/StationaryRadar           =
--===============================================--===============================================



ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

local radares = {
    {x = 379.68807983398, y = -1048.3527832031, z = 29.250692367554},
    {x = -253.10794067383, y = -630.20385742188, z = 33.002685546875},
    {x = -623.44421386719, y = -823.08361816406, z = 25.25704574585},
	{x = -652.44421386719, y = -854.08361816406, z = 24.55704574585},
	{x = 1623.0114746094, y = 1068.9924316406, z = 80.903594970703},
	{x = -2604.8994140625, y = 2996.3391113281, z = 27.528566360474},
	{x = 2136.65234375, y = -591.81469726563, z = 94.272926330566},
	{x = 2117.5764160156, y = -558.51013183594, z = 95.683128356934},
	{x = 406.89505004883, y = -969.06286621094, z = 29.436267852783},-- radar6 commico.

}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        for k,v in pairs(radares) do
            local player = GetPlayerPed(-1)
            local coords = GetEntityCoords(player, true)
            if Vdist2(radares[k].x, radares[k].y, radares[k].z, coords["x"], coords["y"], coords["z"]) < 20 then
                if PlayerData.job ~= nil and not (PlayerData.job.name == 'police' or PlayerData.job.name == 'ambulance') then
                    checkSpeed()
                end
            end
        end
    end
end)

function checkSpeed()
    local pP = GetPlayerPed(-1)
    local speed = GetEntitySpeed(pP)
    local vehicle = GetVehiclePedIsIn(pP, false)
    local driver = GetPedInVehicleSeat(vehicle, -1)
    local plate = GetVehicleNumberPlateText(vehicle)
    local maxspeed = 45
    local mphspeed = math.ceil(speed*2.236936)
	local fineamount = nil
	local finelevel = nil
	local truespeed = mphspeed
    if mphspeed > maxspeed and driver == pP then
        Citizen.Wait(250)
        TriggerServerEvent('fineAmount', mphspeed)
	if truespeed >= 50 and truespeed <= 60 then
	fineamount = Config.Fine
	finelevel = '10mph Over Limit'
	end
	if truespeed >= 60 and truespeed <= 70 then
	fineamount = Config.Fine2
	finelevel = '20mph Over Limit'
	end
	if truespeed >= 70 and truespeed <= 80 then
	fineamount = Config.Fine3
	finelevel = '30mph Over Limit'
	end
	if truespeed >= 80 and truespeed <= 500 then
	fineamount = Config.Fine4
	finelevel = '40mph Over Limit'
	end
        exports.pNotify:SetQueueMax("left", 1)
        exports.pNotify:SendNotification({
            text = "<h2><center>Speed Camera</center></h2>" .. "</br>You've been issued a fine for speeding!</br>Plate Number: " .. plate .. "</br>Fine Amount: $" .. fineamount .. "</br>Violation: " .. finelevel .. "</br>Speed Limit: " .. maxspeed .. "</br>Your Speed: " ..mphspeed,
            type = "error",
            timeout = 9500,
            layout = "centerLeft",
            queue = "left"
        })
    end
end

