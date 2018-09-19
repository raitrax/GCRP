ESX          = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('esx_armour:armor')
AddEventHandler('esx_armour:armor', function()

  if GetPedArmour(GetPlayerPed(-1)) == 100 then
    ESX.ShowNotification("Tu a un gilet par balle neuf")
  else
    SetPedArmour(GetPlayerPed(-1), 0)
    ClearPedBloodDamage(GetPlayerPed(-1))
    ResetPedVisibleDamage(GetPlayerPed(-1))
    ClearPedLastWeaponDamage(GetPlayerPed(-1))
    ResetPedMovementClipset(GetPlayerPed(-1), 0)

    TriggerServerEvent('esx_armour:armorremove')
    TriggerEvent('skinchanger:getSkin', function(skin)

      if skin.sex == 0 then
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 11,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      else
        TriggerEvent('skinchanger:loadClothes', skin, {['bproof_1'] = 13,  ['bproof_2'] = 1})
        SetPedArmour(GetPlayerPed(-1), 100)
      end

    end)
    ESX.ShowNotification("Tu a utilisé un gilet par balle")
  end

end)

RegisterNetEvent('esx_armour:handcuff')
AddEventHandler('esx_armour:handcuff', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local player, distance = ESX.Game.GetClosestPlayer()
    if distance ~= -1 and distance <= 3.0 then

      if IsHandcuffed then

        RequestAnimDict('mp_arresting')

        while not HasAnimDictLoaded('mp_arresting') do
          Wait(100)
        end

        TaskPlayAnim(GetPlayerPed(player), 'mp_arresting', 'idle', 8.0, -8, -1, 49, 0, 0, 0, 0)
        SetEnableHandcuffs(GetPlayerPed(player), true)
        SetPedCanPlayGestureAnims(GetPlayerPed(player), false)
        FreezeEntityPosition(GetPlayerPed(player),  true)
        TriggerServerEvent('esx_armour:handcuffremove')
        ESX.ShowNotification('tu a utlisé un serflex')

      else
        ESX.ShowNotification('cette personne a déjà un serflex')

      end
    else
      ESX.ShowNotification('aucun joueur à proximité')
    end

  end)
end)

RegisterNetEvent('esx_armour:cutting_pliers')
AddEventHandler('esx_armour:cutting_pliers', function()

  IsHandcuffed    = not IsHandcuffed;
  local playerPed = GetPlayerPed(-1)

  Citizen.CreateThread(function()

    local player, distance = ESX.Game.GetClosestPlayer()
    if distance ~= -1 and distance <= 3.0 then
      if IsHandcuffed then
          ESX.ShowNotification('Cette personne n\'a pas de serflex')
      else

        ClearPedSecondaryTask(GetPlayerPed(player))
        SetEnableHandcuffs(GetPlayerPed(player), false)
        SetPedCanPlayGestureAnims(GetPlayerPed(player),  true)
        FreezeEntityPosition(GetPlayerPed(player), false)
        ESX.ShowNotification('tu a enlever un serflex')

      end
    else
      ESX.ShowNotification('aucun joueur à proximité')
    end

  end)
end)

