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

objects = {}

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

local wwvoid = false

RegisterNetEvent('ds')

RegisterNetEvent('rhino')
AddEventHandler('rhino',function()
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

RegisterNetEvent('ww')
AddEventHandler('ww',function()
	wwvoid = true
	powercalled = false
end)

RegisterNetEvent('rfla')
AddEventHandler('rfla',function()
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


AddEventHandler('ds',function(skin)

PrintChatMessage("Attempting Deathstroke")
					
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
		skin = "deathstroke"
	end
	local model = GetHashKey(skin)
    RequestModel(model)
	PrintChatMessage("Load Model")
    while not HasModelLoaded(model) do
		RequestModel(model)
		Citizen.Wait(0)
    end
	PrintChatMessage("Model Loaded")
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
	SetPedMaxHealth(playerPed,2000)
	SetEntityHealth(playerPed,2000)
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
		if chance > 89 then
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
		if chance > 40 then
			explosionproof = false
			else
			explosionproof = true
		end
		chance = GetRandomIntInRange(1,101)
		if chance > 89 then
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
			Wait(100)
			if GetEntityHealth(playerPed) > 0 then
				if GetEntityHealth(playerPed) < 4000 then
						SetEntityHealth(playerPed,GetEntityHealth(playerPed)+1)
				end
			end
		end
	end)
	
	local pedWeps =
{
	"WEAPON_PISTOL",
	"WEAPON_MG",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_SNIPERRIFLE",
	"WEAPON_HOMINGLAUNCHER",
	"WEAPON_ASSAULTSMG",
	"WEAPON_NIGHTSTICK"
}

local playerPed = GetPlayerPed(-1)
for i, wep in pairs(pedWeps) do
Wait(1)
-- PrintChatMessage(wep)
GiveWeaponToPed(playerPed, GetHashKey(wep), 9999, true, true)
end
 	
	Citizen.CreateThread(function()
		while true do
			Wait(1000)
			if GetPedArmour(playerPed) < 500 then
				SetPedArmour(playerPed, GetPedArmour(playerPed)+1)
			end
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

		if IsEntityDead(playerPed) == 1 then
			powercalled = false
			wwvoid = true
			return void
		end
		
				
		
		--Melee Events>>
		
		--<<Superspeed
		ssranks = 15.0
		SetEntityMaxSpeed(playerPed, 15.0) 
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
		
		SetSuperJumpThisFrame(PlayerId())
		if IsPedJumping(playerPed) == 1 then
		Citizen.CreateThread(function()
	if dsjump == true then
		return
	end
	dsjump = true
	TriggerServerEvent("Savelog","ds.402")
	SetPedCanRagdoll(GetPlayerPed(-1),false)
	GivePlayerRagdollControl(PlayerId(),false)
	for i=1,100 do
		ApplyForceToEntity(playerPed, 1,thisx * ssranks,thisy * ssranks,ssranks * 8,0,0,0, 0, false, false, false, false, false);
	end
	Wait(3500)
	dsjump = false
end)
		end
									
							

				
		if running == false then
		SetPedCanRagdoll(GetPlayerPed(-1),true)
			ssranks = 0.0
		end
		--Superspeed>>
		
	end --##PRIMARY LOOP##--
end)

function PrintChatMessage(text)
    TriggerEvent('chatMessage', "system", { 255, 0, 0 }, text)
end

function mefx(kilem)





end