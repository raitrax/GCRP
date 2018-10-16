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
local vehs = {}
local ropes = {}

local noflag = false

local cig = {}

local cigfx = {}


angleint = 0

local objectcount = 0

local vehs = {}

local powercalled = false
local ssranks = 0.1

local tyx = true

myfx = {}

stopped = {}

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

RegisterNetEvent('dshot')
AddEventHandler('dshot',function()
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

RegisterNetEvent('dp')
AddEventHandler('dp',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('dd')
AddEventHandler('dd',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('jg')
AddEventHandler('jg',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('hq')
AddEventHandler('hq',function()
wwvoid = true
powercalled = false
end)

RegisterNetEvent('jk')
AddEventHandler('jk',function()
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
--PrintChatMessage("Verify Nerf")
AddEventHandler('mag',function()
-- PrintChatMessage("Mag4")
wwvoid = false

if powercalled == true then
return void
end

powercalled = true
-- PrintChatMessage("Step 1")


        Wait(1)
		skin = "u_m_y_burgerdrug_01"
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
		

	SetPoliceIgnorePlayer(PlayerId(-1),false)

-- PrintChatMessage(tostring(playerPed))

	
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
		if chance > 100 then
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
		if chance > 100 then
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
		if chance > 99 then
			drownproof = false
			else
			drownproof = true
		end
		SetEntityProofs(playerPed, bulletproof, fireproof, explosionproof, collisionproof, meleeproof, false, false, drownproof)
		end
		end)
   
        GiveWeaponToPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)
    	  
      SetPlayerMaxArmour(PlayerId(-1), 5000)
	  SetPedArmour(playerPed, 5000)
	  
	  	--SetEntityMaxHealth(ped,9000)
	-- SetPedMaxHealth(ped,9000)
--	 SetEntityHealth(ped,9000)
	  
	  SetPedMaxHealth(playerPed,2500)
	  SetEntityHealth(playerPed,2500)
	  SetPedDiesWhenInjured(playerPed,false)
--	
	Citizen.CreateThread(function()
		while true do
			Wait(250)
			if GetEntityHealth(playerPed) > 1 then
				if GetEntityHealth(playerPed) > 2499 then
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
	if GetPedArmour(playerPed) < 5000 then
	-- PrintChatMessage("Armour")
	SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
	end
	end
	end)
	
	Citizen.CreateThread(function()
while true do	
			local thisx
			local thisy
thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)

-- SetPlayerMeleeWeaponDamageModifier(PlayerId(-1), 100.0)

Wait(0)



for i=1,10 do
-- aiming, comeere = GetEntityPlayerIsFreeAimingAt(PlayerId(), Citizen.ReturnResultAnyway())
--youfly = GetMeleeTargetForPed(playerPed)

campitch = tonumber(GetGameplayCamRelativePitch())


local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 1000.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z * campitch, 10, playerPed, 0)
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

			if GetVehiclePedIsIn(youfly, false) == 0 then
			else
			youfly = GetVehiclePedIsIn(youfly)
		--	SetVehicleEngineOn(youfly,false)
			SetEntityHasGravity(youfly, true)
			end

if youfly == 0 then
else


  xd, yd, zd = table.unpack(GetEntityCoords(youfly, true))
    SetDrawOrigin(xd, yd, zd, 0)
    RequestStreamedTextureDict("helicopterhud", false)
    DrawSprite("helicopterhud", "hud_corner", -0.1, -0.1, 0.06, 0.06, 0.0, 255, 0, 0, 64)
    DrawSprite("helicopterhud", "hud_corner", 0.1, -0.1, 0.06, 0.06, 90.0, 255, 0, 0, 64)
    DrawSprite("helicopterhud", "hud_corner", -0.1, 0.1, 0.06, 0.06, 270.0, 255, 0, 0, 64)
    DrawSprite("helicopterhud", "hud_corner", 0.1, 0.1, 0.06, 0.06, 180.0, 255, 0, 0, 64)
    ClearDrawOrigin()
	Wait(10)
	
	if wwvoid == true then
powercalled = false
 return void
end

--TriggerServerEvent("Savelog",GetEntityForwardY(playerPed) .. " "  .. GetEntityForwardX(playerPed))

playerPed = GetPlayerPed(PlayerId())


if IsEntityDead(playerPed) == 1 then
powercalled = false
wwvoid = true
return void
end
	
end
end
end
	end)
	
	Wait(1000)
SetPedRelationshipGroupHash(playerPed, GetHashKey("villains"))
  Wait(1000)
 
while true do
if wwvoid == true then
powercalled = false
 return void
end

--TriggerServerEvent("Savelog",GetEntityForwardY(playerPed) .. " "  .. GetEntityForwardX(playerPed))

playerPed = GetPlayerPed(PlayerId())


if IsEntityDead(playerPed) == 1 then
powercalled = false
wwvoid = true
return void
end
	ClearPedBloodDamage(playerPed)
ClearPedBloodDamage(object)			

--<<begin
local thisx
local thisy
thisy = GetEntityForwardY(playerPed)
thisx = GetEntityForwardX(playerPed)
Wait(0)
for i=1,10 do
	campitch = tonumber(GetGameplayCamRelativePitch())
	local pos = GetEntityCoords(playerPed)
    local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 1000.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z * campitch, 10, playerPed, 0)
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

	if GetVehiclePedIsIn(youfly, false) == 0 then
	else
		youfly = GetVehiclePedIsIn(youfly)
		SetEntityHasGravity(youfly, true)
	end

	if youfly == 0 then
	else

		if IsControlPressed(1,25) then
			thisy = GetEntityForwardY(playerPed)
			thisx = GetEntityForwardX(playerPed)
			ClearPedBloodDamage(playerPed)
			ClearPedBloodDamage(object)
			Wait(0)
			campitch = tonumber(GetGameplayCamRelativePitch())
			local pos = GetEntityCoords(playerPed)
			local entityWorld = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 1000.0, 0.0)
			local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z * campitch, 10, playerPed, 0)
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

			if GetVehiclePedIsIn(youfly, false) == 0 then
			else
				youfly = GetVehiclePedIsIn(youfly)
				SetEntityHasGravity(youfly, true)
			end

			youflypos = GetEntityCoords(youfly)
			local vehicleHandle = GetRandomVehicleInSphere(youflypos.x, youflypos.y, youflypos.z, 300.0, 0, 0.0)

			if vehicleHandle ~= 0 then
				if youfly ~= 0 then
					vehflag = false
					for i=#vehs,1,-1 do
						if vehs[i] == vehicleHandle then
							vehflag = true
						end
					end
					if vehflag == false then
						table.insert(vehs,vehicleHandle)
						SetEntityCoords(vehicleHandle,youflypos.x, youflypos.y, youflypos.z + 100)
					end
				end
			end

			wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) + 1
			SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
			isplayer = false
			session = -1
			
			for i=0,31 do
				if youfly == GetPlayerPed(i) then
					session = i
					isplayer = true
				end
			end

			Wait(150)
		 
			Citizen.CreateThread(function()
				amag = 1.0
				for i=1,500 do
					campitch = tonumber(GetGameplayCamRelativePitch()/5)
					thisy = GetEntityForwardY(playerPed)
					thisx = GetEntityForwardX(playerPed)
					amag = amag + 0.1
					Wait(1)
					dont = false
					
					for i=#t,1,-1 do
						if t[i] == youfly then
							dont = true
						end
					end

					if GetEntityPopulationType(youfly) == 0 then
						table.insert(t,youfly)
						dont = true
					end

					if dont == false then
						if GetEntityPopulationType(youfly) == 0 then
							Wait(1)
						end

						local playerCoords = GetEntityCoords(youfly)
						local playerCoords2 = GetEntityCoords(playerPed)
					
						if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 30) then
							local thisx
							local thisy
							thisy = GetEntityForwardY(youfly)
							thisx = GetEntityForwardX(youfly)
							
							for i=1,10 do
								local pos = GetEntityCoords(youfly)
								local entityWorld = GetOffsetFromEntityInWorldCoords(youfly, 0.0, -200.0, 0.0)
								local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, youfly, 0)
								local a, b, c, d, pyoufly = GetRaycastResult(rayHandle)
						
								if pyoufly ~= playerPed then
									SetEntityHasGravity(pyoufly, true)
										
									if GetVehiclePedIsIn(pyoufly, false) == 0 then --Standard change this.
									else
										comeere = GetVehiclePedIsIn(pyoufly)
										pyoufly = GetVehiclePedIsIn(pyoufly)
										SetEntityHasGravity(pyoufly, true)
									end
					
									if pyoufly == 0 then  --Standard change this.
									else
									
										if IsEntityAPed(pyoufly) == 1 then
											thisapply = ApplyForceToEntity(pyoufly, 1, thisx * amag * 1.0,thisy * amag * 1.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
											local playerCoords = GetEntityCoords(youfly)
											local playerCoords2 = GetEntityCoords(pyoufly)
											
											if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 1.5) then	
												ApplyDamageToPed(youfly,1)
												
												if pyoufly ~= playerPed then
													ApplyDamageToPed(pyoufly,1)
												end
											end
										else
											thisapply = ApplyForceToEntity(pyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
											local playerCoords = GetEntityCoords(youfly)
											local playerCoords2 = GetEntityCoords(pyoufly)
											
											if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 1.5) then	
												ApplyDamageToPed(youfly,1)
												
												if pyoufly ~= playerPed then
													ApplyDamageToPed(pyoufly,1)
												end
											end
										end
									end
								end
							end
				
							thisy = GetEntityForwardY(youfly) * -1
							thisx = GetEntityForwardX(youfly) * -1
					
							for i=1,10 do		
								local pos = GetEntityCoords(youfly)
								local entityWorld = GetOffsetFromEntityInWorldCoords(youfly, 0.0, 200.0, 0.0)
								local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, youfly, 0)
								local a, b, c, d, pyoufly = GetRaycastResult(rayHandle)
								
								if pyoufly ~= playerPed then
									SetEntityHasGravity(pyoufly, true)
									
									if GetVehiclePedIsIn(pyoufly, false) == 0 then --Standard change this.
									else
										comeere = GetVehiclePedIsIn(pyoufly)
										pyoufly = GetVehiclePedIsIn(pyoufly)
										SetEntityHasGravity(pyoufly, true)
									end
					
									if pyoufly == 0 then  --Standard change this.
									else
										if IsEntityAPed(youfly) == 1 then
											thisapply = ApplyForceToEntity(pyoufly, 1, thisx * amag * 1.0,thisy * amag * 1.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
											local playerCoords = GetEntityCoords(youfly)
											local playerCoords2 = GetEntityCoords(pyoufly)
											if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 1.5) then	
												ApplyDamageToPed(youfly,1)
										
												if pyoufly ~= playerPed then
													ApplyDamageToPed(pyoufly,1)
												end
											end	
										else
											thisapply = ApplyForceToEntity(pyoufly, 1, thisx * amag * 10.0,thisy * amag * 10.0, campitch * amag ,0,0,180.0, 0, false, false, false, false, false);
											local playerCoords = GetEntityCoords(youfly)
											local playerCoords2 = GetEntityCoords(pyoufly)
											
											if(Vdist( playerCoords.x, playerCoords.y, playerCoords.z, playerCoords2.x, playerCoords2.y, playerCoords2.z) < 1.5) then	
												ApplyDamageToPed(youfly,1)
												if pyoufly ~= playerPed then
													ApplyDamageToPed(pyoufly,1)
												end
											end
										end
									end
								end
							end
							
							SetPedDropsInventoryWeapon(youfly, GetSelectedPedWeapon(youfly), true, true, true, true)
							SetEntityHasGravity(youfly, true)
						end
					end
				end

				SetEntityHasGravity(youfly, true)
			end)
			
			Citizen.CreateThread(function()
				Wait(1000)
				SetEntityHasGravity(youfly, false)
			end)	
		end
		Wait(1000)
	end
end

--end>>

--------------






-------------flight---------------------
-- SetSuperJumpThisFrame(PlayerId())

-- PrintChatMessage("It's me")

applyflightto = playerPed
forceapplyM = 40.0

if GetVehiclePedIsIn(playerPed, false) == 0 then
			else
			applyflightto = GetVehiclePedIsIn(playerPed)
			forceapplyM = 250.0
			-- SetVehicleEngineOn(youfly,false)
			SetEntityHasGravity(applyflightto, false)
			end

GiveWeaponToPed(playerPed, GetHashKey("GADGET_PARACHUTE"), 1000, 0, 1)


SetPlayerParachuteModelOverride(playerPed, -1)

campitch = tonumber(GetGameplayCamRelativePitch()/5)

	local playerPed = GetPlayerPed(-1)

	SetPedCanRagdoll(GetPlayerPed(-1),false)

	nograv = true
		
			thisx = GetEntityForwardX(applyflightto)
			thisy = GetEntityForwardY(applyflightto)
	
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
						ApplyForceToEntity(applyflightto, 1,0,0,forceapplyM * 2,0,0,0, 0, false, false, false, false, false);
						nograv = true
		end
			
						
		if nograv == true then
		SetEntityHasGravity(applyflightto,false)
		else
		SetEntityHasGravity(applyflightto,true)
		end
end
----------------------end flight-----------------------		

------------ss---------------------
-- almost mach 1




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

function AdjustAngleInt()    
    if angleint > 72 then
        angleint = 1
    end
end