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

local wwvoid = false


RegisterNetEvent('ds')
AddEventHandler('ds',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('supergirl')
AddEventHandler('supergirl',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('mv')
AddEventHandler('mv',function()
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

RegisterNetEvent('jk')
AddEventHandler('jk',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('hulk')
AddEventHandler('hulk',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('loki')
AddEventHandler('loki',function()
	wwvoid = true
	powercalled = false
end)


RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('gb')
AddEventHandler('gb',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('fla')
AddEventHandler('fla',function()
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

RegisterNetEvent('jg')
AddEventHandler('jg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = false

	if powercalled == true then
		return void
	end

	powercalled = true
    Wait(1)
	skin = "rhin"
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
	
	SetPlayerMayNotEnterAnyVehicle(PlayerId(-1))
	SetPedAccuracy(playerPed, 1000)
	SetPedCombatRange(playerPed, 10)

	cbr = GetPedCombatRange(playerPed)
	
	local playerPed = GetPlayerPed(-1)
	Wait(1000)
	SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))

	SetPoliceIgnorePlayer(PlayerId(-1),false)
	
	Citizen.CreateThread(function()
		
		local bulletproof
		local fireproof
		local explosionproof
		local meleeproof
		local drownproof
		
		while true do
		Wait(1000)
		chance = GetRandomIntInRange(1,101)
		if chance > 98 then
			bulletproof = false
			else
			bulletproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 98 then
			fireproof = false
			else
			fireproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 98 then
			explosionproof = false
			else
			explosionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 98 then
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
		
		SetEntityMaxSpeed(playerPed, 15.0)
             
	SetPlayerMaxArmour(PlayerId(-1), 1000)
	SetPedArmour(playerPed, 1000) 
	SetPedMaxHealth(playerPed,2500)
	SetEntityHealth(playerPed,2500)
	SetPedDiesWhenInjured(playerPed,false)

	TriggerServerEvent("Savelog","playerrhino.149")
	Citizen.CreateThread(function()
		while true do
			Wait(250)
			if GetEntityHealth(playerPed) > 549 then
				if GetEntityHealth(playerPed) > 4999 then
				else
					if IsPedStopped(playerPed) == 1 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
					end
				end
			end
		end
	end)
 
	TriggerServerEvent("Savelog","playerrhino.164")
	Citizen.CreateThread(function()
		while true do
			Wait(100)
			if GetPedArmour(playerPed) < 100 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			end
		end
	end)
 

while true do

SetPlayerMayNotEnterAnyVehicle(PlayerId(-1))
RemoveAllPedWeapons(playerPed)

-- PrintChatMessage("running")

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
	-- SetPlayerMeleeWeaponDamageModifier(PlayerId(-1), 50)
	Wait(0)




--------------


		playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, youfly = GetRaycastResult(rayHandle)
		SetEntityHasGravity(youfly, true)
		comeere = 0

		if comeere == 0 then
		else
			youfly = comeere
		end

		if GetVehiclePedIsIn(youfly, false) == 0 then
		else
			comeere = GetVehiclePedIsIn(youfly)
			youfly = GetVehiclePedIsIn(youfly)
			SetVehicleEngineOn(youfly,false)
			SetEntityHasGravity(youfly, true)
		end
		if youfly == 0 then
		else
		
		
	
		
			if IsPedInMeleeCombat(playerPed) == 1 then
				if HasEntityBeenDamagedByEntity(youfly,playerPed,true) then
					if IsEntityAPed(youfly) == 1 then
						Citizen.Trace(tostring(PlayerId()) .. " - " .. tostring(youfly) .. " - " .. tostring(GetPlayerPed(PlayerId())))
						isplayer = false
						session = -1
						for i=0,31 do
							if youfly == GetPlayerPed(i) then
								session = i
								isplayer = true
							end
						end

					campitch = tonumber(GetGameplayCamRelativePitch()/5)
					
					TriggerServerEvent('jgMeleeServer',PlayerId(-1), youfly, thisx, thisy, campitch, isplayer, session)
					Wait(150)
					else
						attach = false
						PrintChatMessage(tostring(attach))
						if attach == true then
							attached = youfly
							AttachEntityToEntity(attached, playerPed, GetPedBoneIndex(playerPed,31086), 1.0, 1.0, 1.0, 1.0, 90.0, 0.0, false, false, false, true, 2, true)
						end
TriggerServerEvent("Savelog","playerrhino.256")
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
								wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) + 1
								PrintChatMessage(tostring(wantedlevel))
								SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
								Wait(10)
							end
							Wait(1000)
						end)

					end
					SetPedToRagdoll(youfly,1000,1000,0,0,0,0)
				end

			end
		end

--------------


running = false


if IsPedSprinting(playerPed) == 1 then
	running = true
	end
	
	if IsPedRunning(playerPed) == 1 then
	
		running = true
	end
	
	if running == true then
			if IsControlJustReleased(1,Keys["E"]) then
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
			SetEntityMaxSpeed(playerPed, 90.0) 
			for i=1,10 do
		thisapply = ApplyForceToEntity(playerPed, 1, thisx * 10000.0,thisy * 10000.0, -10000.0 ,0,0,0, 0, false, false, false, false, false);
					thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)
			campitch = tonumber(GetGameplayCamRelativePitch()/5)
		playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 20.0, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, youfly = GetRaycastResult(rayHandle)
				if GetVehiclePedIsIn(youfly, false) == 0 then
				else
			comeere = GetVehiclePedIsIn(youfly)
			youfly = GetVehiclePedIsIn(youfly)
			SetVehicleEngineOn(youfly,false)
			SetEntityHasGravity(youfly, true)
		end
		
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
		
	--	if HasEntityCollidedWithAnything(playerPed) == 1 then
		if youfly ~= 0 then
		for i=1,10 do
		thisapply = ApplyForceToEntity(youfly, 1, thisx * 100.0,thisy * 100.0, campitch ,0,0,180.0, 0, false, false, false, false, false);
		SetPedToRagdoll(youfly,1000,1000,0,0,0,0)	
		end
		end		
	--	end
		end
		ApplyDamageToPed(youfly,GetRandomIntInRange(1, 250))
		Citizen.CreateThread(function()
		Wait(250)
		 SetEntityMaxSpeed(playerPed, 15.0)
	--	 thisapply = ApplyForceToEntity(playerPed, 1, 0,0, -1 ,0,0,0, 0, false, false, false, false, false);
		end)
		end
		
		end

------------ss---------------------
-- almost mach 1

--
ssranks = 15.0

		playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed)
		local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 4.0, 0.0)
		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, playerPed, 0)
		local a, b, c, d, youfly = GetRaycastResult(rayHandle)
		
		if youfly ~= 0 then
	--	PrintChatMessage(tostring(youfly))
		end
 
			
							if IsPedSprinting(playerPed) == 1 then

							running = true
									if IsControlPressed(1,Keys["W"]) then
					SetPedCanRagdoll(GetPlayerPed(-1),false)
			flyranks = 11
		--	Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)

	--	SetPedGravity(playerPed,200000)
			--	GivePlayerRagdollControl(PlayerId(),true)
				for i = 1, 10 do
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),false)
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				--	SetVehicleForwardSpeed(GetPlayerPed(-1),500.55);	
				end
				end
				end
		
		if IsPedRunning(playerPed) == 1 then
		running = true

			if IsControlPressed(1,Keys["W"]) then
			SetPedCanRagdoll(GetPlayerPed(-1),false)
			flyranks = 10
	--		Chat(flyranks)
			thisx = GetEntityForwardX(playerPed)
			thisy = GetEntityForwardY(playerPed)

	--	SetPedGravity(playerPed,200000)
			--	GivePlayerRagdollControl(PlayerId(),true)
				for i = 1, 10 do
				SetPedCanRagdoll(GetPlayerPed(-1),false)
				GivePlayerRagdollControl(PlayerId(),false)
				 ApplyForceToEntity(GetPlayerPed(-1), 1, thisx * ssranks,thisy * ssranks,0,0,0,0, 0, false, false, false, false, false);
				end
				end
				end
				
				
				
				
							if IsPedJumping(playerPed) == 1 then
							
Citizen.CreateThread(function()
	if pjugjump == true then
		return
	end
	pjugjump = true
	TriggerServerEvent("Savelog","playerrhino.402")
	SetPedCanRagdoll(GetPlayerPed(-1),false)
	GivePlayerRagdollControl(PlayerId(),false)
	for i=1,100 do
		ApplyForceToEntity(playerPed, 1,thisx * ssranks,thisy * ssranks,ssranks * 8,0,0,0, 0, false, false, false, false, false);
	end
	Wait(3500)
	pjugjump = false
end)
					
				--	SetVehicleForwardSpeed(gambitNPC,500.55);
				
		
					end
	
				if running == true then
		

		
				end
end
				
end)

---------------end ss----------------	


function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)





end