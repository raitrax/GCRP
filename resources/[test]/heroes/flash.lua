
--client_script 'flash.lua'

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

local gear = 1.0

local youfly

local running
local stopped = true
gravity = true
local tcard = false
local notcalled = true
local cando = true
local t = {}
local spunch = false
dont = false
local ropes = {}

local pflashyoufly

local noflag = false

local cig = {}

local cigfx = {}

local objectcount = 0

local powercalled = false
local ssranks = 15.0

local tyx = true

local t = {}

--local myfx = ''

local wwvoid = false

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mv')
AddEventHandler('mv',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('dp')
AddEventHandler('dp',function()
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

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')

RegisterNetEvent('ww')
RegisterNetEvent('fla')
--

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

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jg')
AddEventHandler('jg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
	wwvoid = true
	powercalled = false
end)


RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

AddEventHandler('gb',function()
wwvoid = true
powercalled = false
end)

AddEventHandler('ww',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('mag')
AddEventHandler('mag',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
	wwvoid = true
	powercalled = false
end)


AddEventHandler('fla',function()

ssranks = 15.0

wwvoid = false

if powercalled == true then
return void
end


powercalled = true
-- PrintChatMessage("Step 1")

        Wait(1)
		skin = "FlashJL"
		local model = GetHashKey(skin)
    RequestModel(model)
    while not HasModelLoaded(model) do -- Wait for model to load
      RequestModel(model)
      Citizen.Wait(0)
    end
    SetPlayerModel(PlayerId(-1), model)
    SetModelAsNoLongerNeeded(model)
	
	local playerPed = GetPlayerPed(-1)
	SetPedCombatMovement(playerPed,100)
		
	--	SetPlayerTargetingMode(PlayerId())
		
Wait(1000)
SetPedRelationshipGroupHash(playerPed, GetHashKey("hero"))

-- PrintChatMessage(tostring(playerPed))
TriggerServerEvent("Savelog","pflash.189")
Citizen.CreateThread(function()
while true do
Wait(0)
	
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),true)
				SetPedGravity(GetPlayerPed(-1),0.0)
end
end)
	
SetPedAccuracy(playerPed, 1000)
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
  	  
      SetPlayerMaxArmour(PlayerId(-1), 1000)
	  SetPedArmour(playerPed, 1000)
	  
	  	--SetEntityMaxHealth(ped,9000)
	-- SetPedMaxHealth(ped,9000)
--	 SetEntityHealth(ped,9000)
	  
	  SetPedMaxHealth(playerPed,2500)
	  SetEntityHealth(playerPed,2500)
	  SetPedDiesWhenInjured(playerPed,false)
	--SetPoliceIgnorePlayer(PlayerId(-1),true)
	TriggerServerEvent("Savelog","pflash.222")
	Citizen.CreateThread(function()
	while true do
	Wait(250)
	if GetEntityHealth(playerPed) > 1 then
	if GetEntityHealth(playerPed) > 2500 then
	else
	if IsPedStopped(playerPed) == 1 then
	SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
	end
	end
	end
	end
	end)
 
	TriggerServerEvent("Savelog","pflash.237")
	Citizen.CreateThread(function()
	while true do
	Wait(250)
	if GetPedArmour(playerPed) < 1000 then
	-- PrintChatMessage("Armour")
	SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
	end
	end
	end)
	
	Citizen.CreateThread(function()
	while true do
	Wait(1)
	SetEntityMotionBlur(playerPed, true)
	end
	end)
	
	AttachTvAudioToEntity(playerPed)
	 
	 TriggerServerEvent("Savelog","pflash.360")
Citizen.CreateThread(function()
while true do
Wait(1)
if IsControlPressed(1,25) then
local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
    local a, b, c, d, flashyoufly = GetRaycastResult(rayHandle)
	
	TaskCombatHatedTargetsAroundPed(flashyoufly, 30.0, 0)

	-- Citizen.Trace("Raycast: " .. tostring(flashyoufly))

-- end

SetEntityHasGravity(flashyoufly, true)


			if GetVehiclePedIsIn(flashyoufly, false) == 0 then
			else
			flashyoufly = GetVehiclePedIsIn(flashyoufly)
			SetVehicleEngineOn(flashyoufly,false)
			SetEntityHasGravity(flashyoufly, true)
			end
if flashyoufly == 0 then
else

--if HasEntityBeenDamagedByEntity(flashyoufly,playerPed,true) then
--if IsEntityAPed(flashyoufly) == 1 then

campitch = tonumber(GetGameplayCamRelativePitch()/5)


thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)
SetEntityHasGravity(flashyoufly,true)
isplayer = false
session = -1
for i=0,31 do
if flashyoufly == GetPlayerPed(i) then
session = i
isplayer = true
-- PrintChatMessage(tostring(flashyoufly))
end
end

--for i=1,10 do
 --thisapply = ApplyForceToEntity(flashyoufly, 1, thisx * 100.0,thisy * 100.0,campitch,0,0,0, 0, false, false, false, false, false);
--end


amag = 1.0
for i=1,500 do
campitch = tonumber(GetGameplayCamRelativePitch()/5)

--thisx, thisy, drop = table.unpack(GetGameplayCamRot())
--PrintChatMessage("Tag")
 thisy = GetEntityForwardY(playerPed)
 thisx = GetEntityForwardX(playerPed)
amag = amag + 0.1
Wait(1)

dont = false
for i=#t,1,-1 do
if t[i] == flashyoufly then
dont = true
end
end
if GetEntityPopulationType(flashyoufly) == 0 then
table.insert(t,flashyoufly)
dont = true
end

if dont == false then
if GetEntityPopulationType(flashyoufly) == 0 then
Wait(1)
end
--thisapply = ApplyForceToEntity(flashyoufly, 1, thisx * amag,thisy * amag, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
--SetPedToRagdoll(flashyoufly,1000,1000,0,0,0,0)



		local playerCoords = GetEntityCoords(flashyoufly)
		local playerCoords2 = GetEntityCoords(playerPed)
		
		if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 30) then

		local thisx
		local thisy
		thisy = GetEntityForwardY(flashyoufly)
		thisx = GetEntityForwardX(flashyoufly)
		
		
		for i=1,10 do
	--	Wait(1)
			local pos = GetEntityCoords(flashyoufly)
			local entityWorld = GetOffsetFromEntityInWorldCoords(flashyoufly, 0.0, -20.0, 0.0)

			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, flashyoufly, 0)
			local a, b, c, d, pflashyoufly = GetRaycastResult(rayHandle)
			
			if pflashyoufly == playerPed then
			
			SetEntityHasGravity(pflashyoufly, true)
			if GetVehiclePedIsIn(pflashyoufly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(pflashyoufly)

				pflashyoufly = GetVehiclePedIsIn(pflashyoufly)
			--	SetVehicleEngineOn(pflashyoufly,false)
				SetEntityHasGravity(pflashyoufly, true)
			end
			
			if pflashyoufly == 0 then  --Standard change this.
			else
			
		--	if IsEntityTouchingEntity(playerPed, pflashyoufly) then
			
			thisapply = ApplyForceToEntity(pflashyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
			if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 5) then
			ApplyDamageToPed(flashyoufly,5)
			end
		--	end
			
			end
			
			end
			

			end
			
		local thisx
		local thisy

		thisy = GetEntityForwardY(flashyoufly) * -1
		thisx = GetEntityForwardX(flashyoufly) * -1
		
		for i=1,10 do
	--	Wait(1)
			local pos = GetEntityCoords(flashyoufly)
			local entityWorld = GetOffsetFromEntityInWorldCoords(flashyoufly, 0.0, 20.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, flashyoufly, 0)
			local a, b, c, d, pflashyoufly = GetRaycastResult(rayHandle)

			if pflashyoufly == playerPed then
			
			SetEntityHasGravity(pflashyoufly, true)
			if GetVehiclePedIsIn(pflashyoufly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(pflashyoufly)
				pflashyoufly = GetVehiclePedIsIn(pflashyoufly)
				--SetVehicleEngineOn(pflashyoufly,false)
				SetEntityHasGravity(pflashyoufly, true)
	
			end
			
			if pflashyoufly == 0 then  --Standard change this.
			else
		--	if IsEntityTouchingEntity(playerPed, pflashyoufly) then
			
			thisapply = ApplyForceToEntity(pflashyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
			if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 5) then
			ApplyDamageToPed(flashyoufly,5)
			end
			end
		--	end
			
end

end

		thisy = GetEntityForwardY(flashyoufly) * .5
		thisx = GetEntityForwardX(flashyoufly) * .5
		
		
		for i=1,10 do
	--	Wait(1)
			local pos = GetEntityCoords(flashyoufly)
			local entityWorld = GetOffsetFromEntityInWorldCoords(flashyoufly, -20.0, 0.0, 0.0)

			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, flashyoufly, 0)
			local a, b, c, d, pflashyoufly = GetRaycastResult(rayHandle)
			
			if pflashyoufly == playerPed then
			
			SetEntityHasGravity(pflashyoufly, true)
			if GetVehiclePedIsIn(pflashyoufly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(pflashyoufly)

				pflashyoufly = GetVehiclePedIsIn(pflashyoufly)
			--	SetVehicleEngineOn(pflashyoufly,false)
				SetEntityHasGravity(pflashyoufly, true)
			end
			
			if pflashyoufly == 0 then  --Standard change this.
			else
			
		--	if IsEntityTouchingEntity(playerPed, pflashyoufly) then
			
			thisapply = ApplyForceToEntity(pflashyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
			if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 5) then
			ApplyDamageToPed(flashyoufly,5)
			end
		--	end
			
			end
			
			end
			

			end
			
		local thisx
		local thisy

		thisy = GetEntityForwardY(flashyoufly) * -.5
		thisx = GetEntityForwardX(flashyoufly) * -.5
		
		for i=1,10 do
	--	Wait(1)
			local pos = GetEntityCoords(flashyoufly)
			local entityWorld = GetOffsetFromEntityInWorldCoords(flashyoufly, 20.0, 0.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, flashyoufly, 0)
			local a, b, c, d, pflashyoufly = GetRaycastResult(rayHandle)

			if pflashyoufly == playerPed then
			
			SetEntityHasGravity(pflashyoufly, true)
			if GetVehiclePedIsIn(pflashyoufly, false) == 0 then --Standard change this.
			else
				comeere = GetVehiclePedIsIn(pflashyoufly)
				pflashyoufly = GetVehiclePedIsIn(pflashyoufly)
				--SetVehicleEngineOn(pflashyoufly,false)
				SetEntityHasGravity(pflashyoufly, true)
	
			end
			
			if pflashyoufly == 0 then  --Standard change this.
			else
		--	if IsEntityTouchingEntity(playerPed, pflashyoufly) then
			thisapply = ApplyForceToEntity(pflashyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
			if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 5) then
			ApplyDamageToPed(flashyoufly,5)
			end
			end
		--	end
			
end

end



SetEntityHasGravity(flashyoufly, true)
end

	flashyouflyrel = GetPedRelationshipGroupHash(flashyoufly)

end

end
SetEntityHasGravity(flashyoufly, true)
	 
	 
	 end
	 
	 end
	 
	   flashyouflyrel = GetPedRelationshipGroupHash(flashyoufly)
  if IsEntityDead(flashyoufly) then
								v = false
								if flashyouflyrel == GetHashKey("CIVMALE") then
								v = true
								tc = "civmale"
								end
								if flashyouflyrel == GetHashKey("CIVFEMALE") then
								tc = "civfemale"
								v = true 
								end
								if flashyouflyrel == GetHashKey("COP") then
								tc = "cop"
								v = true 
								end
								
								AddRelationshipGroup("villains")
								if v == true then
								if GetPedRelationshipGroupHash(playerPed) ~= GetHashKey("villains") then
								--	SetPlayerWantedLevel(PlayerId(),5)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("villains"))
--	SetPoliceIgnorePlayer(PlayerId(-1),false)
	PrintChatMessage("Flagged as villain for three minutes " .. tc)
	SetMaxWantedLevel(5)
	SetPlayerWantedLevel(PlayerId(),2,true)
	
	TriggerServerEvent("Savelog","pflash.545")
	Citizen.CreateThread(function()
	Wait(180000)
	SetPedRelationshipGroupHash(playerPed,GetHashKey("hero"))
	SetMaxWantedLevel(PlayerId(),1,true)
--	 SetPoliceIgnorePlayer(PlayerId(-1),true)
	 end)
	 	 end
	 end
 
 -- ssranks = 15.0
 else
thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)
--thisapply = ApplyForceToEntity(flashyoufly, 1, thisx * ssranks * 10.0,thisy * ssranks * 10.0, campitch ,0,0,180.0, 0, false, false, false, false, false);
--FreezeEntityPosition(playerPed, true)
--end


--FreezeEntityPosition(playerPed, false)

--end

end

end

end)
	 
-- GiveWeaponToPed(playerPed, GetHashKey("WEAPON_COMBATPISTOL"), 1000, 0, 1)
 
while true do
SetPlayerMeleeWeaponDamageModifier(PlayerId(-1), 0.0)
if wwvoid == true then
powercalled = false
 return void
end

if IsEntityDead(playerPed) == 1 then
powercalled = false
wwvoid = true
return void
end
				

			local thisx
			local thisy
thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)
ClearPedBloodDamage(playerPed)
ClearPedBloodDamage(object)

dmmod = ssranks

 
  -- PrintChatMessage(tostring(tonumber(dmmod)))

--SetPlayerMeleeWeaponDamageModifier(PlayerId(-1), dmmod)

-- PrintChatMessage(tostring(IsPedInMeleeCombat(playerPed)))
Wait(0)

----------rope trick----------------------

--aiming, comeere = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
--flashyoufly = GetMeleeTargetForPed(playerPed)

	  
 
-----------end rope trick----------------

--------------

--for i=1,10 do
-- aiming, comeere = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
--flashyoufly = GetMeleeTargetForPed(playerPed)

--if comeere == nil and flashyoufly == nil then
--PrintChatMessage("BEGIN")
--end

for i=1,10 do
--if tostring(GetSelectedPedWeapon(myPed)) == "-1569615261" then

--REVIEW ME - if it works it's cool
if cando == true then
cando = false
TriggerServerEvent("Savelog","pflash.579")
Citizen.CreateThread(function()
Wait(1000)
cando = true
end)
--REVIEW ME

-- aiming, ent = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())

--if IsControlPressed(1,25) then
--spunch = not spunch
--Wait(100)
--end

if spunch == true then

local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
    local a, b, c, d, ent = GetRaycastResult(rayHandle)


if GetEntityPopulationType(ent) == 0 then	
else
if tostring(ent) == "0" then
else

apply = ent

if GetVehiclePedIsIn(ent, false) == 0 then
		--	comeere = flashyoufly
		dist = 2.0
			else
			comeere = GetVehiclePedIsIn(ent)
			ent = GetVehiclePedIsIn(ent)
			dist = 10.0
		--	SetVehicleUndriveable(flashyoufly, true)
			--SetVehicleEngineOn(ent,false)
		--	ExplodeVehicle(ent, true, true)
			SetEntityHasGravity(ent, true)
			end


-- PrintChatMessage("TaskGoTo")

Wait(1)

local ped = GetPlayerPed(-1) ---- From

local ped2 = apply ----- To

local playerCoords = GetEntityCoords(playerPed)

local playerCoords2 = GetEntityCoords(apply)

--  ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * 2000.1,thisy * 2000.1,0,0,0,0, 0, false, false, false, false, false);

local heading = GetEntityHeading(apply)

SetEntityCoords(playerPed, playerCoords2.x, playerCoords2.y - 2, playerCoords2.z - 1, false, false, false, false)
  Wait(1)
 --if IsEntityAPed(apply) == 1 then
--if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < dist) then
if tcard == false then

tcard = true
lib = "melee@unarmed@streamed_core_fps"
anim = "counter_attack_l"
 RequestAnimDict(lib)
			while not HasAnimDictLoaded(lib) do
				Citizen.Wait(100)
			end
TaskPlayAnim(GetPlayerPed(-1), lib, anim, 500.0, 10.0, -1, 50, 0, false, false, false)
--TaskPlayAnim(GetPlayerPed(-1), lib, anim,1, -1, 50000, 0,1, true, true, true)

TriggerServerEvent("Savelog","pflash.655")
Citizen.CreateThread(function()
Wait(1000)
StopEntityAnim(GetPlayerPed(-1), anim, lib, 1.0)
tcard = false
end)

--Wait(1000)

for i=1,10 do
  ApplyForceToEntity(ent, 1, thisx * 4000.1,thisy * 4000.1,0,0,0,180.0, 0, false, false, false, false, false);
SetPedToRagdoll(apply, 1000, 1000, 0, 0, 0, 0)
--ApplyDamageToPed(apply, 500, true) 

Wait(100)

end

-- end
end
  --TaskGoToEntity(int entity, int target, int duration, float distance, float speed, float p5, int p6)

--end
end
end	
end

end

end

------------ss---------------------

--[[if IsControlJustPressed(1,Keys["G"]) then
-- ssranks = 10.0
if gear == 10.0 then
gear = 0.0
elseif gear == 1.0 then
gear = 10.0
elseif gear == 0.1 then
gear = 1.0
elseif gear == 0.01 then
gear = 0.1
elseif gear == 0.001 then
gear = 0.01
elseif gear == 0.0 then
gear = 0.001
end

PrintChatMessage("Gear: " .. tostring(gear))

end ]]--

if IsControlJustPressed(1,Keys["Q"]) then
ssranks = ssranks -9.0 + ssranks
SetEntityHasGravity(playerPed,false)
gravity = false
--Wait(10)
end

if IsControlJustPressed(1,Keys["E"]) then
ssranks = (ssranks - 10) /2 + 10
SetEntityHasGravity(playerPed,true)
gravity = true
if ssranks < 10.0 then
ssranks = 10.0
--Wait(10)
end
end

if IsControlJustPressed(1,Keys["G"]) then
gravity = not gravity
SetEntityHasGravity(playerPed,gravity)
				for i = 1, 10 do
				heading = GetEntityHeading(playerPed)
				x, y, z = table.unpack(GetEntityCoords(playerPed, true))
								SetEntityCoords(playerPed,  x, y, z - 1.001, false, false, false, false)
							 ApplyForceToEntity(GetPlayerPed(-1), 1, 0,0,-100,0,0,0, 0, false, false, false, false, false);
			
				SetEntityHeading(playerPed,heading)
						PlaceObjectOnGroundProperly(playerPed)
						end
end

-- almost mach 1
running = false

campitch = tonumber(GetGameplayCamRelativePitch()/5)
 
			
							if IsPedSprinting(playerPed) == 1 then
							SetEntityMaxSpeed(playerPed, 33480.1) 
							RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
							running = true
							
					if IsControlPressed(1,Keys["W"]) then
				--	Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
			if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
			if ssranks > 25 then
       --     SetEntityHasGravity(playerPed,true)
			end
			end
			
				for i = 1, 10 do
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);	
				end
				end
				end
		
		if IsPedRunning(playerPed) == 1 then
		RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
		running = true
			if IsControlPressed(1,Keys["W"]) then
	--		Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
					if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
            			if ssranks > 25 then
        --    SetEntityHasGravity(playerPed,true)
			end
			end
				for i = 1, 10 do
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
				end
				end
				
										if IsPedSprinting(playerPed) == 1 then
							SetEntityMaxSpeed(playerPed, 33480.1) 
							RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
							running = true
							
					if IsControlPressed(1,Keys["A"]) then
				--	Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
			if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
			if ssranks > 25 then
       --     SetEntityHasGravity(playerPed,true)
			end
			end
			
				for i = 1, 10 do
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);	
				end
				end
				end
		
		if IsPedRunning(playerPed) == 1 then
		RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
		running = true
			if IsControlPressed(1,Keys["A"]) then
	--		Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
					if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
            			if ssranks > 25 then
        --    SetEntityHasGravity(playerPed,true)
			end
			end
				for i = 1, 10 do
					 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
				end
				end
				
										if IsPedSprinting(playerPed) == 1 then
							SetEntityMaxSpeed(playerPed, 33480.1) 
							RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
							running = true
							
					if IsControlPressed(1,Keys["D"]) then
				--	Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
			if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
			if ssranks > 25 then
       --     SetEntityHasGravity(playerPed,true)
			end
			end
			
				for i = 1, 10 do
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);	
				end
				end
				end
		
		if IsPedRunning(playerPed) == 1 then
		RemoveWeaponFromPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
		running = true
			if IsControlPressed(1,Keys["D"]) then
	--		Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
					if IsPedInCombat(playerPed) == true then
		--	SetEntityHasGravity(playerPed,true)
			else
            			if ssranks > 25 then
        --    SetEntityHasGravity(playerPed,true)
			end
			end
					for i = 1, 10 do
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
				end
				end
				
			if IsControlPressed(1,Keys["X"]) then
			ssranks = 15.0
				reset = false
			 SetEntityMaxSpeed(playerPed, 50000.279661107873) 
				for i = 1, 10 do
				heading = GetEntityHeading(playerPed)
				x, y, z = table.unpack(GetEntityCoords(playerPed, true))
								SetEntityCoords(playerPed,  x, y, z - 1.001, false, false, false, false)
							-- for i=1,10 do
				-- Wait(1)
					 ApplyForceToEntity(GetPlayerPed(-1), 1, 0,0,-100,0,0,0, 0, false, false, false, false, false);
				-- end	
				SetEntityHeading(playerPed,heading)
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);
		--		SetEntityHasGravity(playerPed,true)
					PlaceObjectOnGroundProperly(playerPed)
				end
			end
			
			if running == true then
			
			if ssranks > 100 then
			
			flashyoufly = 0
			flashyoufly2 = 0
				flashyoufly3 = 0
			
					playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, -60.0, (ssranks - 10) * ssranks * 4, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, flashyoufly = GetRaycastResult(rayHandle)
		
	
		playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 60.0, (ssranks - 10) * ssranks * 4, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, flashyoufly2 = GetRaycastResult(rayHandle)
		
		playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0,(ssranks - 10) * ssranks * 4, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, flashyoufly3 = GetRaycastResult(rayHandle)
				
				if flashyoufly ~= 0 then
		for i=1,10 do
		thisapply = ApplyForceToEntity(flashyoufly, 1, thisx * ssranks,thisy * ssranks, campitch ,0,0,180.0, 0, false, false, false, false, false);
		end
			ApplyDamageToPed(flashyoufly,toint(ssranks))
						for i=1,10 do
				SetPedToRagdoll(flashyoufly,1000,1000,0,0,0,0)
				end
		end
		
						if flashyoufly2 ~= 0 then
		for i=1,10 do
		thisapply = ApplyForceToEntity(flashyoufly2, 1, thisx * ssranks,thisy * ssranks, campitch ,0,0,180.0, 0, false, false, false, false, false);
		end
			ApplyDamageToPed(flashyoufly2,toint(ssranks))
						for i=1,10 do
				SetPedToRagdoll(flashyoufly2,1000,1000,0,0,0,0)
				end
		end
		
								if flashyoufly3 ~= 0 then
		for i=1,10 do
		thisapply = ApplyForceToEntity(flashyoufly3, 1, thisx * ssranks,thisy * ssranks, campitch ,0,0,180.0, 0, false, false, false, false, false);
		end
		

		end
		
		end
		


		
		end
		
	
			
		

if running == false then

Citizen.CreateThread(function()
	if pstoppingflashfx == true then
		return
		end
		TriggerServerEvent("Savelog","pflash.963")
		pstoppingflashfx = true
	Wait(5000)
	while IsControlPressed(1,Keys["W"]) do
	running = true
	break
    end
	if running == false then
--	SetEntityHasGravity(playerPed,true)
	-- ssranks = 10.0
	fxon = false
	StopParticleFxLooped(myfx1, true)
	StopParticleFxLooped(myfx2, true)
	StopParticleFxLooped(myfx3, true)
	StopParticleFxLooped(myfx4, true)
	stopped = true
	end
	running = true
	pstoppingflashfx = false
	end)
else
	if stopped == true then  
		if fxon == false then
			RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				RequestNamedPtfxAsset("core")
				Wait(0)
			end
			SetPtfxAssetNextCall("core")
			myfx1 = StartParticleFxLoopedOnEntityBone("ent_amb_foundry_molten_pour", GetPlayerPed(-1), 0.0, 0.0, -0.0, 0.0, 0.0, 0.0,GetPedBoneIndex(GetPlayerPed(-1),52301),1.0, false, false, false)
			RequestNamedPtfxAsset("core")
			
			while not HasNamedPtfxAssetLoaded("core") do
				RequestNamedPtfxAsset("core")
				Wait(0)
			end
			SetPtfxAssetNextCall("core")
			myfx2 = StartParticleFxLoopedOnEntityBone("ent_amb_foundry_molten_pour", GetPlayerPed(-1), 0.0, 0.0, -0.0, 0.0, 0.0, 0.0,GetPedBoneIndex(GetPlayerPed(-1),14201),1.0, false, false, false)
			
			RequestNamedPtfxAsset("core")
			
			RequestNamedPtfxAsset("core")
			while not HasNamedPtfxAssetLoaded("core") do
				RequestNamedPtfxAsset("core")
				Wait(0)
			end
			SetPtfxAssetNextCall("core")
			myfx3 = StartParticleFxLoopedOnEntityBone("ent_amb_foundry_molten_pour", GetPlayerPed(-1), 0.0, 0.0, -0.0, 0.0, 0.0, 0.0,GetPedBoneIndex(GetPlayerPed(-1),40269),1.0, false, false, false)
			
			while not HasNamedPtfxAssetLoaded("core") do
				RequestNamedPtfxAsset("core")
				Wait(0)
			end
			SetPtfxAssetNextCall("core")
			myfx4 = StartParticleFxLoopedOnEntityBone("ent_amb_foundry_molten_pour", GetPlayerPed(-1), 0.0, 0.0, -0.0, 0.0, 0.0, 0.0,GetPedBoneIndex(GetPlayerPed(-1),45509),1.0, false, false, false)
			
			fxon = true
		end
		stopped = false		
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
		
		end
		
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)

end

function toint(n)
    local s = tostring(n)
    local i, j = s:find('%.')
    if i then
        return tonumber(s:sub(1, i-1))
    else
        return n
    end
end