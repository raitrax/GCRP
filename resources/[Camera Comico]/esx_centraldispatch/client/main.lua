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
local PlayerData					= {}
local plyCar				= false
local startped			  	= false
local prime 				= Config.Missions.prime
local forceStopMission		= false
local IsInNpcMission		= false
local PlayerData			= {}
local PlayerCoords			= {}
_G.TowtruckIsExit 			= false

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

Citizen.CreateThread(function()
	while true do
	Citizen.Wait(10)
		if IsControlPressed(0, Keys["H"]) then
			TriggerServerEvent('esx_centraldispatch:opdhmn')
		end
		if IsControlJustPressed(1, Keys["BACKSPACE"]) then
			ESX.UI.Menu.CloseAll()
		end
	end
end)


function OpenDispatchMenu(playerjob, playerjobgrade)

  local elements = {}
	if playerjob == 'police' then
		table.insert(elements, {label = _U('emergency_call'), value = 'emergency_call'})
		table.insert(elements, {label = "---------------------------------------------------------------------"})
	end
	
	if playerjob == 'police' or playerjob == 'ambulance' then 
		table.insert(elements, {label = _U('backups'), value = 'backups'})
	end

	table.insert(elements, {label = _U('call_tow_truck'), value = 'call_tow_truck'})

	if playerjob == 'police' then 
		if IsInNpcMission == true then
			table.insert(elements, {label = _U('npc_missions_stop'), value = 'npc_missions_stop'})
		else
			table.insert(elements, {label = _U('npc_missions_start'), value = 'npc_missions_start'})
		end
	end

	table.insert(elements, {label = _U('exit_menu')})
  

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'dispatch',
    {
      title    = 'police.png',
      align    = 'top-left',
      elements = elements,
    },
    function(data, menu)
			menu.close()

		PedPosition = GetEntityCoords(GetPlayerPed(-1))
		PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }

		if data.current.value == 'backups' then
			OpenBackupsMenu(playerjob, playerjobgrade)
		end

		if data.current.value == 'npc_missions_start' then
			forceStopMission = false
			IsInNpcMission = true
			startNpcMission(Config.Missions.available)
		end

		if data.current.value == 'npc_missions_start' then
			if IsInNpcMission == true then
				forceStopMission = true
			end
		end

		if data.current.value == 'emergency_call' then
			TriggerServerEvent('gcphone:sendMessage', 'police', _U('emergency_call_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
		end

		if data.current.value == 'call_tow_truck' then
			if _G.TowtruckIsExit == false then
				vehicle = GetClosestVehicle(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z, 7.0, 0, 70)
				callTowTruck(vehicle)
			else
				ESX.ShowNotification(_U('call_tow_truck_exited'))
			end
		end
      
    end)
end

function OpenBackupsMenu(playerjob, playerjobgrade)

  local elements = {}

	if playerjob == 'police' then
  		table.insert(elements, {label = _U('fib'), value = 'fib'})
	end
	if playerjob == 'police' or playerjob == 'fib' then
		table.insert(elements, {label = _U('swat'), value = 'swat'})
	end

	table.insert(elements, {label = _U('police'), value = 'police'})

	if playerjob == 'police' then
		table.insert(elements, {label = _U('ems'), value = 'ems'})
	end

	table.insert(elements, {label = _U('firedep'), value = 'firedep'})

	table.insert(elements, {label = _U('exit_menu')})



  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'backups',
    {
      title    = 'police.png',
      align    = 'top-left',
      elements = elements,
    },
    function(data, menu)
		menu.close()

		PedPosition = GetEntityCoords(GetPlayerPed(-1))
		local PlayerCoords = { x = PedPosition.x, y = PedPosition.y, z = PedPosition.z }

		if data.current.value == 'fib' then
			if playerjobgrade >= 3 then
				TriggerServerEvent('esx_phone:send', 'fib', _U('fib_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
			else
				ESX.ShowNotification(_U('grade_error'))
			end
		end

		if data.current.value == 'police' then
			TriggerServerEvent('gcphone:sendMessage', 'police', _U('police_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
		end

		if data.current.value == 'swat' then
			if playerjobgrade >= 3 then
				TriggerServerEvent('esx_phone:send', 'police', _U('swat_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
			else
				ESX.ShowNotification(_U('grade_error'))
			end
		end
		
		if data.current.value == 'ems' then
			TriggerServerEvent('esx_phone:send', 'ambulance', _U('ems_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
		end

		if data.current.value == 'firedep' then
			TriggerServerEvent('esx_phone:send', 'firedep', _U('firedep_message')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z })
		end
      
    end)
end


function startNpcMission(missions)
	local missionResult = false
	mission = math.randomchoice(missions)
	if mission == 'stolensvehicle' then
		missionResult = StolensVehicles()
	else
		return false
	end
	if missionResult == true then
		forceStopMission = false
		IsInNpcMission = false
		TriggerServerEvent('esx_centraldispatch:prime', prime)
		DrawNotif(_U('company'), _U('prime_1')..prime.._U('prime_2'))
	elseif missionResult == 'coords-error' then
		forceStopMission = false
		IsInNpcMission = false
		DrawNotif(_U('ANPR'), _U('not_found'))
	else
		forceStopMission = false
		IsInNpcMission = false
	end
	return true
end

function StolensVehicles()
		Citizen.Wait(10)
		local timeout			= 0
		local essence 			= math.random(80, 100)
		local playerPed			= GetPlayerPed(-1)
		local SpawnVehicle		= math.randomchoice(Config.Missions.StolensVehicles.Spawns)
		local RandomModel		= nil
		local RandomPed 		= math.randomchoice(Config.Missions.PedList.normal)
		local localisation 		= nil
		local PedPosition 		= nil
		local road 				= math.randomchoice(Config.Missions.StolensVehicles.Roads)
		local rideto 			= math.randomchoice(road)
		local playerPedCoords	= GetEntityCoords(playerPed)

		if SpawnVehicle.isemergencycar == true then
			RandomModel = math.randomchoice(Config.Missions.StolensVehicles.EmergencyCarsList)
		else
			RandomModel = math.randomchoice(Config.Missions.StolensVehicles.CarsList)
		end

		if GetDistanceBetweenCoords(playerPedCoords.x, playerPedCoords.y, playerPedCoords.z, SpawnVehicle.position.x, SpawnVehicle.position.y, SpawnVehicle.position.z) < SpawnVehicle.position.r1 then
			return 'coords-error'
		end

		RequestModel(RandomModel)
		while not HasModelLoaded(RandomModel) do
			Citizen.Wait(10)
		end

		RequestModel(RandomPed)
		while not HasModelLoaded(RandomPed) do
			Citizen.Wait(10)
		end

		plyCar 		= 	CreateVehicle(RandomModel, SpawnVehicle.position.x, SpawnVehicle.position.y, SpawnVehicle.position.z, 0, 0, true, false)
		startped 	= 	CreatePedInsideVehicle(plyCar, 4, RandomPed, -1, true, false)
		TriggerEvent("advancedFuel:setEssence", essence , GetVehicleNumberPlateText(plyCar), GetDisplayNameFromVehicleModel(GetEntityModel(plyCar)))

		PedPosition = GetEntityCoords(plyCar)
		DrawNotif(_U('ANPR'), _U('stolens_vehicles')..' '.._U('locate_by_civilian')..' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)))

		localisation_plyCar = AddBlipForEntity(plyCar)
		SetBlipAsFriendly(localisation_plyCar, false)
		SetBlipCategory(localisation_plyCar, 1)
		SetBlipRoute(localisation_plyCar, true)
		SetBlipColour(localisation_plyCar, 6)
		SetPoliceRadarBlips(true)

		localisation_startped = AddBlipForEntity(startped)
		SetBlipAsFriendly(localisation_startped, false)
		SetBlipCategory(localisation_startped, 1)
		SetBlipRoute(localisation_startped, false)
		SetBlipColour(localisation_startped, 6)
		SetPoliceRadarBlips(true)

		TaskGoToCoordAnyMeans(startped, rideto.x, rideto.y, rideto.y, rideto.z, 0, 0, 0, 0xbf800000)

		while true do
			PedPosition = GetEntityCoords(plyCar)
			if forceStopMission == true or IsControlJustPressed(1, Keys["RIGHTCTRL"]) then
				HideNumberOnBlip(localisation_plyCar)
				HideNumberOnBlip(localisation_startped)
				DeleteEntity(plyCar)
				DeleteEntity(startped)
				DrawNotif(_U('ANPR'), _U('cancel_1').. ' '.. _U('stolens_vehicles') .. ' ' .. _U('cancel_2') .. ' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)))
				return false
			end
			if GetDistanceBetweenCoords(rideto.x, rideto.y, rideto.y, rideto.z, PedPosition.x, PedPosition.y, PedPosition.z) < 35 then
				rideto = math.randomchoice(road)
				TaskGoToCoordAnyMeans(startped, rideto.x, rideto.y, rideto.y, rideto.z, 0, 0, 0, 0xbf800000)
			end
			timeout = timeout+100
			Citizen.Wait(100)
			if timeout == Config.Missions.StolensVehicles.timeout then
				HideNumberOnBlip(localisation_plyCar)
				HideNumberOnBlip(localisation_startped)
				DeleteEntity(plyCar)
				DeleteEntity(startped)
				DrawNotif(_U('ANPR'), _U('cancel_1').. ' '.. _U('stolens_vehicles') .. ' ' .. _U('cancel_2') .. ' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)))
				return false
			else
				local display_timeout = (Config.Missions.StolensVehicles.timeout-timeout)/1000
				DrawMissionText('Fin de la mission: ~b~~y~'..display_timeout..'~w~s', 2000)
				if (GetEntityHealth(startped) == 0 or GetEntityHealth(plyCar) == 0) then
					HideNumberOnBlip(localisation_plyCar)
					HideNumberOnBlip(localisation_startped)
					DeleteEntity(plyCar)
					DeleteEntity(startped)
					DrawNotif(_U('ANPR'), _U('end_mission_1').. ' '.. _U('stolens_vehicles') .. ' ' .. _U('end_mission_2') .. ' '.._U(GetNameOfZone(PedPosition.x, PedPosition.y, PedPosition.z)))
					return true
				end
			end
		end
end

function callTowTruck(vehicle)

	_G.TowtruckIsExit = true

	if vehicle == 0 then
		ESX.ShowNotification(_U('call_tow_truck_vehnotfound'))
		_G.TowtruckIsExit = false
		return false
	end

	RandomPed		= math.randomchoice(Config.Missions.PedList.towtrucker)
	RandomModel		= 'towtruck'
	TowtruckCentral	= Config.TowtruckCentrals[1]

	RequestModel(RandomModel)
	while not HasModelLoaded(RandomModel) do
		Citizen.Wait(10)
	end

	RequestModel(RandomPed)
	while not HasModelLoaded(RandomPed) do
		Citizen.Wait(10)
	end

	towtruck 		= 	CreateVehicle(RandomModel, TowtruckCentral.x, TowtruckCentral.y, TowtruckCentral.z, 0, 0, true, false)
	towtrucker 		= 	CreatePedInsideVehicle(towtruck, 4, RandomPed, -1, true, false)

	towtruck_coords = GetEntityCoords(towtrucker)
	vehicle_coords 	= GetEntityCoords(vehicle)
	
	Citizen.Wait(100)
	TaskGoToCoordAnyMeans(towtrucker, vehicle_coords.x, vehicle_coords.y, vehicle_coords.y, vehicle_coords.z, 0, 0, 0, 0xbf800000)
	ESX.ShowNotification(_U('called_tow_truck')..'~b~'..GetVehicleNumberPlateText(vehicle)..'~w~'.._U('call_tow_truck_location').._U(GetNameOfZone(TowtruckCentral.x, TowtruckCentral.y, TowtruckCentral.z)))
	while true do
		towtruck_coords = GetEntityCoords(towtruck)
		vehicle_coords_now 	= GetEntityCoords(vehicle)
		if GetDistanceBetweenCoords(towtruck_coords.x, towtruck_coords.y, towtruck_coords.z, vehicle_coords.x, vehicle_coords.y, vehicle_coords.z) < 5 then
			if GetDistanceBetweenCoords(towtruck_coords.x, towtruck_coords.y, towtruck_coords.z, vehicle_coords_now.x, vehicle_coords_now.y, vehicle_coords_now.z) < 5 then
				Citizen.Wait(1000)
				AttachVehicleToTowTruck(towtruck, vehicle, true, 0, 0, 0)
				Citizen.Wait(1000)
				TaskGoToCoordAnyMeans(towtrucker, TowtruckCentral.x, TowtruckCentral.y, TowtruckCentral.y, TowtruckCentral.z, 0, 0, 0, 0xbf800000)
				ESX.ShowNotification(_U('call_tow_truck_success'))
				_G.TowtruckIsExit = false
				return true
			else
				ESX.ShowNotification(_U('call_tow_truck_moved'))
				Citizen.Wait(1000)
				TaskGoToCoordAnyMeans(towtrucker, TowtruckCentral.x, TowtruckCentral.y, TowtruckCentral.y, TowtruckCentral.z, 0, 0, 0, 0xbf800000)
				_G.TowtruckIsExit = false
				return false
			end
		end
		Citizen.Wait(100)
	end
end

RegisterNetEvent('esx_centraldispatch:localmessage')
AddEventHandler('esx_centraldispatch:localmessage', function(type, message, jobreceiver, PlayerCoords)

	localisation_mission = AddBlipForCoord(PlayerCoords.x, PlayerCoords.y, PlayerCoords.z)
	DrawNotif(type, message)
	SetBlipAsFriendly(localisation_mission, false)
	SetBlipCategory(localisation_mission, 1)
	SetBlipRoute(localisation_mission, true)
	SetBlipColour(localisation_mission, 1)

	while true do
		Citizen.Wait(10)
		playerPedCoords = GetEntityCoords(GetPlayerPed(-1))
		if IsControlJustPressed(1, Keys["RIGHTCTRL"]) then
			if DoesBlipExist(localisation_mission) then
				RemoveBlip(localisation_mission)
			end
			DrawNotif(type, _U('close_need_backups'))
			return true
		end
	end

end)

RegisterNetEvent('esx_centraldispatch:opendispatchmenu')
AddEventHandler('esx_centraldispatch:opendispatchmenu', function(playerjob, playerjobgrade)
	OpenDispatchMenu(playerjob, playerjobgrade)
end)


function DrawNotif(type, message)
	SetNotificationTextEntry("STRING");
	AddTextComponentString(message);
	SetNotificationMessage("CHAR_CALL911", "CHAR_CALL911", true, 1, "~g~Dispatch~s~", type);
	DrawNotification(false, true);
end

function DrawMissionText(msg, time)
  ClearPrints()
  SetTextEntry_2('STRING')
  AddTextComponentString(msg)
  DrawSubtitleTimed(time, 1)
end

function math.randomchoice(t)
    local keys = {}
    for key, value in pairs(t) do
        keys[#keys+1] = key
    end
    index = keys[math.random(1, #keys)]
    return t[index]
end