whitelisted = {
"license:b8767b558dc4dc5d58c068b2cc4eb052e553164a", -- David
"license:cc147490aaf4fef06c2a106b2e47aa1ab7a5b327", -- Alexis
}

------- SETTINGS START -------
useReservedSlots = false -- do we even want reserved slots?
reservedSlots = 2 -- how many do we want?
maxSlots = GetConvarInt("sv_maxclients") -- no touchy
maxSlots = tonumber(maxSlots)

------- SETTINGS STOP -------

-- RESERVED SLOTS
if useReservedSlots then
SetConvar("sv_maxclients", maxSlots-reservedSlots) -- no touchy either

AddEventHandler('playerConnecting', function(playerName, setKickReason)
	local numIds = GetPlayerIdentifiers(source)
	if #GetPlayers() >= 30 then
		kickme = true
	else
		kickme = false
	end

	for i,user in ipairs(whitelisted) do
		for i,theId in ipairs(numIds) do
			if user == theId and tonumber(#GetPlayers()) < maxSlots then
				kickme = false
				SetConvar("sv_maxclients", GetConvar("sv_maxclients")+1)
			end
		end
	end

	for i,admin in ipairs(admins) do
		for i,theId in ipairs(numIds) do
			if admin == theId and tonumber(#GetPlayers()) < maxSlots then -- is the player an admin and do we have free slots?
				kickme = false
				SetConvar("sv_maxclients", GetConvar("sv_maxclients")+1)
			end
		end
	end

	if kickme and tonumber(#GetPlayers()) >= 30 then
		setKickReason('Ce serveur est plein (past ' .. tostring(GetConvar("sv_maxclients")) .. ' players).')
		print("Connexion rejetée, Slot réservé /Serveur complet\n")
		CancelEvent()
		return
	end
end)


AddEventHandler('playerDropped', function()
  if tonumber(#GetPlayers()) > 30 and GetConvarInt("sv_maxclients") >= 31 then
		SetConvar("sv_maxclients", GetConvar("sv_maxclients")-1)
  end
end)

end
