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
local spawned_car

peds = {}

local x

local y

local z

--	allBlips = {}

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

RegisterNetEvent('ds')
AddEventHandler('ds',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
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

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gg')
AddEventHandler('gg',function()
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

RegisterNetEvent('mag')
AddEventHandler('mag',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function(skin)
PrintChatMessage("UpT2")
rseed = GetClockHours() + GetClockMinutes() + GetClockSeconds()
math.randomseed(rseed)

-- PrintChatMessage("Hi")
 if powercalled == true then
return void
end


powercalled = true
-- PrintChatMessage("Step 1")

local playerPed = GetPlayerPed(-1)
        Wait(1)
		if tostring(skin) == "" then
		skin = "Joker"
		end
	--	PrintChatMessage(skin)
		  model = GetHashKey(skin)
for i=1,1000 do   
   RequestModel(model)
     end
    while not HasModelLoaded(model) do -- Wait for model to load
      RequestModel(model)
      Citizen.Wait(1)
    end
	Wait(1000)
	for i=1,10 do
    SetPlayerModel(PlayerId(-1), model)
	end
    SetModelAsNoLongerNeeded(model)
	local playerPed = GetPlayerPed(-1)
	Wait(1000)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))
	spawnHQ()
	

SetPoliceIgnorePlayer(PlayerId(-1),false)
	


	local pedWeps =
{
	"WEAPON_PISTOL",
	"WEAPON_MG",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_ASSAULTSMG"
}

local playerPed = GetPlayerPed(-1)
for i, wep in pairs(pedWeps) do
Wait(1)
-- PrintChatMessage(wep)
GiveWeaponToPed(playerPed, GetHashKey(wep), 9999, true, true)
end
		
	--	SetPlayerTargetingMode(PlayerId())
		
local playerPed = GetPlayerPed(-1)
		
	  SetPlayerMaxArmour(PlayerId(-1), 500)
	  SetPedArmour(playerPed,500)
		  SetPedMaxHealth(playerPed,250)
	  SetEntityHealth(playerPed,250)
	  SetPedDiesWhenInjured(playerPed,false)
	--  SetPlayerHealth(PlayerId(-1),10000)
	
	Citizen.CreateThread(function()
	while true do
	Wait(1000)
	if GetPedArmour(playerPed) < 500 then
	-- PrintChatMessage("Armour")
	SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
	end
	end
	end)
	
			Citizen.CreateThread(function()
			while true do
			Wait(10000)
			if #peds > 0 then
			for i=#peds,1,-1 do
							x, y, z = table.unpack(GetEntityCoords(peds[i], true))
			TaskGoToEntity(peds[i], GetPlayerPed(-1), -1, 1.0, 20.0, 1073741824.0, 0)
			SetPedKeepTask(peds[i], true)
			end
			if not IsEntityDead(hq) then
										x, y, z = table.unpack(GetEntityCoords(hq, true))
			TaskGoToEntity(hq, GetPlayerPed(-1), -1, 1.0, 20.0, 1073741824.0, 0)
			SetPedKeepTask(hq, true)
			end
			
			end
			end
			end)
		
Wait(10)

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
		if chance > 50 then
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
		if chance > 50 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
Wait(1000)

SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))

Wait(50)





        x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true))
        Wait(1)
		    while not x do
        x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		end
	--	PrintChatMessage(tostring(playerPed) .. " - " .. tostring(x) .. tostring(y))

local vehicle = GetHashKey('jester2')
RequestModel(vehicle)
while not HasModelLoaded(vehicle) do
Wait(1)
end
-- local plate = math.random(100, 900)
local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0, 0.0, 1.0)
spawned_car = CreateVehicle(vehicle, coords, GetGameplayCamRelativeHeading(), true, false)
SetVehicleOnGroundProperly(spawned_car)
 SetVehicleNumberPlateText(spawned_car, "JOKER")


rseed = GetClockHours() + GetClockMinutes() + GetClockSeconds()
math.randomseed(rseed)
			chance = math.random(100)		
			--PrintChatMessage(tostring(chance))
			
			if chance < 33 then
		--	PrintChatMessage("I'm Driving")
 SetPedIntoVehicle(playerPed, spawned_car, -1)
  SetPedIntoVehicle(hq, spawned_car, 0)
  elseif chance  > 67 then
   SetPedIntoVehicle(playerPed, spawned_car, 0)
  SetPedIntoVehicle(hq, spawned_car, -1)
-- PrintChatMessage("Harley!")
TaskVehicleDriveWander(hq, spawned_car, 70.0, 0)
			end
 

SetModelAsNoLongerNeeded(vehicle)
-- Citizen.InvokeNative(0xB736A491E64A32CF,Citizen.PointerValueIntInitialized(spawned_car))
		
stopped = true
 
-- SetEntityMaxSpeed(playerPed, 7.155) 
 local player = PlayerId()
 
 	for i=1,12 do

		RequestModel(0xAC4B4506)
			while not HasModelLoaded(0xAC4B4506) do
				Wait(1)
			end

			repeat
				Wait(1)
		x = 0.0
		y = 0.0
		z = 0.0
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				newX = x + math.random(-3, 3)
			--	PrintChatMessage(tostring(y))
				newY = y + math.random(-3, 3)

				Wait(1)
					playerX, playerY = table.unpack(GetEntityCoords(playerPed))
					if newX > playerX - 60 and newX < playerX + 60 or newY > playerY - 60 and newY < playerY + 60 then
						canSpawn = true
						break
					else
						canSpawn = false
					end
				Wait(1000)

			until canSpawn
				while x == nil or y == nil or z == nil do
				x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				end
			ped = CreatePed(4, 0xAC4B4506, newX, newY, z - 500, 0.0, true, true)
-- update test
			SetPedArmour(ped, 100)
			SetPedAccuracy(ped, 25)
			SetPedSeeingRange(ped, 1000000.0)
			SetPedHearingRange(ped, 1000000.0)

			SetPedFleeAttributes(ped, 0, 0)
   			SetPedCombatAttributes(ped, 16, 1)
   			SetPedCombatAttributes(ped, 46, 1)
			SetAmbientVoiceName(ped, "ALIENS")
			SetPedEnableWeaponBlocking(ped, true)
			Wait(1000)
			SetPedRelationshipGroupHash(ped, GetHashKey("villains"))
			DisablePedPainAudio(ped, true)
			SetPedDiesInWater(ped, false)
			SetPedDiesWhenInjured(ped, false)
			

		--	SetPedIsDrunk(ped, true)
	--		RequestAnimSet("move_m@drunk@verydrunk")
	--		while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
		--		Wait(1)
		--	end
	--		SetPedMovementClipset(ped, "move_m@drunk@verydrunk", 1.0)


		
		--[[		Citizen.CreateThread(function()
				while true do
		Wait(1)
		if not DoesEntityExist(ped) then
		break
		else
		TaskFollowToOffsetOfEntity(ped, playerPed, 6.0, 6.0, 6.0, 12.0, 3.0, false)
		end
		end
		end) ]]
		
		chance = math.random(100)
			if chance > 50 then
				randomWep = math.random(1, #pedWeps)
				GiveWeaponToPed(ped, GetHashKey(pedWeps[randomWep]), 9999, true, true)
			

			
						else
				end
	table.insert(peds, ped)
		--	theBlip = AddBlipForEntity(ped)
		--	table.insert(allBlips, theBlip)
			
			 -- SetBlipSprite(theBlip, 1)
 -- SetBlipDisplay(theBlip, 4)
--  SetBlipScale(theBlip, 0.9)
----  SetBlipAsShortRange(theBlip, true)
----  BeginTextCommandSetBlipName("Minion");
----  AddTextComponentString("Minion")
----  EndTextCommandSetBlipName("Minion")
  
  minionspawn = false
  Citizen.CreateThread(function()
			Wait(60000)
	minionspawn = true
  end)
  
  end
  
  carspawn = true
 

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
	
--	PrintChatMessage("Going")
 
while true do
Wait(1)


----------rope trick
if IsControlPressed(1,Keys["E"]) then

local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)

    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
    local a, b, c, d, youfly = GetRaycastResult(rayHandle)

	  if IsEntityAPed(youfly) == 1 then	

 	xp, yp, zp = table.unpack(GetEntityCoords(youfly, true))
		 
  RequestModel("prop_amb_ciggy_01")
		while not HasModelLoaded("prop_amb_ciggy_01") do
			Wait(1)
		end

		local ciggy = CreateObject("prop_amb_ciggy_01", xp, yp, zp +1, true, true, true)
	--	PlaceObjectOnGroundProperly(ciggy)
		
		table.insert(cig,ciggy)
			
		--	SetEntityHasGravity(youfly, false)
		-- x, y, z = table.unpack(GetEntityCoords(ciggy, true))

			RequestNamedPtfxAsset("core")
 while not HasNamedPtfxAssetLoaded("core") do
  RequestNamedPtfxAsset("core")
  Wait(0)
  end
 SetPtfxAssetNextCall("core")
cigmyfx = StartParticleFxLoopedOnEntity("ent_amb_foundry_molten_pour", ciggy,    0.0,           0.0,          -0.0,        0.0,        0.0,        0.0,        0.5,         false,   false,    false)

table.insert(cigfx,cigmyfx)


Wait(0)
  
  ApplyForceToEntity(ciggy, 1,0,0,0,0,0,2.0, 0, false, false, false, false, false);
  
  Wait(0)
  
  SetEntityHasGravity(ciggy, false)
  SetEntityVisible(ciggy, false,0)
  
  

     
      local animation = 'idle' -- animation to play
      local flags = 49 -- only play the animation on the upper body

  
	  Wait(1)
  
objectcount = objectcount + 1
-- PrintChatMessage(tostring(objectcount))
if objectcount > 50 then
-- PrintChatMessage(tostring(objectcount))
Wait(1)
StopParticleFxLooped(cigfx[objectcount - 50],true)
 Wait(1)
DeleteEntity(cig[objectcount - 50])
else
-- Wait(1000)
end

--rintChatMessage("test")
		   
		Citizen.CreateThread(function()
		for i=1,5 do
SetPedCanRagdoll(youfly,true)
		SetPedToRagdoll(youfly,10000,0,3) --3200 = 1 second
          Wait(1000)
	--	 PrintChatMessage(tostring(IsAnEntity(ciggy)))
	if IsAnEntity(ciggy) == 1 then
		  ApplyForceToEntity(ciggy, 1,0,0,0,0,0,400.0, 0, false, false, false, false, false);
	end
	-- SetEntityVelocity(playerPed,0, 0, 20.0)
		  end
		  
		  	if IsAnEntity(ciggy) == 1 then
			  StopParticleFxLooped(cigmyfx, true)
		  DeleteEntity(ciggy)
	end

         end)
		 
	
	--  end
  end
  
 -- table.insert(t,youfly)
  end

-----------end rope trick-------------
----------end rope trick

if IsControlPressed(1,Keys["="]) then
if carspawn == true then
    while not x do
        x, y, z = table.unpack(GetEntityCoords(playerPed, true))
		end
	--	PrintChatMessage(tostring(playerPed) .. " - " .. tostring(x) .. tostring(y))

local vehicle = GetHashKey('jester2')
RequestModel(vehicle)
while not HasModelLoaded(vehicle) do
Wait(1)
end
-- local plate = math.random(100, 900)
local coords = GetOffsetFromEntityInWorldCoords(playerPed, 0, 0.0, 1.0)
spawned_car = CreateVehicle(vehicle, coords, GetGameplayCamRelativeHeading(), true, false)
SetVehicleOnGroundProperly(spawned_car)
 SetVehicleNumberPlateText(spawned_car, "JOKER")
-- SetPedIntoVehicle(playerPed, spawned_car, -1)
  DeleteEntity(hq)
 Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(hq))
 spawnHQ()
 rseed = GetClockHours() + GetClockMinutes() + GetClockSeconds()
 math.randomseed(rseed)
 			chance = math.random(100)
			PrintChatMessage("Chance " .. chance)
			if chance < 33 then
 SetPedIntoVehicle(playerPed, spawned_car, -1)
  SetPedIntoVehicle(hq, spawned_car, 0)
  elseif chance  > 67 then
   SetPedIntoVehicle(playerPed, spawned_car, 0)
  SetPedIntoVehicle(hq, spawned_car, -1)
  TaskVehicleDriveWander(hq, spawned_car, 70.0, 0)
			end
			
SetModelAsNoLongerNeeded(vehicle)
 -- Citizen.InvokeNative(0xB736A491E64A32CF,Citizen.PointerValueIntInitialized(spawned_car))
carspawn = false
Citizen.CreateThread(function()
Wait(60000)
carspawn = true
end)
 end
end

while IsControlPressed(1,Keys["Y"]) do
	pressed = true
	Wait(0)
end

if pressed == true then
pressed = false
	pass = not pass
	PrintChatMessage(tostring(pass))
	if pass == true then
		TaskLeaveVehicle(playerPed,spawned_car,true)
		Wait(2000)
		TaskLeaveVehicle(hq,spawned_car,true)
		Wait(2000)
		SetPedIntoVehicle(playerPed,spawned_car,-1)
		Wait(2000)
		SetPedIntoVehicle(hq,spawned_car,0)
	else
		TaskLeaveVehicle(playerPed,spawned_car,true)
		Wait(2000)
		TaskLeaveVehicle(hq,spawned_car,true)
		Wait(2000)
		SetPedIntoVehicle(playerPed,spawned_car,0)
	--	Wait(2000)
		SetPedIntoVehicle(hq,spawned_car,-1)
		Wait(2000)
		TaskVehicleDriveWander(hq, spawned_car, 70.0, 0)
	end
end

if IsControlPressed(1,Keys["-"]) then
PrintChatMessage(tostring(tablelength(peds)))
if minionspawn == true then
for i=#peds,1,-1 do
		DeleteEntity(peds[i])
		Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(peds[i]))
        table.remove(peds, i)
	--	RemoveBlip(allBlips[i])
	--	table.remove(allBlips,i)
end
	for i = 1,6 do

			RequestModel(0xAC4B4506)
			while not HasModelLoaded(0xAC4B4506) do
				Wait(1)
			end

			repeat
				Wait(1)
		x = 0.0
		y = 0.0
		z = 0.0
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				newX = x + math.random(-3, 3)
			--	PrintChatMessage(tostring(y))
				newY = y + math.random(-3, 3)

				Wait(1)
					playerX, playerY = table.unpack(GetEntityCoords(playerPed))
					if newX > playerX - 60 and newX < playerX + 60 or newY > playerY - 60 and newY < playerY + 60 then
						canSpawn = true
						break
					else
						canSpawn = false
					end
				Wait(1000)

			until canSpawn
				while x == nil or y == nil or z == nil do
				x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				end
			ped = CreatePed(4, 0xAC4B4506, newX, newY, z - 500, 0.0, true, true)
-- update test
			SetPedArmour(ped, 100)
			SetPedAccuracy(ped, 25)
			SetPedSeeingRange(ped, 1000000.0)
			SetPedHearingRange(ped, 1000000.0)

			SetPedFleeAttributes(ped, 0, 0)
   			SetPedCombatAttributes(ped, 16, 1)
   			SetPedCombatAttributes(ped, 46, 1)
			SetAmbientVoiceName(ped, "ALIENS")
			SetPedEnableWeaponBlocking(ped, true)
			Wait(1000)
			SetPedRelationshipGroupHash(ped, GetHashKey("villains"))
			DisablePedPainAudio(ped, true)
			SetPedDiesInWater(ped, false)
			SetPedDiesWhenInjured(ped, false)

		--	SetPedIsDrunk(ped, true)
	--		RequestAnimSet("move_m@drunk@verydrunk")
	--		while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
		--		Wait(1)
		--	end
	--		SetPedMovementClipset(ped, "move_m@drunk@verydrunk", 1.0)

		--	x, y, z = table.unpack(GetEntityCoords(ped, true))
			TaskWanderStandard(ped, 1.0, 10)
		
--[[		Citizen.CreateThread(function()
		while true do
		Wait(1)
		if not DoesEntityExist(ped) then
		break
		else
		TaskFollowToOffsetOfEntity(ped, playerPed, 6.0, 6.0, 6.0, 12.0, 3.0, false)
		end
		end
		end) ]]

			chance = math.random(100)
			if chance > 50 then
				randomWep = math.random(1, #pedWeps)
				GiveWeaponToPed(ped, GetHashKey(pedWeps[randomWep]), 9999, true, true)
				

						else
						-- do nothing
				end	
			table.insert(peds, ped)
		--	theBlip = AddBlipForEntity(ped)
		--	table.insert(allBlips, theBlip)
				end
			minionspawn = false
			Citizen.CreateThread(function()
			Wait(1)
			minionspawn = true
			end)
			
			end
		
			end
			
	
Wait(1)

if IsEntityDead(playerPed) == 1 then
	
for i=#peds,1,-1 do
		Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(peds[i]))
		DeleteEntity(peds[i])
        table.remove(peds, i)
		
	--	RemoveBlip(allBlips[i])
	--	table.remove(allBlips,i)
end
	Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(hq))
		DeleteEntity(hq)
powercalled = false
return void
end


Wait(0)
	for i=#peds,1,-1 do
			if not DoesEntityExist(peds[i]) then
				table.remove(peds, i)
				Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(peds[i]))
				DeleteEntity(peds[i])
					--			RemoveBlip(allBlips[i])
			--	table.remove(allBlips,i)
			elseif IsPedDeadOrDying(peds[i], 1) then
				-- Set ped as no longer needed for despawning
							table.remove(peds, i)
						--		RemoveBlip(allBlips[i])
			--	table.remove(allBlips,i)
				
				Citizen.CreateThread(function()
				Wait(15000)
						Citizen.InvokeNative(0xB736A491E64A32CF, Citizen.PointerValueIntInitialized(peds[i]))
				DeleteEntity(peds[i])
				end)
						else
						
--PrintChatMessage("Trying")			
						
	Wait(1)
end
end
end
 

----------------------end flight-----------------------		

------------ss---------------------
-- almost mach 1


---------------end ss----------------
		
		-- Wait(10000) ]]
		
end)

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function spawnHQ()
local playerPed = GetPlayerPed(-1)
RequestModel("HarleyQuinn")
			while not HasModelLoaded("HarleyQuinn") do
				Wait(1)
			end
			
						repeat
				Wait(1)
		x = 0.0
		y = 0.0
		z = 0.0
			x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				newX = x + math.random(-3, 3)
			--	PrintChatMessage(tostring(y))
				newY = y + math.random(-3, 3)

				Wait(1)
					playerX, playerY = table.unpack(GetEntityCoords(playerPed))
					if newX > playerX - 60 and newX < playerX + 60 or newY > playerY - 60 and newY < playerY + 60 then
						canSpawn = true
						break
					else
						canSpawn = false
					end
				Wait(1000)

			until canSpawn
				while x == nil or y == nil or z == nil do
				x, y, z = table.unpack(GetEntityCoords(playerPed, true))
				end
			
				hq = CreatePed(4, "HarleyQuinn", newX, newY, z - 500, 0.0, true, true)
-- update test
			SetPedArmour(hq, 100)
			SetPedAccuracy(hq, 25)
			SetPedSeeingRange(hq, 1000000.0)
			SetPedHearingRange(hq, 1000000.0)

			SetPedFleeAttributes(hq, 0, 0)
   			SetPedCombatAttributes(hq, 16, 1)
   			SetPedCombatAttributes(hq, 46, 1)
			SetAmbientVoiceName(hq, "ALIENS")
			SetPedEnableWeaponBlocking(hq, true)
			Wait(1000)
			SetPedRelationshipGroupHash(hq, GetHashKey("villains"))
			DisablePedPainAudio(hq, true)
			SetPedDiesInWater(hq, false)
			SetPedDiesWhenInjured(hq, false)
	  SetPedArmour(hq,500)
		  SetPedMaxHealth(hq,500)
	  SetEntityHealth(hq,500)
				local hpedWeps =
{
	"WEAPON_REVOLVER",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_ASSAULTSMG",
	"WEAPON_MG",
	"WEAPON_BAT"
}

for i, wep in pairs(hpedWeps) do
Wait(1)
-- PrintChatMessage(wep)
GiveWeaponToPed(hq, GetHashKey(wep), 9999, true, true)
end
			TaskWanderStandard(hq, 1.0, 10)
			 					
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