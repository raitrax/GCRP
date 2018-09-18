ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local PcComplet = 1
local jus = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'ordinateur', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'ordinateur', _U('ordinateur_client'), true, true)
TriggerEvent('esx_society:registerSociety', 'ordinateur', 'ordinateur', 'society_ordinateur', 'society_ordinateur', 'society_ordinateur', {type = 'private'})
local function Harvest(source, zone)

	if PlayersHarvesting[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "composantFarm" then
			local itemQuantity = xPlayer.getInventoryItem('composant').count
			if itemQuantity >= 70 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_place'))
				return
			else
				SetTimeout(1800, function()
					xPlayer.addInventoryItem('composant', 1)
					Harvest(source, zone)
				end)
			end
		end
	end
end

RegisterServerEvent('esx_ordinateurjob:startHarvest')
AddEventHandler('esx_ordinateurjob:startHarvest', function(zone)
	local _source = source
  	
	if PlayersHarvesting[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glich ~w~')
		PlayersHarvesting[_source]=false
	else
		PlayersHarvesting[_source]=true
		TriggerClientEvent('esx:showNotification', _source, _U('composant_taken'))  
		Harvest(_source,zone)
	end
end)


RegisterServerEvent('esx_ordinateurjob:stopHarvest')
AddEventHandler('esx_ordinateurjob:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~faire le montage')
		PlayersHarvesting[_source]=true
		
	end
end)


local function Transform(source, zone)

	if PlayersTransforming[source] == true then

		local xPlayer  = ESX.GetPlayerFromId(source)
		if zone == "Montage" then
			local itemQuantity = xPlayer.getInventoryItem('composant').count
			
			if itemQuantity <= 0 then
				TriggerClientEvent('esx:showNotification', source, _U('not_enough_composant'))
				return
			else
				local rand = math.random(0,100)
				if (rand >= 98) then
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('composant', 1)
						TriggerClientEvent('esx:showNotification', source, _U('Montage_Echoue'))
						Transform(source, zone)
					end)
				else
					SetTimeout(1800, function()
						xPlayer.removeInventoryItem('composant', 1)
						xPlayer.addInventoryItem('PcComplet', 1)
				
						Transform(source, zone)
					end)
				end
			end
		--elseif zone == "TraitementJus" then
			--local itemQuantity = xPlayer.getInventoryItem('composant').count
			--if itemQuantity <= 0 then
				--TriggerClientEvent('esx:showNotification', source, _U('not_enough_composant'))
				--return
			--else
				--SetTimeout(1800, function()
					--xPlayer.removeInventoryItem('composant', 1)
					--xPlayer.addInventoryItem('jus_composant', 1)
		  
					--Transform(source, zone)	  
				--end)
			--end
		end
		
	end	
end

RegisterServerEvent('esx_ordinateurjob:startTransform')
AddEventHandler('esx_ordinateurjob:startTransform', function(zone)
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

RegisterServerEvent('esx_ordinateurjob:stopTransform')
AddEventHandler('esx_ordinateurjob:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~assembler ~w~vos composants')
		PlayersTransforming[_source]=true
		
	end

end)

local function Sell(source, zone)

	if PlayersSelling[source] == true then
		local xPlayer  = ESX.GetPlayerFromId(source)
					
--[[		if zone == 'SellFarm' then
			
			
			if xPlayer.getInventoryItem('PcComplet').count <= 0 then
				PcComplet = 0
			else
				PcComplet = 1
			end
			
			if xPlayer.getInventoryItem('jus_composant').count <= 0 then
				jus = 0
			else
				jus = 1
			end
		
			if PcComplet == 0 and jus == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_product_sale'))
				return
			elseif xPlayer.getInventoryItem('PcComplet').count <= 0 and jus == 0 then
				TriggerClientEvent('esx:showNotification', source, _U('no_PcComplet_sale'))
				PcComplet = 0
				return
			elseif xPlayer.getInventoryItem('jus_composant').count <= 0 and PcComplet == 0then
				TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
				jus = 0
				return

			else
				if (jus == 1) then
					SetTimeout(1100, function()
						local money = math.random(18,25)
						xPlayer.removeInventoryItem('jus_composant', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ordinateur', function(account)
							societyAccount = account
						end)
						if societyAccount ~= nil then
							societyAccount.addMoney(money)
							TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
						end
						Sell(source,zone)
					end)
				elseif (PcComplet == 1) then
					SetTimeout(1100, function()
						local money = math.random(30,35)
						xPlayer.removeInventoryItem('PcComplet', 1)
						local societyAccount = nil

						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ordinateur', function(account)
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
]]--
		
		if zone == 'SellPcComplet' then
			 if xPlayer.getInventoryItem('PcComplet').count <= 0 then
				 TriggerClientEvent('esx:showNotification', source, _U('no_PcComplet_sale'))
				 return
			 else
				 SetTimeout(3200, function()
					 local money = math.random(5,7)
					 xPlayer.removeInventoryItem('PcComplet', 1)
					 local societyAccount = nil

					 TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ordinateur', function(account)
						 societyAccount = account
					 end)
					 if societyAccount ~= nil then
						 societyAccount.addMoney(money)
						 TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
					 end
					 Sell(source,zone)
				 end)
			 end
		 --elseif zone == 'SellJus' then
			 --if xPlayer.getInventoryItem('jus_composant').count <= 0 then
				 --TriggerClientEvent('esx:showNotification', source, _U('no_jus_sale'))
				 --return
			 --else
				 --SetTimeout(3200, function()
					 --local money = math.random(9,13)
					 --xPlayer.removeInventoryItem('jus_composant', 1)
					 --local societyAccount = nil

					 --TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ordinateur', function(account)
						 --societyAccount = account
					 --end)
					 --if societyAccount ~= nil then
						 --societyAccount.addMoney(money)
						 --TriggerClientEvent('esx:showNotification', xPlayer.source, _U('comp_earned') .. money)
					 --end
					 --Sell(source,zone)
				 --end)
			 --end
		
		 end

	end
end

RegisterServerEvent('esx_ordinateurjob:startSell')
AddEventHandler('esx_ordinateurjob:startSell', function(zone)

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

RegisterServerEvent('esx_ordinateurjob:stopSell')
AddEventHandler('esx_ordinateurjob:stopSell', function()

	local _source = source
	
	if PlayersSelling[_source] == true then
		PlayersSelling[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre')
		PlayersSelling[_source]=true
	end

end)

RegisterServerEvent('esx_ordinateurjob:getStockItem')
AddEventHandler('esx_ordinateurjob:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ordinateur', function(inventory)

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

ESX.RegisterServerCallback('esx_ordinateurjob:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ordinateur', function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_ordinateurjob:putStockItems')
AddEventHandler('esx_ordinateurjob:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ordinateur', function(inventory)

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

ESX.RegisterServerCallback('esx_ordinateurjob:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)