ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("esx_centraldispatch:opdhmn")
AddEventHandler("esx_centraldispatch:opdhmn", function()
	local _source	= source
	local XPlayer 	= ESX.GetPlayerFromId(_source)
	if XPlayer.job ~= nil then
		if XPlayer.job.name == 'police' or XPlayer.job.name == 'ambulance' or XPlayer.job.name == 'mecano' then
			TriggerClientEvent('esx_centraldispatch:opendispatchmenu', _source, XPlayer.job.name, XPlayer.job.grade)
		end
	end
end)

RegisterServerEvent("esx_centraldispatch:sendcall")
AddEventHandler("esx_centraldispatch:sendcall", function(jobreceiver, PlayerCoords, type, message)
	local _source        = source
	local xPlayers 		 = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
		local xPlayer2 = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer2.job.name == jobreceiver then
			--TriggerClientEvent('esx_centraldispatch:localmessage', _source, type, message, jobreceiver, PlayerCoords)
			TriggerServerEvent('esx_phone:send', 'police', _U('police_message'), true, { PlayerCoords.x, PlayerCoords.y, PlayerCoords.z }, true)
		end
	end

end)

RegisterServerEvent('esx_centraldispatch:prime')
AddEventHandler('esx_centraldispatch:prime', function(amount)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	xPlayer.addMoney(amount)
end)