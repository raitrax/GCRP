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

callingevent = false

local t = {}

local wheight = .1

local ropes = {}

local noflag = false

local cig = {}

local cigfx = {}

local objectcount = 0

local powercalled = false

local ssranks = 0.1

local tyx = true

myfx = {}

stopped = {}

local x
local y
local z

local isplayer

local wwvoid = false

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

RegisterNetEvent('gg')
AddEventHandler('gg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('dp')
AddEventHandler('dp',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dd')
AddEventHandler('dd',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('fla')
AddEventHandler('fla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
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

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)


RegisterNetEvent('wwMeleeClientFx')
AddEventHandler('wwMeleeClientFx',function(ppd)
	if tostring(stopped[ppd]) == "true" then
		if wwvoid == true then
			powercalled = false
			return void
		end
		stopped[ppd] = false
		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			Wait(100)
			RequestNamedPtfxAsset("core")
		end
		SetPtfxAssetNextCall("core")
		myfx[ppd] = StartParticleFxLoopedOnEntityBone("ent_amb_foundry_molten_pour", GetPlayerPed(ppd), 0.0, 0.0, -0.0, 90.0, 0.0, 0.0,GetPedBoneIndex(GetPlayerPed(ppd),18905),0.5, false, false, false)
	end
	Wait(100)
	while IsPedInMeleeCombat(GetPlayerPed(ppd)) == 1 do
		stopped[ppd] = false
		Wait(100)
	end
	StopParticleFxLooped(myfx[ppd], true)
	stopped[ppd] = true
end)

RegisterNetEvent('wwMeleeClient')
AddEventHandler('wwMeleeClient',function(thisx, thisy, campitch, isplayer, session, playerID)
	if isplayer == true then
		for i=1,10 do
			thisapply = ApplyForceToEntity(GetPlayerPed(session), 1, thisx * 500.0,thisy * 500.0,campitch,0,0,0, 0, false, false, false, false, false);
		end
		ApplyDamageToPed(GetPlayerPed(session),GetRandomIntInRange(50, 500))
		PrintChatMessage("WW DAMAGE")
	else
		local pos = GetEntityCoords(GetPlayerPed(playerID))
		local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(playerID), 0.0, 20.0, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(playerID), 0)
		local a, b, c, d, youfly = GetRaycastResult(rayHandle)
		
		target = youfly

					if target == 0 then
					aiming, target = GetPlayerTargetEntity(playerID, Citizen.ResultAsInteger())
					end
					
	
					
					if target == 0 then
					target = GetMeleeTargetForPed(playerPed)
					end
					

					
					if target == 0 then
					aiming, target = GetEntityPlayerIsFreeAimingAt(playerID, Citizen.ResultAsInteger())
					end
					
					youfly = target
		
		SetEntityHasGravity(youfly, true)
		for i=1,10 do
		SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
			thisapply = ApplyForceToEntity(youfly, 1, thisx * 500.0,thisy * 500.0,campitch,0,0,0, 0, false, false, false, false, false);
		end
		ApplyDamageToPed(youfly,GetRandomIntInRange(50, 500))
		
		PrintChatMessage("WW DAMAGE")
	end
end)

RegisterNetEvent('ww')
AddEventHandler('ww',function(skin)
PrintChatMessage("current5")


--SetPoliceIgnorePlayer(PlayerId(-1),true)
	
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
		skin = "WonderWoman"
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
	SetPedCombatMovement(playerPed,100)
	Wait(1000)
	

	SetPedAccuracy(playerPed, 1000)
	SetPedCombatRange(playerPed, 10)
	cbr = GetPedCombatRange(playerPed)
	SetPedMaxHealth(playerPed,25000)
	SetEntityHealth(playerPed,25000)
	SetPedDiesWhenInjured(playerPed,false)
	
	SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))
--	SetMaxWantedLevel(1)

TriggerServerEvent('Savelog','wwp245')
Citizen.CreateThread(function()

while true do
Wait(10000)

if GetPedRelationshipGroupHash(playerPed) ~= GetHashKey("villains") then
SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))
end

TriggerServerEvent('Savelog','test')

if IsEntityDead(playerPed) == 1 then
return void
end

end
end)
TriggerServerEvent('Savelog','wwp260')
	Citizen.CreateThread(function()
		
		local bulletproof
		local fireproof
		local explosionproof
		local meleeproof
		local drownproof
		
		while true do
		if IsEntityDead(playerPed) == 1 then
return void
end
		Wait(1000)
		chance = GetRandomIntInRange(1,101)
		if chance > 0 then
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
		if chance > 0 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
		
		Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(playerPed))
		
  --SetEntityProofs(int entity, bool bulletproof, bool fireproof, bool explosionproof, bool collisionproof, bool meleeproof, bool p6, bool p7, bool drownproof)
	--SetAttribs>>
	--<<Shield
	RequestModel("prop_riot_shield")
	while not HasModelLoaded("prop_riot_shield") do
		Wait(1)
	end
	x, y, z = table.unpack(GetEntityCoords(playerPed, true))
	local objects1 = CreateObject("prop_riot_shield", x, y+2, z, true, true, true)
	PlaceObjectOnGroundProperly(objects1)
	AttachEntityToEntity(objects1, playerPed, GetPedBoneIndex(playerPed,18905), 0.0, 0.0, 0.0, 0.0, 160.0, 0.0, false, false, false, true, 2, true)
	--Shield>>
	
	--<<Regen Health and Armor
	TriggerServerEvent('Savelog','wwp330')
	Citizen.CreateThread(function()
		while true do
		if IsEntityDead(playerPed) == 1 then
return void
end
			ClearPedBloodDamage(playerPed)
			ClearPedBloodDamage(objects1)
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
			WashDecalsInRange(x, y, z, 1.0, 1.0)
			Wait(250)
			if GetEntityHealth(playerPed) > 549 then
				if GetEntityHealth(playerPed) > 49999 then  --Standard change this.
				else
					if IsPedStopped(playerPed) == 1 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
					end
				end
			end
		end
	end)
 	TriggerServerEvent('Savelog','wwp351')
	Citizen.CreateThread(function()

		while true do
			if IsEntityDead(playerPed) == 1 then
return void
end
			Wait(100)
			if GetPedArmour(playerPed) < 1000 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			--	PrintChatMessage(tostring(GetPedArmour(playerPed)))
			end
		end
	end)
	--Regen Health and Armor>>

	GiveWeaponToPed(playerPed, GetHashKey("GADGET_NIGHTVISION"), 1000, 0, 1)
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_FIREEXTINGUISHER"), 1000, 0, 1)
	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_AIR_DEFENCE_GUN"), 1000, 0, 1)
	
	--SetPedAsCop(playerPed, true)
	SetPedCapsule(playerPed, 1.0)

	-- SetEntityAlpha(playerPed,0,false)

	while true do --##PRIMARY LOOP##--

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
		
		--<<wwMeleeServerFx
		playerPed = GetPlayerPed(PlayerId())
		if IsPedInMeleeCombat(playerPed) == 1 then
			SetPedCanRagdoll(GetPlayerPed(-1),false)
			if notcalled == true then
				TriggerServerEvent('wwMeleeServerFx', PlayerId(-1), playerPed)
				notcalled = false
			end
		else
			SetPedCanRagdoll(GetPlayerPed(-1),true)
		end

		if notcalled == false then
			TriggerServerEvent('wwMeleeServerFx', PlayerId(-1), playerPed)
			notcalled = true
		end
		--wwMeleeServerFx>>

		--<<Melee Events
		youfly = 0
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
			
			target = youfly

					if target == 0 then
					aiming, target = GetPlayerTargetEntity(PlayerId(), Citizen.ResultAsInteger())
					end
					
	
					
					if target == 0 then
					target = GetMeleeTargetForPed(playerPed)
					end
					

					
					if target == 0 then
					aiming, target = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ResultAsInteger())
					end
					
					youfly = target
			
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
							TriggerServerEvent('PlayerMeleeServer',PlayerId(-1), thisx, thisy, campitch, isplayer, session)
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
								--	SetPlayerWantedLevel(PlayerId(),5)
								Wait(1000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
	SetPoliceIgnorePlayer(PlayerId(-1),false)
	PrintChatMessage("Flagged as villain for three minutes " .. tc)
	SetMaxWantedLevel(5)
	SetPlayerWantedLevel(PlayerId(),2,true)
	TriggerServerEvent('Savelog','wwp472')
	Citizen.CreateThread(function()
	Wait(180000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
	SetMaxWantedLevel(PlayerId(),1,true)
	 SetPoliceIgnorePlayer(PlayerId(-1),true)
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
							TriggerServerEvent('Savelog','wwp488')
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
						
					end
				end
			end
		end
		--Melee Events>>

		--<<Flight
		SetSuperJumpThisFrame(PlayerId())
			GiveWeaponToPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
		stateI = false
		local playerPed = GetPlayerPed(-1)
		--1/10000th speed of light	SetEntityMaxSpeed(playerPed, 33480.0) 
		if tostring(GetPedParachuteState(playerPed)) == "-1" then
		SetEntityHasGravity(playerPed,true)
			wwflight = 1.75
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
			wwflight = 1.750
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
					GivePlayerRagdollControl(PlayerId(),false)
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
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
			end
		end
				
		if IsPedInMeleeCombat(playerPed) == 1 then
			running = false
			ssranks = 7
		--	if IsControlPressed(1,Keys["W"]) then
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				thisx = GetEntityForwardX(playerPed)
				thisy = GetEntityForwardY(playerPed)
				for i = 1, 10 do
					SetPedCanRagdoll(GetPlayerPed(-1),false)
					GivePlayerRagdollControl(PlayerId(),false)
					ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
		--	end
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