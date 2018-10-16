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

local objects = {}

local ropes = {}

local noflag = false

local cig = {}

local cigfx = {}

local objectcount = 0

local powercalled = false

local ssranks = 0.1

local tyx = true
local sgtcard = false

myfx = {}

stopped = {}

local x
local y
local z

--local harleyquinn

local wwvoid = false

AddEventHandler('GetHQ',function(harleyquinn)
harleyquinn = harleyquinn
							x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))			
			TaskGoToEntity(harleyquinn, GetPlayerPed(-1), -1, 1.0, 20.0, 1073741824.0, 0)
			SetPedKeepTask(harleyquinn, true)
			PrintChatMessage(tostring(harleyquinn))
end)

RegisterNetEvent('dd')
AddEventHandler('dd',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dp')
AddEventHandler('dp',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gg')
AddEventHandler('gg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
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

RegisterNetEvent('ds')
AddEventHandler('ds',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
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

RegisterNetEvent('mv')
AddEventHandler('mv',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function(skin)
	
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
		skin = "spn52"
	end
	local model = GetHashKey(skin)
    RequestModel(model)
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	
	SetPedComponentVariation(GetPlayerPed(-1),2,0,0)
	SetPedComponentVariation(GetPlayerPed(-1),3,1,0)
	SetPedComponentVariation(GetPlayerPed(-1),4,0,0)
	SetPedComponentVariation(GetPlayerPed(-1),7,1,0)
	
	
	--LoadModel>>
	
	--<<SetAttribs
	local playerPed = GetPlayerPed(-1)
	SetPedCombatMovement(playerPed,100)
	Wait(1000)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))
	SetPedAccuracy(playerPed, 1000)
	SetPedCombatRange(playerPed, 10)
	cbr = GetPedCombatRange(playerPed)
	SetPedMaxHealth(playerPed,25000)
	SetEntityHealth(playerPed,25000)
	SetPedDiesWhenInjured(playerPed,false)
	
--	SetPoliceIgnorePlayer(PlayerId(-1),true)
	
---	SetMaxWantedLevel(1)
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
		if chance > 99 then
			fireproof = false
			else
			fireproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 99 then
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
		if chance > 100 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
	--SetAttribs>>
	
	
			Citizen.CreateThread(function()
		while true do
		Wait(60000)
		wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) -1
		SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
		end
		end)
	
		--<<Regen Health and Armor
	Citizen.CreateThread(function()
		while true do
			ClearPedBloodDamage(playerPed)
			ClearPedBloodDamage(objects1)
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			WashDecalsInRange(x, y, z, 1.0, 1.0)
			Wait(250)
			if GetEntityHealth(playerPed) > 1 then
				if GetEntityHealth(playerPed) > 24999 then  --Standard change this.
				else
					if IsPedStopped(playerPed) == 1 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
					end
				end
			end
		end
	end)

	Citizen.CreateThread(function()
		while true do
			Wait(100)
			if GetPedArmour(playerPed) < 1000 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			end
		end
	end)
	--Regen Health and Armor>>
	
	--SetPedAsCop(playerPed, true)
	SetPedCapsule(playerPed, 1.0)

	-- SetEntityAlpha(playerPed,0,false)
	
	while true do --##PRIMARY LOOP##--
	
SetCamAffectsAiming(0, true)

--	SetPedToRagdoll(playerPed)
		if wwvoid == true then
			powercalled = false
			return void
		end

		if IsEntityDead(playerPed) == 1 then
			powercalled = false
			wwvoid = true
			return void
		end
		
		--<<Melee Events
		local thisx
		local thisy
		thisy = GetEntityForwardY(playerPed)
		thisx = GetEntityForwardX(playerPed)
		Wait(0)
		for i=1,10 do
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, youfly = GetRaycastResult(rayHandle)
			SetEntityHasGravity(youfly, true)
			if GetVehiclePedIsIn(youfly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(youfly)
				youfly = GetVehiclePedIsIn(youfly)
				SetVehicleEngineOn(youfly,false)
				SetEntityHasGravity(youfly, true)
			end
			
			if youfly == 0 then  --Standard change this.
			else
				if IsPedInMeleeCombat(playerPed) == 1 then
					if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
						if IsEntityAPed(youfly) == 1 then
							--Citizen.Trace(tostring(PlayerId()) .. " - " .. tostring(youfly) .. " - " .. tostring(GetPlayerPed(PlayerId())))
							-- thisapply = ApplyForceToEntity(youfly, 1, thisx * 500.0,thisy * 500.0,(tonumber(GetGameplayCamRelativePitch())/ 5),0,0,0, 0, false, false, false, false, false);
							isplayer = false
							session = 0
							for i=0,32 do
								if youfly == GetPlayerPed(i) then
									session = i
									isplayer = true
								end
							end
							campitch = tonumber(GetGameplayCamRelativePitch()/5)
							youflyrel = GetPedRelationshipGroupHash(youfly)
							
							
							
						TriggerEvent('WhoHQ')

									
							
									
							TriggerServerEvent('wwMeleeServer',PlayerId(-1), thisx, thisy, campitch, isplayer, session)
							Wait(150)
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
										Wait(1000)
										SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
								--		SetPoliceIgnorePlayer(PlayerId(-1),false)
										PrintChatMessage("Flagged as villain for three minutes " .. tc)
										SetMaxWantedLevel(5)
										SetPlayerWantedLevel(PlayerId(),2,true)
										Citizen.CreateThread(function()
											Wait(180000)
											
											SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
											SetMaxWantedLevel(PlayerId(),1,true)
										--	SetPoliceIgnorePlayer(PlayerId(-1),true)
										end)
									end
								end
							end
						else
							attach = not attach
							if attach == true then
								attached = youfly
								AttachEntityToEntity(attached, playerPed, GetPedBoneIndex(playerPed,31086), 1.0, 1.0, 1.0, 1.0, 90.0, 0.0, false, false, false, true, 2, true)
							end
							Citizen.CreateThread(function()
								while not IsControlPressed(0,142) do
									Wait(10)
								end
								attach = not attach
								DetachEntity(attached,false,false)
								for i=1,10 do
									playerPed = GetPlayerPed(-1)
									thisy = GetEntityForwardY(playerPed)
									thisx = GetEntityForwardX(playerPed)
									campitch = tonumber(GetGameplayCamRelativePitch()/5)
									thisapply = ApplyForceToEntity(attached, 1, thisx * 10000.0,thisy * 10000.0, campitch ,0,0,180.0, 0, false, false, false, false, false);
									Wait(10)
								end
								wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) + 1
								SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
								Wait(1000)
							end)
						end
						SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
					end
				end
			end
		end
				
				
							if IsControlPressed(1,25) then
							--Wait(500)
		local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
			local a, b, c, d, target = GetRaycastResult(rayHandle)	
			
							
				

	if sgtcard == false then
sgtcard = true
						lib = "melee@knife@streamed_core"
anim = "knife_short_range_0"
 RequestAnimDict(lib)
			while not HasAnimDictLoaded(lib) do
				Citizen.Wait(1)
			end
TaskPlayAnim(GetPlayerPed(-1), lib, anim, 5.0, -1, -1, 0, 0, false, false, false)
sgtcard = false
end

Wait(150)

local myPed = GetPlayerPed(-1) 


thisx = GetEntityForwardX(myPed)
thisy = GetEntityForwardY(myPed)

 --if tostring(ent) == "0" then
	 

--else	

-- Chat(IsPlayerFreeAiming(PlayerId()))




--	for i = 1, 10 do

math.randomseed(1234)

 Wait(math.random()*10)

			--	local playerPed = GetPlayerPed(-1)
				
				  xp, yp, zp = table.unpack(GetEntityCoords(myPed, true))
											thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
		
		RequestModel("prop_cs_business_card")
		while not HasModelLoaded("prop_cs_business_card") do
			Wait(0)
		end

	 object = CreateObject("prop_cs_business_card", xp + thisx * 1.1, yp + thisy * 1.1, zp +.25, true, true, true)
	 
	 
	 
	 ger1,ger2,ger3 = table.unpack(GetEntityRotation(playerPed,1))
	 SetEntityRotation(object,ger1 + 45.0,ger2,ger3 + 90.0,1,true)
	 
		
		 SetEntityVisible(object, false, false)
		
		-- PlaceObjectOnGroundProperly(object)
	
	SetEntityHasGravity(object, false)

		RequestNamedPtfxAsset("scr_paletoscore")
		while not HasNamedPtfxAssetLoaded("scr_paletoscore") do
			RequestNamedPtfxAsset("scr_paletoscore")
			Wait(0)
		end

		SetPtfxAssetNextCall("scr_paletoscore")
		thisfx = StartParticleFxLoopedOnEntity("cs_paleto_blowtorch", object, 0.0, 0.0, 0.0, 90.0, 0.0, 0.0, 10.0, false, false, false);
		
		table.insert(fx,thisfx)
	
				table.insert(objects, object)
				
						TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 5, 'FlameMagic', 1.0)
				
				
				for i=1,10 do
				Wait(1)
		ApplyForceToEntity(object, 1, thisx * 2000.0,thisy * 2000.0,(tonumber(GetGameplayCamRelativePitch())/ 5),0,0,0, 0, false, false, false, false, false);
		end
		
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
						if GetVehiclePedIsIn(target, false) ~= 0 then
						target = GetVehiclePedIsIn(target, false)
						SetPlayerWantedLevel(PlayerId(-1),GetPlayerWantedLevel(PlayerId(-1)) + 1,false)
						end
											
					
					if target ~=0 then
					youflyrel = GetPedRelationshipGroupHash(target)
					NetworkExplodeVehicle(target,true, true, true)
						ApplyDamageToPed(target,GetRandomIntInRange(25, 250))
						PrintChatMessage("MARVEL RANGED")
						-- TaskCombatPed(target, GetPlayerPed(-1), 0, 16)
									for i=1,10 do
			if DoesEntityExist(target) then
			SetPedToRagdoll(target,1000,1000,0,0,0,0)
			thisapply = ApplyForceToEntity(target, 1, thisx * 500.0,thisy * 500.0,campitch,0,0,0, 0, false, false, false, false, false);
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
									Wait(1000)
											SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
									--	SetPoliceIgnorePlayer(PlayerId(-1),false)
										PrintChatMessage("Flagged as villain for three minutes " .. tc)
										SetMaxWantedLevel(5)
										SetPlayerWantedLevel(PlayerId(),2,true)
										Citizen.CreateThread(function()
											Wait(180000)
											SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
											SetMaxWantedLevel(PlayerId(),1,true)
										--	SetPoliceIgnorePlayer(PlayerId(-1),true)
										end)
									end
								end
							end
						end
					
						


objectcount = objectcount + 1
if objectcount > 0 then
StopParticleFxLooped(fx[objectcount],true)
 Wait(1)
DeleteEntity(objects[objectcount])
else
-- Wait(1000)
end
Wait(750)
end							


	--	PrintChatMessage("Cards")
	--	Chat(thisx)
						

		

	--	table.insert(t,ent) -----------------------------------------------
		
				local playerPed = GetPlayerPed(-1)
				
				-- else
				
				
		-- for _,value in pairs(fx) do
		 -- StopParticleFxLooped(value,true)
		-- end
		
		-- for _,value in pairs(objects) do
		 -- DeleteEntity(value)
		-- end
					
				
		--Melee Events>>

		--<<Flight
		SetSuperJumpThisFrame(PlayerId())
		stateI = false
		local playerPed = GetPlayerPed(-1)
		--1/10000th speed of light	SetEntityMaxSpeed(playerPed, 33480.0) 
		GiveWeaponToPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
		if tostring(GetPedParachuteState(playerPed)) == "-1" then
		SetEntityHasGravity(playerPed,true)
			wwflight = 1.5
			-- SetPedCanRagdoll(GetPlayerPed(-1),false)
			if stateI == true then
				stateI = false
			end
		else
		SetEntityHasGravity(playerPed,false)
			if stateI == false then
				stateI = true
			end
			if stateI == true then
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				reset = true
				if IsControlPressed(1,Keys["W"]) then
					wwflight = wwflight + .1
					reset = false
					SetEntityMaxSpeed(playerPed, 5000.279661107873) 
					SetSuperJumpThisFrame(PlayerId())
					for i = 1, 10 do
						SetPedCanRagdoll(GetPlayerPed(-1),false)
						GivePlayerRagdollControl(PlayerId(),true)
						ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * wwflight,thisy * wwflight,0,0,0,0, 0, false, false, false, false, false);
					end
				end
			
				if IsControlPressed(1,Keys["X"]) then
					wwflight = wwflight + .1
					reset = false
					SetEntityMaxSpeed(playerPed, 5000.279661107873) 
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					for i = 1, 10 do
						SetPedCanRagdoll(GetPlayerPed(-1),false)
						GivePlayerRagdollControl(PlayerId(),true)
						ApplyForceToEntity(GetPlayerPed(-1), 1, 0,0,wwflight * -1,0,0,0, 0, false, false, false, false, false);
					end
				end
			 
				if IsControlPressed(1,Keys["S"]) then
					wwflight = wwflight + .1
					SetEntityMaxSpeed(playerPed, 5000.279661107873) 
					reset = false
					for i = 1, 10 do
						SetPedCanRagdoll(GetPlayerPed(-1),false)
						GivePlayerRagdollControl(PlayerId(),true)
						ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * wwflight,thisy * wwflight,wwflight,0,0,0, 0, false, false, false, false, false);
					end
				end
				SetPedCanRagdoll(GetPlayerPed(-1),false)
			end
			SetPedCanRagdoll(GetPlayerPed(-1),false)
		end

		SetSuperJumpThisFrame(PlayerId())
		if IsControlPressed(1,Keys["SPACE"]) then
			wwflight = wwflight + .1
			reset = false
			SetEntityMaxSpeed(playerPed, 5000.279661107873) 
			for i = 1, 10 do
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),true)
				if tostring(GetPedParachuteState(playerPed)) == "-1" then
					ApplyForceToEntity(GetPlayerPed(-1), 1,0,0,6.1,0,0,0, 0, false, false, false, false, false);
				else
			ApplyForceToEntity(GetPlayerPed(-1), 1,0,0,wwflight,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
						
		if reset == true then
		SetPedCanRagdoll(playerPed,true)
			wwflight = 1.50
		end
		--Flight>>

		--<<Superspeed
		running = false
		if IsPedSprinting(playerPed) == 1 then
			running = true
			ssranks = ssranks + .01
			if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),true)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
		
		if IsPedRunning(playerPed) == 1 then
		running = true
		ssranks = ssranks + .01
			if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),true)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if IsPedInMeleeCombat(playerPed) == 1 then
			running = false
			ssranks = 10
			if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),true)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if running == false then
		SetPedCanRagdoll(GetPlayerPed(-1),true)
			ssranks = 10.0
		end
		--Superspeed>>
		
	end --##PRIMARY LOOP##--
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)





end