ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingKevlar     = {}
local PlayersTransformingKevlar   = {}
local PlayersSellingKevlar        = {}

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

--Kevlar
local function HarvestKevlar(source)

	if CopsConnected < Config.RequiredCopsKevlar then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsKevlar)
		return
	end

	SetTimeout(1000, function()

		if PlayersHarvestingKevlar[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local Kevlar = xPlayer.getInventoryItem('Kevlar')

			if Kevlar.limit ~= -1 and Kevlar.count >= Kevlar.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_Kevlar'))
			else
				xPlayer.addInventoryItem('Kevlar', 1)
				HarvestKevlar(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Kevlar:startHarvestKevlar')
AddEventHandler('esx_Kevlar:startHarvestKevlar', function()

	local _source = source

	PlayersHarvestingKevlar[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))

	HarvestKevlar(_source)

end)

RegisterServerEvent('esx_Kevlar:stopHarvestKevlar')
AddEventHandler('esx_Kevlar:stopHarvestKevlar', function()

	local _source = source

	PlayersHarvestingKevlar[_source] = false

end)

local function TransformKevlar(source)

	if CopsConnected < Config.RequiredCopsKevlar then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsKevlar)
		return
	end

	SetTimeout(1000, function()

		if PlayersTransformingKevlar[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local KevlarQuantity = xPlayer.getInventoryItem('Kevlar').count
			local poochQuantity = xPlayer.getInventoryItem('Kevlar_pooch').count

			if poochQuantity > 15000 then
				TriggerClientEvent('esx:showNotification', source, _U('too_many_pouches'))
			elseif KevlarQuantity < 10 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_Kevlar'))
			else
				xPlayer.removeInventoryItem('Kevlar', 10)
				xPlayer.addInventoryItem('Kevlar_pooch', 1)
			
				TransformKevlar(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Kevlar:startTransformKevlar')
AddEventHandler('esx_Kevlar:startTransformKevlar', function()

	local _source = source

	PlayersTransformingKevlar[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('packing_in_prog'))

	TransformKevlar(_source)

end)

RegisterServerEvent('esx_Kevlar:stopTransformKevlar')
AddEventHandler('esx_Kevlar:stopTransformKevlar', function()

	local _source = source

	PlayersTransformingKevlar[_source] = false

end)

local function SellKevlar(source)

	if CopsConnected < Config.RequiredCopsKevlar then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police') .. CopsConnected .. '/' .. Config.RequiredCopsKevlar)
		return
	end

	SetTimeout(1000, function()

		if PlayersSellingKevlar[source] == true then

			local xPlayer  = ESX.GetPlayerFromId(source)

			local poochQuantity = xPlayer.getInventoryItem('Kevlar_pooch').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('Kevlar_pooch', 1)
				if CopsConnected == 0 then
                    xPlayer.addAccountMoney('black_money', 400)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                elseif CopsConnected == 1 then
                    xPlayer.addAccountMoney('black_money', 500)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                elseif CopsConnected == 2 then
                    xPlayer.addAccountMoney('black_money', 600)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                elseif CopsConnected == 3 then
                    xPlayer.addAccountMoney('black_money', 700)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                elseif CopsConnected == 4 then
                    xPlayer.addAccountMoney('black_money', 800)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                elseif CopsConnected >= 5 then
                    xPlayer.addAccountMoney('black_money', 900)
                    TriggerClientEvent('esx:showNotification', source, _U('sold_one_Kevlar'))
                end
				
				SellKevlar(source)
			end

		end
	end)
end

RegisterServerEvent('esx_Kevlar:startSellKevlar')
AddEventHandler('esx_Kevlar:startSellKevlar', function()

	local _source = source

	PlayersSellingKevlar[_source] = true

	TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))

	SellKevlar(_source)

end)

RegisterServerEvent('esx_Kevlar:stopSellKevlar')
AddEventHandler('esx_Kevlar:stopSellKevlar', function()

	local _source = source

	PlayersSellingKevlar[_source] = false

end)


-- RETURN INVENTORY TO CLIENT
RegisterServerEvent('esx_Kevlar:GetUserInventory')
AddEventHandler('esx_Kevlar:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_Kevlar:ReturnInventory', 
    	_source,
		xPlayer.getInventoryItem('Kevlar').count, 
		xPlayer.getInventoryItem('Kevlar_pooch').count,
		xPlayer.job.name, 
		currentZone
    )
end)
