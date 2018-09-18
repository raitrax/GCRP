ESX                = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'unicorn', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'unicorn', _U('unicorn_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'unicorn', 'Unicorn', 'society_unicorn', 'society_unicorn', 'society_unicorn', {type = 'private'})



RegisterServerEvent('esx_unicornjob:getStockItem')
AddEventHandler('esx_unicornjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)

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

ESX.RegisterServerCallback('esx_unicornjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_unicornjob:putStockItems')
AddEventHandler('esx_unicornjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn', function(inventory)

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


RegisterServerEvent('esx_unicornjob:getFridgeStockItem')
AddEventHandler('esx_unicornjob:getFridgeStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn_fridge', function(inventory)

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

ESX.RegisterServerCallback('esx_unicornjob:getFridgeStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn_fridge', function(inventory)
    cb(inventory.items)
  end)

end)

RegisterServerEvent('esx_unicornjob:putFridgeStockItems')
AddEventHandler('esx_unicornjob:putFridgeStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_unicorn_fridge', function(inventory)

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


RegisterServerEvent('esx_unicornjob:buyItem')
AddEventHandler('esx_unicornjob:buyItem', function(itemName, price, itemLabel)

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

RegisterServerEvent('esx_unicornjob:crafting')
AddEventHandler('esx_unicornjob:crafting', function(itemName,annim)
    local _source = source
    local _itemValue = itemValue
    local compo = Config.craft[itemName]
    TriggerClientEvent('esx:showNotification', _source, "preparation en cours")

    local xPlayer = ESX.GetPlayerFromId(source)
    local manqueCompo = false
    for i=1,#compo.items do
      local ingr=compo.items[i]
      if xPlayer.getInventoryItem(ingr.name).count < ingr.qte then
        TriggerClientEvent('esx:showNotification', _source, "Tu n'a pas assez de :  ~r~" ..xPlayer.getInventoryItem(ingr.name).label .. ' ~w~!')
        manqueCompo = true
      end
    end
    
    if manqueCompo == false then
      TriggerClientEvent('esx_unicornjob:animsAction',_source,annim)
      Wait(10000)
      for i=1,#compo.items do
        local ingr=compo.items[i]
         xPlayer.removeInventoryItem(ingr.name,ingr.qte)
      end
      xPlayer.addInventoryItem(itemName, 1)
    end
end)

  for k,v in pairs(Config.craft) do
    ESX.RegisterUsableItem(k, function(source)       
        local xPlayer = ESX.GetPlayerFromId(source)
        xPlayer.removeInventoryItem(k, 1)
        if v.status.hunger > 0 then
          TriggerClientEvent('esx_status:add', source, 'hunger', v.status.hunger)
          TriggerClientEvent('esx_basicneeds:onEat', source)
        end
        if v.status.thirst > 0 then
          TriggerClientEvent('esx_status:add', source, 'thirst',  v.status.thirst)
          if v.status.hunger == 0 then
            TriggerClientEvent('esx_basicneeds:onDrink', source)
          end
        end
        if v.status.drunk > 0 then
          TriggerClientEvent('esx_status:add', source, 'drunk',  v.status.drunk)
        end
        TriggerClientEvent('esx:showNotification', source, "Tu consommes : "..xPlayer.getInventoryItem(k).label)
    end)
  end






ESX.RegisterServerCallback('esx_unicornjob:getVaultWeapons', function(source, cb)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_unicorn', function(store)

    local weapons = store.get('weapons')

    if weapons == nil then
      weapons = {}
    end

    cb(weapons)

  end)

end)

ESX.RegisterServerCallback('esx_unicornjob:addVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.removeWeapon(weaponName)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_unicorn', function(store)

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

ESX.RegisterServerCallback('esx_unicornjob:removeVaultWeapon', function(source, cb, weaponName)

  local xPlayer = ESX.GetPlayerFromId(source)

  xPlayer.addWeapon(weaponName, 1000)

  TriggerEvent('esx_datastore:getSharedDataStore', 'society_unicorn', function(store)

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

ESX.RegisterServerCallback('esx_unicornjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)

