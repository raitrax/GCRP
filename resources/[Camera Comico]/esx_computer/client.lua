local cameras         = {}
local fov_max         = 80.0
local fov_min         = 10.0 
local fov             = (fov_max+fov_min)*0.5
local speed_lr        = 5.0  
local speed_ud        = 5.0 
local zoomspeed       = 6.0
local currentCamera   = -1
local lookCamera      = false
local cam             = 0
local scaleform       = -1
local isLSPD          = true
local PlayerData      = {}
ESX                   = nil



Citizen.CreateThread(function()

	for _,tabl in pairs(getCameras()) do
		if(tabl["n"] ~= nil) then
			cameras[#cameras+1] = {n=tabl["n"],x=tabl["x"],y=tabl["y"],z=tabl["z"],a=tabl["a"]} 
		end
	end

	while true do
		Citizen.Wait(1)

		--local IsPolice = PlayerData.job

		if (isNearPC() and PlayerData.job ~= nil and PlayerData.job.name == 'police') then
			ShowInfo("Appuyez sur ~g~F~w~ pour allumer l'ordinateur.")
			if(IsControlJustPressed(1, 23)) then
				lookCamera = not lookCamera
				if(currentCamera == -1) then
					currentCamera = 1
				end
				chargeCamera()

				if(not lookCamera) then
					FreezeEntityPosition(GetPlayerPed(-1), false)
				end
			end
		end


		if(lookCamera) then

			if(IsControlJustPressed(1, 174)) then -- Left
				if(currentCamera-1 > 0) then
					currentCamera = currentCamera-1
					changeCamera()
				end
			end

			if(IsControlJustPressed(1, 175)) then -- Right
				if(currentCamera+1 <= #cameras) then
					currentCamera = currentCamera+1
					changeCamera()
				else
					currentCamera = 1
				end
			end

			local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
			CheckForRotation(cam,zoomvalue)
			HandleZoom(cam)
			scaleform = RequestScaleformMovie("HELI_CAM")
			PushScaleformMovieFunction(scaleform, "SET_CAM_LOGO")
			PushScaleformMovieFunctionParameterInt(1) -- 0 for nothing, 1 for LSPD logo
			PopScaleformMovieFunctionVoid()
			PushScaleformMovieFunction(scaleform, "SET_ALT_FOV_HEADING")
			PopScaleformMovieFunctionVoid()
			DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
			SetTextFont(0)
			SetTextProportional(1)
			SetTextScale(0.0, 0.45)
			SetTextColour(255, 255, 255, 255)
			SetTextDropshadow(0, 0, 0, 0, 255)
			SetTextEdge(1, 0, 0, 0, 255)
			SetTextDropShadow()
			SetTextOutline()
			SetTextEntry("STRING")
			AddTextComponentString("Caméra : "..cameras[currentCamera].n)
			DrawText(0.45, 0.90)
			
		else
			RenderScriptCams(false, false, 0, 1, 0) -- Return to gameplay camera
			SetScaleformMovieAsNoLongerNeeded(scaleform) -- Cleanly release the scaleform
			DestroyCam(cam, false)
			SetNightvision(false)
			SetSeethrough(false)
		end
	end

end)

AddEventHandler("playerSpawned",function()
	for _,tabl in pairs(getCameras()) do
		if(tabl["n"] ~= nil) then
			cameras[#cameras+1] = {n=tabl["n"],x=tabl["x"],y=tabl["y"],z=tabl["z"],a=tabl["a"]} 
		end
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

function changeCamera()
	SetCamCoord(cam, cameras[currentCamera].x, cameras[currentCamera].y, cameras[currentCamera].z)
	SetCamRot(cam, 0.0, 0.0, cameras[currentCamera].a)

end


function chargeCamera()
	cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)

	SetEntityVisible(GetPlayerPed(-1), true)
	SetCamRot(cam, 0.0, 0.0, cameras[currentCamera].a)
	SetCamCoord(cam, cameras[currentCamera].x, cameras[currentCamera].y, cameras[currentCamera].z)
	SetCamRot(cam, 0.0, 0.0, cameras[currentCamera].a)
	SetCamActive(cam,  true)
	RenderScriptCams(true,  false,  0,  true,  true)
	FreezeEntityPosition(GetPlayerPed(-1), true)	
end


function CheckForRotation(cam, zoomvalue)
	local rightAxisX = GetDisabledControlNormal(0, 220)
	local rightAxisY = GetDisabledControlNormal(0, 221)
	local rotation = GetCamRot(cam, 2)
	if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
		new_z = rotation.z + rightAxisX*-1.0*(speed_ud)*(zoomvalue+0.1)
		new_x = math.max(math.min(20.0, rotation.x + rightAxisY*-1.0*(speed_lr)*(zoomvalue+0.1)), -89.5) -- Clamping at top (cant see top of heli) and at bottom (doesn't glitch out in -90deg)
		SetCamRot(cam, new_x, 0.0, new_z, 2)
	end
end


function HandleZoom(cam)
	if IsControlJustPressed(0,27) then -- Scrollup
		fov = math.max(fov - zoomspeed, fov_min)
	end
	if IsControlJustPressed(0,173) then
		fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown		
	end
	local current_fov = GetCamFov(cam)
	if math.abs(fov-current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
		fov = current_fov
	end
	SetCamFov(cam, current_fov + (fov - current_fov)*0.05) -- Smoothing of camera zoom
end


function isNearPC()

	local coords = GetEntityCoords(GetPlayerPed(-1))

	local distance = GetDistanceBetweenCoords(441.564, -978.854, 30.69, coords.x, coords.y, coords.z, true)

	if(distance <= 1) then
		return true
	end

end



function ShowInfo(text, state)
    SetTextComponentFormat("STRING")
    AddTextComponentString(text)DisplayHelpTextFromStringLabel(0, state, 0, -1)
end




RegisterNetEvent("cameras:isCop")
AddEventHandler("cameras:isCop", function(b)
	isLSPD = b
end)