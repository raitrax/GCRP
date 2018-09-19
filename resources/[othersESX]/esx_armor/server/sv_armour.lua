ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_armour:armorremove')
AddEventHandler('esx_armour:armorremove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('armor', 1)
end)

ESX.RegisterUsableItem('armor', function(source)
	TriggerClientEvent('esx_armour:armor', source)
end)

RegisterServerEvent('esx_armour:handcuffremove')
AddEventHandler('esx_armour:handcuffremove', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('handcuff', 1)
end)

RegisterServerEvent('esx_armour:handcuff')
AddEventHandler('esx_armour:handcuff', function(target)
  TriggerClientEvent('esx_armour:handcuff', target)
end)

ESX.RegisterUsableItem('handcuff', function(target)
	TriggerClientEvent('esx_armour:handcuff', target)
end)

AddEventHandler('esx_armour:cutting_pliers', function(target)
  TriggerClientEvent('esx_armour:cutting_pliers', target)
end)

ESX.RegisterUsableItem('cutting_pliers', function(target)
	TriggerClientEvent('esx_armour:cutting_pliers', target)
end)

