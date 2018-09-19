ESX                           = nil
local doorList                = Config.Doors
local PlayerData              = {}



Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end

end)


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
  TriggerServerEvent("esx_doormanager:s_sync")
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
  TriggerServerEvent("esx_doormanager:s_sync")
end)

RegisterNetEvent("esx_doormanager:Sync")
AddEventHandler("esx_doormanager:Sync", function(doorStatus)
  --print(dump(doorStatus))
  for i = 1,#doorStatus,1 do
    if doorStatus[i]==true then
      doorList[i]["locked"] = true
    else
       doorList[i]["locked"] = false
    end
  end
end)




--
-- Client Event : unlocks a door
--

RegisterNetEvent("esx_doormanager:c_openDoor")
AddEventHandler("esx_doormanager:c_openDoor", function(odID)
    local closeDoor = GetClosestObjectOfType(doorList[odID]["x"], doorList[odID]["y"], doorList[odID]["z"], 1.0, GetHashKey(doorList[odID]["objName"]), false, false, false)
    if doorList[odID]["locked"] == true then
        FreezeEntityPosition(closeDoor, false)
        doorList[odID]["locked"] = false
    end
end)

--
-- Client Event : locks a door
--

RegisterNetEvent("esx_doormanager:c_closeDoor")
AddEventHandler("esx_doormanager:c_closeDoor", function(cdID)
    local closeDoor = GetClosestObjectOfType(doorList[cdID]["x"], doorList[cdID]["y"], doorList[cdID]["z"], 1.0, GetHashKey(doorList[cdID]["objName"]), false, false, false)
    if doorList[cdID]["locked"] == false then
        FreezeEntityPosition(closeDoor, true)
        doorList[cdID]["locked"] = true
    end
end)

function openclose(i)
  if doorList[i]["locked"] == true then
      TriggerServerEvent("esx_doormanager:s_openDoor", i)
  else
      TriggerServerEvent("esx_doormanager:s_closeDoor", i)
  end
end

function doorInteract(i)
  if doorList[i]['job'] ~= nil and PlayerData.job.name == doorList[i]['job'] then
    openclose(i)
  else
    ShowNotification( "Vous n'avez pas la clé." )
  end
end

--
-- Main Thread
--

Citizen.CreateThread(function()
    while true do

      for i = 1, #doorList do
          local hash = 0
          if doorList[i]["ishash"] == 0 then
    			     hash = GetHashKey(doorList[i]["objName"])
    			else
    			     hash = doorList[i]["objName"]
    			end
          local playerCoords = GetEntityCoords( GetPlayerPed(-1) )
          local closeDoor = GetClosestObjectOfType(doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], 1.0, hash, false, false, false)
          local objectCoordsDraw = GetEntityCoords( closeDoor )
          local playerDistance = GetDistanceBetweenCoords(playerCoords.x, playerCoords.y, playerCoords.z, doorList[i]["x"], doorList[i]["y"], doorList[i]["z"], true)

          if(playerDistance < 1) then

              if doorList[i]["locked"] == true then
                  DrawText3d(doorList[i]["txtX"], doorList[i]["txtY"], doorList[i]["txtZ"], "[E] pour ouvrir")
              else
                  DrawText3d(doorList[i]["txtX"], doorList[i]["txtY"], doorList[i]["txtZ"], "[E] pour fermer")
              end

              -- Press E key
              if IsControlJustPressed(1,51) then
                if doorList[i]['job'] == nil then
                  openclose(i)
                else
                  doorInteract(i)
                end
              end


          end
          FreezeEntityPosition(closeDoor, doorList[i]["locked"])
      end

      Citizen.Wait(0)
    end
end)

--
-- Doors Array
--


--
-- Draws in the 3D Worldspace
--

function DrawText3d(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())

    if onScreen then
        SetTextScale(0.3, 0.3)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end

--
-- Show notification above minimap
--

function ShowNotification( text )
    SetNotificationTextEntry( "STRING" )
    AddTextComponentString( text )
    DrawNotification( false, false )
end
