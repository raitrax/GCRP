ESX = nil

local players = {}

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'gouvernor', Config.MaxInService)
end

TriggerEvent('esx_society:registerSociety', 'gouvernor', 'Gouvernement', 'society_gouvernor', 'society_gouvernor', 'society_gouvernor', {type = 'public'})
-----------------------------------------------------

RegisterServerEvent("esx_gouverneur:addPlayer")
AddEventHandler("esx_gouverneur:addPlayer", function(jobName)
	local _source = source
	players[_source] = jobName
end)

RegisterServerEvent('esx_gouverneur:OutVehicle')
AddEventHandler('esx_gouverneur:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'gouvernor' then
		TriggerClientEvent('esx_gouverneur:OutVehicle', target)
	else
		print(('esx_gouverneur: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

ESX.RegisterServerCallback('esx_gouverneur:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

RegisterServerEvent('esx_gouverneur:handcuff')
AddEventHandler('esx_gouverneur:handcuff', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'gouvernor' then
		TriggerClientEvent('esx_gouverneur:handcuff', target)
	else
		print(('esx_gouverneur: %s attempted to handcuff a player (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('esx_gouverneur:putInVehicle')
AddEventHandler('esx_gouverneur:putInVehicle', function(target)
	TriggerClientEvent('esx_gouverneur:putInVehicle', target)
end)

RegisterServerEvent('esx_gouverneur:drag')
AddEventHandler('esx_gouverneur:drag', function(target)
	TriggerClientEvent('esx_gouverneur:drag', target, source)
end)

RegisterServerEvent('esx_gouverneur:message')
AddEventHandler('esx_gouverneur:message', function(target, msg)
	TriggerClientEvent('esx:showNotification', target, msg)
end)

RegisterServerEvent("esx_gouverneur:sendSonnette")
AddEventHandler("esx_gouverneur:sendSonnette", function()
	local _source = source
	for i,k in pairs(players) do
		if(k~=nil) then
			if(k == "gouvernor") then
				TriggerClientEvent("esx_gouverneur:sendRequest", i, GetPlayerName(_source), _source)
			end
		end
	end

end)

RegisterServerEvent("esx_gouverneur:sendStatusToPoeple")
AddEventHandler("esx_gouverneur:sendStatusToPoeple", function(id, status)
	TriggerClientEvent("esx_gouverneur:sendStatus", id, status)
end)

-------------------------------------------------------

TriggerEvent('esx_phone:registerNumber', 'gouvernor', _U('client'), true, true)

AddEventHandler('esx_phone:ready', function()

	TriggerEvent('esx_phone:registerCallback', function(source, phoneNumber, message, anon)

		local xPlayer  = ESX.GetPlayerFromId(source)
		local xPlayers = ESX.GetPlayers()
		local job      = 'Citoyen'

		if phoneNumber == "gouvernor" then

			for i=1, #xPlayers, 1 do

				local xPlayer2 = ESX.GetPlayerFromId(xPlayers[i])
				
				if xPlayer2.job.name == 'gouvernor' and xPlayer2.job.grade_name == 'boss' then
					TriggerClientEvent('esx_phone:onMessage', xPlayer2.source, xPlayer.get('phoneNumber'), message, xPlayer.get('coords'), anon, job, false)
				end
			end

		end
		
	end)

end)

RegisterServerEvent('esx_gouverneur:giveWeapon')
AddEventHandler('esx_gouverneur:giveWeapon', function(weapon, ammo)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weapon, ammo)
end)

RegisterServerEvent('esx_gouverneur:removeWeapon')
AddEventHandler('esx_gouverneur:removeWeapon', function(weapon)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeWeapon(weapon)
end)

TriggerEvent('esx_phone:registerCallback', function(source, phoneNumber, message, anon)

	local xPlayer  = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()

	if phoneNumber == 'gouvernor' then
		for i=1, #xPlayers, 1 do

			local xPlayer2 = ESX.GetPlayerFromId(xPlayers[i])
			
			if xPlayer2.job.name == 'gouvernor' and xPlayer2.job.grade_name == 'boss' then
				TriggerClientEvent('esx_phone:onMessage', xPlayer2.source, xPlayer.get('phoneNumber'), message, xPlayer.get('coords'), anon, 'player')
			end
		end
	end
	
end)

ESX.RegisterServerCallback('esx_gouverneur:getOtherPlayerData', function(source, cb, target)

	if Config.EnableESXIdentity then

		local xPlayer = ESX.GetPlayerFromId(target)

		local identifier = GetPlayerIdentifiers(target)[1]

		local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {
			['@identifier'] = identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end

	else

		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)

	end

end)