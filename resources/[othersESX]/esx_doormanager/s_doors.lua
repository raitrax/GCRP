ESX               = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
--
-- Server Event : To unlock doors
--
local doorStatus = {}

for i=1,#Config.Doors,1 do
  doorStatus[i]=Config.Doors[i]['locked']
  --print(doorStatus[i])
end

RegisterServerEvent("esx_doormanager:s_openDoor")
AddEventHandler("esx_doormanager:s_openDoor", function(doorId)
    local src = source
    doorStatus[doorId]=false
    TriggerClientEvent("esx_doormanager:c_openDoor", -1, doorId)
  --  print('--------')
    --print(dump(doorStatus))
end)

--
-- Server Event : To lock doors
--

RegisterServerEvent("esx_doormanager:s_closeDoor")
AddEventHandler("esx_doormanager:s_closeDoor", function(doorId)
    -- Source
    doorStatus[doorId]=true
    TriggerClientEvent("esx_doormanager:c_closeDoor", -1, doorId)
  --  print('--------')
    --print(dump(doorStatus))
    local src = source
end)

--
-- Sync door with client
--
RegisterServerEvent("esx_doormanager:s_sync")
AddEventHandler("esx_doormanager:s_sync", function(doorId)
    -- Source
    local src = source
  --  print(dump(doorStatus))
    TriggerClientEvent("esx_doormanager:Sync", src, doorStatus)
end)


function dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end
