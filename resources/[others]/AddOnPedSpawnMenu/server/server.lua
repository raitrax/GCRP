--Update Check

local CurrentVersion = '1.0.0'
local GithubResourceName = 'AddOnPedSpawnMenu'

PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/FiveM_Resources/master/' .. GithubResourceName .. '/VERSION', function(Error, NewestVersion, Header)
	PerformHttpRequest('https://raw.githubusercontent.com/Flatracer/FiveM_Resources/master/' .. GithubResourceName .. '/CHANGES', function(Error, Changes, Header)
		print('\n')
		print('##############')
		print('## ' .. GetCurrentResourceName())
		print('##')
		print('## Current Version: ' .. CurrentVersion)
		print('## Newest Version: ' .. NewestVersion)
		print('##')
		if CurrentVersion ~= NewestVersion then
			print('## Outdated')
			print('## Check the Topic')
			print('## For the newest Version!')
			print('##############')
			print('CHANGES:\n' .. Changes)
		else
			print('## Up to date!')
			print('##############')
		end
		print('\n')
	end)
end)

--Add-On Peds

RegisterServerEvent('AOPSM:GetPeds') --Just Don't Edit!
AddEventHandler('AOPSM:GetPeds', function() --Gets the Add-On Peds
	local fileContent = LoadResourceFile(GetCurrentResourceName(), 'Add-On Peds.txt')
	if fileContent ~= nil and fileContent ~= '' then
		TriggerClientEvent('AOPSM:GotPeds', source, fileContent)
	end
end)

--Admin Check

RegisterServerEvent('AOPSM:ID') --Just Don't Edit!
AddEventHandler('AOPSM:ID', function()
	local IDs = GetPlayerIdentifiers(source)
	local Admins = LoadResourceFile(GetCurrentResourceName(), 'Admins.txt')
	local AdminsSplitted = stringsplit(Admins, '\n')
	for k, AdminID in pairs(AdminsSplitted) do
		local AdminID = AdminID:gsub(' ', '')
		local SingleAdminsSplitted = stringsplit(AdminID, ',')
		for _, ID in pairs(IDs) do
			if ID:lower() == SingleAdminsSplitted[1]:lower() or ID:lower() == SingleAdminsSplitted[2]:lower() or ID:lower() == SingleAdminsSplitted[3]:lower() then
				TriggerClientEvent('AOPSM:AdminActivation', source, true); return
			end
		end
	end
end)

AddEventHandler('es:playerLoaded', function(Source, user) --Checks if Player is a ESMode Admin
	if user.getGroup() == 'admin' or user.getGroup() == 'superadmin' then
		TriggerClientEvent('AOPSM:AdminActivation', Source)
	end
end)

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end

