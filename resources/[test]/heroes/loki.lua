local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,["UP"] = 27,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local notcalled = true

local t = {}


local fx = {}


local ropes = {}

local tcard = false

objects = {}

local noflag = false

local cig = {}

local cigfx = {}

local objectcount = 0

local powercalled = false

local ssranks = 0.1

local changeped = false

local tyx = true

theBlipx = {}

myfx = {}

local champion = false

champrel = {}
champs = {}

local clones = {}

local invisible = false

stopped = {}

local x
local y
local z

local wwvoid = false

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gg')
AddEventHandler('gg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mv')
AddEventHandler('mv',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('ds')
AddEventHandler('ds',function()
	wwvoid = true
	powercalled = false
end)


RegisterNetEvent('fla')
AddEventHandler('fla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jg')
AddEventHandler('jg',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mag')
AddEventHandler('mag',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('ww')
AddEventHandler('ww',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dd')
AddEventHandler('dd',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dp')
AddEventHandler('dp',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function(skin)

					
	--<<CheckVoid
	wwvoid = false
	if powercalled == true then
		return void
	end
	

	powercalled = true
	--CheckVoid>>
	
		
	--<<LoadModel
	Wait(1)
	if tostring(skin) == "" then
		skin = "loki"
	end
	local model = GetHashKey(skin)
    RequestModel(model)
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	--LoadModel>>
	

	--<<SetAttribs
	local playerPed = GetPlayerPed(-1)
	-- SetEntityCoords(playerPed, -2027.56, 3212.96, 32.08, false, false, false, false)
	SetPedCombatMovement(playerPed,100)
	SetPedDiesWhenInjured(playerPed,false)
	Wait(1000)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))
	SetPedAccuracy(playerPed, 1000)
	SetPedCombatRange(playerPed, 10)
	cbr = GetPedCombatRange(playerPed)
	SetPedMaxHealth(playerPed,5000)
	SetEntityHealth(playerPed,5000)
--	SetPoliceIgnorePlayer(PlayerId(-1),true)
		Citizen.CreateThread(function()
		
		local bulletproof
		local fireproof
		local explosionproof
		local meleeproof
		local drownproof
		
		while true do
		Wait(1000)
		chance = GetRandomIntInRange(1,101)
		if chance > 99 then
			bulletproof = false
			else
			bulletproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			fireproof = false
			else
			fireproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 50 then
			explosionproof = false
			else
			explosionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 99 then
			collisionproof = false
			else
			collisionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			meleeproof = false
			else
			meleeproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
	
		--<<Regen Health and Armor
	Citizen.CreateThread(function()
		while true do
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			Wait(250)
			if GetEntityHealth(playerPed) > 0 then
				if GetEntityHealth(playerPed) < 5000 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
				end
			end
		end
	end)
	
 	
		-- Citizen.CreateThread(function()
	-- while true do
	-- NetworkFadeOutEntity(playerPed, true, false)
	-- Wait(500)
	-- NetworkFadeInEntity(playerPed, 0)
	-- Wait(500)
	-- end
	-- end)
	
	
	Citizen.CreateThread(function()
		while true do
			Wait(1000)
			if GetPedArmour(playerPed) < 500 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			end
		end
	end)
	
	Citizen.CreateThread(function()
	while true do
	
			if wwvoid == true then
			powercalled = false
			return void
		end
		
		if IsEntityDead(playerPed) == 1 then
			powercalled = false
			wwvoid = true
			return void
		end
	
			Wait(1)
			if IsControlPressed(1,Keys["Q"]) then
						local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)

	--	for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, youfly = GetRaycastResult(rayHandle)
			if youfly == 0 then
			aiming, youfly = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
			end
			SetEntityHasGravity(youfly, true)
			if GetVehiclePedIsIn(youfly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(youfly)
				youfly = GetVehiclePedIsIn(youfly)
				-- SetVehicleEngineOn(youfly,false)
				SetEntityHasGravity(youfly, true)
			end
			
			if IsEntityAPed(youfly) == 1 then  --Standard change this.
			
			currenthp = GetEntityHealth(playerPed)
			
	local model = GetEntityModel(youfly)
    RequestModel(model)
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
	
	changeped = true
	
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	
	playerPed = GetPlayerPed(-1)
	
	changeped = false
	
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_HAMMER"), 1000, 0, 1)
		SetPedMaxHealth(playerPed,5000)
	SetEntityHealth(playerPed,currenthp)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))
	
	else
	
			skin = "loki"
	local model = GetHashKey(skin)	
			currenthp = GetEntityHealth(playerPed)
    RequestModel(model)
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
	
	changeped = true
	
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	
	playerPed = GetPlayerPed(-1)
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_HAMMER"), 1000, 0, 1)
	changeped = false
	
		SetPedMaxHealth(playerPed,5000)
	SetEntityHealth(playerPed,currenthp)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))
	
			end
			end
	end
	end)
	
	Citizen.CreateThread(function()
	while true do
			Wait(1)
			if IsControlPressed(1,Keys["B"]) then
			--<<Melee Events
		local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)

	--	for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, youfly = GetRaycastResult(rayHandle)
			if youfly == 0 then
			aiming, youfly = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
			end
			SetEntityHasGravity(youfly, true)
			if GetVehiclePedIsIn(youfly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(youfly)
				youfly = GetVehiclePedIsIn(youfly)
				-- SetVehicleEngineOn(youfly,false)
				SetEntityHasGravity(youfly, true)
			end
			
			if youfly == 0 then  --Standard change this.
			else
			--	if IsPedInMeleeCombat(playerPed) == 1 then
				--	if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
					--	if IsEntityAPed(youfly) == 1 then
							--Citizen.Trace(tostring(PlayerId()) .. " - " .. tostring(youfly) .. " - " .. tostring(GetPlayerPed(PlayerId())))
							
							if IsEntityAVehicle(youfly) then
							SetPedIntoVehicle(playerPed,youfly,0)
							Wait(150)
							else
							
							local playerCoords = GetEntityCoords(youfly)
							
									thisy = GetEntityForwardY(playerPed)
									thisx = GetEntityForwardX(playerPed)
							SetEntityCoords(playerPed,playerCoords.x, playerCoords.y, playerCoords.z -5000.0, false, false, false, false)
						--	SetEntityHeading(playerPed, GetEntityHeading(youfly))
							Wait(150)
							isplayer = false
							session = 0
							for i=0,32 do
								if youfly == GetPlayerPed(i) then
									session = i
									isplayer = true
								end
							end
							campitch = tonumber(GetGameplayCamRelativePitch()/5)
					--		TriggerServerEvent('ddMeleeServer',PlayerId(-1), thisx, thisy, campitch, isplayer, session)
							Wait(150)
							end
					--	end
					--	SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
				--	end
			--	end
			end
	--	end
		
	end
	end
	end)
	
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_HAMMER"), 1000, 0, 1)
	
	Citizen.CreateThread(function()
	while true do
			Wait(1)
			
			if IsControlPressed(1,Keys["C"]) then
			table.insert(clones,clone)
			if #clones < 10 then
			clone = ClonePed(playerPed, GetEntityHeading(playerPed),true, true)
			SetPedRelationshipGroupHash(clone,GetHashKey("villains"))
			TaskWanderStandard(clone,1.0,10)
			GiveWeaponToPed(clone, GetHashKey("WEAPON_HAMMER"), 1000, 0, 1)
			SetPedFleeAttributes(clone, 0, 0)
   			SetPedCombatAttributes(clone, 16, 1)
   			SetPedCombatAttributes(clone, 46, 1)
			SetPedCombatAttributes(clone, 26, 1)
			end
			end
			
			if IsControlPressed(1,Keys["Z"]) then
			SetEntityHealth(clones[#clones],0)
			Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(clones[#clones]))
			table.remove(clones,#clones)
			end
			
					for i=#clones,1,-1 do
			if not DoesEntityExist(clones[i]) then
				table.remove(clones, i)
			elseif IsPedDeadOrDying(clones[i], 1) then
				-- Set ped as no longer needed for despawning
				Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(clones[i]))
				table.remove(clones, i)
				end
				end
				
if IsControlJustPressed(1,Keys["~"]) then

SetLocalPlayerInvisibleLocally(true)

Citizen.CreateThread(function()
Wait(15000)
SetLocalPlayerInvisibleLocally(false)
end)

end

				
			
			if IsControlPressed(1,Keys["E"]) then
			--<<Melee Events
		local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)

	--	for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, youfly = GetRaycastResult(rayHandle)
			if youfly == 0 then
			aiming, youfly = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
			end
			SetEntityHasGravity(youfly, true)
			if GetVehiclePedIsIn(youfly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(youfly)
				youfly = GetVehiclePedIsIn(youfly)
				-- SetVehicleEngineOn(youfly,false)
				SetEntityHasGravity(youfly, true)
			end
			
			if youfly == 0 then  --Standard change this.
			else
			--	if IsPedInMeleeCombat(playerPed) == 1 then
				--	if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
				--		if IsEntityAPed(youfly) == 1 then
							--Citizen.Trace(tostring(PlayerId()) .. " - " .. tostring(youfly) .. " - " .. tostring(GetPlayerPed(PlayerId())))
							
							if IsEntityAVehicle(youfly) then
						--	SetPedIntoVehicle(playerPed,youfly,0)
							Wait(150)
							else
							
							local playerCoords = GetEntityCoords(youfly)
							
									thisy = GetEntityForwardY(playerPed)
									thisx = GetEntityForwardX(playerPed)
						--	SetEntityCoords(playerPed,playerCoords.x, playerCoords.y, playerCoords.z -5000.0, false, false, false, false)
						--	SetEntityHeading(playerPed, GetEntityHeading(youfly))
							Wait(150)
							isplayer = false
							session = 0
							for i=0,32 do
								if youfly == GetPlayerPed(i) then
									session = i
									isplayer = true
								end
							end
							campitch = tonumber(GetGameplayCamRelativePitch()/5)
							
							if isplayer == false then
							PrintChatMessage("TEST")
							if IsEntityAPed(youfly) == 1 then
						--	ClonePed(youfly, 0, true, true)
			
					
Citizen.CreateThread(function()
			local thechamp = youfly
			local thechamprel = GetPedRelationshipGroupHash(thechamp)
			PrintChatMessage(thechamprel)
			PrintChatMessage(GetHashKey(thechamprel))
			Wait(15000)
			
				RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				RequestNamedPtfxAsset("core")
				Wait(0)
			end
			SetPtfxAssetNextCall("core")
			local mezfx = StartParticleFxLoopedOnEntityBone("ent_amb_acid_bath", thechamp, 0.0, 0.0, -0.0, 0.0, 0.0, 0.0,GetPedBoneIndex(thechamp,31086),1.0, false, false, false)
					
			for i = 1,18 do
			if GetEntityHealth(thechamp) > (GetEntityMaxHealth(thechamp) * .9) then
			SetPedRelationshipGroupHash(thechamp,"villains")
			SetPedFleeAttributes(thechamp, 0, 0)
   			SetPedCombatAttributes(thechamp, 16, 1)
   			SetPedCombatAttributes(thechamp, 46, 1)
			NetworkRequestControlOfEntity(thechamp)
			local theBlipxy = AddBlipForEntity(thechamp)
			table.insert(theBlipx,theBlipxy)
			local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)

	--	for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, combat = GetRaycastResult(rayHandle)
			
		local playerCoords = GetEntityCoords(thechamp)
		local playerCoords2 = GetEntityCoords(playerPed)

		if Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 300 then
			RemoveWeaponFromPed(thechamp, GetHashKey("GADGET_PARACHUTE"))
			
			if combat ~= 0 then
			x, y, z = table.unpack(GetEntityCoords(thechamp, true))
			TaskGoToEntity(thechamp, combat, -1, 1.0, 20.0, 1073741824.0, 0)
			SetPedKeepTask(thechamp, true)
			else
			x, y, z = table.unpack(GetEntityCoords(thechamp, true))
			TaskGoToEntity(thechamp, playerPed, -1, 1.0, 20.0, 1073741824.0, 0)
			SetPedKeepTask(thechamp, true)
			end
			Wait(15000)
			
			end
			
			else
			i = 18
			end
			end
			
			SetPedRelationshipGroupHash(thechamp,thechamprel)
			StopParticleFxLooped(mezfx, true)
			ClearPedTasks(thechamp)
			for i=#theBlipx,1,-1 do
				RemoveBlip(theBlipx[i])
				table.remove(theBlipx, i)
				end
			end)
			
			end
						
						--works	SetPlayerModel(PlayerId(-1), GetEntityModel(youfly))
							-- works ClonePed(playerPed, 0, true, true)
							end
							end
					--		TriggerServerEvent('ddMeleeServer',PlayerId(-1), thisx, thisy, campitch, isplayer, session)
							Wait(150)
							end
					--	end
					--	SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
					--end
			--	end
			end
	--	end
		
	end
	end)
	
	--Regen Health and Armor>>
	
	-- GiveWeaponToPed(playerPed, GetHashKey("WEAPON_CROWBAR"), 1000, 0, 1)
	--[[x, y, z = table.unpack(GetEntityCoords(playerPed))
	
	RequestModel("w_me_crowbar")
        while not HasModelLoaded("w_me_crowbar") do
           Wait(1)
        end
	 local staff = CreateObject("w_me_crowbar", x, y, z, true, true, true)
        PlaceObjectOnGroundProperly(staff)
		-- Wait(10000)
		 AttachEntityToEntity(staff, playerPed, GetPedBoneIndex(playerPed,57005), 0.1, 0.0, 0.0, 0.0,90.0, 90.0, false, false, false, true, 2, true)
	--]]

	while true do --##PRIMARY LOOP##--
	
	Wait(1)
		if wwvoid == true then
			powercalled = false
			return void
		end


		if changeped == false then
		if IsEntityDead(playerPed) == 1 then
			powercalled = false
			wwvoid = true
			return void
		end
		end
		
		

		

		  youflyrel = GetPedRelationshipGroupHash(youfly)
									if IsEntityDead(youfly) then
								v = false
								if youflyrel == GetHashKey("CIVMALE") then
								v = true
								tc = "civmale"
								end
								if youflyrel == GetHashKey("CIVFEMALE") then
								tc = "civfemale"
								v = true 
								end
								if youflyrel == GetHashKey("COP") then
								tc = "cop"
								v = true 
								end
								
								AddRelationshipGroup("villains")
								if v == true then
								if GetPedRelationshipGroupHash(playerPed) ~= GetHashKey("villains") then
								--	SetPlayerWantedLevel(PlayerId(),5)
									 -- 	AddRelationshipGroup("villains")
	SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
--	SetPoliceIgnorePlayer(PlayerId(-1),false)
	PrintChatMessage("Flagged as villain for three minutes " .. tc)
	SetMaxWantedLevel(5)
	SetPlayerWantedLevel(PlayerId(),2,true)
	Citizen.CreateThread(function()
	Wait(180000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("PLAYER"))
	SetMaxWantedLevel(PlayerId(),1,true)
--	SetPoliceIgnorePlayer(PlayerId(-1),true)
	end)
		 end
	 end
	 end
				
		
		--Melee Events>>
		
		
		-------------flight---------------------
-- SetSuperJumpThisFrame(PlayerId())

-- PrintChatMessage("It's me")

applyflightto = playerPed
forceapplyM = 40.0

GiveWeaponToPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)


SetPlayerParachuteModelOverride(playerPed, -1)

campitch = tonumber(GetGameplayCamRelativePitch()/5)

	local playerPed = GetPlayerPed(-1)

	SetPedCanRagdoll(GetPlayerPed(-1),false)

	--nograv = true
		
			thisx = GetEntityForwardX(applyflightto)
			thisy = GetEntityForwardY(applyflightto)
			
			nograv = false
			
	
			if IsControlPressed(1,Keys["W"]) then
			if campitch > 0 then
							ApplyForceToEntity(applyflightto, 1,thisx * forceapplyM,thisy * forceapplyM,0,0,0,0, 0, false, false, false, false, false);
						nograv = true
								else
									ApplyForceToEntity(applyflightto, 1,thisx * forceapplyM,thisy * forceapplyM,0,0.0,0,0, 0, false, false, false, false, false);
						nograv = true
						end
			end
			
			if IsControlPressed(1,Keys["X"]) then
						ApplyForceToEntity(applyflightto, 1,0,0,forceapplyM * -1,0,0,0, 0, false, false, false, false, false);
						nograv = true
			end
			 
			if IsControlPressed(1,Keys["S"]) then
			ApplyForceToEntity(applyflightto, 1,thisx * 40.0,thisy * forceapplyM,0,0,0,0, 0, false, false, false, false, false);
			nograv = true
			end
	

		if IsControlPressed(1,Keys["SPACE"]) then
		SetEntityHasGravity(applyflightto,false)
						ApplyForceToEntity(applyflightto, 1,0,0,forceapplyM * 2,0,0,0, 0, false, false, false, false, false);
						nograv = true
		end
			
					if tostring(GetPedParachuteState(playerPed)) == "-1" then
		SetEntityHasGravity(applyflightto,true)
		else
		SetEntityHasGravity(applyflightto,false)
		end
		
		
		--<<Superspeed
		ssranks = 0.0
		running = false
		if IsPedSprinting(playerPed) == 1 then
		
			running = true
			ssranks = ssranks
			if IsControlPressed(1,Keys["W"]) then
		--	SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
		
		if IsPedRunning(playerPed) == 1 then
		running = true
		ssranks = ssranks
			if IsControlPressed(1,Keys["W"]) then
		--	SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if IsPedInMeleeCombat(playerPed) == 1 then
			running = false
			ssranks = 0.0
			if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if running == false then
		SetPedCanRagdoll(GetPlayerPed(-1),true)
			ssranks = 0.0
			else
			SetEntityHasGravity(applyflightto,true)
		end
		--Superspeed>>
		
		--BOLT
								if IsControlPressed(1,25) then
							
									Wait(25)
Citizen.CreateThread(function()
							--Wait(500)
		local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, target = GetRaycastResult(rayHandle)	
			
							if target == 0 then
					aiming, target = GetPlayerTargetEntity(PlayerId(), Citizen.ReturnResultAnyway())
					end
					
	
					
					if target == 0 then
					target = GetMeleeTargetForPed(playerPed)
					end
					

					
					if target == 0 then
					aiming, target = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
					end
					
					veh = 0

						youflyrel = GetPedRelationshipGroupHash(target)
					
						
				
						local playerCoords = GetEntityCoords(target)
		local playerCoords2 = GetEntityCoords(playerPed)
		
		if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 5) then
		return void
		end
				

				
						if GetVehiclePedIsIn(target, false) ~= 0 then
						targetv = GetVehiclePedIsIn(target, false)
						SetPlayerWantedLevel(PlayerId(-1),GetPlayerWantedLevel(PlayerId(-1)) + 1,false)
						end		
	if tcard == false then
tcard = true
						lib = "melee@knife@streamed_core"
anim = "knife_short_range_0"
 RequestAnimDict(lib)
			while not HasAnimDictLoaded(lib) do
				Citizen.Wait(1)
			end
--TaskPlayAnim(GetPlayerPed(-1), lib, anim, 5.0, -1, -1, 0, 0, false, false, false)

TaskPlayAnim(GetPlayerPed(-1), lib, anim, 5.0, -1, -1, 50, 0, false, false, false)

Citizen.CreateThread(function()
Wait(750)
StopEntityAnim(GetPlayerPed(-1), anim, lib, 1.0)
tcard = false
end)

end

-- Wait(150)

local myPed = GetPlayerPed(-1) 


thisx = GetEntityForwardX(myPed)
thisy = GetEntityForwardY(myPed)

 --if tostring(ent) == "0" then
	 

--else	

-- Chat(IsPlayerFreeAiming(PlayerId()))




--	for i = 1, 10 do

math.randomseed(1234)

-- Wait(math.random()*10)

			--	local playerPed = GetPlayerPed(-1)
				
				  xp, yp, zp = table.unpack(GetEntityCoords(myPed, true))
											thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
		
		RequestModel("prop_cs_business_card")
		while not HasModelLoaded("prop_cs_business_card") do
			Wait(0)
		end

		local object
	 object = CreateObject("prop_cs_business_card", xp + thisx * 1.1, yp + thisy * 1.1, zp +.55, true, true, true)
	 
	 
	 
	 ger1,ger2,ger3 = table.unpack(GetEntityRotation(playerPed,1))
	 SetEntityRotation(object,ger1 + 45.0,ger2,ger3 + 90.0,1,true)
	 
		
		 SetEntityVisible(object, false, false)
		
		-- PlaceObjectOnGroundProperly(object)
	
	SetEntityHasGravity(object, false)

-- scr_paletoscore
		RequestNamedPtfxAsset("scr_paletoscore")
		while not HasNamedPtfxAssetLoaded("scr_paletoscore") do
			RequestNamedPtfxAsset("scr_paletoscore")
			Wait(0)
		end
-- cs_paleto_blowtorch
		SetPtfxAssetNextCall("scr_paletoscore")
		local thisfx
		thisfx = StartParticleFxLoopedOnEntity("cs_paleto_blowtorch", object, 0.0, 0.0, 0.0, 90.0, 0.0, 0.0, 10.0, false, false, false);
		
		table.insert(fx,thisfx)
	
				table.insert(objects, object)
				
						 TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5, 'FlameMagic', 1.0)
				
				
				for i=1,10 do

				
		ApplyForceToEntity(object, 1, thisx * 2000.0,thisy * 2000.0,(tonumber(GetGameplayCamRelativePitch())) * 100.0,0,0,0, 0, false, false, false, false, false);
		
			Wait(0)
			
		TriggerServerEvent('Savelog',tostring(HasEntityCollidedWithAnything(object)) .. "beans")
	--	DrawSprite("speedo", "speedom_003", 0.898,0.752,0.16,0.245, 0.0, 255, 255, 255, 255)
		
	

				if HasEntityCollidedWithAnything(object) == 1 then
				TriggerServerEvent('Savelog',tostring(HasEntityCollidedWithAnything(object)) .. "rice")

				
  xo, yo, zo = table.unpack(GetEntityCoords(object, true))
 AddExplosion(xo, yo, zo, 2, .1, true, false, true)								
StopParticleFxLooped(thisfx,true)
 Wait(1)
DeleteEntity(object)
break
end
						
					end
		
		
	
--Wait(750)
	


--Wait(750)
StopParticleFxLooped(thisfx,true)
 Wait(1)
DeleteEntity(object)


end)
	
end	
		--END BOLT
		
		
	end --##PRIMARY LOOP##--
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)





end