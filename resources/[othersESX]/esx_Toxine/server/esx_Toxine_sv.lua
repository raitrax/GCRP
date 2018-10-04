ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingToxine     = {}
local PlayersTransformingToxine   = {}
local PlayersSellingToxine        = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CountCops()

	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(2000, CountCops)

end

CountCops()

--Toxine
local function HarvestToxine(source)

	if CopsConnected < Config.RequiredCopsToxine then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsToxine)
		return
	end

	SetTimeout(1000, function()

		if PlayersHarvestingToxine[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local Toxine = xPlayer.getInventoryItem('Toxine')

			if Toxine.limit ~= -1 and Toxine.count >= Toxine.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_Toxine'))
			else
				xPlayer.addInventoryItem('Toxine', 1)
				HarvestToxine(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Toxine:startHarvestToxine')
AddEventHandler('esx_Toxine:startHarvestToxine', function()

	local _source = source

	PlayersHarvestingToxine[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestToxine(_source)

end)

RegisterServerEvent('esx_Toxine:stopHarvestToxine')
AddEventHandler('esx_Toxine:stopHarvestToxine', function()

	local _source = source

	PlayersHarvestingToxine[_source] = false

end)

local function TransformToxine(source)

	if CopsConnected < Config.RequiredCopsToxine then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsToxine)
		return
	end

	SetTimeout(1000, function()

		if PlayersTransformingToxine[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local ToxineQuantity = xPlayer.getInventoryItem('Toxine').count
			local poochQuantity = xPlayer.getInventoryItem('Toxine_pooch').count

			if poochQuantity > 15000 then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
			elseif ToxineQuantity < 10 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_Toxine'))
			else
				xPlayer.removeInventoryItem('Toxine', 10)
				xPlayer.addInventoryItem('Toxine_pooch', 1)
			
				TransformToxine(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Toxine:startTransformToxine')
AddEventHandler('esx_Toxine:startTransformToxine', function()

	local _source = source

	PlayersTransformingToxine[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformToxine(_source)

end)

RegisterServerEvent('esx_Toxine:stopTransformToxine')
AddEventHandler('esx_Toxine:stopTransformToxine', function()

	local _source = source

	PlayersTransformingToxine[_source] = false

end)

local function SellToxine(source)

	if CopsConnected < Config.RequiredCopsToxine then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsToxine)
		return
	end

	SetTimeout(1000, function()

		if PlayersSellingToxine[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local poochQuantity = xPlayer.getInventoryItem('Toxine_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('Toxine_pooch', 1)
				if CopsConnected == 0 then
                    xPlayer.addAccountMoney('black_money', 400)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                elseif CopsConnected == 1 then
                    xPlayer.addAccountMoney('black_money', 500)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                elseif CopsConnected == 2 then
                    xPlayer.addAccountMoney('black_money', 600)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                elseif CopsConnected == 3 then
                    xPlayer.addAccountMoney('black_money', 700)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                elseif CopsConnected == 4 then
                    xPlayer.addAccountMoney('black_money', 800)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                elseif CopsConnected >= 5 then
                    xPlayer.addAccountMoney('black_money', 900)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Toxine'))
                end
				
				SellToxine(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Toxine:startSellToxine')
AddEventHandler('esx_Toxine:startSellToxine', function()

	local _source = source

	PlayersSellingToxine[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

	SellToxine(_source)

end)

RegisterServerEvent('esx_Toxine:stopSellToxine')
AddEventHandler('esx_Toxine:stopSellToxine', function()

	local _source = source

	PlayersSellingToxine[_source] = false

end)


-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('esx_Toxine:GetUserInventory')
AddEventHandler('esx_Toxine:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_Toxine:ReturnInventory', 
    	_source,
		xPlayer.getInventoryItem('Toxine').count, 
		xPlayer.getInventoryItem('Toxine_pooch').count,
		xPlayer.job.name, 
		currentZone
    )
end)
