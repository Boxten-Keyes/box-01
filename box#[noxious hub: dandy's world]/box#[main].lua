--[[---------------------------------------------------------------------------------------------------------------------------
  __   __     ______     __  __     __     ______     __  __     ______    
 /\ "-.\ \   /\  __ \   /\_\_\_\   /\ \   /\  __ \   /\ \/\ \   /\  ___\   
 \ \ \-.  \  \ \ \/\ \  \/_/\_\/_  \ \ \  \ \ \/\ \  \ \ \_\ \  \ \___  \  
  \ \_\\"\_\  \ \_____\   /\_\/\_\  \ \_\  \ \_____\  \ \_____\  \/\_____\ 
   \/_/ \/_/   \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/
   
   Made by Team Noxious and Team Occulence -- Dandy's World [Oops!]

---------------------------------------------------------------------------------------------------------------------------]]--

if _G.dswdnoxiousloaded == true then return end _G.dswdnoxiousloaded = true local noxious = {}

noxious["note"] = "skidder no skidding!"
noxious["note"] = "???"

-------------------------------------------------------------------------------------------------------------------------------

if not game:IsLoaded() then game["Loaded"]:Wait() end noxious["testing"] = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["prefixes"] = { "Reversed", "Skeptical", "Bright", "Sweet", "Fish", "Mute", "Kleptomaniac", "Perfectionist", "Enthusiastic", "Addicted", "Investigative", "Crafty", "Angry", "Minimalistic", "Clean", "Insane", "Quiet", "Worried", "Drunk", "Small", "Ignored", "Protective", "Smart", "Clueless", "Old", "Flying", "Large", "Edible", "Glowing", "Concerned" }
noxious["suffixes"] = { "Ink", "Box", "Lamp", "Ghost", "Cake", "Bowl", "Butterfly", "Gachapon", "Mirror", "Fluff", "Balloon", "Bubble", "Mask", "Glass", "Paper", "Shrimp", "Teacup", "Tissue", "Pinata", "Moon", "Basket", "Ornament", "Rock", "Shell", "Berry", "Television", "Bunny", "Egg", "Moth", "Mineral", "Cookie", "Reindeer", "Flower" }

function randomname()
	local prefix = noxious["prefixes"][math.random(1, #noxious["prefixes"])]
	local suffix = noxious["suffixes"][math.random(1, #noxious["suffixes"])]
	return prefix .. suffix
end

noxious["randomized name"] = randomname()

-------------------------------------------------------------------------------------------------------------------------------

noxious["click sound"] = "rbxassetid://87152549167464"

function playclicksound() local s = Instance.new("Sound") s["SoundId"] = noxious["click sound"] s["Parent"] = game["Workspace"] s["Volume"] = 1.2 s["TimePosition"] = 0.1 s:Play() end

-------------------------------------------------------------------------------------------------------------------------------

noxious["screen gui"] = Instance.new("ScreenGui")
noxious["screen gui"]["Name"] = noxious["randomized name"]
noxious["screen gui"]["ResetOnSpawn"] = false
noxious["in studio"] = game["Run Service"]:IsStudio()

if noxious["in studio"] then
	noxious["screen gui"]["Parent"]= game["Players"]["LocalPlayer"]:WaitForChild("PlayerGui")
else
	noxious["screen gui"]["Parent"] = gethui and gethui() or game["CoreGui"]
end

noxious["default white color"] = Color3.new(1, 1, 1)
noxious["default image color"] = Color3.new(1, 1, 1)
noxious["default gray color"] = Color3.new(0.5, 0.5, 0.5)
noxious["default black color"] = Color3.new(0, 0, 0)

-------------------------------------------------------------------------------------------------------------------------------

noxious["user input service"] = game["UserInputService"]
noxious["run service"] = game["Run Service"]
noxious["tween service"] = game["TweenService"]
noxious["http service"] = game["HttpService"]
noxious["marketplace service"] = game["MarketplaceService"]
noxious["teleport service"] = game["Teleport Service"]
noxious["text chat service"] = game["TextChatService"]
noxious["replicated storage"] = game["ReplicatedStorage"]
noxious["virtual input manager"] = game:GetService("VirtualInputManager")

noxious["player gui"] = noxious["screen gui"]["Parent"]
noxious["players"] = game["Players"]

noxious["local player"] = noxious["players"]["LocalPlayer"]
noxious["is mobile?"] = noxious["user input service"]["TouchEnabled"]
noxious["username"] = noxious["local player"]["Name"]
noxious["display name"] = noxious["local player"]["DisplayName"]
noxious["user id"] = noxious["local player"]["UserId"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["active notifications"] = {}

noxious["notification sound"] = "rbxassetid://8503529139"
noxious["error sound"] = "rbxassetid://489103549"
noxious["warning sound"] = "rbxassetid://5914602124"

local function notify(message, duration, variant)
	local borderColor = noxious["default white color"]
	local textColor = noxious["default white color"]
	local timerframecolor = noxious["default white color"]
	local playbackspeed = 1
	local topframetext = "Noxious Hub: Dandy's World"

	if variant == "unableishere" then
		topframetext = "Noxious Hub: Dandy's World"
		borderColor = Color3.new(0.2, 0.2, 1)
		textColor = Color3.new(0.2, 0.2, 1)
		timerframecolor = Color3.new(0.2, 0.2, 1)
		playbackspeed = 0.7
	end

	if variant == "aceishere" then
		topframetext = "Noxious Hub: Dandy's World"
		borderColor = Color3.fromRGB(156, 175, 136)
		textColor = Color3.fromRGB(156, 175, 136)
		timerframecolor = Color3.fromRGB(156, 175, 136)
		playbackspeed = 0.7
	end

	if variant == "hypnicishere" then
		topframetext = "Noxious Hub: Dandy's World"
		borderColor = Color3.fromRGB(180, 180, 180)
		textColor = Color3.fromRGB(180, 180, 180)
		timerframecolor = Color3.fromRGB(180, 180, 180)
		playbackspeed = 0.7
	end

	if variant == "tmishere" then
		topframetext = "Noxious Hub: Dandy's World"
		borderColor = Color3.new(0.5, 0.5, 0.5)
		textColor = Color3.new(0.5, 0.5, 0.5)
		timerframecolor = Color3.new(0.5, 0.5, 0.5)
		playbackspeed = 0.7
	end

	if variant == "qwelverishere" then
		topframetext = "Noxious Hub: Dandy's World"
		borderColor = Color3.new(1, 0.4, 1)
		textColor = Color3.new(1, 0.4, 1)
		timerframecolor = Color3.new(1, 0.4, 1)
		playbackspeed = 0.7
	end

	local notifsound = Instance.new("Sound")
	notifsound.SoundId = noxious["notification sound"]
	notifsound.PlaybackSpeed = playbackspeed
	notifsound.Parent = game.Workspace
	notifsound.Volume = 2

	if variant == "error" then
		borderColor = Color3.new(1, 0.3, 0.3)
		textColor = Color3.new(1, 0.3, 0.3)
		topframetext = "Noxious Hub: Dandy's World"
		timerframecolor = Color3.new(1, 0.3, 0.3)
		notifsound.SoundId = noxious["error sound"]
		notifsound.Volume = 1.6
		notifsound.TimePosition = 0.05
		notifsound.PlaybackSpeed = 0.8
	end

	if variant == "warning" then
		borderColor = Color3.new(1, 1, 0.4)
		topframetext = "Noxious Hub: Dandy's World"
		textColor = Color3.new(1, 1, 0.4)
		timerframecolor = Color3.new(1, 1, 0.4)
		notifsound.SoundId = noxious["warning sound"]
		notifsound.Volume = 1
		notifsound.TimePosition = 0.2
		notifsound.PlaybackSpeed = 0.8
	end

	local scale = 0.85

	local notifframe = Instance.new("Frame")
	notifframe.Name = "block"
	notifframe.Size = UDim2.new(0, 390 * scale, 0, 90 * scale)
	notifframe.Position = UDim2.new(1, 500 * scale, 1, -10 * scale)
	notifframe.AnchorPoint = Vector2.new(1, 1)
	notifframe.BackgroundColor3 = noxious["default black color"]
	notifframe.BackgroundTransparency = 0.6
	notifframe.BorderColor3 = borderColor
	notifframe.BorderSizePixel = 1
	notifframe.Parent = noxious["screen gui"]

	local notifframeline = Instance.new("Frame")
	notifframeline.Name = "block"
	notifframeline.Size = UDim2.new(0, 1, 0, 90 * scale)
	notifframeline.Position = UDim2.new(0, 0, 1, 1)
	notifframeline.AnchorPoint = Vector2.new(1, 1)
	notifframeline.BackgroundColor3 = borderColor
	notifframeline.BackgroundTransparency = 0
	notifframeline.BorderSizePixel = 0
	notifframeline.Parent = notifframe

	local notifframeline2 = Instance.new("Frame")
	notifframeline2.Name = "block"
	notifframeline2.Size = UDim2.new(0, 1, 0, 90 * scale)
	notifframeline2.Position = UDim2.new(0, 390 * scale + 1, 1, 1)
	notifframeline2.AnchorPoint = Vector2.new(1, 1)
	notifframeline2.BackgroundColor3 = borderColor
	notifframeline2.BackgroundTransparency = 0
	notifframeline2.BorderSizePixel = 0
	notifframeline2.Parent = notifframe

	local notifframeline3 = Instance.new("Frame")
	notifframeline3.Name = "block"
	notifframeline3.Size = UDim2.new(0, 390 * scale, 0, 1)
	notifframeline3.Position = UDim2.new(1, 0, 0, 90 * scale + 1)
	notifframeline3.AnchorPoint = Vector2.new(1, 1)
	notifframeline3.BackgroundColor3 = borderColor
	notifframeline3.BackgroundTransparency = 0
	notifframeline3.BorderSizePixel = 0
	notifframeline3.Parent = notifframe

	local notifshadow = Instance.new("ImageLabel")
	notifshadow.Size = notifframe.Size + UDim2.new(0, 14, 0, 14)
	notifshadow.Position = UDim2.new(0, -7, 0, -6)
	notifshadow.BackgroundTransparency = 1
	notifshadow.Image = "rbxassetid://1316045217"
	notifshadow.ImageColor3 = Color3.new(0, 0, 0)
	notifshadow.ImageTransparency = 0.3
	notifshadow.ScaleType = Enum.ScaleType.Slice
	notifshadow.SliceCenter = Rect.new(10, 10, 90, 90)
	notifshadow.Parent = notifframe

	local notiftopframe = Instance.new("Frame")
	notiftopframe.Name = "block"
	notiftopframe.Size = UDim2.new(1, 0, 0, 24 * scale)
	notiftopframe.Position = UDim2.new(0, 0, 0, 0)
	notiftopframe.BackgroundColor3 = noxious["default black color"]
	notiftopframe.BackgroundTransparency = 0.2
	notiftopframe.BorderColor3 = borderColor
	notiftopframe.BorderSizePixel = 1
	notiftopframe.Parent = notifframe

	local notifytopframetxt = Instance.new("TextLabel")
	notifytopframetxt.Name = "block"
	notifytopframetxt.Size = UDim2.new(1, -10 * scale, 1, 0)
	notifytopframetxt.Position = UDim2.new(0, 5 * scale, 0, -0.6)
	notifytopframetxt.BackgroundTransparency = 1
	notifytopframetxt.TextColor3 = textColor
	notifytopframetxt.Text = topframetext
	notifytopframetxt.Font = Enum.Font.Nunito
	notifytopframetxt.TextSize = 21.6 * scale
	notifytopframetxt.TextScaled = false
	notifytopframetxt.TextXAlignment = Enum.TextXAlignment.Left
	notifytopframetxt.Parent = notiftopframe

	local closenotif = Instance.new("TextButton")
	closenotif.Name = "block"
	closenotif.Size = UDim2.new(0, 23 * scale, 0, 23 * scale)
	closenotif.Position = UDim2.new(1, -23 * scale, 0, 0)
	closenotif.BackgroundColor3 = noxious["default black color"]
	closenotif.BorderSizePixel = 0
	closenotif.BorderColor3 = borderColor
	closenotif.BackgroundTransparency = 0
	closenotif.Text = "X"
	closenotif.Font = Enum.Font.Nunito
	closenotif.TextColor3 = textColor
	closenotif.TextSize = 20 * scale
	closenotif.Parent = notiftopframe
	closenotif.MouseButton1Click:Connect(function()
		playclicksound()
	end)

	local closenotiftxtp = Instance.new("UIPadding")
	closenotiftxtp.PaddingTop = UDim.new(0, 1)
	closenotiftxtp.PaddingLeft = UDim.new(0, 1)
	closenotiftxtp.Parent = closenotif

	local notiftimerframe = Instance.new("Frame")
	notiftimerframe.Name = "block"
	notiftimerframe.Size = UDim2.new(0, 390 * scale, 0, 6 * scale)
	notiftimerframe.Position = UDim2.new(0, 0, 0, 25 * scale)
	notiftimerframe.BackgroundColor3 = noxious["default black color"]
	notiftimerframe.BorderColor3 = borderColor
	notiftimerframe.BorderSizePixel = 1
	notiftimerframe.BackgroundTransparency = 0
	notiftimerframe.Parent = notifframe

	local notiftimer = Instance.new("Frame")
	notiftimer.Name = "block"
	notiftimer.Size = UDim2.new(1, 0, 1, 0)
	notiftimer.Position = UDim2.new(0, 0, 0, 0)
	notiftimer.BackgroundColor3 = timerframecolor
	notiftimer.BorderSizePixel = 0
	notiftimer.BackgroundTransparency = 0.5
	notiftimer.Parent = notiftimerframe

	local function createShakingText(parent, text, textColor, scale, duration)
		noxious["notiftxt container"] = Instance.new("Frame")
		noxious["notiftxt container"].Size = UDim2.new(0.97, -9 * scale, 0, 64 * scale)
		noxious["notiftxt container"].Position = UDim2.new(0, 10 * scale, 0, 29 * scale)
		noxious["notiftxt container"].BackgroundTransparency = 1
		noxious["notiftxt container"].ClipsDescendants = true
		noxious["notiftxt container"].Parent = parent

		local letters = {}
		local basePosX = 0

		local textService = game:GetService("TextService")
		local fontSize = 21.6 * scale
		local font = Enum.Font.Nunito

		for i = 1, #text do
			local letter = string.sub(text, i, i)
			noxious["notiftxt label"] = Instance.new("TextLabel")
			noxious["notiftxt label"].BackgroundTransparency = 1
			noxious["notiftxt label"].TextColor3 = textColor
			noxious["notiftxt label"].Font = font
			noxious["notiftxt label"].TextSize = fontSize
			noxious["notiftxt label"].TextScaled = false
			noxious["notiftxt label"].TextWrapped = false
			noxious["notiftxt label"].TextXAlignment = Enum.TextXAlignment.Left
			noxious["notiftxt label"].Text = letter
			noxious["notiftxt label"].Size = UDim2.new(0, 0, 1, 0)
			noxious["notiftxt label"].Position = UDim2.new(0, basePosX, 0, 0)
			noxious["notiftxt label"].Parent = noxious["notiftxt container"]
			noxious["notiftxt label"].ZIndex = 12138

			local textSize = textService:GetTextSize(letter, fontSize, font, Vector2.new(1000, 1000))
			noxious["notiftxt label"].Size = UDim2.new(0, textSize.X, 1, 0)

			table.insert(letters, {
				label = noxious["notiftxt label"],
				baseX = basePosX,
				baseY = 0
			})

			basePosX = basePosX + textSize.X
		end

		local runService = game:GetService("RunService")
		local startTime = tick()
		local shakeDuration = math.min(3, duration)
		local maxIntensity = 1.5

		local shakeConnection
		shakeConnection = runService.RenderStepped:Connect(function()
			local elapsed = tick() - startTime
			if elapsed > shakeDuration then
				shakeConnection:Disconnect()
				for _, info in ipairs(letters) do
					info.label.Position = UDim2.new(0, info.baseX, 0, info.baseY)
				end
				return
			end

			local intensity = (1 - elapsed / shakeDuration) * maxIntensity

			for _, info in ipairs(letters) do
				local offsetX = (math.random() - 0.25) * 2 * intensity
				local offsetY = (math.random() - 0.1) * 2 * intensity
				info.label.Position = UDim2.new(0, info.baseX + offsetX, 0, info.baseY + offsetY)
			end
		end)

		return noxious["notiftxt container"]
	end

	if variant == "unableishere" or variant == "qwelverishere" or variant == "hypnicishere" or variant == "tmishere" or variant == "aceishere" then
		if noxious["notiftxt"] then
			noxious["notiftxt"]:Destroy()
		end
		createShakingText(notifframe, message, textColor, scale, duration)
	else
		noxious["notiftxt"] = Instance.new("TextLabel")
		noxious["notiftxt"].Name = "block"
		noxious["notiftxt"].Size = UDim2.new(0.97, -9 * scale, 0, 64 * scale)
		noxious["notiftxt"].Position = UDim2.new(0, 10 * scale, 0, 29 * scale)
		noxious["notiftxt"].BackgroundTransparency = 1
		noxious["notiftxt"].TextColor3 = textColor
		noxious["notiftxt"].Text = message
		noxious["notiftxt"].Font = Enum.Font.Nunito
		noxious["notiftxt"].TextSize = 21.6 * scale
		noxious["notiftxt"].TextScaled = false
		noxious["notiftxt"].TextWrapped = true
		noxious["notiftxt"].TextXAlignment = Enum.TextXAlignment.Left
		noxious["notiftxt"].Parent = notifframe
		noxious["notiftxt"].ZIndex = 12138
	end

	closenotif.ZIndex = 12140
	notiftimer.ZIndex = 12139
	notifytopframetxt.ZIndex = 12139
	notiftimerframe.ZIndex = 12138
	notiftopframe.ZIndex = 12138
	notifframeline3.ZIndex = 12138
	notifframeline2.ZIndex = 12138
	notifframeline.ZIndex = 12138
	notifframe.ZIndex = 12137
	notifshadow.ZIndex = 12136

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" or variant == "hypnicishere" then
		local blueSound = Instance.new("Sound")
		blueSound.SoundId = "rbxassetid://836142578"
		blueSound.Volume = 0.9
		blueSound.Parent = noxious["toggle interface visibility button"]
		blueSound.PlaybackSpeed = 0.9
		blueSound.TimePosition = 0.0613
		blueSound:Play()
		blueSound.Ended:Connect(function()
			blueSound:Destroy()
		end)
	end

	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
	notifsound:Play()

	table.insert(noxious["active notifications"], 1, notifframe)

	for i, frame in ipairs(noxious["active notifications"]) do
		local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
		local adjustTween = noxious["tween service"]:Create(
			frame,
			TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{Position = newTargetPosition}
		)
		adjustTween:Play()
	end

	local slideInTween = noxious["tween service"]:Create(
		notifframe,
		tweenInfo,
		{Position = UDim2.new(1, -10 * scale, 1, -10 * scale)}
	)
	slideInTween:Play()

	local barTweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local barTween = noxious["tween service"]:Create(notiftimer, barTweenInfo, {Size = UDim2.new(0, 0, 1, 0)})
	barTween:Play()

	local isClosed = false

	local function closenotiffunc()
		if isClosed or not notifframe.Parent then return end
		isClosed = true

		barTween:Cancel()

		local slideOutTween = noxious["tween service"]:Create(
			notifframe,
			TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
			{Position = UDim2.new(1, 450 * scale, notifframe.Position.Y.Scale, notifframe.Position.Y.Offset)}
		)
		slideOutTween:Play()

		slideOutTween.Completed:Once(function()
			for i = #noxious["active notifications"], 1, -1 do
				if noxious["active notifications"][i] == notifframe then
					table.remove(noxious["active notifications"], i)
					break
				end
			end

			for i, frame in ipairs(noxious["active notifications"]) do
				local newTargetPosition = UDim2.new(1, -10 * scale, 1, -10 * scale - ((i - 1) * 100 * scale))
				local adjustTween = noxious["tween service"]:Create(
					frame,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Position = newTargetPosition}
				)
				adjustTween:Play()
			end

			if notifframe and notifframe.Parent then
				notifframe:Destroy()
			end
		end)
	end

	closenotif.MouseButton1Click:Connect(closenotiffunc)

	task.spawn(function()
		task.wait(duration)
		closenotiffunc()
	end)

	if variant == "unableishere" or variant == "qwelverishere" or variant == "plethoraishere" or variant == "tmishere" or variant == "aceishere" or variant == "error" or variant == "warning" or variant == "hypnicishere" then
		local colorTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)

		local borderColorTween = noxious["tween service"]:Create(notiftopframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween2 = noxious["tween service"]:Create(notifframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween4 = noxious["tween service"]:Create(notiftimerframe, colorTweenInfo, {BorderColor3 = Color3.new(1, 1, 1)})
		local borderColorTween5 = noxious["tween service"]:Create(notifframeline, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})
		local borderColorTween6 = noxious["tween service"]:Create(notifframeline2, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})
		local borderColorTween7 = noxious["tween service"]:Create(notifframeline3, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})
		if not noxious["notiftxt"] then noxious["text tween"] = noxious["tween service"]:Create(noxious["notiftxt label"], colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)}) end
		local textColorTween2 = noxious["tween service"]:Create(notifytopframetxt, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		local textColorTween3 = noxious["tween service"]:Create(closenotif, colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)})
		if noxious["notiftxt"] then noxious["text tween 4"] = noxious["tween service"]:Create(noxious["notiftxt"], colorTweenInfo, {TextColor3 = Color3.new(1, 1, 1)}) end
		local timerColorTween = noxious["tween service"]:Create(notiftimer, colorTweenInfo, {BackgroundColor3 = Color3.new(1, 1, 1)})

		if not noxious["notiftxt"] then
			for _, letterLabel in ipairs(noxious["notiftxt container"]:GetChildren()) do
				if letterLabel:IsA("TextLabel") then
					local letterColorTween = noxious["tween service"]:Create(letterLabel, colorTweenInfo, {
						TextColor3 = Color3.new(1, 1, 1)
					})
					letterColorTween:Play()
				end
			end
		end

		borderColorTween:Play()
		borderColorTween2:Play()
		borderColorTween3:Play()
		borderColorTween4:Play()
		borderColorTween5:Play()
		borderColorTween6:Play()
		borderColorTween7:Play()
		if not noxious["notiftxt"] then noxious["text tween"]:Play() end
		textColorTween2:Play()
		textColorTween3:Play()
		if noxious["notiftxt"] then noxious["text tween 4"]:Play() end
		timerColorTween:Play()
	end
end

function closeallnotifs()
	for _, frame in ipairs(noxious["active notifications"]) do
		if frame and frame.Parent then
			local slideOutTween = noxious["tween service"]:Create(
				frame,
				TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
				{Position = UDim2.new(1, 350, frame.Position.Y.Scale, frame.Position.Y.Offset)}
			)
			slideOutTween:Play()

			slideOutTween.Completed:Connect(function()
				if frame.Parent then
					frame:Destroy()
				end
			end)
		end
	end

	noxious["active notifications"] = {}
end

-------------------------------------------------------------------------------------------------------------------------------

notify("Noxious Hub: Dandy's World is currently undergoing maintenance. Come back later.", 5, "error")

-------------------------------------------------------------------------------------------------------------------------------
