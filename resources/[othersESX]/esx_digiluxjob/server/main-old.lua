ESX                = nil
local PlayersSelling       = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'digilux', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'digilux', _U('digilux_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'digilux', 'digilux', 'society_digilux', 'society_digilux', 'society_digilux', {type = 'private'})



RegisterServerEvent('esx_digiluxjob:getStockItem')
AddEventHandler('esx_digiluxjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_digiluxjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_digiluxjob:putStockItems')
AddEventHandler('esx_digiluxjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_digiluxjob:getChestStockItem')
AddEventHandler('esx_digiluxjob:getChestStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux_chest', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_digiluxjob:getChestStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux_chest', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_digiluxjob:putChestStockItems')
AddEventHandler('esx_digiluxjob:putChestStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_digilux_chest', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)


RegisterServerEvent('esx_digiluxjob:buyItem')
AddEventHandler('esx_digiluxjob:buyItem', function(itemName, price, itemLabel)

    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    local limit = xPlayer.getInventoryItem(itemName).limit
    local qtty = xPlayer.getInventoryItem(itemName).count

    if xPlayer.get('money') >= price then
        if qtty < limit then
            xPlayer.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
    end

end)

RegisterServerEvent('esx_digiluxjob:crafting')
AddEventHandler('esx_digiluxjob:crafting', function(itemName,annim)
    local _source = source
    local _itemValue = itemValue
    local compo = Config.craft[itemName]
    TriggerClientEvent('esx:showNotification', _source, "assemblage en cours")

    local xPlayer = ESX.GetPlayerFromId(source)
    local manqueCompo = false
    for i=1,#compo.items do
      local comp=compo.items[i]
      if xPlayer.getInventoryItem(comp.name).count < comp.qte then
        TriggerClientEvent('esx:showNotification', _source, "Tu n'a pas assez de :  ~r~" ..xPlayer.getInventoryItem(comp.name).label .. ' ~w~!')
        manqueCompo = true
      end
    end
    
    if manqueCompo == false then
      TriggerClientEvent('esx_digiluxjob:animsAction',_source,annim)
      Wait(10000)
      for i=1,#compo.items do
        local comp=compo.items[i]
         xPlayer.removeInventoryItem(comp.name,comp.qte)
      end
      xPlayer.addInventoryItem(itemName, 1)
    end
end)

ESX.RegisterServerCallback('esx_digiluxjob:getVaultWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_digilux', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_digiluxjob:addVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_digilux', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = weapons[i].count + 1
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 1
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_digiluxjob:removeVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_digilux', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    local foundWeapon = false

    for i=1, #weapons, 1 do
      if weapons[i].name == weaponName then
        weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
        foundWeapon = true
      end
    end

    if not foundWeapon then
      table.insert(weapons, {
        name  = weaponName,
        count = 0
      })
    end

     store.set('weapons', weapons)

     cb()

  end)

end)

ESX.RegisterServerCallback('esx_digiluxjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

RegisterServerEvent('esx_digiluxjob:startSell')
AddEventHandler('esx_digiluxjob:startSell', function(zone)

  local _source = source
  
  if PlayersSelling[_source] == false then
    TriggerClientEvent('esx:showNotification', _source, '~r~C\'est pas bien de glich ~w~')
    PlayersSelling[_source]=false
  else
    PlayersSelling[_source]=true
    TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
    Resell(_source, zone)
  end

end)

function Resell(source, zone)

  if PlayersSelling[source] == true then
    local xPlayer  = ESX.GetPlayerFromId(source)
      if zone == 'Resell' then
         if xPlayer.getInventoryItem('computer').count <= 0 then
           TriggerClientEvent('esx:showNotification', source, _U('no_computer_sale'))
           return
         else
           SetTimeout(3200, function()
             local money = math.random(9,13)
                xPlayer.removeInventoryItem('computer', 1)
                xPlayer.addMoney(money)
                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('money_earned') .. money)
             end)
           Resell(source, zone)
         end
         if xPlayer.getInventoryItem('laptop').count <= 0 then
           TriggerClientEvent('esx:showNotification', source, _U('no_computer_sale'))
           return
         else
           SetTimeout(3200, function()
             local money = math.random(14,18)
                xPlayer.removeInventoryItem('laptop', 1)
                xPlayer.addMoney(money)
                TriggerClientEvent('esx:showNotification', xPlayer.source, _U('money_earned') .. money)
             end)
           Resell(source, zone)
         end
      end
  end
end