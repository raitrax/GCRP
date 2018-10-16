-- Server side handcuff script

RegisterServerEvent('wwMeleeServerFx',handleserver)

AddEventHandler('chatMessage', function(source, n, message) -- capture 'chatMessage' events
  local args = stringsplit(message, " ") -- Split the message up into an array of words
  if (args[1] == "/wonderwoman") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      TriggerClientEvent('ww', source) -- Sends event 'mHandCuff' to playerID
   end
   
     if (args[1] == "/gambit") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      TriggerClientEvent('gb', source) -- Sends event 'mHandCuff' to playerID
   end
   
end)

AddEventHandler('wwMeleeServerFx', function(playerID,playerped)
TriggerClientEvent('wwMeleeClientFx', -1,playerped)
end)

-- utility function to turn a string into an array of words
function stringsplit(self, delimiter)
  local a = self:Split(delimiter)
  local t = {}

  for i = 0, #a - 1 do
     table.insert(t, a[i])
  end

  return t
end
