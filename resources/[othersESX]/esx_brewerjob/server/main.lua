ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local beer = 1
local jus = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'brewer', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'brewer', _U('brewer_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'brewer', 'brewer', 'society_brewer', 'society_brewer', 'society_brewer', {type = 'private'})
local function Harvest(source, zone)

	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "IngredientsBeer" then
			local itemQuantity = xPlayer.getInventoryItem('ingredientsbeer').count
			if itemQuantity >= 70 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('ingredientsbeer', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_brewerjob:startHarvest')
AddEventHandler('esx_brewerjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glich ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('ingredientsbeer_taken'))  
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_brewerjob:stopHarvest')
AddEventHandler('esx_brewerjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~récolter')
		PlayersHarvesting[_source]=true
		
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "TraitementBeer" then
			local itemQuantity = xPlayer.getInventoryItem('ingredientsbeer').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_ingredientsbeer'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('ingredientsbeer', 1)
						TriggerClientEvent('esx:showNotification', source, _U('failed'))
						Transform(source, zone)
					end)
				else
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('ingredientsbeer', 1)
						xPlayer.addInventoryItem('beer', 1)
				
						Transform(source, zone)
					end)
				end
			end
		end
		
	end	
end

RegisterServerEvent('esx_brewerjob:startTransform')
AddEventHandler('esx_brewerjob:startTransform', function(zone)
	local _source = source
  	
	if PlayersTransforming[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glich ~w~')
		PlayersTransforming[_source]=false
	else
		PlayersTransforming[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('transforming_in_progress')) 
		Transform(_source,zone)
	end
end)

RegisterServerEvent('esx_brewerjob:stopTransform')
AddEventHandler('esx_brewerjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~transformer ~w~votre houblon')
		PlayersTransforming[_source]=true
		
	end

end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)

		if zone == 'SellBeer' then
			 if xPlayer.getInventoryItem('beer').count <= 0 then
				 TriggerClientEvent('esx:showNotification', source, _U('no_beer_sale'))
				 return
			 else
				 SetTimeout(3200, function()
					 local money = math.random(4,7)
					 xPlayer.removeInventoryItem('beer', 1)
					 local societyAccount = nil

					 TriggerEvent('esx_addonaccount:getSharedAccount', 'society_brewer', function(account)
						 societyAccount = account
					 end)
					 if societyAccount ~= nil then
						 societyAccount.addMoney(money)
						 TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
					 end
					 Sell(source,zone)
				 end)
			 end
		 end

	end
end

RegisterServerEvent('esx_brewerjob:startSell')
AddEventHandler('esx_brewerjob:startSell', function(zone)

	local _source = source
	
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glich ~w~')
		PlayersSelling[_source]=false
	else
		PlayersSelling[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_brewerjob:stopSell')
AddEventHandler('esx_brewerjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_brewerjob:getStockItem')
AddEventHandler('esx_brewerjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_brewer', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_withdrawn') .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_brewerjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_brewer', function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_brewerjob:putStockItems')
AddEventHandler('esx_brewerjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_brewer', function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)

	end)

end)

ESX.RegisterServerCallback('esx_brewerjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)


ESX.RegisterUsableItem('beer', function(source)

	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 40000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 120000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))

end)