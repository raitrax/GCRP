ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Users = {}
violations = {}


--Send the message to your discord server
function sendToDiscord (name,message,color)
  local DiscordWebHook = Config.webhook
  -- Modify here your discordWebHook username = name, content = message,embeds = embeds

local embeds = {
    {
        ["title"]=message,
        ["type"]="rich",
        ["color"] =color,
        ["footer"]=  {
            ["text"]= "Bot anti-triche",
       },
    }
}

  if message == nil or message == '' then return FALSE end
  PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end

ESX.RegisterServerCallback('esx_advanced_discord_bot:getUsergroup', function(source, cb)
  local xPlayer = ESX.GetPlayerFromId(source)
  local group = xPlayer.getGroup()
  cb(group)
end)

-- Send the first notification
sendToDiscord(_U('server'),_U('server_start'),Config.green)

-- Event when a player is writing
AddEventHandler('chatMessage', function(author, color, message)
  if(settings.LogChatServer)then
      local player = ESX.GetPlayerFromId(author)
     sendToDiscord(_U('server_chat'), player.name .." : "..message,Config.grey)
  end
end)


-- Event when a player is connecting
RegisterServerEvent("esx:playerconnected")
AddEventHandler('esx:playerconnected', function()
  if(settings.LogLoginServer)then
    sendToDiscord(_U('server_connecting'), GetPlayerName(source) .." ".. _('user_connecting'),Config.grey)
  end
end)

-- Event when a player is disconnecting
AddEventHandler('playerDropped', function(reason)
  if(settings.LogLoginServer)then
    sendToDiscord(_U('server_disconnecting'), GetPlayerName(source) .." ".. _('user_disconnecting') .. "("..reason..")",Config.grey)
  end
end)



-- Add event when a player give an item
--  TriggerEvent("esx:giveitemalert",sourceXPlayer.name,targetXPlayer.name,ESX.Items[itemName].label,itemCount) -> ESX_extended
RegisterServerEvent("esx:giveitemalert")
AddEventHandler("esx:giveitemalert", function(name,nametarget,itemname,amount)
   if(settings.LogItemTransfer)then
    sendToDiscord(_U('server_item_transfer'),name.._('user_gives_to')..nametarget.." "..amount .." "..itemname,Config.orange)
   end

end)

-- Add event when a player give money
-- TriggerEvent("esx:givemoneyalert",sourceXPlayer.name,targetXPlayer.name,itemCount) -> ESX_extended
RegisterServerEvent("esx:givemoneyalert")
AddEventHandler("esx:givemoneyalert", function(name,nametarget,amount)
  if(settings.LogMoneyTransfer)then
    sendToDiscord(_U('server_money_transfer'),name.." ".._('user_gives_to').." "..nametarget.." "..amount .." dollars",Config.orange)
  end

end)

-- Add event when a player give money
-- TriggerEvent("esx:givemoneyalert",sourceXPlayer.name,targetXPlayer.name,itemCount) -> ESX_extended
RegisterServerEvent("esx:givemoneybankalert")
AddEventHandler("esx:givemoneybankalert", function(name,nametarget,amount)
  if(settings.LogMoneyBankTransfert)then
   sendToDiscord(_U('server_moneybank_transfer'),name.." ".. _('user_gives_to') .." "..nametarget.." "..amount .." dollars",Config.orange)
  end

end)


-- Add event when a player give weapon
--  TriggerEvent("esx:giveweaponalert",sourceXPlayer.name,targetXPlayer.name,weaponLabel) -> ESX_extended
RegisterServerEvent("esx:giveweaponalert")
AddEventHandler("esx:giveweaponalert", function(name,nametarget,weaponlabel)
  if(settings.LogWeaponTransfer)then
    sendToDiscord(_U('server_weapon_transfer'),name.." ".._('user_gives_to').." "..nametarget.." "..weaponlabel,Config.orange)
  end

end)

-- Add event when a player is washing money
--  TriggerEvent("esx:washingmoneyalert",xPlayer.name,amount) -> ESX_society
RegisterServerEvent("esx:washingmoneyalert")
AddEventHandler("esx:washingmoneyalert", function(name,amount)
  sendToDiscord(_U('server_washingmoney'),name.." ".._('user_washingmoney').." ".. amount .." dollars",Config.orange)

end)

-- Event when a player is in a blacklisted vehicle
RegisterServerEvent("esx:enterblacklistedcar")
AddEventHandler("esx:enterblacklistedcar", function(model)
   local xPlayer = ESX.GetPlayerFromId(source)
   sendToDiscord(_U('server_blacklistedvehicle'),xPlayer.name.." ".._('user_entered_in').." ".. model ,Config.red)

end)


-- Event when a player (not policeman) is in a police vehicle
RegisterServerEvent("esx:enterpolicecar")
AddEventHandler("esx:enterpolicecar", function(model)
 	 local xPlayer = ESX.GetPlayerFromId(source)
 	 sendToDiscord(_U('server_policecar'),xPlayer.name.." ".._('user_entered_in').." ".. model , Config.blue)

end)


-- Event when a player is jacking a car
RegisterServerEvent("esx:jackingcar")
AddEventHandler("esx:jackingcar", function(model)
   local xPlayer = ESX.GetPlayerFromId(source)
   sendToDiscord(_U('server_carjacking'),xPlayer.name.." ".._('user_carjacking').." ".. model,Config.purple)

end)


-- Event when a player is killing an other one

RegisterServerEvent('esx:killerlog')
AddEventHandler('esx:killerlog', function(t,killer, kilerT) -- t : 0 = NPC, 1 = player
  local xPlayer = ESX.GetPlayerFromId(source)
  if(t == 1) then
     local xPlayer = ESX.GetPlayerFromId(source)
     local xPlayerKiller = ESX.GetPlayerFromId(killer)

     if (xPlayerKiller.name ~= nil and xPlayer.name ~= nil) then

       if (kilerT.killerinveh) then
         local model = kilerT.killervehname

            sendToDiscord(_U('server_kill'), xPlayer.name .." ".._('user_kill').." "..xPlayerKiller.name.." ".._('with').." "..model,Config.red)



       else
            sendToDiscord(_U('server_kill'), xPlayer.name .." ".._('user_kill').." "..xPlayerKiller.name,Config.red)



       end
    end
  else
     sendToDiscord(_U('server_kill'), xPlayer.name .." ".. _('user_kill_environnement'),Config.red)
  end

end)


----------------------------------------------------------------------------------------------------
RegisterServerEvent("esx:timer")
AddEventHandler("esx:timer", function()
	if Users[source] then
		if (os.time() - Users[source]) < 15 and Components.Speedhack then -- prevent the player from doing a good old cheat engine speedhack
			DropPlayer(source, "Speedhacking")
		else
			Users[source] = os.time()
		end
	else
		Users[source] = os.time()
	end
end)


Citizen.CreateThread(function()
	function SendWebhookMessage(webhook,message)
		PerformHttpRequest(Config.webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end

	function WarnPlayer(playername, reason)
		local isKnown = false
		local isKnownCount = 1
		local isKnownExtraText = ""
		local _source = source
		local xPlayer = ESX.GetPlayerFromId(_source)
		for i,thePlayer in ipairs(violations) do
			if thePlayer.name == name then
				isKnown = true
				if violations[i].count == 1 then -- 3
					-- TriggerEvent("banCheater", source,reason)
					DropPlayer(source, reason)
					TriggerEvent('es_admin2:loadbans', xPlayer.identifier)
					banUser(xPlayer.identifier)
					isKnownCount = violations[i].count
					table.remove(violations,i)
					isKnownExtraText = "Trop d'avertissement, l'utilisateur a été banni."
				else
					violations[i].count = violations[i].count+1
					isKnownCount = violations[i].count
				end
			end
		end

		if not isKnown then
			table.insert(violations, { name = name, count = 1 })
		end

		return isKnown, isKnownCount,isKnownExtraText
	end

	function GetPlayerNeededIdentifiers(player)
		local steam = GetPlayerIdentifiers(player)[1]
		return steam
	end

	RegisterNetEvent('RottenV:SpeedFlag')
	AddEventHandler('RottenV:SpeedFlag', function(rounds, roundm)
		if Components.Speedhack then
			steam = GetPlayerNeededIdentifiers(source)

			name = GetPlayerName(source)

			isKnown, isKnownCount, isKnownExtraText = WarnPlayer(name,"Vitesse Suspecte!")


			SendWebhookMessage(webhook, "**Vitesse Suspecte!** \n```\nL'utilisateur:"..name.."\n"..steam.."\na traversé "..rounds.. " unités. C'est "..roundm.." de plus que la vitesse normale! \nAvertissement anti-triche:"..isKnownCount..""..isKnownExtraText.." ```")
		end
	end)



	RegisterNetEvent('RottenV:NoclipFlag')
	AddEventHandler('RottenV:NoclipFlag', function(distance)
		if Components.Speedhack then
			steam = GetPlayerNeededIdentifiers(source)
			name = GetPlayerName(source)

			isKnown, isKnownCount, isKnownExtraText = WarnPlayer(name,"Noclip/Téléport Suspect!")



			SendWebhookMessage(webhook,"**Noclip/Téléport Suspect!** \n```\nL'utilisateur:"..name.."\n"..steam.."\nRepéré avec "..distance.." unités depuis le précédent emplacement.\nAvertissement anti-triche:"..isKnownCount..""..isKnownExtraText.." ```")
		end
	end)

	RegisterNetEvent('RottenV:HealthFlag')
	AddEventHandler('RottenV:HealthFlag', function(invincible,oldHealth, newHealth)
		if Components.GodMode then
			steam = GetPlayerNeededIdentifiers(source)
			name = GetPlayerName(source)

			isKnown, isKnownCount, isKnownExtraText = WarnPlayer(name,"Guérison Suspecte!")

			if invincible then
				SendWebhookMessage(webhook,"**Guérison Suspecte!** \n```\nL'utilisateur:"..name.."\n"..steam.."\nRégénération de "..newHealth-oldHealth.."hp ( nouvelle valeur: "..newHealth.."hp ) en "..curWait.."ms! ( L'utilisateur était invincible )\nAvertissement anti-triche:"..isKnownCount..""..isKnownExtraText.." ```")
			else
				SendWebhookMessage(webhook,"**Guérison Suspecte!** \n```\nL'utilisateur:"..name.."\n"..steam.."\nRégénération de "..newHealth-oldHealth.."hp ( nouvelle valeur: "..newHealth.."hp ) en "..curWait.."ms! ( La santé était forcée )\nAvertissement anti-triche:"..isKnownCount..""..isKnownExtraText.." ```")
			end
		end
	end)

	RegisterNetEvent('RottenV:WeaponFlag')
	AddEventHandler('RottenV:WeaponFlag', function(weapon)
		if Components.WeaponBlacklist then
			steam = GetPlayerNeededIdentifiers(source)
			name = GetPlayerName(source)

			isKnown, isKnownCount, isKnownExtraText = WarnPlayer(name,"Inventaire Suspect!")

			SendWebhookMessage(webhook,"**Inventaire Suspect!** \n```\nL'utilisateur:"..name.."\n"..steam.."\nPossède l'arme : "..weapon.."( Blacklistée )\nAvertissement anti-triche:"..isKnownCount..""..isKnownExtraText.." ```")
		end
	end)
end)

local banned = ""
local bannedTable = {}
function banUser(id)
	banned = banned .. id .. "\n"
	SaveResourceFile("es_admin2", "data/bans.txt", banned, -1)
	bannedTable[id] = true
end