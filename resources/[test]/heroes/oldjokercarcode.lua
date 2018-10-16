if pressed == true then
pressed = false
	pass = not pass
	PrintChatMessage(tostring(pass))
	if pass == true then
		if IsPedInVehicle(hq, spawned_car, true) then
		else
			TaskEnterVehicle(hq, spawned_car, 10, 0, 10.0, 0, 0) 
		end
	else
		if IsPedInVehicle(playerPed, spawned_car, true) then
			TaskLeaveVehicle(playerPed,spawned_car,true)
			Wait(1000)
			if IsPedInVehicle(hq, spawned_car, true) then
				TaskLeaveVehicle(hq,spawned_car,true)
				Wait(1000)
				TaskEnterVehicle(hq, spawned_car, 10, -1, 10.0, 0, 0) 
				Wait(1000)
			end
			SetPedIntoVehicle(playerPed,spawned_car,0)
			Wait(1000)
		end
		TaskVehicleDriveWander(hq, spawned_car, 70.0, 0)
	end
end