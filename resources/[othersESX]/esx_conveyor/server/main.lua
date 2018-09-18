ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_conveyor:requestPlayerData')
AddEventHandler('esx_conveyor:requestPlayerData', function(reason)
	TriggerEvent('esx:getPlayerFromId', source, function(xPlayer)
		TriggerEvent('esx_skin:requestPlayerSkinInfosCb', source, function(skin, jobSkin)

			local data = {
				job       = xPlayer.job,
				inventory = xPlayer.inventory,
				skin      = skin
			}

			TriggerClientEvent('esx_conveyor:responsePlayerData', source, data, reason)
		end)
	end)
end)

RegisterServerEvent('esx_conveyor:pay')
AddEventHandler('esx_conveyor:pay', function(amount)
	TriggerEvent('es:getPlayerFromId', source, function(user)
		user.addMoney(amount)
	end)
end)
