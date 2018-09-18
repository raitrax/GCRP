-- AOPSM <<

RegisterNetEvent('AOPSM:Title')
AddEventHandler('AOPSM:Title', function(title)
	AOPSMMenu.Title(title)
end)

RegisterNetEvent('AOPSM:Option')
AddEventHandler('AOPSM:Option', function(option, cb)
	cb(AOPSMMenu.Option(option))
end)

RegisterNetEvent('AOPSM:Update')
AddEventHandler('AOPSM:Update', function()
	AOPSMMenu.updateSelection()
end)

AOPSM.maxVisOptions = 22

AOPSM.titleText = {255, 255, 255, 255, 0}
AOPSM.titleRect = {0, 51, 0, 255}
AOPSM.optionText = {255, 255, 255, 255, 0}
AOPSM.optionRect = {40, 40, 40, 190}
AOPSM.scroller = {127, 140, 140, 240}
AOPSM.titleTextSize = {0.65, 0.65}
AOPSM.optionTextSize = {0.375, 0.375}
AOPSM.TextLayer = 7
AOPSM.RectLayer = 6
AOPSM.TitlePrefix = '~y~'

menuX = 0.85; optionCount = 0; currentOption = 1
selectPressed = false; leftPressed = false; rightPressed = false
TitleCount = 0; CurrentGameTime = nil; PressCount = 0; PressCountRaise = 0; RealPushDelay = 300; PushDelay = 0

Citizen.CreateThread(function()
	local fontId
	RegisterFontFile('ArialNarrow')
	fontId = RegisterFontId('Arial Narrow')
	while true do
		Citizen.Wait(0)
		if AOPSM.titleText[5] ~= fontId then
			AOPSM.titleText[5] = fontId
		end
		if AOPSM.optionText[5] ~= fontId then
			AOPSM.optionText[5] = fontId
		end
	end
end)

function AOPSM.Text(text, color, position, size, center)
	SetTextCentre(center)
	SetTextColour(color[1], color[2], color[3], color[4])
	SetTextFont(color[5])
	SetTextScale(size[1], size[2])
	Citizen.InvokeNative(0x61BB1D9B3A95D802, 7)
	SetTextEntry('STRING')
	AddTextComponentString(text)
	DrawText(position[1], position[2])
end

function AOPSM.Rect(color, position, size)
	Citizen.InvokeNative(0x61BB1D9B3A95D802, 6)
	DrawRect(position[1], position[2], size[1], size[2], color[1], color[2], color[3], color[4])
end

function AOPSMMenu.Title(title)
	if title:len() > 26 then
		if not CurrentGameTime then
			CurrentGameTime = GetGameTimer()
		end
		if TitleCount + 25 < title:len() then
			if GetGameTimer() - CurrentGameTime >= 150 then
				TitleCount = TitleCount + 1
				CurrentGameTime = GetGameTimer()
			end
		else
			if GetGameTimer() - CurrentGameTime >= 150 then
				TitleCount = 0
				CurrentGameTime = nil
			end
		end
		title = utf8sub(title, TitleCount, TitleCount + 25)
	end
	AOPSM.Text(AOPSM.TitlePrefix .. title, AOPSM.titleText, {menuX, 0.095}, AOPSM.titleTextSize, true)
	AOPSM.Rect(AOPSM.titleRect, {menuX, 0.1175}, {0.23, 0.085})
end

function AOPSMMenu.Option(option)
	optionCount = optionCount + 1

	local thisOption = nil
	if(currentOption == optionCount) then
		FloatIntTable = false
		thisOption = true
	else
		thisOption = false
	end

	if(currentOption <= AOPSM.maxVisOptions and optionCount <= AOPSM.maxVisOptions) then
		AOPSM.Text(option, AOPSM.optionText, {menuX - 0.1, optionCount * 0.035 + 0.125}, AOPSM.optionTextSize, false)
		AOPSM.Rect(AOPSM.optionRect, { menuX, optionCount * 0.035 + 0.1415 }, { 0.23, 0.035 })
		if(thisOption) then
			AOPSM.Rect(AOPSM.scroller, { menuX, optionCount * 0.035 + 0.1415 }, { 0.23, 0.035 })
		end
	elseif (optionCount > currentOption - AOPSM.maxVisOptions and optionCount <= currentOption) then
		AOPSM.Text(option, AOPSM.optionText, { menuX - 0.1, optionCount - (currentOption - AOPSM.maxVisOptions) * 0.035 + 0.125 }, AOPSM.optionTextSize, false);
		AOPSM.Rect(AOPSM.optionRect, { menuX, optionCount - (currentOption - AOPSM.maxVisOptions) * 0.035+0.1415 }, { 0.23, 0.035 });
		if(thisOption) then
			AOPSM.Rect(AOPSM.scroller, { menuX, optionCount - (currentOption - maxVisOptions) * 0.035 + 0.1415 }, { 0.23, 0.035 })
		end
	end

	if (optionCount == currentOption and selectPressed) then
		return true
	end

	return false
end

function AOPSMMenu.updateSelection()
	selectPressed = false
	leftPressed = false
	rightPressed = false

	if IsDisabledControlJustPressed(1, 173) and not blockinput then --Down
		PressCount = GetGameTimer()
		PressCountRaise = GetGameTimer()
		if(currentOption < optionCount) then
			currentOption = currentOption + 1
		else
			currentOption = 1
		end
	elseif IsDisabledControlJustPressed(1, 172) and not blockinput then --Up
		PressCount = GetGameTimer()
		PressCountRaise = GetGameTimer()
		if(currentOption > 1) then
			currentOption = currentOption - 1
		else
			currentOption = optionCount
		end
	elseif IsDisabledControlJustPressed(1, 174) and not blockinput then --Left
		PressCount = GetGameTimer()
		PressCountRaise = GetGameTimer()
		leftPressed = true
	elseif IsDisabledControlJustPressed(1, 175) and not blockinput then --Right
		PressCount = GetGameTimer()
		PressCountRaise = GetGameTimer()
		rightPressed = true
	elseif IsDisabledControlJustPressed(1, 176) and not blockinput then --Select
		selectPressed = true
	elseif (currentOption > optionCount) then
		currentOption = optionCount
	elseif IsDisabledControlPressed(1, 173) and not blockinput then --Down
		if GetGameTimer() - PressCount >= PushDelay then
			PressCount = GetGameTimer()
			if(currentOption < optionCount) then
				currentOption = currentOption + 1
			else
				currentOption = 1
			end
		end
		if GetGameTimer() - PressCountRaise >= 250 and PushDelay > 50 then
			PushDelay = PushDelay - 10
			PressCountRaise = GetGameTimer()
		end
	elseif IsDisabledControlPressed(1, 172) and not blockinput then --Up
		if GetGameTimer() - PressCount >= PushDelay then
			PressCount = GetGameTimer()
			if(currentOption > 1) then
				currentOption = currentOption - 1
			else
				currentOption = optionCount
			end
		end
		if GetGameTimer() - PressCountRaise >= 250 and PushDelay > 50 then
			PushDelay = PushDelay - 10
			PressCountRaise = GetGameTimer()
		end
	elseif IsDisabledControlPressed(1, 174) and not blockinput then --Left
		if GetGameTimer() - PressCount >= PushDelay then
			PressCount = GetGameTimer()
			leftPressed = true
		end
		if GetGameTimer() - PressCountRaise >= 250 and PushDelay > 50 then
			PushDelay = PushDelay - 10
			PressCountRaise = GetGameTimer()
		end
	elseif IsDisabledControlPressed(1, 175) and not blockinput then --Right
		if GetGameTimer() - PressCount >= PushDelay then
			PressCount = GetGameTimer()
			rightPressed = true
		end
		if GetGameTimer() - PressCountRaise >= 250 and PushDelay > 50 then
			PushDelay = PushDelay - 10
			PressCountRaise = GetGameTimer()
		end
	else
		PushDelay = RealPushDelay
		PressCount = 0
		PressCountRaise = 0
	end
		
	optionCount = 0
end

-- >> AOPSM

-- Actual Menu <<

local IsAdmin, InstructionsDraw, Model
local AddOnPedsMenu = false
local AddOnPedsTable = {}; lastSelection = {}; lastSite = 1; CurrentCategory = {}

AddEventHandler('playerSpawned', function(spawn) --Checks for Add-On Peds at Spawn
	AOPSM.CheckStuff()
end)

RegisterNetEvent('AOPSM:AdminActivation')
AddEventHandler('AOPSM:AdminActivation', function(state) --Just Don't Edit!
	IsAdmin = state
end)

Citizen.CreateThread(function() --Pages
	while true do
		Citizen.Wait(0)
		
		if AddOnPedsMenu then
			local UsedTable = AddOnPedsTable
			local actualAmount = (AOPSM.maxVisOptions - 1)
			local finish = actualAmount * lastSite
			local start = finish - (actualAmount - 1)
			
			if lastSelection[lastSite] == nil then
				lastSelection[lastSite] = 1
			end
		
			if not IsDisabledControlPressed(1, 173) and not IsDisabledControlPressed(1, 172) then
				currentOption = lastSelection[lastSite]
			else
				lastSelection[lastSite] = currentOption
			end
			
			if IsDisabledControlPressed(1, AOPSM.ReloadListKey) then
				AOPSM.CheckStuff()
			end
			
			TriggerEvent('AOPSM:Title', 'Add-On Peds')
			
			for i = start, finish do
				if UsedTable[i] ~= nil then
					TriggerEvent('AOPSM:Option', UsedTable[i][2], function(cb)
						if (cb) then
							Model = GetHashKey(UsedTable[i][1])
						end
					end)
				end
			end

			if lastSite ~= 1 or (lastSite == 1 and UsedTable[finish + 1]) then
				TriggerEvent('AOPSM:Option', '~r~' .. GetLabelText('HUD_PAGE'):gsub('~1~', math.ceil(lastSite), 1):gsub('~1~', math.ceil(#UsedTable / actualAmount)), function(cb)
					if (cb) then
						SetNotificationTextEntry('STRING')
						AddTextComponentString('~r~' .. GetLabelText('HUD_PAGE'):gsub('~1~', math.ceil(lastSite), 1):gsub('~1~', math.ceil(#UsedTable / actualAmount)))
						DrawNotification(false, false)
					end
				end)
			end

			TriggerEvent('AOPSM:Update')
		
			if IsDisabledControlJustReleased(1, 174)then
				if lastSite == 1 then
					lastSite = math.ceil(#UsedTable / actualAmount)
				else
					lastSite = lastSite - 1
				end
			elseif IsDisabledControlJustReleased(1, 175)then
				if UsedTable[finish + 1] then
					lastSite = lastSite + 1
				else
					lastSite = 1
				end
			end
		end
	end
end)

Citizen.CreateThread(function() --Ped Changing
	while true do
		Citizen.Wait(0)
		if Model then
			if IsModelValid(Model) then
				blockinput = true
				if not HasModelLoaded(Model) then
					RequestModel(Model)
					while not HasModelLoaded(Model) do
						Citizen.Wait(0)
					end
				end
				
				SetPlayerModel(PlayerId(), Model)
				SetPedDefaultComponentVariation(PlayerPedId())
				
				SetModelAsNoLongerNeeded(Model)
				blockinput = false
			else
				SetNotificationTextEntry('STRING')
				AddTextComponentString('~r~Invalid Model!')
				DrawNotification(false, false)
			end
			Model = nil
		end
	end
end)

Citizen.CreateThread(function() --Controls, Disables Controls Used In The Trainer, Draws Instruction Buttons, Disables Menu When In Pausemenu
	local Time
	
	while true do
		Citizen.Wait(0)
		
		if AddOnPedsTable[1] then
			if ((GetIsControlJustPressed(AOPSM.KBKey) and GetLastInputMethod(2)) or ((GetIsControlPressed(AOPSM.GPKey1) and GetIsControlJustPressed(AOPSM.GPKey2)) and not GetLastInputMethod(2))) then
				AddOnPedsMenu = not AddOnPedsMenu
				InstructionsDraw = AddOnPedsMenu
			elseif GetIsControlJustPressed(177) and AddOnPedsMenu then
				AddOnPedsMenu = false
			end
		end
		
		if AddOnPedsMenu then
			DisableControlAction(1, 20, true)
			DisableControlAction(1, 21, true)
			DisableControlAction(1, 45, true)
			DisableControlAction(1, 73, true)
			DisableControlAction(1, 74, true)
			DisableControlAction(1, 76, true)
			DisableControlAction(1, 80, true)
			DisableControlAction(1, 85, true)
			DisableControlAction(1, 99, true)
			DisableControlAction(1, 114, true)
			DisableControlAction(1, 140, true)
			DisableControlAction(1, 172, true)
			DisableControlAction(1, 173, true)
			DisableControlAction(1, 174, true)
			DisableControlAction(1, 175, true)
			DisableControlAction(1, 176, true)
			DisableControlAction(1, 177, true)
			DisableControlAction(1, 178, true)
			DisableControlAction(1, 179, true)
			
			if InstructionsDraw and UpdateOnscreenKeyboard() ~= 0 and not IsEntityDead(GetPlayerPed(-1)) then
				local Browse, Select, Back
				if GetLastInputMethod(2) then
					Browse = 47
				else
					Browse = 9
				end
				Select = GetControlInstructionalButton(1, 176, true):gsub("b_", "")
				Back = GetControlInstructionalButton(1, 177, true):gsub("b_", "")
		
				local ScaleformMovie = RequestScaleformMovie("instructional_buttons")
				DrawScaleformMovieFullscreen(ScaleformMovie, 255, 255, 255, 0)
				PushScaleformMovieFunction(ScaleformMovie, "CLEAR_ALL")
				PopScaleformMovieFunctionVoid()
				PushScaleformMovieFunction(ScaleformMovie, "SET_CLEAR_SPACE")
				PushScaleformMovieFunctionParameterInt(200)
				PopScaleformMovieFunctionVoid()
				
				PushScaleformMovieFunction(ScaleformMovie, "SET_DATA_SLOT")
				PushScaleformMovieFunctionParameterInt(0)
				PushScaleformMovieFunctionParameterInt(Browse)
				BeginTextCommandScaleformString("STRING")
				AddTextComponentScaleform(GetLabelText("IB_NAVIGATE"))
				EndTextCommandScaleformString()	
				PopScaleformMovieFunctionVoid()

				PushScaleformMovieFunction(ScaleformMovie, "SET_DATA_SLOT")
				PushScaleformMovieFunctionParameterInt(1)
				PushScaleformMovieFunctionParameterInt(tonumber(Select))
				BeginTextCommandScaleformString("STRING")
				AddTextComponentScaleform(GetLabelText("IB_SELECT"))
				EndTextCommandScaleformString()	
				PopScaleformMovieFunctionVoid()

				PushScaleformMovieFunction(ScaleformMovie, "SET_DATA_SLOT")
				PushScaleformMovieFunctionParameterInt(2)
				PushScaleformMovieFunctionParameterInt(tonumber(Back))
				BeginTextCommandScaleformString("STRING")
				if mainMenu or loginMenu or registerMenu then
					AddTextComponentScaleform(GetLabelText("IB_QUIT"))
				else
					AddTextComponentScaleform(GetLabelText("IB_BACK"))
				end
				EndTextCommandScaleformString()	
				PopScaleformMovieFunctionVoid()

				PushScaleformMovieFunction(ScaleformMovie, "DRAW_INSTRUCTIONAL_BUTTONS")
				PopScaleformMovieFunctionVoid()
				PushScaleformMovieFunction(ScaleformMovie, "SET_BACKGROUND_COLOUR")
				PushScaleformMovieFunctionParameterInt(0)
				PushScaleformMovieFunctionParameterInt(0)
				PushScaleformMovieFunctionParameterInt(0)
				PushScaleformMovieFunctionParameterInt(60)
				PopScaleformMovieFunctionVoid()
				
				if not Time then
					Time = GetGameTimer()
				end
				if GetGameTimer() - Time >= 30000 then
					InstructionsDraw = false
					Time = nil
				end
			end

			if IsPauseMenuActive() then
				AddOnPedsMenu = false
			end
		end
	end
end)

RegisterNetEvent('AOPSM:GotPeds')
AddEventHandler('AOPSM:GotPeds', function(AddOnPeds)
	AddOnPedsTable = {}
	
	local AddOnPedsSplitted = stringsplit(AddOnPeds, '\n')

	for i = 1, #AddOnPedsSplitted, 2 do
		local SpawnName = AddOnPedsSplitted[i]:gsub('SpawnName:', ''):gsub(' ', '', 1)
		local DisplayName = AddOnPedsSplitted[i + 1]:gsub('DisplayName:', ''):gsub(' ', '', 1)
		if (SpawnName ~= '' and not SpawnName:find('SpawnName')) and (DisplayName ~= '' and not DisplayName:find('DisplayName')) then
			DisplayName = DisplayName:sub(1, 42)
			table.insert(AddOnPedsTable, {SpawnName, DisplayName})
		end
	end
end)

-- >> Actual Menu

-- Functions <<

function AOPSM.CheckStuff()
	IsAdmin = nil
	if AOPSM.OnlyForAdmins then
		TriggerServerEvent('AOPSM:ID')
		while IsAdmin == nil do
			Citizen.Wait(0)
		end
		if IsAdmin then
			TriggerServerEvent('AOPSM:GetPeds')
		end
	else
		TriggerServerEvent('AOPSM:GetPeds')
	end
end

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

function GetIsControlPressed(Control)
	if IsControlPressed(1, Control) or IsDisabledControlPressed(1, Control) then
		return true
	end
	return false
end

function GetIsControlJustPressed(Control)
	if IsControlJustPressed(1, Control) or IsDisabledControlJustPressed(1, Control) then
		return true
	end
	return false
end

-- >> Functions
