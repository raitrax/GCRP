local vehStorage = {}
local randomMsg = {	"Vous avez trouvé les clés sur le pare-soleil",
     				"Vous avez trouvé les clés dans la boîte à gants.",
    				"Vous avez trouvé les clés sur le siège passager.",
    				"Vous avez trouvé les clés sur le sol.",
    				"Les clés étaient déjà sur le contact."}

RegisterServerEvent("ls:check")
AddEventHandler("ls:check", function(plate, vehicleId, isPlayerInside, notifParam)

	playerIdentifier = GetPlayerIdentifiers(source)[1]

   	result = 0
	for i=1, #(vehStorage) do
		if vehStorage[i].plate == plate then
			result = result + 1
			if vehStorage[i].owner == playerIdentifier then
				TriggerClientEvent("ls:lock", source, vehStorage[i].lockStatus, vehStorage[i].id)
				break
			else
				TriggerClientEvent("ls:sendNotification", source, notifParam, "Tu n'as pas les clés de ce véhicule.", 1.5)
				break
			end
		end
	end

	if result == 0 and isPlayerInside then

		length = #(randomMsg)
		randomNbr = math.random(1, tonumber(length))
		TriggerClientEvent("ls:sendNotification", source, notifParam, randomMsg[randomNbr], 1.5)
		
		table.insert(vehStorage, {plate=plate, owner=playerIdentifier, lockStatus=0, id=vehicleId})
		TriggerClientEvent("ls:createMissionEntity", source, vehicleId)
	end
end)

RegisterServerEvent("ls:updateLockStatus")
AddEventHandler("ls:updateLockStatus", function(param, plate)
    for i=1, #(vehStorage) do
		if vehStorage[i].plate == plate then
            vehStorage[i].lockStatus = param
            if debugLog then print("(ls:updateLockStatus) : vehStorage["..i.."].lockStatus = "..param) end
            break
		end
	end
end)


