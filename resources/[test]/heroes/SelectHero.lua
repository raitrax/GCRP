RegisterServerEvent('wwMeleeServerFx')
RegisterServerEvent('wwMeleeServer')
RegisterServerEvent('ddMeleeServer')
RegisterServerEvent('dpMeleeServer')
RegisterServerEvent('jgMeleeServer')
RegisterServerEvent('HulkMeleeServer')

AddEventHandler('chatMessage', function(source, n, message) -- capture 'chatMessage' events
  local args = stringsplit(message, " ") -- Split the message up into an array of words
 
 if (args[1] == "/wonderwoman") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('ww',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('ww', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
    if (args[1] == "/deadpool") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('dp',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('dp', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
       if (args[1] == "/greengoblin") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('gg',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('gg', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
       if (args[1] == "/rhino") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('rhino',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('rhino', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
          if (args[1] == "/hulk") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('hulk',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('hulk', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
          if (args[1] == "/reverseflash") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('rfla',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('rfla', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
       if (args[1] == "/deathstroke") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('ds',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('ds', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
          if (args[1] == "/deadshot") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('dshot',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('dshot', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
    if (args[1] == "/marvel") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('mv',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('mv', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
   if (args[1] == "/daredevil") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('dd',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('dd', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
    if (args[1] == "/joker") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('jk',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('jk', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
       if (args[1] == "/harleyquinn") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('hq',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('hq', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
       if (args[1] == "/harl") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
	if not args[2] then
      TriggerClientEvent('jk',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('jk', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
     if (args[1] == "/gambit") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      if not args[2] then
      TriggerClientEvent('gb',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('gb', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
        if (args[1] == "/supergirl") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      if not args[2] then
      TriggerClientEvent('supergirl',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('supergirl', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
        if (args[1] == "/loki") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      if not args[2] then
      TriggerClientEvent('loki',source, "") -- Sends event 'mHandCuff' to playerID
	  else
	   TriggerClientEvent('loki', source, args[2]) -- Sends event 'mHandCuff' to playerID
	   end
   end
   
        if (args[1] == "/flash") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      TriggerClientEvent('fla', source) -- Sends event 'mHandCuff' to playerID
   end
   
           if (args[1] == "/juggernaut") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      TriggerClientEvent('jg', source) -- Sends event 'mHandCuff' to playerID
   end
   
      if (args[1] == "/magneto") then -- if the first "word" is /cuff
    CancelEvent() -- dont pass this chat message further, we're handling it
      TriggerClientEvent('mag', source) -- Sends event 'mHandCuff' to playerID
   end
   
end)

AddEventHandler('wwMeleeServerFx', function(playerID,playerped)
for i=1,32 do
TriggerClientEvent('wwMeleeClientFx', i, playerID)
end
end)

AddEventHandler('wwMeleeServer', function(playerID, thisx, thisy, campitch,isplayer,session)
 TriggerClientEvent('wwMeleeClient',-1, thisx, thisy, campitch, isplayer, session, playerID)
end)

AddEventHandler('ddMeleeServer', function(playerID, thisx, thisy, campitch,isplayer,session)
 TriggerClientEvent('wwMeleeClient',-1, thisx, thisy, campitch, isplayer, session, playerID)
end)

AddEventHandler('dpMeleeServer', function(playerID, thisx, thisy, campitch,isplayer,session)
 TriggerClientEvent('wwMeleeClient',-1, thisx, thisy, campitch, isplayer, session, playerID)
end)

AddEventHandler('jgMeleeServer', function(playerID, playerped, thisx, thisy, campitch,isplayer,session)
 TriggerClientEvent('jgMeleeClient',-1, playerped, thisx, thisy, campitch, isplayer, session)
end)

AddEventHandler('HulkMeleeServer', function(playerID, playerped, thisx, thisy, campitch,isplayer,session)
 TriggerClientEvent('HulkMeleeClient',-1, playerped, thisx, thisy, campitch, isplayer, session)
end)

AddEventHandler('askWhoHQ',function()
whohq = TriggerClientEvent('WhoHQ')
return whohq
end)

-- utility function to turn a string into an array of words
function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end
