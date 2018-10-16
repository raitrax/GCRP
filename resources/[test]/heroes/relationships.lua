Citizen.CreateThread(function()
	AddRelationshipGroup("villains")
	AddRelationshipGroup("sentinels")		
	SetRadarBigmapEnabled(true, false)
	AddRelationshipGroup("harley")
	AddRelationshipGroup("hero")
	SetPlayerWantedLevel(PlayerId(-1),0)

	Wait(10000)
		SetRadarBigmapEnabled(true, false)
	
	SetRelationshipBetweenGroups(4, GetHashKey("sentinels"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(4, GetHashKey("PLAYER"), GetHashKey("sentinels"))
	SetRelationshipBetweenGroups(4, GetHashKey("sentinels"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(4, GetHashKey("villains"), GetHashKey("sentinels"))
	
	SetRelationshipBetweenGroups(5, GetHashKey("hero"), GetHashKey("COP"))
	SetRelationshipBetweenGroups(1, GetHashKey("villains"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("hero"))
	SetRelationshipBetweenGroups(5, GetHashKey("hero"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("COP"))
	SetRelationshipBetweenGroups(5, GetHashKey("COP"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(4, GetHashKey("villains"), GetHashKey("CIVFEMALE"))
	SetRelationshipBetweenGroups(4, GetHashKey("villains"), GetHashKey("CIVMALE"))
	
	SetRelationshipBetweenGroups(5, GetHashKey("sentinels"), GetHashKey("hero"))
	SetRelationshipBetweenGroups(5, GetHashKey("hero"), GetHashKey("sentinels"))
	SetRelationshipBetweenGroups(4, GetHashKey("sentinels"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(4, GetHashKey("villains"), GetHashKey("sentinels"))
	
		SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("harley"))
	SetRelationshipBetweenGroups(5, GetHashKey("harley"), GetHashKey("villains"))
	
	
		SetRelationshipBetweenGroups(1, GetHashKey("villains"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("PLAYER"))
	SetRelationshipBetweenGroups(5, GetHashKey("PLAYER"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("COP"))
	SetRelationshipBetweenGroups(5, GetHashKey("COP"), GetHashKey("villains"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("CIVFEMALE"))
	SetRelationshipBetweenGroups(5, GetHashKey("villains"), GetHashKey("CIVMALE"))
	
	
--	SetPlayerWantedLevel(PlayerId(-1),0)


	
	
end)

		Citizen.CreateThread(function()
		while true do
		Wait(60000)
		if GetPedRelationshipGroupHash(GetPlayerPed(-1)) == GetHashKey("hero") then
		TriggerServerEvent("Savelog","itsahero")
		wantedlevel = GetPlayerWantedLevel(PlayerId(-1)) -1
		SetPlayerWantedLevel(PlayerId(-1), wantedlevel, false)
		SetPoliceIgnorePlayer(PlayerId(-1),true)
	--	SetPoliceIgnorePlayer(PlayerId(-1),false)
		else
		SetPoliceIgnorePlayer(PlayerId(-1),false)
		end
		end
		end)