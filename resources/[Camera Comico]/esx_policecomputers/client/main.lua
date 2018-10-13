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

ESX 						= nil
local PlayerData			= {}
local PlayerPed 			= GetPlayerPed(-1)
local PlayerCoords 			= GetEntityCoords(PlayerPed, true)
local inMenu 				= false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(1)
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

--[[
Citizen.CreateThread(function()
	while true do
	Citizen.Wait(10)
		if IsControlJustPressed(1, Keys["PAGEDOWN"]) then
			TriggerServerEvent('esx_centraldispatch:opdhmn')
		end
		if IsControlJustPressed(1, Keys["BACKSPACE"]) then
			ESX.UI.Menu.CloseAll()
		end
	end
end)
--]]


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		PlayerCoords = GetEntityCoords(PlayerPed, true)
		for key, valeur in pairs(Config.Computers) do
			if GetDistanceBetweenCoords(Config.Computers[key].x, Config.Computers[key].y, Config.Computers[key].z, PlayerCoords.x, PlayerCoords.y, PlayerCoords.z) < 0.5 then
				DisplayHelpText(_U('open_computer'),4,1,0.5,0.8,1.0,255,255,255,255)
				if IsControlJustPressed(1, Keys["E"]) then
					inMenu = true
					SetNuiFocus(true, true)
					SendNUIMessage({type = 'OpenPoliceComputer'})
				end
				if IsControlJustPressed(1, Keys["ESC"]) then
					inMenu = false
					SetNuiFocus(false, false)
					SendNUIMessage({type = 'close'})
				end
			end
		end
	end
end)

RegisterNUICallback('NUIFocusOff', function()
  inMenu = false
  SetNuiFocus(false, false)
  SendNUIMessage({type = 'closeAll'})
end)

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function math.randomchoice(t)
    local keys = {}
    for key, value in pairs(t) do
        keys[#keys+1] = key
    end
    index = keys[math.random(1, #keys)]
    return t[index]
end