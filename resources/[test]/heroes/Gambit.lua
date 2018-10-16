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

local pole = false

local jumping = true

local bcheck = false

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

local tcard = false

local wantedlevel = 0

RegisterNetEvent('mv')
AddEventHandler('mv',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
	wwvoid = true
	powercalled = false
end)


RegisterNetEvent('ds')
AddEventHandler('ds',function()
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

RegisterNetEvent('dd')
AddEventHandler('dd',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('jg')
AddEventHandler('jg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('fl')
AddEventHandler('fl',function()
wwvoid = true
powercalled = false
end)
RegisterNetEvent('ww')
AddEventHandler('ww',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mag')
AddEventHandler('mag',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function(skin)

if powercalled == true then
return void
end

powercalled = true
-- PrintChatMessage("Step 1")

local playerPed = GetPlayerPed(-1)

        Wait(1)
		if tostring(skin) == "" then
		skin = "u_m_y_abner"
		end
		local model = GetHashKey(skin)
    RequestModel(model)
    while not HasModelLoaded(model) do -- Wait for model to load
      RequestModel(model)
      Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	Wait(1000)
SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))
		
	--	SetPlayerTargetingMode(PlayerId())
		
local playerPed = GetPlayerPed(-1)
	SetPedCombatMovement(playerPed,100)
-- RequestModel("w_me_poolcue")
RequestModel("prop_fncsec_01pole")
        while not HasModelLoaded("prop_fncsec_01pole") do
           Wait(1)
        end
		
	  SetPlayerMaxArmour(PlayerId(-1), 500)
	  SetPedArmour(playerPed,500)
		  SetPedMaxHealth(playerPed,250)
	  SetEntityHealth(playerPed,250)
	  SetPedDiesWhenInjured(playerPed,false)
	  
	--  SetPoliceIgnorePlayer(PlayerId(-1),false)
	  
	--  SetPlayerHealth(PlayerId(-1),10000)
	TriggerServerEvent("Savelog","playergambit.142")
	Citizen.CreateThread(function()
	while true do
	Wait(1000)
	if GetPedArmour(playerPed) < 500 then
	-- PrintChatMessage("Armour")
	SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
	end
	end
	end)
		
-- local plate = math.random(100, 900)

		
	--  PrintChatMessage(tostring(y))
		y = tonumber(y)
        local staff = CreateObject("prop_fncsec_01pole", x, y, z, true, true, true)
        PlaceObjectOnGroundProperly(staff)
		-- Wait(10000)
		 AttachEntityToEntity(staff, playerPed, GetPedBoneIndex(playerPed,57005), 0.1, -1.0, 0.0, 0.0,90.0, 90.0, false, false, false, true, 2, true)
		 Wait(1000)
		 SetEntityVisible(staff, false, true)
-- GiveWeaponToPed(playerPed,  GetHashKey("WEAPON_NIGHTSTICK"), 1000, 0, 1)
-- GiveDelayedWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_POOLCUE"), 1, true)
Wait(10)
-- DeleteObject(GetCurrentPedWeaponEntityIndex(playerPed),false,false)

SetPedAccuracy(playerPed, 10000)
SetPedCombatRange(playerPed, 10)

cbr = GetPedCombatRange(playerPed)

-- PrintChatMessage(tostring(cbr))

 	Citizen.CreateThread(function()
		
		local bulletproof
		local fireproof
		local explosionproof
		local meleeproof
		local drownproof
		
		while true do
		Wait(1000)
		chance = GetRandomIntInRange(1,101)
		if chance > 50 then
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
		if chance > 50 then
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
        x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        Wait(1)
		    while not x do
        x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		end
	--	PrintChatMessage(tostring(playerPed) .. " - " .. tostring(x) .. tostring(y))

local vehicle = GetHashKey('hexer')
RequestModel(vehicle)
while not HasModelLoaded(vehicle) do
Wait(1)
end
-- local plate = math.random(100, 900)
local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0, 0.0, 1.0)
local spawned_car = CreateVehicle(vehicle, coords, GetGameplayCamRelativeHeading(), true, false)
SetVehicleOnGroundProperly(spawned_car)
 SetVehicleNumberPlateText(spawned_car, "GAMBIT")
 SetPedIntoVehicle(playerPed, spawned_car, -1)
SetModelAsNoLongerNeeded(vehicle)
 Citizen.InvokeNative(0xB736A491E64A32CF,Citizen.PointerValueIntInitialized(spawned_car))
		
    --    RequestModel("prop_ballistic_shield")
   --     while not HasModelLoaded("prop_ballistic_shield") do
    --       Wait(1)
   --     end

    --    local object = CreateObject("prop_ballistic_shield", x, y+2, z, true, true, true)
    --    PlaceObjectOnGroundProperly(object)
		
	--	  AttachEntityToEntity(object, playerPed, GetPedBoneIndex(playerPed,18905), 0.0, 0.0, 0.0, 0.0, 160.0, 0.0, false, false, false, true, 2, true)
		
		
		--SetEntityHasGravity(object, false)
	
		
	--	GiveWeaponToPed(playerPed, GetHashKey("WEAPON_NIGHTSTICK"), 1000, 0, 1)

-- table.insert(ropes,rope)

-- AttachRopeToEntity(rope, ent, x, y, z + 1, true)
stopped = true
 
-- GiveWeaponToPed(playerPed, GetHashKey("WEAPON_COMBATPISTOL"), 1000, 0, 1)
 SetEntityMaxSpeed(playerPed, 7.155) 
 local player = PlayerId()
 
	TriggerServerEvent("Savelog","playergambit.225")
 	Citizen.CreateThread(function()
	while true do
	Wait(250)
	if GetEntityHealth(playerPed) > 299 then
	if GetEntityHealth(playerPed) > 499 then
	else
	if IsPedStopped(playerPed) == 1 then
	SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
	end
	end
	end
	end
	end)
 
 TriggerServerEvent("Savelog","playergambit.240")
 Citizen.CreateThread(function()
while true do
Wait(100)
if IsControlPressed(1,Keys["-"]) then
    while not x do
        x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		end
	--	PrintChatMessage(tostring(playerPed) .. " - " .. tostring(x) .. tostring(y))

local vehicle = GetHashKey('hexer')
RequestModel(vehicle)
while not HasModelLoaded(vehicle) do
Wait(1)
end
-- local plate = math.random(100, 900)
local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0, 0.0, 1.0)
local spawned_car = CreateVehicle(vehicle, coords, GetGameplayCamRelativeHeading(), true, false)
SetVehicleOnGroundProperly(spawned_car)
 SetVehicleNumberPlateText(spawned_car, "GAMBIT")
 SetPedIntoVehicle(playerPed, spawned_car, -1)
SetModelAsNoLongerNeeded(vehicle)
 Citizen.InvokeNative(0xB736A491E64A32CF,Citizen.PointerValueIntInitialized(spawned_car))
Wait(60000)
end
end
end)

 
while true do

local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)

    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
    local a, b, c, d, youfly = GetRaycastResult(rayHandle)
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
	-- SetPoliceIgnorePlayer(PlayerId(-1),false)
	PrintChatMessage("Flagged as villain for three minutes " .. tc)
	SetMaxWantedLevel(5)
	SetPlayerWantedLevel(PlayerId(),2,true)
	TriggerServerEvent("Savelog","playergambit.302")
	Citizen.CreateThread(function()
	Wait(180000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
	SetMaxWantedLevel(PlayerId(),1,true)
	-- SetPoliceIgnorePlayer(PlayerId(-1),true)
	end)
								end
							end
							end


if IsControlJustPressed(1,Keys["2"]) then
pole = not pole
if pole == true then
SetEntityVisible(staff, true, true)
else
SetEntityVisible(staff, false, true)
end
end

if IsEntityDead(playerPed) == 1 then
powercalled = false
return void
-- PrintChatMessage("You died.")
end
--HidePedWeaponForScriptedCutscene(playerPed, true) 



			local thisx
			local thisy
thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)
-- ClearPedBloodDamage(playerPed)
-- ClearPedBloodDamage(object)
-- SetPlayerWeaponDamageModifier(PlayerId(-1), 50)
-- PrintChatMessage(tostring(IsPedInMeleeCombat(playerPed)))
Wait(0)




----------rope trick----------------------

--aiming, comeere = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
--youfly = GetMeleeTargetForPed(playerPed)

local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)

    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
    local a, b, c, d, youfly = GetRaycastResult(rayHandle)

SetEntityHasGravity(youfly, true)


--

		--	Citizen.Trace(GetTimeSincePlayerHitVehicle(PlayerId()))
	
--comeere = 0
--if comeere == 0 then
--else
--youfly = comeere
--end


  
  
			if GetVehiclePedIsIn(youfly, false) == 0 then
		--	comeere = youfly
			else
			comeere = GetVehiclePedIsIn(youfly)
			youfly = GetVehiclePedIsIn(youfly)
		--	SetVehicleUndriveable(youfly, true)
			SetVehicleEngineOn(youfly,false)
		--	ExplodeVehicle(ent, true, true)
			SetEntityHasGravity(youfly, true)
			end
			
	if IsPedInMeleeCombat(playerPed) == 1 then
	if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
    if IsEntityAPed(youfly) == 1 then
	scale = 1.0
	else
	scale = 10.0
	end
		RequestModel("prop_cs_business_card")
		while not HasModelLoaded("prop_cs_business_card") do
			Wait(0)
		end
 xp, yp, zp = table.unpack(GetEntityCoords(myPed, true))
	 object = CreateObject("prop_cs_business_card", xp, yp, zp +.25, true, true, true)
		
		-- SetEntityVisible(object, false, false)
		
		-- PlaceObjectOnGroundProperly(object)
	
	SetEntityHasGravity(object, true)

		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			RequestNamedPtfxAsset("core")
			Wait(0)
		end

		SetPtfxAssetNextCall("core")
		thisfx = StartParticleFxLoopedOnEntity("ent_anim_welder", object, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, scale, false, false, false);
		
				table.insert(fx,thisfx)
	
				table.insert(objects, object)
	AttachEntityToEntity(object, youfly, 2, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, true, 1, true)

    end
    end	
			
			
if IsControlJustPressed(0, 25) ~= false then

-- PrintChatMessage(tostring(wantedlevel))

for _,value in pairs(objects) do
 xo, yo, zo = table.unpack(GetEntityCoords(value, true))
AddExplosion(xo, yo, zo, 2, 1.0, true, false, true)
end

for _,value in pairs(fx) do
StopParticleFxLooped(value,true)
end

for _,value in pairs(objects) do
DeleteEntity(value)
end

end

lib = "weapons@projectile@"
anim = "throw_l_fb_stand"


if IsControlPressed(1,25) then

if tcard == false then
tcard = true
 RequestAnimDict(lib)
			while not HasAnimDictLoaded(lib) do
				Citizen.Wait(100)
			end
TaskPlayAnim(GetPlayerPed(-1), lib, anim, 5.0, -1, -1, 50, 0, false, false, false)
TriggerServerEvent("Savelog","playergambit.462")
Citizen.CreateThread(function()
Wait(1000)
StopEntityAnim(GetPlayerPed(-1), anim, lib, 1.0)
tcard = false
end)

end


Wait(100)

local myPed = GetPlayerPed(-1) 


thisx = GetEntityForwardX(myPed)
thisy = GetEntityForwardY(myPed)

 --if tostring(ent) == "0" then
	 

--else	

-- Chat(IsPlayerFreeAiming(PlayerId()))



objectcount = objectcount + 1

if objectcount > 100 then
StopParticleFxLooped(fx[objectcount - 100],true)
 Wait(1)
DeleteEntity(objects[objectcount - 100])
else
-- Wait(1000)
end


--	for i = 1, 10 do

math.randomseed(1234)

 Wait(math.random()*10)

			--	local playerPed = GetPlayerPed(-1)
				
				  xp, yp, zp = table.unpack(GetEntityCoords(myPed, true))
							
		
		RequestModel("prop_cs_business_card")
		while not HasModelLoaded("prop_cs_business_card") do
			Wait(0)
		end

	 object = CreateObject("prop_cs_business_card", xp, yp, zp +.25, true, true, true)
		
		-- SetEntityVisible(object, false, false)
		
		-- PlaceObjectOnGroundProperly(object)
	
	SetEntityHasGravity(object, true)

		RequestNamedPtfxAsset("core")
		while not HasNamedPtfxAssetLoaded("core") do
			RequestNamedPtfxAsset("core")
			Wait(0)
		end

		SetPtfxAssetNextCall("core")
		thisfx = StartParticleFxLoopedOnEntity("ent_anim_welder", object, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, false, false, false);
		
		table.insert(fx,thisfx)
	
				table.insert(objects, object)
		ApplyForceToEntity(object, 1, thisx * 20.0,thisy * 20.0,(tonumber(GetGameplayCamRelativePitch()) / 2),0,0,0, 0, false, false, false, false, false);
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
	
	
  end

-----------end rope trick-------------

--------------

--------------


-------------flight---------------------




----------------------end flight-----------------------		

------------ss---------------------
-- almost mach 1

running = false
 
			
				if IsPedSprinting(playerPed) == 1 then
				
			--	PrintChatMessage("Sprint")
							running = true
							ssranks = ssranks + .01
					if IsControlPressed(1,Keys["W"]) then
					SetSuperJumpThisFrame(PlayerId())
					SetPedCanRagdoll(GetPlayerPed(-1),false)
			flyranks = 11
		--	Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
		SetPedGravity(playerPed,0)
			--	GivePlayerRagdollControl(PlayerId(),true)
				for i = 1, 10 do
				SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),true)
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);	
				end
				end
				end
		
		if IsPedRunning(playerPed) == 1 then
		running = true
		ssranks = ssranks + .01
			if IsControlPressed(1,Keys["W"]) then
			SetSuperJumpThisFrame(PlayerId())
			SetPedCanRagdoll(GetPlayerPed(-1),false)
			flyranks = 10
	--		Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
		SetPedGravity(playerPed,0)
			--	GivePlayerRagdollControl(PlayerId(),true)
				for i = 1, 10 do
				SetSuperJumpThisFrame(PlayerId())
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),true)
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
				end
				end
				
				if running == false then
				ssranks = 12.0
				end
				SetSuperJumpThisFrame(PlayerId())
		
		if IsPedJumping(playerPed) == 1 then
		ssranks = 12.0
		
				Citizen.CreateThread(function()
				if gamjump == true then
				return
				end
								TriggerServerEvent("Savelog","playergambit.640")
				gamjump = true
			for i = 1, 100 do
			Wait(0)
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),true)
					ApplyForceToEntity(GetPlayerPed(-1), 1,thisx * ssranks,thisy * ssranks,ssranks * 32.0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);
				end
				Wait(2500)
				gamjump = false
				jumping = true
			end)

				end
				
				
			end


---------------end ss----------------
		

		-- Wait(10000)
		
		      local myPed = GetPlayerPed(-1) 
   	  			thisx = GetEntityForwardX(myPed)
			thisy = GetEntityForwardY(myPed)

			SetEntityHasGravity(object, true)
		-- Wait(5000)
		-- ApplyForceToEntity(object, 1, thisx * 2048.1,thisy * 2048.1,16384.1,0,0,0, 0, false, false, false, false, false);
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end