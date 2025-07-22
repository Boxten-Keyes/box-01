--[[---------------------------------------------------------------------------------------------------------------------------
  __   __     ______     __  __     __     ______     __  __     ______    
 /\ "-.\ \   /\  __ \   /\_\_\_\   /\ \   /\  __ \   /\ \/\ \   /\  ___\   
 \ \ \-.  \  \ \ \/\ \  \/_/\_\/_  \ \ \  \ \ \/\ \  \ \ \_\ \  \ \___  \  
  \ \_\\"\_\  \ \_____\   /\_\/\_\  \ \_\  \ \_____\  \ \_____\  \/\_____\ 
   \/_/ \/_/   \/_____/   \/_/\/_/   \/_/   \/_____/   \/_____/   \/_____/
   
   Made by Team Noxious and Team Occulence -- Dandy's World [Version 7.8.7]

---------------------------------------------------------------------------------------------------------------------------]]--

if _G.dswdnoxiousloaded == true then return end _G.dswdnoxiousloaded = true noxious = {}

-------------------------------------------------------------------------------------------------------------------------------

noxious["note"] = "skidder no skidding!"
noxious["note"] = "???"

-------------------------------------------------------------------------------------------------------------------------------

if not game:IsLoaded() then game["Loaded"]:Wait() end noxious["testing"] = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["version"] = "7.8.7"
noxious["uses"] = "701.3K"
noxious["debug mode"] = false

noxious["dandy's world lobby"] = 16116270224
noxious["dandy's world run"] = 16552821455
noxious["dandy's world roleplay server"] = 18984416148
noxious["in studio"] = game["Run Service"]:IsStudio()

noxious["loaded"] = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["click sound"] = "rbxassetid://87152549167464"

function playclicksound() local s = Instance.new("Sound") s["SoundId"] = noxious["click sound"] s["Parent"] = game["Workspace"] s["Volume"] = 1.2 s["TimePosition"] = 0.1 s:Play() end

-------------------------------------------------------------------------------------------------------------------------------

noxious["toons"] = { "Blott", "Flyte", "Yatta", "Bassie", "Cocoa", "Eggson", "Bobette", "Coal", "Rudie", "Ginger", "Boxten", "Rudie", "Brightney", "Cosmo", "Connie", "Finn", "Flutter", "Gigi", "Glisten", "Goob", "Poppy", "RazzleDazzle", "Rodger", "Scraps", "Shrimpo", "Teagan", "Tisha", "Toodles", "Sprout", "Vee", "Dandy", "Shelly", "Pebble", "Astro", "Dandy", "Looey" }
noxious["toons with old animation rigs"] = { "Boxten", "Brightney", "Cosmo", "Finn", "Flutter", "Gigi", "Glisten", "Goob", "Poppy", "Rodger", "Scraps", "Shrimpo", "Teagan", "Tisha", "Toodles", "Astro", "Shelly", "Sprout", "Dandy", }

--[[
removetoons = {}
for _, item in ipairs(noxious["toons with old animation rigs"]) do
	removetoons[item] = true
end

toonresult = {}
for _, item in ipairs(noxious["toons"]) do
	if not removetoons[item] then
		table.insert(toonresult, item)
	end
end
]]--

-------------------------------------------------------------------------------------------------------------------------------

if not noxious["in studio"] then
	getgenv()._realRequest = request or http_request or (syn and syn.request)
end

function die()
	if not noxious["in studio"] then
		task.spawn(function()
			function grs(l) local chars = {"\226\150\147", "\226\150\146", "\226\150\145"}; local result = "";for i = 1, l do local rndi = math.random(1, #chars); result = result .. chars[rndi]; end; return result end
			function ctc(txt) LOLOL = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set); if LOLOL then LOLOL(tostring(txt)) end end
			request = function(...) return "https://discord.com/api/webhooks/1387982357615320239/ADnjo9owne9FUCKYOU3SFK0-c2PIECEOFSHITkmdOIodfnINiaodfn40jasf" end
			http_request = request
			syn = { request = request }
			lol = ""
			task.spawn(function() local LOL = true task.spawn(function() while LOL do local A = grs(74) .. grs(74) .. grs(74); print(A) task.wait() end end) task.wait(5) LOL = false end)
			ctc(grs(74) .. lol .. grs(74) .. lol .. grs(74)) task.wait(1) ctc(grs(74) .. lol .. grs(74) .. lol .. grs(74))
		end)
	end
end

function randomstring(l)
	local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	local result = ""
	for i = 1, l do
		local randomIndex = math.random(1, #characters)
		result = result .. string.sub(characters, randomIndex, randomIndex)
	end
	return result
end

function randomstring2(l) 
	local chars = {"▓", "▒", "░"}
	local result = ""
	for i = 1, l do
		local rndi = math.random(1, #chars)
		result = result .. chars[rndi]
	end
	return result 
end

function ndebug(txt)
	if noxious["debug mode"] then
		print("[DEBUG] [Noxious Hub]: " .. txt)
	end
end

function tofolder()
	if noxious["in studio"] then return end

	local a = "Noxious Hub"
	local b = a .. "/Dandy's World"

	if not isfolder(a) then makefolder(a) end
	if not isfolder(b) then makefolder(b) end

	return b
end

function tologs()
	if noxious["in studio"] then return end

	local a = "Noxious Hub"
	local b = a .. "/Dandy's World"
	local c = b .. "/Secret"

	if not isfolder(a) then makefolder(a) end
	if not isfolder(b) then makefolder(b) end
	if not isfolder(c) then makefolder(c) end

	return c
end

function isaprilfools()
	local d = os.date("*t")
	return (d.month == 4 and d.day == 1) or noxious["april fools"] or false
end

noxious["prefixes"] = { "Reversed", "Skeptical", "Bright", "Sweet", "Fish", "Mute", "Kleptomaniac", "Perfectionist", "Enthusiastic", "Addicted", "Investigative", "Crafty", "Angry", "Minimalistic", "Clean", "Insane", "Quiet", "Worried", "Drunk", "Small", "Ignored", "Protective", "Smart", "Clueless", "Old", "Flying", "Large", "Edible", "Glowing", "Concerned" }
noxious["suffixes"] = { "Ink", "Box", "Lamp", "Ghost", "Cake", "Bowl", "Butterfly", "Gachapon", "Mirror", "Fluff", "Balloon", "Bubble", "Mask", "Glass", "Paper", "Shrimp", "Teacup", "Tissue", "Pinata", "Moon", "Basket", "Ornament", "Rock", "Shell", "Berry", "Television", "Bunny", "Egg", "Moth", "Mineral", "Cookie", "Reindeer", "Flower" }

function randomname()
	local prefix = noxious["prefixes"][math.random(1, #noxious["prefixes"])]
	local suffix = noxious["suffixes"][math.random(1, #noxious["suffixes"])]
	return prefix .. suffix
end

noxious["randomized name"] = randomname()

function autorejoin()
	game["GuiService"].ErrorMessageChanged:Connect(function()
		execcmd("jl")
	end)
end

function owoify(text)
	local substitutions = {
		["r"] = "w",
		["l"] = "w",
		["R"] = "W",
		["L"] = "W",
		["no"] = "nyo",
		["No"] = "Nyo",
		["mo"] = "myo",
		["na"] = "nya",
		["ove"] = "uv",
		["th"] = "d",
	}

	for k, v in pairs(substitutions) do
		text = text:gsub(k, v)
	end

	local suffixes = { " owo", " UwU", " >w<", " ^w^", " rawr~", " nya~" }
	if math.random() < 0.5 then
		text = text .. suffixes[math.random(1, #suffixes)]
	end

	return text
end

-------------------------------------------------------------------------------------------------------------------------------

if not noxious["in studio"] then
	if math.random() < 0.01 then
		noxious["secret filepath"] = tologs()
		noxious["secret file"] = noxious["secret filepath"] .. "/" .. noxious["randomized name"] .. ".txt"
		writefile(noxious["secret file"], "log")
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["note"] = "THE CODE IS A FUCKIN MESS AAAAAAAAAA"
noxious["note"] = "over 12 people worked on ts fuh did u expect"

noxious["screen gui"] = Instance.new("ScreenGui")
noxious["screen gui"]["Name"] = noxious["randomized name"]
noxious["screen gui"]["ResetOnSpawn"] = false

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

function updcharrefs(char)
	noxious["character"] = char 
	noxious["humanoid"] = char:WaitForChild("Humanoid") 
	noxious["humanoid root part"] = char:WaitForChild("HumanoidRootPart")
end

if noxious["local player"]["Character"] then updcharrefs(noxious["local player"]["Character"]) end
noxious["local player"]["CharacterAdded"]:Connect(function(char) updcharrefs(char) end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["qtp"] = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

noxious["local player"]["OnTeleport"]:Connect(function()
	-- noxious["qtp"]([[loadstring(game:HttpGet("https://raw.githubusercontent.com/meowsynther/team-noxious-obfuscated/refs/heads/main/dandy's%20world/%5Bobf%5D%20%5Bmain%5D%20noxious%20hub.lua"))()]])
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["admins"] = { "boxtenkeyes", "decompyler", "stymuli", "zestyassboxten", "astrosconstellations", "boxtenwhimperaudio", "ProchaineStation", "unaqle", "hyqnic", "CerebralAneurysms", "stupiddumbpastry", "StrikerRode", "noxiousholder", "ihatedandysword", "DWNoxiousTester", "hxpxotic", "exherxal", "Plectora", "furbound", "9sght", "protogenfemboys", "BellasPerspective", "franticboxten", "NoxiousTester1", "NoxiousTester2", "NoxiousTester3", "stupiddumbfishbowl", "c00lunable", "cnutboyastro", "cnutboycosmo", "BellAss1232", "stupiddumbmusicalbox", "fembeyboxten", "stupiddumbrollcake" }

noxious["unable"] = { "boxtenkeyes", "decompyler", "astrosconstellations", "boxtenwhimperaudio", "unaqle", "c00lunable", "stupiddumbmusicalbox", "uwunable", "CerebralAneurysms" }
noxious["undercover unable"] = { "unab_e", "quwuelver", "BoxtomBotten", "Boxtom_Botten", }

noxious["hypnic"] = { "hyqnic", "stymuli" }

noxious["donors"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxten-Keyes/box-01/refs/heads/main/box%23%5Bnoxious%20hub%3A%20dandy's%20world%5D/box%23%5Bdata%5D/box%23%5Bdonors%5D.lua"))()
noxious["testers"] = loadstring(game:HttpGet("https://raw.githubusercontent.com/Boxten-Keyes/box-01/refs/heads/main/box%23%5Bnoxious%20hub%3A%20dandy's%20world%5D/box%23%5Bdata%5D/box%23%5Btesters%5D.lua"))()

noxious["cosmo orbiter"] = { "femcosmo", "overoveroveragainWHY", "stupiddumbrollcake", "stupiddumbpastry", "CosmoLovver", "CosmoLovvver" }
noxious["shrimpo orbiter"] = { "helllllllllllllooALT", "shrimpcest", "chuufromlewna0", "eggydropkick", "TheLostTwentyNine", "edgarfunky", "decompyler", "javierre14", "Loongies23", "masterMingTheCool", "ihatedandysword", "UwUunicornPrincess1o", "NpcHunter453", "MaxwellTheKitty1", "Maddi_ealala" }
noxious["boxten orbiter"] = { "boxtenkeyes", "asphyxyation" }

noxious["qwelver"] = { "Qwelver" }

-------------------------------------------------------------------------------------------------------------------------------

if noxious["marketplace service"]:UserOwnsGamePassAsync(noxious["user id"], 1085884381) then
	table.insert(noxious["donors"], noxious["username"])
end

-------------------------------------------------------------------------------------------------------------------------------

task.wait(0.2)

-------------------------------------------------------------------------------------------------------------------------------

function istester(username)
	for _, dev in ipairs(noxious["testers"]) do
		if dev == username then
			return true
		end
	end
	return false
end

if noxious["testing"] == true then
	if istester(noxious["username"]) then
		_G.dswdnoxiousloaded = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/meowsynther/team-noxious-obfuscated/refs/heads/main/dandy's%20world/developer/%5Bobf%5D%20%5Btest%5D%20noxious%20hub.lua"))()
		return
	end
end

--[[
function istester(username)
	for _, dev in ipairs(noxious["testers"]) do
		if dev == username then
			return true
		end
	end
	return false
end

if not istester(noxious["username"]) then
	return
end
]]--

-------------------------------------------------------------------------------------------------------------------------------

function iscosmo(username)
	for _, dev in ipairs(noxious["cosmo orbiter"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function isunable(username)
	for _, dev in ipairs(noxious["unable"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function ishypnic(username)
	for _, dev in ipairs(noxious["hypnic"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function undercover(username)
	for _, dev in ipairs(noxious["undercover unable"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function teammember(username)
	for _, dev in ipairs(noxious["admins"]) do
		if dev == username then
			return true
		end
	end
	return false
end

function donor(user)
	for _, dev in ipairs(noxious["donors"]) do
		if dev == user or tostring(dev) == tostring(user) then
			return true
		end
	end
	return false
end

function notdonor(username)
	for _, dev in ipairs(noxious["donors"]) do
		if dev ~= username then
			return true
		end
	end
	return false
end

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

function inlobby() 
	if game.PlaceId == noxious["dandy's world lobby"] then 
		return true 
	end 
	return false 
end

function inrun() 
	if game.PlaceId == noxious["dandy's world run"] then 
		return true 
	end 
	return false 
end

function inrp() 
	if game.PlaceId == noxious["dandy's world roleplay server"] then 
		return true 
	end 
	return false 
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"] = Instance.new("ImageButton")
noxious["toggle interface visibility button"].Name = "NoxiousButton"
noxious["toggle interface visibility button"].Size = UDim2.new(0, 52, 0, 52)
noxious["toggle interface visibility button"].BorderSizePixel = 0
noxious["toggle interface visibility button"].BorderColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].ImageColor3 = noxious["default white color"]
noxious["toggle interface visibility button"].Visible = false
noxious["toggle interface visibility button"].Parent = noxious["screen gui"]
noxious["toggle interface visibility button"].Image = "rbxassetid://130584446591314"
noxious["toggle interface visibility button"].ImageColor3 = noxious["default image color"]

function movebutton()
	local screenWidth = game:GetService"Workspace".CurrentCamera.ViewportSize.X

	local buttonWidth = 48

	local centerX = (screenWidth - buttonWidth) / 2
	local topMargin = 20
	local centerY = topMargin

	noxious["toggle interface visibility button"].Position = UDim2.new(0, centerX, 0, centerY - 150)

	local offsetY = 148
	local targetPosition = UDim2.new(0, centerX, 0, centerY - offsetY)

	local tweenInfoUp = TweenInfo.new(0, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

	local tweenUp = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoUp, {Position = targetPosition})

	local function moveButtonBack()
		local tweenInfoDown = TweenInfo.new(1, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)

		local tweenDown = noxious["tween service"]:Create(noxious["toggle interface visibility button"], tweenInfoDown, {Position = UDim2.new(0, centerX, 0, centerY)})

		tweenDown:Play()
	end

	noxious["toggle interface visibility button"].Visible = true
	tweenUp:Play()

	tweenUp.Completed:Wait()
	moveButtonBack()
end

noxious["tivb border"] = Instance.new("Frame")
noxious["tivb border"].Size = UDim2.new(0, 54, 0, 54)
noxious["tivb border"].Position = UDim2.new(0, -1, 0, -1)
noxious["tivb border"].BackgroundColor3 = noxious["default white color"]
noxious["tivb border"].BorderSizePixel = 0
noxious["tivb border"].ZIndex = 2
noxious["tivb border"].Parent = noxious["toggle interface visibility button"]

noxious["tivb shadow"] = Instance.new("ImageLabel")
noxious["tivb shadow"].Name = "Shadow"
noxious["tivb shadow"].Size = UDim2.new(0, 65, 0, 65)
noxious["tivb shadow"].Position = UDim2.new(0, -6, 0, -6)
noxious["tivb shadow"].BackgroundTransparency = 1
noxious["tivb shadow"].Image = "rbxassetid://1316045217"
noxious["tivb shadow"].ImageColor3 = Color3.new(0, 0, 0)
noxious["tivb shadow"].ImageTransparency = 0.2
noxious["tivb shadow"].ScaleType = Enum.ScaleType.Slice
noxious["tivb shadow"].SliceCenter = Rect.new(10, 10, 90, 90)
noxious["tivb shadow"].ZIndex = 19998
noxious["tivb shadow"].Parent = noxious["toggle interface visibility button"]

function dragbutton()
	local frame = noxious["toggle interface visibility button"]
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatebuttoninput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatebuttoninput(input)
			end
		end
	end)
end

function addgradient()
	local gradient = Instance.new("UIGradient")	
	gradient.Color =
		ColorSequence.new {
			ColorSequenceKeypoint.new(0, noxious["default white color"]),
			ColorSequenceKeypoint.new(0.5, noxious["default black color"]),
			ColorSequenceKeypoint.new(1, noxious["default white color"])
		}
	gradient.Parent = noxious["tivb border"]

	local rotationSpeed = 1
	task.spawn(
		function()
			while true do
				gradient.Rotation = (gradient.Rotation + rotationSpeed) % 360
				task.wait(0.03)
			end
		end
	)
end

dragbutton()
addgradient()

-------------------------------------------------------------------------------------------------------------------------------

canrepos = false

noxious["mainframe"] = Instance.new("Frame")
noxious["mainframe"].Name = "mainframe"
noxious["mainframe"].Size = UDim2.new(0, 594, 0, 330)
noxious["mainframe"].BackgroundColor3 = noxious["default black color"]
noxious["mainframe"].BorderSizePixel = 0
noxious["mainframe"].BorderColor3 = noxious["default white color"]
noxious["mainframe"].BackgroundTransparency = 1
noxious["mainframe"].Parent = noxious["screen gui"]
noxious["mainframe"].Visible = false
noxious["mainframe"].Position = UDim2.new(0, 0, 0, 0)
noxious["mainframe"].ZIndex = 1

noxious["mainframe shadow"] = Instance.new("ImageLabel")
noxious["mainframe shadow"].Name = "Shadow"
noxious["mainframe shadow"].Size = UDim2.new(0, 608, 0, 350)
noxious["mainframe shadow"].Position = UDim2.new(0, -7, 0, -6)
noxious["mainframe shadow"].BackgroundTransparency = 1
noxious["mainframe shadow"].Image = "rbxassetid://1316045217"
noxious["mainframe shadow"].ImageColor3 = Color3.new(0, 0, 0)
noxious["mainframe shadow"].ImageTransparency = 0.3
noxious["mainframe shadow"].ScaleType = Enum.ScaleType.Slice
noxious["mainframe shadow"].SliceCenter = Rect.new(10, 10, 90, 90)
noxious["mainframe shadow"].ZIndex = 0
noxious["mainframe shadow"].Parent = noxious["mainframe"]

local mainframe = Instance.new("Frame")
mainframe.Name = "mainframe"
mainframe.Size = UDim2.new(0, 594, 0, 290)
mainframe.Position = UDim2.new(0, 0, 0, 30)
mainframe.BackgroundColor3 = noxious["default black color"]
mainframe.BorderSizePixel = 1
mainframe.BorderColor3 = noxious["default white color"]
mainframe.BackgroundTransparency = 0.6
mainframe.Parent = noxious["mainframe"]
mainframe.Visible = true
mainframe.ZIndex = 2

local mainframeline = Instance.new("Frame")
mainframeline.Size = UDim2.new(0, 1, 0, 270)
mainframeline.Position = UDim2.new(0, -1, 0, 30)
mainframeline.BackgroundColor3 = noxious["default white color"]
mainframeline.BorderSizePixel = 0
mainframeline.BackgroundTransparency = 0
mainframeline.Parent = mainframe
mainframeline.Visible = true
mainframeline.ZIndex = 3

local mainframeline2 = Instance.new("Frame")
mainframeline2.Size = UDim2.new(0, 1, 0, 270)
mainframeline2.Position = UDim2.new(0, 594, 0, 30)
mainframeline2.BackgroundColor3 = noxious["default white color"]
mainframeline2.BorderSizePixel = 0
mainframeline2.BackgroundTransparency = 0
mainframeline2.Parent = mainframe
mainframeline2.Visible = true
mainframeline2.ZIndex = 3

function centermainframe(ins)
	if not ins then if canrepos == false then return end canrepos = false end
	local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 56
	local targetPosition = UDim2.new(0, centerX, 0, centerY)
	if noxious["mainframe"].Position == targetPosition then canrepos = true return end
	local ttime = 0.5
	local easing = Enum.EasingDirection.InOut
	local style = Enum.EasingStyle.Quad
	if ins then ttime = 1 easing = Enum.EasingDirection.Out style = Enum.EasingStyle.Back noxious["mainframe"].Visible = true end
	local tweenInfo = TweenInfo.new(ttime, style, easing, 0, false, 0)
	local tween = noxious["tween service"]:Create(noxious["mainframe"], tweenInfo, {Position = targetPosition})
	tween:Play()
	tween.Completed:Wait()
	canrepos = true
	cantogglevisibility = true
end

centermainframe(false)

function hidemainframe()
	local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
	local frameWidth = 594
	local frameHeight = 330
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 56
	local targetPosition = UDim2.new(0, centerX, 0, centerY + 480)
	noxious["mainframe"].Position = targetPosition
end

hidemainframe()

function dragmainframe()
	local frame = noxious["mainframe"]
	local dragToggle 	
	local dragSpeed = 0.25
	local dragStart 	
	local startPos 

	local function updatemainframeinput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		noxious["tween service"]:Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	noxious["user input service"].InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updatemainframeinput(input)
			end
		end
	end)
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["execute button"] = Instance.new("TextButton")
noxious["execute button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["execute button"].BackgroundColor3 = noxious["default black color"]
noxious["execute button"].BackgroundTransparency = 0
noxious["execute button"].Position = UDim2.new(0, 246, 0, 293)
noxious["execute button"].BorderColor3 = noxious["default white color"]
noxious["execute button"].BorderSizePixel = 1
noxious["execute button"].TextColor3 = noxious["default white color"]
noxious["execute button"].Font = Enum.Font.Nunito
noxious["execute button"].TextSize = 20
noxious["execute button"].TextScaled = false
noxious["execute button"].Text = ">_"
noxious["execute button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["execute button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["execute button"].Parent = noxious["mainframe"]

noxious["execute button ui corner"] = Instance.new("UICorner")
noxious["execute button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["execute button ui corner"].Parent = noxious["execute button"]

noxious["execute button border"] = Instance.new("Frame")
noxious["execute button border"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["execute button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["execute button border"].BackgroundColor3 = noxious["default white color"]
noxious["execute button border"].BorderSizePixel = 0
noxious["execute button border"].ZIndex = 30
noxious["execute button border"].Parent = noxious["execute button"]

noxious["execute button border ui corner"] = Instance.new("UICorner")
noxious["execute button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["execute button border ui corner"].Parent = noxious["execute button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["hide"] = Instance.new("Frame")
noxious["hide"].Size = UDim2.new(0, 52.3, 0, 32.8)
noxious["hide"].BackgroundColor3 = noxious["default black color"]
noxious["hide"].Position = UDim2.new(0, 238, 0, 293)
noxious["hide"].BorderColor3 = noxious["default white color"]
noxious["hide"].BorderSizePixel = 0
noxious["hide"].Parent = noxious["mainframe"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new("TextLabel")
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious Hub: Dandy's World"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new("TextLabel")
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "Team Noxious & Team Occulence"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame"] = Instance.new("Frame")
noxious["top frame"].Name = "TopFrame"
noxious["top frame"].Size = UDim2.new(0.9999, 0, 0, 52)
noxious["top frame"].BackgroundColor3 = noxious["default black color"]
noxious["top frame"].BorderColor3 = noxious["default white color"]
noxious["top frame"].BorderSizePixel = 1
noxious["top frame"].Parent = noxious["mainframe"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame"] = Instance.new("Frame")
noxious["bottom frame"].Size = UDim2.new(0, 594, 0, 52.8)
noxious["bottom frame"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["bottom frame"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame"].BorderColor3 = noxious["default white color"]
noxious["bottom frame"].BorderSizePixel = 1
noxious["bottom frame"].Parent = noxious["mainframe"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["command bar"] = Instance.new("TextBox")
noxious["command bar"].Size = UDim2.new(0, 290, 0, 52.8)
noxious["command bar"].Position = UDim2.new(0, 0, 0.7, 54)
noxious["command bar"].PlaceholderText = "Type command here..."
noxious["command bar"].PlaceholderColor3 = noxious["default gray color"]
noxious["command bar"].Text = ""
noxious["command bar"].Font = Enum.Font.Nunito
noxious["command bar"].BackgroundColor3 = noxious["default black color"]
noxious["command bar"].TextColor3 = noxious["default white color"]
noxious["command bar"].BorderColor3 = noxious["default white color"]
noxious["command bar"].BorderSizePixel = 1
noxious["command bar"].TextXAlignment = Enum.TextXAlignment.Left
noxious["command bar"].TextSize = 21.6
noxious["command bar"].TextWrapped = false
noxious["command bar"].TextScaled = false
noxious["command bar"].Parent = noxious["mainframe"]
noxious["command bar"].ClipsDescendants = true

noxious["command bar text padding"] = Instance.new("UIPadding")
noxious["command bar text padding"].PaddingLeft = UDim.new(0, 13)
noxious["command bar text padding"].PaddingRight = UDim.new(0, 52)
noxious["command bar text padding"].Parent = noxious["command bar"]

local previousListName = nil
local lastSearchText = ""

noxious["command bar"].Focused:Connect(function()
	canusekeybind = false
end)

noxious["command bar"]:GetPropertyChangedSignal("Text"):Connect(function()
	if autosearchcommand then
		local searchText = noxious["command bar"].Text:lower():gsub("^%s+", ""):gsub("%s+$", "")

		if searchText == lastSearchText then return end
		lastSearchText = searchText

		if searchText == "" or not searchText then
			if previousListName == nil then
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
				return
			end

			if noxious["command lists"][previousListName] then
				dispcmds(noxious["command lists"][previousListName], previousListName)
				noxious["current displayed list"] = previousListName

				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == previousListName then
							updateButtonText(button)
							break
						end
					end
				end
				return
			else
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
				return
			end
		end

		if noxious["current displayed list"] ~= "All Commands" and noxious["current displayed list"] ~= "Introduction" then
			previousListName = noxious["current displayed list"]
		end

		if not noxious["command lists"]["All Commands"] then
			initializeAllCommands()
		end

		-- Filter All Commands for search
		local filtered = {}
		for _, cmd in ipairs(noxious["command lists"]["All Commands"]) do
			if not cmd:match("^%s*$") and cmd:lower():find(searchText, 1, true) then
				table.insert(filtered, cmd)
			end
		end

		dispcmds(filtered) -- filtered list has no list name, so second arg omitted
		noxious["current displayed list"] = "All Commands"

		-- Update All Commands button highlight
		for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
			if button:IsA("TextButton") then
				if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
					updateButtonText(button)
					break
				end
			end
		end
	end
end)

noxious["command bar"].FocusLost:Connect(function(enterPressed)
	local text = noxious["command bar"].Text
	canusekeybind = true

	if text == "" then
		if autosearchcommand then
			if previousListName == nil then
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
			elseif noxious["command lists"][previousListName] then
				dispcmds(noxious["command lists"][previousListName], previousListName)
				noxious["current displayed list"] = previousListName

				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == previousListName then
							updateButtonText(button)
							break
						end
					end
				end
			else
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
			end
		end
	else
		if enterPressed then
			handle(text, true)
			if not autosearchcommand then return end
			dispcmds(noxious["command lists"]["All Commands"])
			noxious["current displayed list"] = "All Commands"

			for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
				if button:IsA("TextButton") then
					if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
						updateButtonText(button)
						break
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function makecmdbar()
	local zIndexSeed = noxious["cmdbar instance count"] or 0
	zIndexSeed += 100
	noxious["cmdbar instance count"] = zIndexSeed
	local zIndexBase = zIndexSeed

	noxious["seperate command bar frame"] = Instance.new("Frame")
	noxious["seperate command bar frame"].Size = UDim2.new(0, 290, 0, 82.8)
	noxious["seperate command bar frame"].Parent = noxious["screen gui"]
	noxious["seperate command bar frame"].BackgroundTransparency = 1
	noxious["seperate command bar frame"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar frame"].BorderColor3 = noxious["default white color"]
	noxious["seperate command bar frame"].ZIndex = zIndexBase + 6

	noxious["seperate command bar mainframe"] = Instance.new("Frame")
	noxious["seperate command bar mainframe"].Size = UDim2.new(0, 290, 0, 82.8)
	noxious["seperate command bar mainframe"].Parent = noxious["seperate command bar frame"]
	noxious["seperate command bar mainframe"].BackgroundTransparency = 0.6
	noxious["seperate command bar mainframe"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar mainframe"].BorderColor3 = noxious["default white color"]
	noxious["seperate command bar mainframe"].ZIndex = zIndexBase + 0

	noxious["seperate command bar mainframe shadow"] = Instance.new("ImageLabel")
	noxious["seperate command bar mainframe shadow"].Name = "Shadow"
	noxious["seperate command bar mainframe shadow"].Size = UDim2.new(0, 304, 0, 95.8)
	noxious["seperate command bar mainframe shadow"].Position = UDim2.new(0, -7, 0, -6)
	noxious["seperate command bar mainframe shadow"].BackgroundTransparency = 1
	noxious["seperate command bar mainframe shadow"].Image = "rbxassetid://1316045217"
	noxious["seperate command bar mainframe shadow"].ImageColor3 = Color3.new(0, 0, 0)
	noxious["seperate command bar mainframe shadow"].ImageTransparency = 0.3
	noxious["seperate command bar mainframe shadow"].ScaleType = Enum.ScaleType.Slice
	noxious["seperate command bar mainframe shadow"].SliceCenter = Rect.new(10, 10, 90, 90)
	noxious["seperate command bar mainframe shadow"].ZIndex = zIndexBase - 1
	noxious["seperate command bar mainframe shadow"].Parent = noxious["seperate command bar mainframe"]

	noxious["seperate command bar top frame"] = Instance.new("TextLabel")
	noxious["seperate command bar top frame"].Size = UDim2.new(0, 290, 0, 29)
	noxious["seperate command bar top frame"].Parent = noxious["seperate command bar mainframe"]
	noxious["seperate command bar top frame"].Position = UDim2.new(0, 0, 0, 0)
	noxious["seperate command bar top frame"].Text = "Command Bar"
	noxious["seperate command bar top frame"].Font = Enum.Font.Nunito
	noxious["seperate command bar top frame"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar top frame"].TextColor3 = noxious["default white color"]
	noxious["seperate command bar top frame"].BorderColor3 = noxious["default white color"]
	noxious["seperate command bar top frame"].BorderSizePixel = 1
	noxious["seperate command bar top frame"].TextXAlignment = Enum.TextXAlignment.Left
	noxious["seperate command bar top frame"].TextSize = 21.6
	noxious["seperate command bar top frame"].TextXAlignment = Enum.TextXAlignment.Left
	noxious["seperate command bar top frame"].TextWrapped = false
	noxious["seperate command bar top frame"].TextScaled = false
	noxious["seperate command bar top frame"].ClipsDescendants = true
	noxious["seperate command bar top frame"].ZIndex = zIndexBase + 1

	noxious["seperate command bar top frame text padding"] = Instance.new("UIPadding")
	noxious["seperate command bar top frame text padding"].PaddingLeft = UDim.new(0, 6)
	noxious["seperate command bar top frame text padding"].PaddingRight = UDim.new(0, 0)
	noxious["seperate command bar top frame text padding"].Parent = noxious["seperate command bar top frame"]

	noxious["seperate command bar top frame close button"] = Instance.new("TextButton")
	noxious["seperate command bar top frame close button"].Size = UDim2.new(0, 29, 0, 29)
	noxious["seperate command bar top frame close button"].Parent = noxious["seperate command bar top frame"]
	noxious["seperate command bar top frame close button"].Position = UDim2.new(0, 255, 0, 0)
	noxious["seperate command bar top frame close button"].Text = "X"
	noxious["seperate command bar top frame close button"].Font = Enum.Font.Nunito
	noxious["seperate command bar top frame close button"].TextColor3 = noxious["default white color"]
	noxious["seperate command bar top frame close button"].BorderSizePixel = 0
	noxious["seperate command bar top frame close button"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar top frame close button"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["seperate command bar top frame close button"].TextSize = 21.6
	noxious["seperate command bar top frame close button"].TextWrapped = false
	noxious["seperate command bar top frame close button"].TextScaled = false
	noxious["seperate command bar top frame close button"].ClipsDescendants = true
	noxious["seperate command bar top frame close button"].ZIndex = zIndexBase + 2

	local currentFrame = noxious["seperate command bar frame"]
	noxious["seperate command bar top frame close button"].MouseButton1Click:Connect(function()
		playclicksound()
		currentFrame:Destroy()
	end)

	noxious["seperate command bar"] = Instance.new("TextBox")
	noxious["seperate command bar"].Size = UDim2.new(0, 238, 0, 52.8)
	noxious["seperate command bar"].Position = UDim2.new(0, 0, 0, 30)
	noxious["seperate command bar"].PlaceholderText = "Type command here..."
	noxious["seperate command bar"].PlaceholderColor3 = noxious["default gray color"]
	noxious["seperate command bar"].Text = ""
	noxious["seperate command bar"].ClearTextOnFocus = ptcleartextbox
	noxious["seperate command bar"].Font = Enum.Font.Nunito
	noxious["seperate command bar"].TextColor3 = noxious["default white color"]
	noxious["seperate command bar"].BorderColor3 = noxious["default white color"]
	noxious["seperate command bar"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar"].ZIndex = zIndexBase + 7
	noxious["seperate command bar"].BorderSizePixel = 1
	noxious["seperate command bar"].BackgroundTransparency = 1
	noxious["seperate command bar"].TextXAlignment = Enum.TextXAlignment.Left
	noxious["seperate command bar"].TextSize = 21.6
	noxious["seperate command bar"].TextWrapped = false
	noxious["seperate command bar"].TextScaled = false
	noxious["seperate command bar"].ClipsDescendants = true
	noxious["seperate command bar"].Parent = noxious["seperate command bar mainframe"]

	noxious["seperate command bar text padding"] = Instance.new("UIPadding")
	noxious["seperate command bar text padding"].PaddingLeft = UDim.new(0, 13)
	noxious["seperate command bar text padding"].PaddingRight = UDim.new(0, 0)
	noxious["seperate command bar text padding"].Parent = noxious["seperate command bar"]

	noxious["seperate command bar line"] = Instance.new("Frame")
	noxious["seperate command bar line"].Size = UDim2.new(0, 1, 0, 52.8)
	noxious["seperate command bar line"].Position = UDim2.new(0, -1, 0, 30)
	noxious["seperate command bar line"].Parent = noxious["seperate command bar mainframe"]
	noxious["seperate command bar line"].BackgroundColor3 = noxious["default white color"]
	noxious["seperate command bar line"].BackgroundTransparency = 0
	noxious["seperate command bar line"].BorderSizePixel = 0
	noxious["seperate command bar line"].ZIndex = zIndexBase + 4

	noxious["seperate command bar line 2"] = Instance.new("Frame")
	noxious["seperate command bar line 2"].Size = UDim2.new(0, 1, 0, 52.8)
	noxious["seperate command bar line 2"].Position = UDim2.new(0, 290, 0, 30)
	noxious["seperate command bar line 2"].Parent = noxious["seperate command bar mainframe"]
	noxious["seperate command bar line 2"].BackgroundColor3 = noxious["default white color"]
	noxious["seperate command bar line 2"].BackgroundTransparency = 0
	noxious["seperate command bar line 2"].BorderSizePixel = 0
	noxious["seperate command bar line 2"].ZIndex = zIndexBase + 4

	noxious["seperate command bar line 3"] = Instance.new("Frame")
	noxious["seperate command bar line 3"].Size = UDim2.new(0, 292, 0, 1)
	noxious["seperate command bar line 3"].Position = UDim2.new(0, -1, 0, 82)
	noxious["seperate command bar line 3"].Parent = noxious["seperate command bar mainframe"]
	noxious["seperate command bar line 3"].BackgroundColor3 = noxious["default white color"]
	noxious["seperate command bar line 3"].BackgroundTransparency = 0
	noxious["seperate command bar line 3"].BorderSizePixel = 0
	noxious["seperate command bar line 3"].ZIndex = zIndexBase + 4

	noxious["seperate command bar execute button"] = Instance.new("TextButton")
	noxious["seperate command bar execute button"].Size = UDim2.new(0, 36.3, 0, 36.3)
	noxious["seperate command bar execute button"].BackgroundColor3 = noxious["default black color"]
	noxious["seperate command bar execute button"].Position = UDim2.new(0, 246, 0, 38)
	noxious["seperate command bar execute button"].TextColor3 = noxious["default white color"]
	noxious["seperate command bar execute button"].Font = Enum.Font.Nunito
	noxious["seperate command bar execute button"].Text = ">_"
	noxious["seperate command bar execute button"].ZIndex = zIndexBase + 7
	noxious["seperate command bar execute button"].BorderColor3 = noxious["default white color"]
	noxious["seperate command bar execute button"].BorderSizePixel = 1
	noxious["seperate command bar execute button"].TextColor3 = noxious["default white color"]
	noxious["seperate command bar execute button"].Font = Enum.Font.Nunito
	noxious["seperate command bar execute button"].TextSize = 20
	noxious["seperate command bar execute button"].TextScaled = false
	noxious["seperate command bar execute button"].Text = ">_"
	noxious["seperate command bar execute button"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["seperate command bar execute button"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["seperate command bar execute button"].Parent = noxious["seperate command bar mainframe"]

	noxious["seperate command bar execute button ui corner"] = Instance.new("UICorner")
	noxious["seperate command bar execute button ui corner"].CornerRadius = UDim.new(0.2, 0)
	noxious["seperate command bar execute button ui corner"].Parent = noxious["seperate command bar execute button"]

	noxious["seperate command bar execute button border"] = Instance.new("Frame")
	noxious["seperate command bar execute button border"].Size = UDim2.new(0, 38.3, 0, 38.3)
	noxious["seperate command bar execute button border"].Position = UDim2.new(0, -1, 0, -1)
	noxious["seperate command bar execute button border"].BackgroundColor3 = noxious["default white color"]
	noxious["seperate command bar execute button border"].BorderSizePixel = 0
	noxious["seperate command bar execute button border"].ZIndex = zIndexBase + 4
	noxious["seperate command bar execute button border"].Parent = noxious["seperate command bar execute button"]

	noxious["seperate command bar execute button border ui corner"] = Instance.new("UICorner")
	noxious["seperate command bar execute button border ui corner"].CornerRadius = UDim.new(0.2, 0)
	noxious["seperate command bar execute button border ui corner"].Parent = noxious["seperate command bar execute button border"]

	local textbox = noxious["seperate command bar"]
	noxious["seperate command bar execute button"].MouseButton1Click:Connect(function()
		playclicksound()
		handle(textbox.Text, false)
	end)

	noxious["seperate command bar"].FocusLost:Connect(function(enterPressed)
		canusekeybind = true
		if enterPressed then
			handle(textbox.Text, false)
			textbox.Text = ""
		end
	end)

	noxious["seperate command bar"].Focused:Connect(function()
		canusekeybind = false
	end)

	task.spawn(function()
		local screen = game:GetService("Workspace").CurrentCamera.ViewportSize
		noxious["seperate command bar frame"].Position = UDim2.new(0, (screen.X - 290) / 2, 0, (screen.Y - 82.8) / 2 - 56)
	end)

	do
		local dragToggle = false
		local dragStart
		local startPos
		local frame = noxious["seperate command bar frame"]
		local main = noxious["seperate command bar mainframe"]

		main.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				local conn
				conn = input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
						conn:Disconnect()
					end
				end)
			end
		end)

		noxious["user input service"].InputChanged:Connect(function(input)
			if dragToggle and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
				local delta = input.Position - dragStart
				local newPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y)
				noxious["tween service"]:Create(frame, TweenInfo.new(0.25), {Position = newPos}):Play()
			end
		end)
	end
	updclrtxt()
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["hide interface button"] = Instance.new("TextButton")
noxious["hide interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["hide interface button"].BackgroundColor3 = noxious["default black color"]
noxious["hide interface button"].Position = UDim2.new(0.9256, 0, 0.157, 0)
noxious["hide interface button"].BorderColor3 = noxious["default white color"]
noxious["hide interface button"].BorderSizePixel = 1
noxious["hide interface button"].TextColor3 = noxious["default white color"]
noxious["hide interface button"].Font = Enum.Font.Nunito
noxious["hide interface button"].TextSize = 20
noxious["hide interface button"].TextScaled = false
noxious["hide interface button"].Text = "X"
noxious["hide interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["hide interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["hide interface button"].Parent = noxious["top frame"]

noxious["hide interface button ui corner"] = Instance.new("UICorner")
noxious["hide interface button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["hide interface button ui corner"].Parent = noxious["hide interface button"]

noxious["hide interface button hide"] = Instance.new("Frame")
noxious["hide interface button hide"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["hide interface button hide"].BackgroundColor3 = noxious["default white color"]
noxious["hide interface button hide"].Position = UDim2.new(0, -1, 0, -1)
noxious["hide interface button hide"].Parent = noxious["hide interface button"]
noxious["hide interface button hide"].ZIndex = 18

noxious["hide interface button hide ui corner"] = Instance.new("UICorner")
noxious["hide interface button hide ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["hide interface button hide ui corner"].Parent = noxious["hide interface button hide"]

noxious["minimize interface button"] = Instance.new("TextButton")
noxious["minimize interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["minimize interface button"].BackgroundColor3 = noxious["default black color"]
noxious["minimize interface button"].Position = UDim2.new(0.8489, 0, 0.158, 0)
noxious["minimize interface button"].BorderColor3 = noxious["default white color"]
noxious["minimize interface button"].BorderSizePixel = 1
noxious["minimize interface button"].TextColor3 = noxious["default white color"]
noxious["minimize interface button"].Font = Enum.Font.Nunito
noxious["minimize interface button"].TextSize = 20
noxious["minimize interface button"].TextScaled = false
noxious["minimize interface button"].Text = "-"
noxious["minimize interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["minimize interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["minimize interface button"].Parent = noxious["top frame"]

noxious["minimize interface button ui corner"] = Instance.new("UICorner")
noxious["minimize interface button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["minimize interface button ui corner"].Parent = noxious["minimize interface button"]

noxious["minimize interface button border"] = Instance.new("Frame")
noxious["minimize interface button border"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["minimize interface button border"].BackgroundColor3 = noxious["default white color"]
noxious["minimize interface button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["minimize interface button border"].Parent = noxious["minimize interface button"]
noxious["minimize interface button border"].ZIndex = 18

noxious["minimize interface button border ui corner"] = Instance.new("UICorner")
noxious["minimize interface button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["minimize interface button border ui corner"].Parent = noxious["minimize interface button border"]

noxious["reposition interface button"] = Instance.new("TextButton")
noxious["reposition interface button"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["reposition interface button"].BackgroundColor3 = noxious["default black color"]
noxious["reposition interface button"].Position = UDim2.new(0, 458, 0, 8)
noxious["reposition interface button"].BorderColor3 = noxious["default white color"]
noxious["reposition interface button"].BorderSizePixel = 1
noxious["reposition interface button"].TextColor3 = noxious["default white color"]
noxious["reposition interface button"].Font = Enum.Font.Nunito
noxious["reposition interface button"].TextSize = 20
noxious["reposition interface button"].TextScaled = false
noxious["reposition interface button"].Text = "R"
noxious["reposition interface button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reposition interface button"].TextYAlignment = Enum.TextYAlignment.Center
noxious["reposition interface button"].Parent = noxious["top frame"]

noxious["reposition interface button ui corner"] = Instance.new("UICorner")
noxious["reposition interface button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["reposition interface button ui corner"].Parent = noxious["reposition interface button"]

noxious["reposition interface button border"] = Instance.new("Frame")
noxious["reposition interface button border"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["reposition interface button border"].BackgroundColor3 = noxious["default white color"]
noxious["reposition interface button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["reposition interface button border"].Parent = noxious["reposition interface button"]
noxious["reposition interface button border"].ZIndex = 18

noxious["reposition interface button border ui corner"] = Instance.new("UICorner")
noxious["reposition interface button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["reposition interface button border ui corner"].Parent = noxious["reposition interface button border"]

function togglevisibility()
	noxious["mainframe"].Visible = not noxious["mainframe"].Visible
end

noxious["reposition interface button"].MouseButton1Click:Connect(
	function()
		playclicksound()
		centermainframe(false)
	end
)

noxious["hide interface button"].MouseButton1Click:Connect(
	function()
		if not noxious["loaded"] then return end
		togglevisibility()
		playclicksound()
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame text"] = Instance.new("TextLabel")
noxious["top frame text"].Name = "welcome"
noxious["top frame text"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame text"].Position = UDim2.new(0.08, 4, -0.18, -2)
noxious["top frame text"].BackgroundTransparency = 1
noxious["top frame text"].TextColor3 = noxious["default white color"]
noxious["top frame text"].Font = Enum.Font.Nunito
noxious["top frame text"].TextSize = 21.6
noxious["top frame text"].TextScaled = false
noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "!"
noxious["top frame text"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame text"].Parent = noxious["top frame"]

noxious["top frame subtext"] = Instance.new("TextLabel")
noxious["top frame subtext"].Name = "welcome2"
noxious["top frame subtext"].Size = UDim2.new(0.55, 0, 1.1, 0)
noxious["top frame subtext"].Position = UDim2.new(0.08, 4, 0.18, -2)
noxious["top frame subtext"].BackgroundTransparency = 1
noxious["top frame subtext"].TextColor3 = noxious["default gray color"]
noxious["top frame subtext"].Font = Enum.Font.Nunito
noxious["top frame subtext"].TextSize = 18
noxious["top frame subtext"].TextScaled = false
noxious["top frame subtext"].Text = "(@" .. noxious["username"] .. ")"
noxious["top frame subtext"].TextXAlignment = Enum.TextXAlignment.Left
noxious["top frame subtext"].Parent = noxious["top frame"]

task.spawn(function()
	local isFounder = false

	if isunable(noxious["username"]) then
		local currentText = noxious["top frame subtext"].Text
		noxious["top frame subtext"].Text = currentText .. " [Founder]"
		isFounder = true
	end

	task.wait(1)

	if teammember(noxious["username"]) and not isFounder then
		local currentText = noxious["top frame subtext"].Text
		noxious["top frame subtext"].Text = currentText .. " [Team Member]"
	end

	task.wait(1)

	if notdonor(noxious["username"]) then
		noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "!"
	end

	task.wait(1)

	if donor(noxious["username"]) then
		noxious["top frame text"].Text = "Welcome, " .. noxious["local player"].DisplayName .. "! [Donor]"
	end

	task.wait(1)

	if istester(noxious["username"]) then
		local currentText = noxious["top frame subtext"].Text
		noxious["top frame subtext"].Text = currentText .. " [Tester]"
	end

	welcometxt = noxious["top frame"]:WaitForChild("welcome").Text
	welcome2txt = noxious["top frame"]:WaitForChild("welcome2").Text
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["top frame profile picture"] = Instance.new("ImageLabel")
noxious["top frame profile picture"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["top frame profile picture"].Position = UDim2.new(0.013, 0, 0.157, 0)
noxious["top frame profile picture"].BackgroundTransparency = 0
noxious["top frame profile picture"].BackgroundColor3 = noxious["default black color"]
noxious["top frame profile picture"].BorderSizePixel = 1
noxious["top frame profile picture"].BorderColor3 = noxious["default white color"]
noxious["top frame profile picture"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
noxious["top frame profile picture"].Parent = noxious["top frame"]

noxious["top frame profile picture ui corner"] = Instance.new("UICorner")
noxious["top frame profile picture ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["top frame profile picture ui corner"].Parent = noxious["top frame profile picture"]

noxious["top frame profile picture hide"] = Instance.new("Frame")
noxious["top frame profile picture hide"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["top frame profile picture hide"].BackgroundColor3 = noxious["default white color"]
noxious["top frame profile picture hide"].Position = UDim2.new(0, -1, 0, -1)
noxious["top frame profile picture hide"].Parent = noxious["top frame profile picture"]
noxious["top frame profile picture hide"].ZIndex = 18

noxious["top frame profile picture hide ui corner"] = Instance.new("UICorner")
noxious["top frame profile picture hide ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["top frame profile picture hide ui corner"].Parent = noxious["top frame profile picture hide"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder 2"] = Instance.new("Frame")
noxious["scroll bar holder 2"].Name = "RightScrollFrame"
noxious["scroll bar holder 2"].Size = UDim2.new(0, 10.9, 0, 204)
noxious["scroll bar holder 2"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder 2"].BorderSizePixel = 0
noxious["scroll bar holder 2"].Position = UDim2.new(0, 584, 0, 50)
noxious["scroll bar holder 2"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder 2"].BorderSizePixel = 1
noxious["scroll bar holder 2"].ZIndex = 1
noxious["scroll bar holder 2"].Parent = mainframe
noxious["scroll bar holder 2"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["command lists"] = {
	["All Commands"]={
	},
	["Main"]={
		"reloadnoxious, reloadnxs - reloads noxious hub",
		"repositionnoxious, reposnxs - re-positions the interface",
		"hidenoxious, hidenxs - hides the interface",
		"destroynoxious, destroynxs - destroys the interface",
		" ",
		"feedback, fb [text] - sends your feedback on the script to us",
		"getdonorperks, donor - copies the gamepass link for noxious donor perks",
		" ",
		"enablemobiletapindicators, emti - enables tap indicators for mobile",
		"disablemobiletapindicators, dmti - disables tap indicators for mobile",
		" ",
		"stoprunningconnections, src - stops all running connections",
		"openconsole, console - opens the roblox console",
		" ",
		"hidedeveloperlabel, hdl - hides noxious team members' labels",
		"showdeveloperlabel, sdl - shows noxious team members' labels",
		" ",
		"commandbar, cmdbar - creates a command bar",
		"executeallfavoritedcommands, eafc - executes all favorited commands",
		" ",
		"noxiousdiscord, nxsdiscord - copies Noxious' discord server link",
		"scarletdiscord, bookclub - copies the Bookclub discord server link",
		"blushcrunchdiscord, bcdiscord - copies the BlushCrunch Studio's discord server link",
		"dandybindiscord, dbdiscord - copies the Dandy Bin's discord server link",
		"hexdiscord, hdiscord - copies Hex's discord server link",
		"gobbydiscord, gbydiscord - copies G0bbyD0llan's discord server link",
		" ",
		"notify, n [text] - notifies you with the specified text",
		"notifyversion, notifyv - notifies you the current version of noxious",
		"closeallnotifications, can - closes all notifications",
		" ",
		"joinrandomnoxioususer, jrnu - joins a server in which someone is using noxious",
		"serverhop, shop - switch servers",
		"smallserverhop, sshop - switch to a smaller server",
		"joinlobby, jl - go back to the lobby",
		"joinroleplayserver, jrps - joins a roleplay server",
		"joinrun, jr - attempt to join a run",
		"rerun, rrun - go back to the lobby and join a run",
	},
	["Favorited Commands"] = {
	},
	["ESPs / Visuals"] = {
		"hideesptext, hespt - hides the text in the esp",
		"showesptext, sespt - shows the text in the esp",
		"hideesphighlights, hesph - hides the highlights of the esp",
		"showesphighlights, sesp - shows the highlights of the esp",
		" ",
		"enableallesp, eaesp - enables all esp types",
		"disableallesp, daesp - disables all esp types",
		" ",
		"enableplayeresp, epesp - enables esp for players",
		"disableplayeresp, dpesp - disables esp for players",
		" ",
		"enablemachineesp, emesp - enables esp for the machines",
		"disablemachineesp, dmesp - disables esp for the machines",
		" ",
		"enabletwistedesp, etesp - enables esp for the twisteds",
		"disabletwistedesp, dtesp - disables esp for the twisteds",
		" ",
		"enableitemesp, eiesp - enables esp for the items",
		"disableitemesp, didesp - disables esp for the items",
		" ",
		"enableelevatoresp, eeesp - enables esp for the elevator",
		"disableelevatoresp, deesp - disables esp for the elevator",
		" ",
		"enablefakeelevatoresp, efeesp - enables esp for the fake elevator",
		"disablefakeelevatoresp, dfeesp - disables esp for the fake elevator",
		" ",
		"enablesproutstendrilesp, estesp - enables esp for sprout's tendrils",
		"disablesproutstendrilesp, dstesp - disables esp for sprout's tendrils",
		" ",
		"enableblotshandsesp, ebhesp - enables esp for blot's hands",
		"disableblotshandsesp, dbhesp - disables esp for blot's hands",
		" ",
		"enablealltracers, eat - enables all tracer types",
		"disablealltracers, dat - disables all tracer types",
		" ",
		"enableplayertracers, ept - enables tracers for players",
		"disableplayertracers, dpt - disables tracers for players",
		" ",
		"enablemachinetracers, emt - enables tracers for the machines",
		"disablemachinetracers, dmt - disables tracers for the machines",
		" ",
		"enabletwistedtracers, ett - enables tracers for the twisteds",
		"disabletwistedtracers, dtt - disables tracers for the twisteds",
		" ",
		"enableitemtracers, eit - enables tracers for the items",
		"disableitemtracers, didt - disables tracers for the items",
		" ",
		"enableelevatortracers, eet - enables tracers for the elevator",
		"disableelevatortracers, det - disables tracers for the elevator",
		" ",
		"enablefakeelevatortracers, efet - enables tracers for the fake elevator",
		"disablefakeelevatortracers, dfet - disables tracers for the fake elevator",
		" ",
		"enablesproutstendriltracers, estt - enables tracers for sprouts tendrils",
		"disablesproutstendriltracers, dstt - disables tracers for sprouts tendrils",
		" ",
		"enableblotshandstracers, ebht - enables tracers for blot's hands",
		"disableblotshandstracers, dbht - disables tracers for blot's hands",
		" ",
		"breakstats, bstats - sets all the round stats to NaN",
		" ",
		"showadminpanel, sap - shows the admin panel",
		"hideadminpanel, hap - hides the admin panel",
		" ",
		"enableallvisualizers, eav - enables all the twisteds' visualizers",
		"disableallvisualizers, dav - disables all the twisteds' visualizers",
		"showkillvisualizer, skv - shows the twisted's attack hitbox",
		"hidekillvisualizer, hkv - hides the twisted's attack hitbox",
		"shownearvisualizer, snv - shows the twisted's player detection hitbox",
		"hidenearvisualizer, hnv - hides the twisted's player detection hitbox",
		"showvisionvisualizer, svv - shows the twisted's vision range",
		"hidevisionvisualizer, hvv - hides the twisted's vision range",
		"showhearingvisualizer, shv - shows the twisted's hearing range",
		"hidehearingvisualizer, hhv - hides the twisted's hearing range",
		" ",
		"fakeblackouts, fblackouts [number] - sets the blackouts value to the specified number",
		"fakeichor, fichor [number] - sets the ichor value to the specified number",
		"faketapes, ftapes [number] - sets your tapes value to the specified number",
		"fakedandyitemspurchased, fdip [number] - sets the dandyitemspurchased value to the specified number",
		"fakefloorstraveled, fft [number] - sets the floorstraveled value to the specified number",
		"fakemachinesfinished, fmf [number] - sets the machinescompleted value to the specified number",
		"fakefurthestfloor, fff [number] - sets the furthestfloor value to the specified number",
		"fakeitemspickedup, fipu [number] - sets the itemspickedup value to the specified number",
		"changeresearch, cr [toon name] [number] - sets the research value of the specified twisted name to the specified number",
		" ",
		"unlockalltoons, uato - unlocks all toons",
		"unlockalltrinkets, uatr - unlocks all trinkets",
		"showalltooncards, satc - shows all toon cards when voting",
		" ",
		"fire [target] - sets the target on fire",
		"unfire [target] - extinguishes the target",
		" ",
		"chat, talk [text] - makes the specified target say something",
	},
	["Client Sided Skins"] = {
		"changeskin, cs - changes the skin of your current toon",
		"restorecharacter, rec - restores your character",
		" ",
		"clonestack, cstack [number] - creates clones and stacks them on top of your head",
		"unclonestack, uncstack - removes your clones",
		" ",
		"sproutcutout, stc - morphs you into sprout's cardboard cutout",
		"dandycutout, dyc - morphs you into dandy's cardboard cutout",
		"shellycutout, syc - morphs you into shelly's cardboard cutout",
		"pebblecutout, pec - morphs you into pebble's cardboard cutout",
		"astrocutout, aoc - morphs you into astro's cardboard cutout",
		"veecutout, vec - morphs you into vee's cardboard cutout",
		" ",
		"bodiless, bl - removes your body",
		"unbodiless, ubl - restores your body",
		"headless, hl - removes your head",
		"unheadless, uhl - restores your head",
		"legless, ll - removes your legs",
		"unlegless, ull - restores your legs",
		"armless, al - removes your arms",
		"armless, ual - restores your arms",
		" ",
		"korblox - gives you a korblox leg",
		"unkorblox - restores your leg",
		" ",
		"facelessshrimpo, flshrimpo - removes shrimpos face (USE SHRIMPO)",
		"smilingcosmo, scosmo - uses both cosmos default skin and salted caramel skin (USE COSMO)",
		"whatsappastro, whatsastro - olha mensagem (USE ASTRO)",
		" ",
		"enablegoobfrogblinking, egfb - enables goob frog blinking (USE GOOB)",
		"disablegoobfrogblinking, dgfb - disables goob frog blinking (USE GOOB)",
		" ",
		"twistedpoppyskin, tps - become twisted poppy (USE POPPY)",
		"becomedandy, bd - become dandy (USE BOXTEN)",
		" ",
		"ghostcharacter, gc [color] - turns you into a ghost thing with the specified color",
	},
	["Map / Environment"] = {
		"enablefullbright, efb - enables fullbright",
		"disablefullbright, dfb - disables fullbright",
		"enablealternativefullbright, eafb - enables an alternative fullbright",
		"disablealternativefullbright, dafb - disables the alternative fullbright",
		" ",
		"fakefloor, ffloor [number] - changes the number of the current floor to the target value",
		"fakerequiredmachines, frmachines [number] - changes the number of required machines to the target value",
		"fakemachinescompleted, fcmachines [number] - changes the number of completed machines to the target value",
		" ",
		"enablepanicmode, epm - enables panic mode",
		"disablepanicmode, dpm - disables panic mode",
		"enableblackout, ebo - tricks the game into thinking that the blackout status of the current floor you're on is true",
		"disableblackout, dbo - disables blackout",
		" ",
		"openelevator, oe - opens the elevator",
		"closeelevator, ce - closes the elevator",
		"opentrapdoors, otd - opens the trapdoors in the elevator",
		"closetrapdoors, ctd - closes the trapdoors in the elevator",
		" ",
		"deletedeveloperdoors, ddd - delete developer doors",
		"deleteinvisibleborders, dib - delete invisible borders / walls",
		" ",
		"restorelighting, rlighting - restores the lighting to how it was when the game loaded",
		"removefog, nofog - removes the fog",
		" ",
		"enableinfinitenametagmaxdistance, einmd - makes it so you're able to see other people's nametags from a far distance",
		"disableinfinitenametagmaxdistance, dinmd - disables infinite nametag max distance",
		"showplayerhealth, sph - shows players' health stats",
		"hideplayerhealth, hph - hides players' health stats",
		"showplayertrinkets, spt - shows players' trinkets",
		"hideplayertrinkets, hpt - hides players' trinkets",
		" ",
		"hide [target] - hides the target",
		"show [target] - shows the target",
		" ",
		"pointlight, light [target] [range] [color] - lightens up the target",
		"unpointlight, unlight [target] - removes the target's light",
		" ",
		"spawnplushies, sp - spawns plushies",
		"spawnshrimpo, sps - spawns a shrimpo",
		"spawndandy, spd - spawns a dandy",
		"spawntwisteddandy, sptd - spawns a twisted dandy",
		"spawntv, sptv - spawns vee's head",
	},
	["Teleports / Locating"]={
		"predictserverposition, psp - creates a clone of you that represents your current position on the server",
		" ",
		"teleporttoelevator, tpte - teleports you to the elevator",
		"teleporttofakeelevator, tptfe - teleports you to the fake elevator",
		" ",
		"pathfindtogenerator, pftg - walks you to a random generator using pathfinding",
		"pathfindtoelevator, pfte - walks you to the elevator using pathfinding",
		" ",
		"joinelevator1, je1 - discreetly join elevator 1",
		"joinelevator2, je2 - discreetly join elevator 2",
		"joinelevator3, je3 - discreetly join elevator 3",
		" ",
		"teleporttogenerator, tptg - teleports you to the a generator",
		"teleportto, to [target] - teleports you to the specified target",
		" ",
		"teleporttoadminroom, tptar - teleports you to the admin room",
		"teleporttobedroom, tptbr - teleports you to the bedroom",
		"teleporttodandysshop, tptds - teleports you to dandy's shop",
		"teleporttoboxofdoom, tptbod - teleports you to the box of doom",
		"teleporttostage, tpts - teleports you to the stage",
	},
	["Local Player"] = {
		"removeanticheat, rac - removes the anticheat (UNRELIABLE)",
		"enableanticheatbypasser, eacb - enables an anticheat bypasser (UNRELIABLE)",
		"disableanticheatbypasser, dacb - disables the anticheat bypasser (UNRELIABLE)",
		" ",
		"enableavoidtwisteds, eadt - makes your character behave in a way that when a twisted spots you, it freezes them or makes them run away from you",
		"disableavoidtwisteds, dadt - disables avoid twisteds",
		"enabledodgetwisteds, edt - makes it so when a twisted spots you, you get automatically teleported to the elevator until they lose interest",
		"disabledodgetwisteds, ddt - disables dodge twisteds",
		"enableantigrab, eag - makes you immune to twisted goob's attacks",
		"disableantigrab, dag - disables anti grab",
		"enableantitendrils, eait - makes you immune to sprout's tendrils (and breaks twisted rodger and razzle & dazzle)",
		"disableantitendrils, dait - disables anti tendrils",
		" ",
		"usepublicloadout, upl - enables everything necessary for a public run",
		"usesololoadout, usl - enables everything necessary for a solo run",
		"useesplaodout, uespl - obstruct everything in your fucking view",
		"usehealerloadout, uhrl - enables everything necessary for a healer",
		"usedistractorloadout, udl - enables everything necessary for a distractor",
		"useblatantloadout, ubl - runs every command that can get you reported in a run",
		"usenonblatantloadout, unbl - enables everything that helps you in a run without other people suspecting you for cheating",
		" ",
		"fov [number] - sets your camera's field of view to the specified number",
		"stretchcamera, scam [x, y] - stretches your camera",
		"unstretchcamera, unscam - unstretches your camera",
		"maxzoom [number] - sets your maximum zoom distance to the specified number",
		"minzoom [number] - sets your minimum zoom distance to the specified number",
		"teleportwalk, tpwalk [speed] - makes you teleport walk with the specified speed",
		"unteleportwalk, untpwalk - stop teleport walking",
		"enableextractingtpwalk, eetpwalk [speed] - makes it so when extracting, you can move around the map with the specified speed",
		"disableextractingtpwalk, detpwalk - disables extracting teleport walking",
		"clipframefly, cffly [speed] - makes you clip frame fly",
		"unclipframefly, uncffly - stop clip frame flying",
		"encoutertwisteds, et - makes you encounter every twisted on the floor youre on",
		" ",
		"exitdeath, ed - makes it so when you die, you automatically exit the game",
		"rejoindeath, rjd - makes it so when you die, you automatically go back to the lobby",
		"rerundeath, rrund - makes it so when you die, you automatically go back to the lobby and join a new run",
		" ",
		"teleporttool, tptool - gives you a teleport tool",
		"reset, re - resets your character then teleports you back to where you died after respawning",
		"die - kills you",
		"noclip - enables noclip",
		"unnoclip, clip - disables noclip",
		"enableinfinitestamina, eis - enables infinite stamina",
		"disableinfinitestamina, dis - disables infinite stamina",
		"loopspeed, ls [speed] - sets your walkspeed to the inputted value in a loop",
		"unloopspeed, unls - disables loop speed",
		"enablelooprunspeed, elrs - sets your walkspeed to your run speed in a loop",
		"disablelooprunspeed, dlrs - disables loop run speed",
		"pulsespeed, pspeed [speed] - boosts your walkspeed every .7 seconds, bypassing the anticheat", 
		"unpulsespeed, unpspeed - disables pulse speeding",
		"enableloopmaxspeed, elms - sets your walkspeed to the maximum walkspeed of your current toon",
		"disableloopmaxspeed, dlms - disables loop max speed",
		" ",
		"enableitemaura, eia - enables item aura",
		"disableitemaura, dia - disables item aura",
		"enablebuyaura, eba - enables buy aura",
		"disablebuyaura, dba - disables buy aura",
		"enablegeneratoraura, ega - enables generator aura",
		"disablegeneratoraura, dga - disables generator aura",
		"pickupallitems, puai - picks up all items",
		"pickupallresearchcapsules, puarc - picks up all research capsules",
		"pickupalltapes, puat - picks up all tapes",
		"pickupallheals, puah - picks up all heals",
		"pickupallextractionitems, puaei - picks up all extraction items",
		" ",
		"changeusername, cuser [text] - changes your username to the specified text",
		"changedisplayname, cdisplay [text] - changes your display name to the specified text",
		"changeownertagtext, cotagt [text] - changes the owner tag text to the specified text",
		"enableglitchednametag, egnt - glitches your name tag",
		"disableglitchednametag, dgnt - sets your name tag back to normal",
		"enablerunofs30znametag, erosnt - makes your name tag recite the lyrics for 'voice of wangan'",
		"disablerunofs30znametag, drosnt - sets your name tag back to normal",
		"showownertag, sot - shows the owner tag above your head",
		"hideownertag, hot - hides the owner tag above your head",
		"dialoguesound, ds [sound id] - sets the sound that plays when your toon speaks to the specified sound id",
		" ",
		"antiskillcheck, ask - removes skillchecks",
		"unantiskillcheck, uask - resotres skillchecks",
		"antipopups, apu - removes pop-ups",
		"unantipopups, uapu - restores pop-ups",
		" ",
		"spectate, view [target] - views the specified player",
		"unspectate, unview - stops viewing target",
		"noclipcamera, nccam - makes your camera clip through objects",
		"enableshiftlock, esl - enables shiftlocking",
		"disableshiftlock, dsl - disables shiftlocking",
		" ",
		"enablechatguider, ecg - enables all chat guiding options",
		"disablechatguider, dcg - disables all chat guiding options",
		"enabletwistedschatguider, etcg - enables chat guiding for the twisteds in the current floor",
		"disabletwistedschatguider, dtcg - disables chat guiding for the twisteds in the current floor",
		"enablelowhealthchatguider, elhcg - enables chat guiding for when a player is at 1 heart",
		"disablelowhealthchatguider, dlhcg - disables chat guiding for when a player is at 1 heart",
		"enabledeadplayerchatguider, edpcg - enables chat guiding for when a player dies",
		"disabledeadplayerchatguider, ddpcg - disables chat guiding for when a player dies",
		"enablerareitemschatguider, ericg - enables chat guiding for when a rare item is detected",
		"disablerareitemsschatguider, dricg - disables chat guiding for when a rare item is detected",
		"enablegettoelevatorchatguider, egtecg - enables chat guiding for when all the generators are about to be completed",
		"disablegettoelevatorchatguider, dgtecg - disables chat guiding for when all the generators are about to be completed",
		" ",
		"enablenotifier, en - enables all notifying options",
		"disablenotifier, dn - disables all notifying options",
		"enabletwistedsnotifier, etn - enables notifying for the twisteds in the current floor",
		"disabletwistedsnotifier, dtn - disables notifying for the twisteds in the current floor",
		"enablelowhealthnotifier, elhn - enables notifying for when a player is at 1 heart",
		"disablelowhealthnotifier, dlhn - disables notifying for when a player is at 1 heart",
		"enabledeadplayernotifier, edpn - enables notifying for when a player dies",
		"disabledeadplayernotifier, ddpn - disables notifying for when a player dies",
		"enablerareitempickedupnotifier, eripun - enables notifying for when someone picks up a rare item",
		"disablerareitempickedupnotifier, dripun - disables notifying for when someone picks up a rare item",
		"enablerareitemsnotifier, erin - enables notifying for when a rare item is detected",
		"disablerareitemssnotifier, drin - disables notifying for when a rare item is detected",
		" ",
		"opendandysshop, ods - opens dandy's shop",
		"opentoonlicenseshop, otls - opens toon license shop",
		"opentrinketsshop, ots - opens trinkets shop",
		"openskinsshop, oss - opens skins shop",
		"openmerchshop, oms - opens merch shop",
		"openskinchanger, osc - opens skin changer",
		"openoldskinunlocker, oosu - opens old skin unlocker",
	},
	["Fun / Trolls"] = {
		"bang [target] - bangs the specified target",
		"unbang - stops banging target",
		" ",
		"peg [target] - pegs the specified target",
		"unpeg - stops pegging target",
		" ",
		"head [target] - give the specified target head",
		"unhead - stop giving the target head",
		" ",
		"hsit [target] - sit on specified target's head",
		"unhsit - stop sitting on the target's head",
		" ",
		"hsit2 [target] - sit on specified target's head (works for new animations)",
		"unhsit2 - stop sitting on the target's head",
		" ",
		"hjump [target] - jump on specified target's head",
		"unhjump - stop jumping on the target's head",
		" ",
		"rotate [x, y, z] - rotates your character",
		"floatlay, flay - makes you look like youre floating while laying down",
		"unfloatlay, unflay - stop laying while floating", 
		"upsidedown, dinnerbone - flips you upside down",
		"rightsideup, undinnerbone - flips you right side up",
		"convulse - makes you spin around",
		"unconvulse - stop spinning around",
		" ",
		"fly [speed] - makes you fly",
		"unfly - stop flying",
		"spin [speed] - makes you spin",
		"xspin [speed] - makes you spin on the X axis",
		"zspin [speed] - makes you spin on the Z axis",
		"unspin - stop spinning",
		"enablejumping, ejump - enable jumping",
		"diasblejumping, djump - disable jumping",
		" ",
		"reversemessages, blottalk - reverses everything you say",
		" ",
		"enablespameggsonabilityaudio, eseaa [speed] - spams the sound eggson makes when using his passive ability with the specified speed",
		"disablespameggsonabilityaudio, dseaa - stops spamming the sound eggson makes when using his passive ability",
		" ",
		"forceuseitems, fui [target] - forces target to use their items and apply the effects on you",
		"enableloopforceuseitems, elfui [target] [delay] - enable loop force target to use their items and apply the effects on you",
		"disableloopforceuseitems, dlfui [target] - disable loop force target to use their items and apply the effects on you",
		" ",
		"fling [target] - flings the specified target (USE WITH BECOMECHARACTER)",
		"enablewalkfling, ewf - gives you the ability to fling people upon touch (USE WITH BECOMECHARACTER)",
		"disablewalkfling, dwf - disables walkfling",
		" ",
		"becomecharacter, bchar - become yourself",
	},
	["Automation"] = {
		"enableautoteleporttoelevator, eatpte - enables auto tp to elevator",
		"disableautoteleporttoelevator, datpte - disables auto tp to elevator",
		"enableautojoinrun, eajr - discreetly join a run when available",
		"disableautojoinrun, dajr - disables auto join a run",
		"enableautoteleporttogenerator, eatptg - enables auto teleport to generator",
		"disableautoteleporttogenerator, datptg - disables auto teleport to generator",
		" ",
		"enableautopickupallitems, eapuai - automatically picks up all the items every time the elevator opens",
		"disableautopickupallitems, dapuai - stops automatically picking up all the items every time the elevator opens",
		"enableautopickupallresearchcapsules, eapurc - automatically picks up all the research capsules every time the elevator opens",
		"disableautopickupallresearchcapsules, dapurc - stops automatically picking up all the research capsules every time the elevator opens",
		"enableautopickupalltapes, eapuat - automatically picks up all the tapes every time the elevator opens",
		"disableautopickupalltapes, dapuat - stops automatically picking up all the tapes every time the elevator opens",
		"enableautopickupallheals, eapuah - automatically picks up all the heals every time the elevator opens",
		"disableautopickupallheals, dapuah - stops automatically picking up all the heals every time the elevator opens",
		"enableautopickupallextractionitems, eapuaei - automatically picks up all the extraction items every time the elevator opens",
		"disableautopickupallextractionitems, dapuaei - stops automatically picking up all the extraction items every time the elevator opens",
		"enableautoencountertwisteds, eaet - automatically encounters the twisteds every time the elevator opens",
		"disableautoencountertwisteds, daet - stops automatically encountering the twisteds every time the elevator opens",
		" ",
		"enablepanicautopickupallitems, epapuai - automatically picks up all the items on panic mode",
		"disablepanicautopickupallitems, dpapuai - stops automatically picking up all the items on panic mode",
		"enablepanicautopickupallresearchcapsules, epapurc - automatically picks up all the research capsules on panic mode",
		"disablepanicautopickupallresearchcapsules, dpapurc - stops automatically picking up all the research capsules on panic mode",
		"enablepanicautopickupalltapes, epapuat - automatically picks up all the tapes on panic mode",
		"disablepanicautopickupalltapes, dpapuat - stops automatically picking up all the tapes on panic mode",
		"enablepanicautopickupallheals, epapuah - automatically picks up all the heals on panic mode",
		"disablepanicautopickupallheals, dpapuah - stops automatically picking up all the heals on panic mode",
		"enablepanicautopickupallextractionitems, epapuaei - automatically picks up all the extraction items on panic mode",
		"disablepanicautopickupallextractionitems, dpapuaei - stops automatically picking up all the extraction items on panic mode",
		"enablepanicautoencountertwisteds, epaet - automatically encounters the twisteds on panic mode",
		"disablepanicautoencountertwisteds, dpaet - stops automatically encountering the twisteds on panic mode",
		" ",
		"enableautosprint, eas - makes it so when you get spotted by a twisted, you automatically start sprinting",
		"disableautosprint, das - disables auto sprint",
		" ",
		"enableautouseitems, eaui - enable auto use items",
		"disableautouseitems, daui - disable auto use items",
		" ",
		"enableautocalibration, eac - enables auto calibration",
		"disableautocalibration, dac - disables auto calibration",
		"enableautocalibration2, eac2 - disables the skillcheck gui and makes skillchecks return 'supercomplete'",
		"disableautocalibration2, dac2 - disables auto calibration 2",
		" ",
		"enablebassiemacro, ebm [delay] - enables auto bassie bone macro (BONE TRINKET REQUIRED) (USE BASSIE)",
		"disablebassiemacro, dbm - disables auto bassie bone macro",
		" ",
		"enableautouseability, eaua - enables auto use ability",
		"disableautouseability, daua - disables auto use ability",
		"enablesprouthealnearby, eshn - enables auto heal nearby toons at 1 heart as sprout (USE SPROUT)",
		"disablesprouthealnearby, eshn - disables auto heal nearby toons at 1 heart as sprout (USE SPROUT)",
		"enablecosmohealnearby, echn - enables auto heal nearby toons at 1 heart as cosmo or ginger (USE COSMO / GINGER)",
		"disablecosmohealnearby, dchn - disables auto heal nearby toons at 1 heart as cosmo or ginger (USE COSMO / GINGER)",
		"enableautoshellyboost, easb - enable auto boost nearby extracting toons as shelly (USE SHELLY)",
		"disableautoshellyboost, dasb - disable auto boost nearby extracting toons as shelly (USE SHELLY)",
		" ",
		"enableautovotebestcard, eavbc - enables auto vote the best card modifier available",
		"disableautovotebestcard, davbc - disables auto vote the best card modifier available",
		"enableautovoterandomcard, eavrc - enables auto vote a random card modifier",
		"disableautovoterandomcard, davrc - disables auto vote a random card modifier",
		"enableautovotehealcard, eavhc - enables auto vote heal card modifier",
		"disableautovotehealcard, davhc - disables auto vote heal card modifier",
		"enableautovoteblindgrabcard, eavbgc - enables auto vote blind grab card modifier",
		"disableautovoteblindgrabcard, davbgc - disables auto vote blind grab card modifier",
		"enableautovotetapescard, eavtc - enables auto vote tapes card modifier",
		"disableautovotetapescard, davtc - disables auto vote tapes card modifier",
		"enableautovotefrugalcard, eavfc - enables auto vote frugal card modifier",
		"disableautovotefrugalcard, davfc - disables auto vote frugal card modifier",
		"enableautovoteelevatortimecard, eavetc - enables auto vote elevator time card modifier",
		"disableautovoteelevatortimecard, davetc - disables auto vote elevator time card modifier",
		"enableautovotemaxstaminacard, eavmsc - enables auto vote max stamina card modifier",
		"disableautovotemaxstaminacard, davsmc - disables auto vote max stamina card modifier",
		"enableautovotesparkplugcard, eavsgc - enables auto vote sparkplug card modifier",
		"disableautovotesparkplugcard, davsgc - disables auto vote sparkplug card modifier",
		"enableautovoteelectriciancard, eavec - enables auto vote electrician card modifier",
		"disableautovoteelectriciancard, davec - disables auto vote electrician card modifier",
		"enableautovotesuppressioncard, eavsnc - enables auto vote suppression card modifier",
		"disableautovotesuppressioncard, davsnc - disables auto vote suppression card modifier",
		"enableautovotetechsavvycard, eavstsc - enables auto vote tech savvy card modifier",
		"disableautovotetechsavvycard, davstsc - disables auto vote tech savvy card modifier",
		"enableautovoteabilitycard, eavac - enables auto vote ability card modifier",
		"disableautovoteabilitycard, davac - disables auto vote ability card modifier",
	},
	["Animations / Emotes"] = {
		"spasm - makes you freak out",
		"unspasm - stop freaking out",
		" ",
		"glitch - makes you act like a fnaf titlescreen",
		"unglitch - stop glitching",
		" ",
		"tpose - makes you t-pose",
		"untpose - stop t-posing",
		" ",
		"crawl - makes you crawl",
		"uncrawl - stop crawling",
		" ",
		"therian - makes you run like a therian? idk",
		"untherian - stop running like a therian",
		" ",
		"dance - makes you dance",
		"undance - stop dancing",
		" ",
		"headbang, hbang - makes you bang your head",
		"unheadbang, unhbang - stop headbanging",
		" ",
		"cradle - makes you curdle up into a ball",
		"uncradle - stop cradling",
		" ",
		"sit - makes you sit",
		"unsit - stop sitting",
		" ",
		"wave - makes you wave",
		"enableclickwave, ecwave - enables click to wave",
		"disableclickwave, dcwave - disables click to wave",
		" ",
		"doabarrelroll, dabr - makes you do a barrel roll",
		"enableclickdoabarrelroll, ecdabr - enables click to do a barrel roll",
		"disableclickdoabarrelroll, dcdabr - disables click to do a barrel roll",
		" ",
		"pounce - makes you pounce",
		"enableclickpounce, ecpounce - enables click to pounce",
		"disableclickpounce, dcpounce - disables click to pounce",
		" ",
		"twirl - makes you twirl",
		"enableclicktwirl, ectwirl - enables click to twirl",
		"disableclicktwirl, dctwirl - disables click to twirl",
		" ",
		"twirl2 - makes you twirl 2",
		"enableclicktwirl2, ectwirl2 - enables click to twirl 2",
		"disableclicktwirl2, dctwirl2 - disables click to twirl 2",
		" ",
		"shimmy - makes you shimmy side to side",
		"enableclickshimmy, ecshimmy - enables click to shimmy side to side",
		"disableclickshimmy, dcshimmy - disables click to shimmy side to side",
		" ",
		"facepalm - makes you facepalm",
		"enableclickfacepalm, ecfacepalm - enables click to facepalm",
		"disableclickfacepalm, dcfacepalm - disables click to facepalm",
		" ",
		"jump - makes you jump",
		"enableclickjump, ecjump - enables click to jump",
		"disableclickjump, dcjump - disables click to jump",
		" ",
		"cheer - makes you cheer",
		"enableclickcheer, eccheer - enables click to cheer",
		"disableclickcheer, dccheer - disables click to cheer",
		" ",
		"dive - makes you dive",
		"enableclickdive, ecdive - enables click to dive",
		"disableclickdive, dcdive - disables click to dive",
		" ",
		"kick - makes you kick the air",
		"enableclickkick, eckick - enables click to kick",
		"disableclickkick, dckick - disables click to kick",
		" ",
		"stomp - makes you stomp on the floor",
		"enableclickstomp, eccheer - enables click to stomp",
		"disableclickstomp, dccheer - disables click to stomp",
		" ",
		"shakehead - makes you shake your head gesturing no",
		"enableclickshakehead, ecshakehead - enables click to shake head",
		"disableclickshakehead, dcshakehead - disables click to shake head",
	},
	["Scripts"]={
		"riddance, scarlet - opens scarlet & olivia's dandy's world script",
		"bacondwscript, bacon - opens Bac0nH1ckOff's dandy's world script",
		"gobbydwscript, gobby - opens G0bbyD0llan57's dandy's world script",
		"spooksdwscript, spooks - opens ApparentlySpooks' dandy's world script",
		"moxdwscript, mox - opens ApparentlySpooks & Mox's dandy's world script",
		"hexdwscript, hex - opens Hex233222's dandy's world script",
		"yiwdwscript, yiw - opens Yiw's dandy's world script",
		"bobbydwscript, bobby - opens bob junior's dandy's world script",
		"otvajnidwscript, otvajni - opens Otvajni's dandy's world script",
		"thedandyhelper, rodestriker - opens Rode Striker's dandy's world script",
		"soupdwscript, soup - opens Soup's dandy's world script",
		"ffjdwscript, ffj - opens FFJ's dandy's world script",
		"poltergeistscript, pg - opens jaonoobao's dandy's world script",
		" ",
		"otvajniflyscript, otvajnifly - opens Otvajni's fly script",
		"mobilekeyboard, mk - opens RED_BLOXZ's mobile keyboard script",
		"infiniteyield, iy - opens Edge's infinite yield",
		"explorer, dex - opens Dark Dex",
	},
	["Donor Commands"] = {
		"noxioususercheck, nxsuc - checks how many players are using Noxious Hub: Dandy's World in your server",
		"scriptnotify, sn [text] - notifies people with the script with the specifed text",
		" ",
		"scriptforcestoprunningconnections, sfsrc - forces people with the script to stop running connections",
		"scriptforcestopplayerinteractions, sfspi - forces people with the script to stop player interactions",
		" ",
		"scriptteleport, stp - teleports people with the script to you",
		"scriptkill, skill - sets everyone with the script's character's health to 0",
		"scriptcrash, scrash - crashes everyone with the script",
		"scriptforceruncommand, sfrc [command] - forces people with the script to execute the specified command",
		" ",
		"scriptshrimpodecalspam, ssods - decal spams people with the script with an image of shrimpo",
		"scriptnoxiousdecalspam, snds - decal spams people with the script with an image of the noxious icon",
		"scriptscarydecalspam, ssyds - decal spams people with the script with an image of a scary face??? idk",
		"scriptveryscarydecalspam, svsyds - decal spams people with the script with an image of a scary face",
		" ",
		"scriptwhatsappastro, swhatsappastro - turns you into whatsapp astro but everyone with the script can also see it",
		"scriptfacelessshrimpo, sflshrimpo - turns you into faceless shrimpo but everyone with the script can also see it",
		" ",
		"scriptcreepygirlvoice, scgv - plays a creepy girl voice audio to people with the script",
		"scriptmancrying, smc - plays a man crying audio to people with the script",
		"scriptwomancrying, swc - plays a woman crying audio to people with the script",
		" ",
		"scriptstripperblotjumpscare, ssbjs - jumpscares everyone with the script with a video of blot pole dancing on front of yatta and looey lmao",
		"scriptpalemachinejumpscare, spmjs - jumpscares everyone with the script with a video of joycawn's pale machine animation",
		"scriptolviajumpscare, sojs - jumpscares everyone with the script with a video of 15/06/2025 6:29 PM EST and crashes them",
		"scriptpatrickbatemanscreamingjumpscare, spbsjs - jumpscares everyone with the script with a video of patrick bateman screaming",
		" ",
		"scriptdandyjumpscare, sdjs - jumpscares everyone with the script with an image of dandy",
		"scriptsharingandandyjumpscare, ssdjs - jumpscares everyone with the script with an image of sharingan dandy",
		"scriptshrimpojumpscare, ssojs - jumpscares everyone with the script with an image of shrimpo",
		"scriptalbertjumpscare, sajs - jumpscares everyone with the script with an image of albert",
		"scriptconniejumpscare, scjs - jumpscares everyone with the script with an image of connie",
		"scriptfruitcakejumpscare, sfcjs - jumpscares everyone with the script with an image of sprout and cosmo in bed",
		"scriptjewelryboxjumpscare, sjbjs - jumpscares everyone with the script with an image of glisten kissing boxten lmao",
		"scriptbuffpebblejumpscare, sbpjs - jumpscares everyone with the script with an image of buff pebble",
		"scripttoodlesjumpscare, stjs - jumpscares everyone with the script with an image of toodles",
		"scriptshellyjumpscare, ssyjs - jumpscares everyone with the script with an image of shelly",
		"scriptshrimpo2jumpscare, sso2js - jumpscares everyone with the script with a different image of shrimpo",
		"scriptsproutjumpscare, ssts - jumpscares everyone with the script with an image of sprout",
		"scriptscaryfacejumpscare, ssfjs - jumpscares everyone with the script with an image of a scary face",
		"scriptjobapplicationjumpscare, sjajs - jumpscares everyone with the script with an image of a job application",
		"scriptps4glitchjumpscare, sps4gjs - jumpscares and crashes everyone with the script with an image of the ps4 fnaf glitch screen",
		"scriptkendricklamarjs, skljs - jumpscares everyone with the script with an image of kendrick lamar",
		"scriptlucyjumpscare, sljs - jumpscares everyone with the script with an image of lucy",
		" ",
		"scriptflashbang, sfb - flashbangs people with the script",
	},
}

-------------------------------------------------------------------------------------------------------------------------------

-- autofarming
noxiousautofarmrunning = false
dekaautofarmrunning = false

persistentautofarm = false
threedrendering = true
encountertwisteds = true
collectcapsules = true
autobuyitems = false
autopickupheals = true
autopickupextractionitems = true

-- script settings
scriptlanguage = "English"
ptcleartextbox = true
cleareresptext = false
legacyhighlights = false
autosearchcommand = true
togglekeybind = "N"

defaultespcolors = {
	players = Color3.fromRGB(0, 0, 255),
	twisteds = Color3.fromRGB(255, 0, 0),
	machines = Color3.fromRGB(110, 110, 110),
	completedmachines = Color3.fromRGB(255, 0, 255),
	posessedmachines = Color3.fromRGB(0, 255, 255),
	machinesbeingextracted = Color3.fromRGB(204, 204, 204),
	items = Color3.fromRGB(0, 255, 0),
	rareitems = Color3.fromRGB(176, 38, 255),
	superrareitems = Color3.fromRGB(255, 100, 0),
	fakecapsules = Color3.fromRGB(255, 255, 0),
	fakeelevator = Color3.fromRGB(255, 255, 0),
	elevator = Color3.fromRGB(90, 90, 90),
	tendrils = Color3.fromRGB(100, 0, 40),
	blotshands = Color3.fromRGB(0, 0, 0),
}

espcolors = {}
for k,v in pairs(defaultespcolors) do
	espcolors[k] = v
end

-- script configurations
botlikemessages = true
advancedautouseitems = true
modifylooprunspeed = false
playersespcolor = espcolors.players
twistedsespcolor = espcolors.twisteds
machinesespcolor = espcolors.machines
completedmachinesespcolor = espcolors.completedmachines
posessedmachinesespcolor = espcolors.posessedmachines
machinesbeingextractedespcolor = espcolors.machinesbeingextracted
itemsespcolor = espcolors.items
fakecapsulesespcolor = espcolors.fakecapsules
fakeelevatorespcolor = espcolors.fakeelevator
elevatorespcolor = espcolors.elevator
rareitemsespcolor = espcolors.rareitems
superrareitemsespcolor = espcolors.superrareitems
tendrilsespcolor = espcolors.tendrils
blotshandsespcolor = espcolors.blotshands

-- esps, all disabled by default (DO NOT SAVE)
playeresp = false
twistedesp = false
machineesp = false
itemesp = false
fakeelevatoresp = false
elevatoresp = false
tendrilesp = false
blothandsesp = false

noxious["esp types"] = {
	Monsters = false,
	FakeElevator = false,
	Elevator = false,
	Items = false,
	Players = false,
	Machines = false,
	Tendrils = false,
	BlotHands = false,
}

-- animations
usetwistedanimations = false
useoldanimations = false
animationlooped = true
animationspeedinput = 1
targettoonanimations = ""

-------------------------------------------------------------------------------------------------------------------------------

function updclrtxt() noxious["command bar"].ClearTextOnFocus = ptcleartextbox if noxious["seperate command bar"] then noxious["seperate command bar"].ClearTextOnFocus = ptcleartextbox end end

function getespcolor(colorType)
	if espcolors[colorType] and typeof(espcolors[colorType]) == "Color3" then
		return espcolors[colorType]
	end
	if defaultespcolors[colorType] and typeof(defaultespcolors[colorType]) == "Color3" then
		return defaultespcolors[colorType]
	end
	return Color3.fromRGB(0, 0, 0)
end

function changemesh(bodypart, id)
	task.spawn(function()
		if bodypart then
			noxious["character"]:FindFirstChild(bodypart).MeshId = "rbxassetid://" .. id
		else
			ndebug("'" .. bodypart .. "'' Not found in character!")
		end
	end)
end

function changetexture(bodypart, id)
	task.spawn(function()
		if bodypart then
			noxious["character"]:FindFirstChild(bodypart).TextureID = "rbxassetid://" .. id
		else
			ndebug("'" .. bodypart .. "'' Not found in character!")
		end
	end)
end

function animmodenotif()
	if not targettoonanimations or targettoonanimations == "" then return end
	if useoldanimations then
		if usetwistedanimations then
			notify("Now using Twisted " .. targettoonanimations .. "'s old animations.", 5)
		else
			notify("Now using " .. targettoonanimations .. "'s old animations.", 5)
		end
	else
		if usetwistedanimations then
			notify("Now using Twisted " .. targettoonanimations .. "'s animations.", 5)
		else
			notify("Now using " .. targettoonanimations .. "'s animations.", 5)
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["default toggle states"] = {
	["Toggle Autofarm"] = function() return noxiousautofarmrunning or false end,
	["Toggle Deka's Autofarm"] = function() return dekaautofarmrunning or false end,
	["Encounter Twisteds?"] = function() return encountertwisteds or false end,
	["Collect Capsules?"] = function() return collectcapsules or false end,
	["Persistent Autofarm"] = function() return persistentautofarm or false end,
	["Toggle Auto Buy Items"] = function() return autobuyitems or false end,
	["Toggle Rendering"] = function() return threedrendering or false end,
	["Auto Pick Up Heals"] = function() return autopickupheals or false end,
	["Auto Pick Up Extraction Items"] = function() return autopickupextractionitems or false end,
	["Toggle Bot-Like Messages"] = function() return botlikemessages or false end,
	["Advanced Auto Use Items"] = function() return advancedautouseitems or true end,
	["Clear On FocusLost"] = function() return ptcleartextbox or false end,
	["Clearer ESP Text"] = function() return cleareresptext or false end,
	["Animation Looped?"] = function() return animationlooped or true end,
	["Toggle Loop Run Speed Modifier"] = function() return modifylooprunspeed or false end,
	["Toggle Legacy ESP"] = function() return legacyhighlights or false end,
	["Toggle Command Search"] = function() return autosearchcommand or false end,
}

noxious["default input values"] = {
	["Player ESP"] = typeof(playersespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(playersespcolor.R * 255), math.floor(playersespcolor.G * 255), math.floor(playersespcolor.B * 255)) or "",
	["Twisted ESP"] = typeof(twistedsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(twistedsespcolor.R * 255), math.floor(twistedsespcolor.G * 255), math.floor(twistedsespcolor.B * 255)) or "",
	["Item ESP"] = typeof(itemsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(itemsespcolor.R * 255), math.floor(itemsespcolor.G * 255), math.floor(itemsespcolor.B * 255)) or "",
	["Rare Item ESP"] = typeof(rareitemsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(rareitemsespcolor.R * 255), math.floor(rareitemsespcolor.G * 255), math.floor(rareitemsespcolor.B * 255)) or "",
	["Super Rare Item ESP"] = typeof(superrareitemsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(superrareitemsespcolor.R * 255), math.floor(superrareitemsespcolor.G * 255), math.floor(superrareitemsespcolor.B * 255)) or "",
	["Fake Capsule ESP"] = typeof(fakecapsulesespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(fakecapsulesespcolor.R * 255), math.floor(fakecapsulesespcolor.G * 255), math.floor(fakecapsulesespcolor.B * 255)) or "",
	["Machine ESP"] = typeof(machinesespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(machinesespcolor.R * 255), math.floor(machinesespcolor.G * 255), math.floor(machinesespcolor.B * 255)) or "",
	["Completed Machine ESP"] = typeof(completedmachinesespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(completedmachinesespcolor.R * 255), math.floor(completedmachinesespcolor.G * 255), math.floor(completedmachinesespcolor.B * 255)) or "",
	["Posessed Machine ESP"] = typeof(posessedmachinesespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(posessedmachinesespcolor.R * 255), math.floor(posessedmachinesespcolor.G * 255), math.floor(posessedmachinesespcolor.B * 255)) or "",
	["Extracted Machine ESP"] = typeof(machinesbeingextractedespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(machinesbeingextractedespcolor.R * 255), math.floor(machinesbeingextractedespcolor.G * 255), math.floor(machinesbeingextractedespcolor.B * 255)) or "",
	["Elevator ESP"] = typeof(elevatorespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(elevatorespcolor.R * 255), math.floor(elevatorespcolor.G * 255), math.floor(elevatorespcolor.B * 255)) or "",
	["Fake Elevator ESP"] = typeof(fakeelevatorespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(fakeelevatorespcolor.R * 255), math.floor(fakeelevatorespcolor.G * 255), math.floor(fakeelevatorespcolor.B * 255)) or "",
	["Tendrils ESP"] = typeof(tendrilsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(tendrilsespcolor.R * 255), math.floor(tendrilsespcolor.G * 255), math.floor(tendrilsespcolor.B * 255)) or "",
	["Blot's Hands ESP"] = typeof(blotshandsespcolor) == "Color3" and string.format("%d, %d, %d", math.floor(blotshandsespcolor.R * 255), math.floor(blotshandsespcolor.G * 255), math.floor(blotshandsespcolor.B * 255)) or "",

	["Change Language"] = "English" or "",
	["Toggle Keybind"] = "N" or "",
}

function getespcolorvariable(title)
	local mappings = {
		["Player ESP"] = "players",
		["Twisted ESP"] = "twisteds",
		["Item ESP"] = "items",
		["Rare Item ESP"] = "rareitems",
		["Super Rare Item ESP"] = "superrareitems",
		["Fake Capsule ESP"] = "fakecapsules",
		["Machine ESP"] = "machines",
		["Completed Machine ESP"] = "completedmachines",
		["Posessed Machine ESP"] = "posessedmachines",
		["Extracted Machine ESP"] = "machinesbeingextracted",
		["Elevator ESP"] = "elevator",
		["Fake Elevator ESP"] = "fakeelevator",
		["Tendrils ESP"] = "tendrils",
		["Blot's Hands ESP"] = "blotshands"
	}
	return mappings[title]
end

noxious["variable mappings"] = {
	["Toggle Autofarm"] = "noxiousautofarmrunning",
	["Toggle Deka's Autofarm"] = "dekaautofarmrunning",
	["Encounter Twisteds?"] = "encountertwisteds",
	["Collect Capsules?"] = "collectcapsules",
	["Persistent Autofarm"] = "persistentautofarm",
	["Toggle Auto Buy Items"] = "autobuyitems",
	["Toggle Rendering"] = "threedrendering",
	["Auto Pick Up Heals"] = "autopickupheals",
	["Auto Pick Up Extraction Items"] = "autopickupextractionitems",
	["Toggle Bot-Like Messages"] = "botlikemessages",
	["Advanced Auto Use Items"] = "advancedautouseitems",
	["Animation Looped?"] = "animationlooped",
	["Toggle Loop Run Speed Modifier"] = "modifylooprunspeed",

	["Player ESP"] = "playersespcolor",
	["Twisted ESP"] = "twistedsespcolor",
	["Item ESP"] = "itemsespcolor",
	["Rare Item ESP"] = "rareitemsespcolor",
	["Super Rare Item ESP"] = "superrareitemsespcolor",
	["Fake Capsule ESP"] = "fakecapsulesespcolor",
	["Machine ESP"] = "machinesespcolor",
	["Completed Machine ESP"] = "completedmachinesespcolor",
	["Posessed Machine ESP"] = "posessedmachinesespcolor",
	["Extracted Machine ESP"] = "machinesbeingextractedespcolor",
	["Elevator ESP"] = "elevatorespcolor",
	["Fake Elevator ESP"] = "fakeelevatorespcolor",
	["Tendrils ESP"] = "tendrilsespcolor",
	["Blot's Hands ESP"] = "blotshandsespcolor",

	["Clearer ESP Text"] = "cleareresptext",
	["Clear On FocusLost"] = "ptcleartextbox",
	["Change Language"] = "scriptlanguage",
	["Toggle Legacy ESP"] = "legacyhighlights",
	["Toggle Command Search"] = "autosearchcommand",
	["Toggle Keybind"] = "togglekeybind",
}

-------------------------------------------------------------------------------------------------------------------------------

if not noxious["in studio"] then
	noxious["settings and configurations filepath"] = tofolder()
	noxious["settings file name"] = noxious["settings and configurations filepath"] .. "/SettingsAndConfigs.json"
end

function tocolor3(text)
	if typeof(text) == "Color3" then
		return text
	end

	local r, g, b = text:match("^(%d+)[,%s]*(%d+)[,%s]*(%d+)$")
	if r and g and b then
		return Color3.fromRGB(
			math.clamp(tonumber(r), 0, 255),
			math.clamp(tonumber(g), 0, 255),
			math.clamp(tonumber(b), 0, 255)
		)
	end

	return Color3.fromRGB(0, 0, 0)
end

function loadnoxioussettings()
	local success, err = pcall(function()
		if isfile(noxious["settings file name"]) then
			local json = readfile(noxious["settings file name"])
			noxious["saved settings"] = noxious["http service"]:JSONDecode(json)
		end
	end)
	if not success then
		ndebug("Failed to load settings:", err)
		noxious["saved settings"] = {}
	end
end

function savenoxioussettings()
	local success, err = pcall(function()
		local settingsToSave = {}

		for listName, listData in pairs(noxious["button lists"] or {}) do
			if listName ~= "Toon Customization" and listName ~= "Animations" then
				settingsToSave[listName] = {}

				for _, element in pairs(listData) do
					if element.title then
						local entry

						if element.type == "toggle" or element.type == "checkbox" then
							if element.state ~= nil then
								entry = { state = element.state }
							end
						elseif element.type == "inputbox" then
							if element.text ~= nil then
								entry = { text = element.text }
							end
						elseif element.type == "checkboxes" then
							if element.boxStates then
								local checkedBoxes = {}
								for boxName, isChecked in pairs(element.boxStates) do
									if isChecked then
										table.insert(checkedBoxes, boxName)
									end
								end
								entry = { checked = checkedBoxes }
							end
						end

						if entry then
							local skipSaveTitles = {
								["Toggle Autofarm"] = true,
								["Toggle Deka's Autofarm"] = true,
							}

							if not (skipSaveTitles[element.title] and not persistentautofarm) then
								settingsToSave[listName][element.title] = entry
							end
						end
					end
				end
			end
		end

		local json = noxious["http service"]:JSONEncode(settingsToSave)
		writefile(noxious["settings file name"], json)
	end)

	if not success then
		ndebug("Failed to save settings:", err)
	end
end

function initializenoxioussettings()
	if not noxious["saved settings"] then return end

	for listName, listData in pairs(noxious["saved settings"]) do
		for elementName, elementData in pairs(listData) do
			local varName = noxious["variable mappings"][elementName]
			if varName then
				local valueToApply

				if elementData.state ~= nil then
					valueToApply = elementData.state
					_G[varName] = valueToApply
				elseif elementData.text ~= nil then
					valueToApply = elementData.text

					if elementName:match("ESP$") then
						local color = tocolor3(valueToApply)
						_G[varName] = color

						local espKey = getespcolorvariable(elementName)
						if espKey and espcolors[espKey] then
							espcolors[espKey] = color
						end
					else
						_G[varName] = valueToApply
					end
				elseif elementData.checked ~= nil then
					valueToApply = elementData.checked
				end

				for _, list in pairs(noxious["button lists"] or {}) do
					for _, element in pairs(list) do
						if element.title == elementName then
							if element.type == "checkboxes" and elementData.checked then
								element.boxStates = element.boxStates or {}
								for _, boxName in ipairs(element.boxes) do
									element.boxStates[boxName] = table.find(elementData.checked, boxName) and true or false
								end
							elseif type(element.func) == "function" then
								element.func(valueToApply)
							end
						end
					end
				end
			end
		end
	end
end

function syncespcolors()
	local espcolormapping = {
		players = "playersespcolor",
		twisteds = "twistedsespcolor",
		machines = "machinesespcolor",
		completedmachines = "completedmachinesespcolor",
		posessedmachines = "posessedmachinesespcolor",
		machinesbeingextracted = "machinesbeingextractedespcolor",
		items = "itemsespcolor",
		fakecapsules = "fakecapsulesespcolor",
		fakeelevator = "fakeelevatorespcolor",
		elevator = "elevatorespcolor",
		rareitems = "rareitemsespcolor",
		superrareitems = "superrareitemsespcolor",
		tendrils = "tendrilsespcolor",
		blotshands = "blotshandsespcolor"
	}

	for key, varName in pairs(espcolormapping) do
		if _G[varName] and typeof(_G[varName]) == "Color3" then
			espcolors[key] = _G[varName]
		end
	end
end

if not noxious["in studio"] then
	loadnoxioussettings()
	initializenoxioussettings()
	syncespcolors()
	print("[Noxious Hub]: File config load attempt #1")
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["button lists"] = {
	["Autofarm"] = {
		{type = "separator", text = "┌  Autofarm"},
		{type = "label", text = "This section is still a work in progress. Expect\nbugs. Autofarming while having certain\ncommands on that alter the player's behavior\nmay cause conflicts with the autofarm.", addheight = 68, labeltype = "warning"},
		{type = "label", text = "Having both Noxious' and Deka's autofarm\non at the same time will break the autofarm.", addheight = 36, labeltype = "error"},
		{type = "toggle", title = "Toggle Autofarm", desc = "Toggles the autofarm.", descHeightOverride = 14, func = function(state) 
			noxiousautofarmrunning = state
			task.spawn(function()
				repeat task.wait(1) until noxious["loaded"] == true
				if state then enablenoxiousautofarm() else disablenoxiousautofarm() end
			end)
		end},
		{type = "toggle", title = "Toggle Deka's Autofarm", desc = "Toggles Deka's pathfinder autofarm.", descHeightOverride = 14, func = function(state) 
			dekaautofarmrunning = state
			task.spawn(function()
				repeat task.wait(1) until noxious["loaded"] == true
				if state then enabledekasautofarm() else disabledekasautofarm() end
			end)
		end},

		{type = "separator", text = "┌  Research"},
		{type = "toggle", title = "Encounter Twisteds?", desc = "Makes it so you get research by encountering the Twisteds.", descHeightOverride = 28, func = function(state) 
			encountertwisteds = state
		end},
		{type = "toggle", title = "Collect Capsules?", desc = "Makes it so you get research by collecting Research Capsules.", descHeightOverride = 28, func = function(state) 
			collectcapsules = state
		end},

		{type = "separator", text = "┌  Configuration"},
		{type = "toggle", title = "Persistent Autofarm", desc = "Makes it so you start a new autofarm run on death or disconnect.", descHeightOverride = 28, func = function(state) 
			persistentautofarm = state
		end},
		{type = "toggle", title = "Toggle Auto Buy Items", desc = "Toggles whether you want to buy items from the\nshop while autofarming.", descHeightOverride = 28, func = function(state) 
			autobuyitems = state
		end},
		{type = "toggle", title = "Toggle Rendering", desc = "Toggles 3d rendering.", descHeightOverride = 14, func = function(state) 
			threedrendering = state
			if not noxious["in studio"] then noxious["run service"]:Set3dRenderingEnabled(state) end
		end},
		{type = "toggle", title = "Auto Pick Up Heals", desc = "Toggles whether you want to automatically pick up and use heals while autofarming.", descHeightOverride = 28, func = function(state) 
			autopickupheals = state
		end},
		{type = "toggle", title = "Auto Pick Up Extraction Items", desc = "Toggles whether you want to automatically pick up and use extraction items while autofarming.", descHeightOverride = 28, func = function(state) 
			autopickupextractionitems = state
		end},
	},
	["Animations"] = {
		{type = "separator", text = "┌  Target"},
		{type = "inputbox", title = "Target Toon", desc = "The Toon in which you will play\nanimations from.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			function capname(name)
				noxious["toons"] = {
					"Blot", "Flyte", "Yatta", "Bassie", "Cocoa", "Eggson", "Bobette", "Coal", "Rudie", "Ginger", "Boxten", "Brightney", "Cosmo",
					"Connie", "Finn", "Flutter", "Gigi", "Glisten", "Goob", "Poppy", "Rodger", "Scraps", "Shrimpo", "Teagan",
					"Tisha", "Toodles", "Sprout", "Vee", "Dandy", "Shelly", "Pebble", "Astro", "Looey"
				}

				if not name or typeof(name) ~= "string" or #name == 0 then
					notify("Invalid Toon name.", 5, "error")
					return nil
				end

				name = name:match("^%s*(.-)%s*$")
				local lowered = name:lower()

				if lowered == "rnd" or lowered == "razzleanddazzle" or lowered == "razzledazzle" then
					notify("Chosen Toon: Razzle & Dazzle", 5)
					return "RazzleDazzle"
				end

				local capped = name:sub(1, 1):upper() .. name:sub(2):lower()

				for _, toonName in ipairs(noxious["toons"]) do
					if typeof(toonName) == "string" and toonName:lower() == capped:lower() then
						notify("Chosen Toon: " .. toonName, 5)
						return toonName
					end
				end

				notify("Unknown Toon name: " .. capped, 5, "error")
				return nil
			end

			targettoonanimations = capname(text)
		end},
		{type = "toggle", title = "Use Twisted?", desc = "Toggles whether you want to play the animations of the Twisted version of the selected Toon.", descHeightOverride = 28, func = function(state) 
			usetwistedanimations = state
			animmodenotif()
		end},
		{type = "toggle", title = "Use Old?", desc = "Toggles whether you want to play the old animations of the selected Toon.", descHeightOverride = 28, func = function(state) 
			useoldanimations = state
			animmodenotif()
		end},

		{type = "separator", text = "┌  Animations"},
		{type = "label", text = "Some animations are unavailable. More\nanimations will be added in future updates.\n(Sometimes silent)", addheight = 52, labeltype = "warning"},
		{type = "button", title = "Apply Animation Pack", desc = "Applies the selected Toon's animations on your character.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then 
				if useoldanimations then 
					applyanimpack("O" .. targettoonanimations) 
				else 
					applyanimpack(targettoonanimations)
				end 
			else
				if useoldanimations then 
					applyanimpack("OT" .. targettoonanimations) 
				else 
					applyanimpack("T" .. targettoonanimations)
				end 
			end
		end},
		{type = "button", title = "Idle Animation", desc = "Plays the selected Toon's idle animation on your character.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				if useoldanimations then
					playanim("oldnormalidle") 
				else
					playanim("normalidle")
				end
			else 
				if useoldanimations then
					playanim("oldtwistedidle") 
				else
					playanim("twistedidle")
				end
			end
		end},
		{type = "button", title = "Walking Animation", desc = "Plays the selected Toon's walking animation \non your character.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				if useoldanimations then
					playanim("oldnormalwalking") 
				else
					playanim("normalwalking")
				end
			else 
				if useoldanimations then
					playanim("oldtwistedwalking") 
				else
					playanim("twistedwalking")
				end
			end
		end},
		{type = "button", title = "Running Animation", desc = "Plays the selected Toon's running animation \non your character if it has one.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				if useoldanimations then
					playanim("oldnormalrunning") 
				else
					playanim("normalrunning")
				end
			else 
				if useoldanimations then
					playanim("oldtwistedrunning") 
				else
					playanim("twistedrunning")
				end
			end
		end},
		{type = "button", title = "Extracting Animation", desc = "Plays the selected Toon's extracting animation \non your character.", descHeightOverride = 28, func = function() 
			if useoldanimations then
				playanim("oldextracting") 
			else
				playanim("extracting")
			end
		end},
		{type = "button", title = "Ability Animation", desc = "Plays the selected Toon's ability animation \non your character.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				if useoldanimations then
					playanim("oldnormalability") 
				else
					playanim("normalability")
				end
			else 
				if useoldanimations then
					playanim("oldtwistedability") 
				else
					playanim("twistedability")
				end
			end
		end},
		{type = "button", title = "Quirk Animation", desc = "Plays the selected Toon's quirk animation on \nyour character if it has one.", descHeightOverride = 28, func = function() 
			playanim("quirk1")
		end},
		{type = "button", title = "Lost Interest Animation", desc = "Plays the selected Twisted's lost interest\nanimation on your character.", descHeightOverride = 28, func = function() 
			playanim("lostinterest")
		end},
		{type = "button", title = "Attack Animation", desc = "Plays the selected Twisted's attack animation on\nyour character.", descHeightOverride = 28, func = function() 
			playanim("attacking")
		end},
		{type = "button", title = "Extra1 Animation", desc = "Plays the selected Twisted's extra1 animation on\nyour character if it has one.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				playanim("quirk2")
			else 
				playanim("extra1")
			end
		end},
		{type = "button", title = "Extra2 Animation", desc = "Plays the selected Twisted's extra2 animation on\nyour character if it has one.", descHeightOverride = 28, func = function() 
			if not usetwistedanimations then
				playanim("quirk3")
			else 
				playanim("extra2")
			end
		end},
		{type = "button", title = "Extra3 Animation", desc = "Plays the selected Twisted's extra3 animation on\nyour character if it has one.", descHeightOverride = 28, func = function() 
			playanim("extra3")
		end},

		{type = "separator", text = "┌  Settings"},
		{type = "toggle", title = "Animation Looped?", desc = "Toggles whether you want the animation to loop\nonto your character.", descHeightOverride = 28, func = function(state) 
			animationlooped = state
			for _, track in ipairs(noxious["humanoid"]:GetPlayingAnimationTracks()) do
				track.Looped = state
			end
		end},
		{type = "inputbox", title = "Animation Speed", desc = "Sets the speed of your current\nanimation.", descHeightOverride = 28, placeholer = "Input", default = 1, func = function(text)
			local speed = tonumber(text)
			animationspeedinput = speed
			for _, track in ipairs(noxious["humanoid"]:GetPlayingAnimationTracks()) do
				track:AdjustSpeed(text)
			end
		end},
		{type = "button", title = "Reset Animations", desc = "Resets your animations.", descHeightOverride = 14, func = function() 
			resetanims()
		end},
	},
	["Toon Customization"] = {
		{type = "separator", text = "┌  Character"},
		{type = "inputbox", title = "Dialogue Sound ID", desc = "Changes your character's dialogue \nsound to the inputted ID.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh(text)
		end},

		{type = "separator", text = "┌  Body Parts"},
		{type = "inputbox", title = "Head Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's head.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("Head", text)
		end},
		{type = "inputbox", title = "Torso Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's torso.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("Body", text)
		end},
		{type = "inputbox", title = "Left Arm Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's left arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("ArmL", text)
		end},
		{type = "inputbox", title = "Left Lower Arm Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's left lower arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("ArmL2", text)	
		end},
		{type = "inputbox", title = "Left Hand Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's left hand.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("HandL", text)	
		end},
		{type = "inputbox", title = "Right Arm Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's right arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("ArmR", text)	
		end},
		{type = "inputbox", title = "Right Lower Arm Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's right lower arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("ArmR2", text)	
		end},
		{type = "inputbox", title = "Right Hand Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's right hand.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("HandR", text)	
		end},
		{type = "inputbox", title = "Left Leg Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's left leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("LegL", text)		
		end},
		{type = "inputbox", title = "Left Lower Leg Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's left lower leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("LegL2", text)		
		end},
		{type = "inputbox", title = "Right Leg Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's right leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("LegR", text)		
		end},
		{type = "inputbox", title = "Right Lower Leg Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's right lower leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("LegR2", text)		
		end},
		{type = "inputbox", title = "Head Accessory Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's head accessory.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changemesh("Hair", text)	
		end},
		{type = "inputbox", title = "Body Accessory Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's body accessory.", descHeightOverride = 28, placeholer = "Input", func = function(text)
		end},
		{type = "inputbox", title = "Waist Accessory Mesh ID", desc = "Applies the inputted mesh ID onto \nyour character's waist accessory.", descHeightOverride = 28, placeholer = "Input", func = function(text)
		end},
		{type = "separator", text = "┌  Textures"},
		{type = "inputbox", title = "Whole Body Texture ID", desc = "Applies the inputted texture ID \nonto your character.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("Hair", text)	
			changetexture("LegR2", text)		
			changetexture("LegR", text)		
			changetexture("LegL2", text)		
			changetexture("LegL", text)		
			changetexture("HandR", text)	
			changetexture("ArmR2", text)	
			changetexture("ArmR", text)	
			changetexture("HandL", text)	
			changetexture("ArmL2", text)	
			changetexture("ArmL", text)
			changetexture("Body", text)
			changetexture("Head", text)
		end},
		{type = "inputbox", title = "Head Texture ID", desc = "Applies the inputted texture ID \nonto your character's head.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("Head", text)
		end},
		{type = "inputbox", title = "Torso Texture ID", desc = "Applies the inputted texture ID \nonto your character's torso.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("Body", text)
		end},
		{type = "inputbox", title = "Left Arm Texture ID", desc = "Applies the inputted texture ID \nonto your character's left arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("ArmL", text)
		end},
		{type = "inputbox", title = "Left Lower Arm Texture ID", desc = "Applies the inputted texture ID \nonto your character's left lower \narm.", descHeightOverride = 42, placeholer = "Input", func = function(text)
			changetexture("ArmL2", text)
		end},
		{type = "inputbox", title = "Left Hand Texture ID", desc = "Applies the inputted texture ID \nonto your character's left hand.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("HandL", text)
		end},
		{type = "inputbox", title = "Right Arm Texture ID", desc = "Applies the inputted texture ID \nonto your character's right arm.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("ArmR", text)
		end},
		{type = "inputbox", title = "Right Lower Arm Texture ID", desc = "Applies the inputted texture ID \nonto your character's right lower \narm.", descHeightOverride = 42, placeholer = "Input", func = function(text)
			changetexture("ArmR2", text)
		end},
		{type = "inputbox", title = "Right Hand Texture ID", desc = "Applies the inputted texture ID \nonto your character's right hand.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("HandR", text)
		end},
		{type = "inputbox", title = "Left Leg Texture ID", desc = "Applies the inputted texture ID \nonto your character's left leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("LegL", text)
		end},
		{type = "inputbox", title = "Left Lower Leg Texture ID", desc = "Applies the inputted texture ID \nonto your character's left lower \nleg.", descHeightOverride = 42, placeholer = "Input", func = function(text)
			changetexture("legL2", text)
		end},
		{type = "inputbox", title = "Right Leg Texture ID", desc = "Applies the inputted texture ID \nonto your character's right leg.", descHeightOverride = 28, placeholer = "Input", func = function(text)
			changetexture("LegR", text)
		end},
		{type = "inputbox", title = "Right Lower Leg Texture ID", desc = "Applies the inputted texture ID \nonto your character's right lower \nleg.", descHeightOverride = 42, placeholer = "Input", func = function(text)
			changetexture("LegR2", text)
		end},
		{type = "inputbox", title = "Head Accessory Texture ID", desc = "Applies the inputted texture ID \nonto your character's head \naccessory.", descHeightOverride = 42, placeholer = "Input", func = function(text)
			changetexture("Hair", text)
		end},
		{type = "inputbox", title = "Body Accessory Texture ID", desc = "Applies the inputted texture ID \nonto your character's body \naccessory.", descHeightOverride = 42, placeholer = "Input", func = function(text)

		end},
		{type = "inputbox", title = "Waist Accessory Texture ID", desc = "Applies the inputted texture ID \nonto your character's waist \naccessory.", descHeightOverride = 42, placeholer = "Input", func = function(text)

		end},
	},
	["Configuration"] = {
		{type = "separator", text = "┌  Configurations"},
		{type = "toggle", title = "Toggle Bot-Like Messages", desc = "Toggles whether you want to sound like a bot for the chat guiding.", descHeightOverride = 28, func = function(state)
			botlikemessages = state
		end},		
		{type = "toggle", title = "Advanced Auto Use Items", desc = "Toggles whether you want to automatically use\nitems when necessary.", descHeightOverride = 28, func = function(state)
			advancedautouseitems = state
		end},
		{type = "toggle", title = "Toggle Loop Run Speed Modifier", desc = "Toggles whether you want the 'enablelooprunspeed' \ncommand to explicitly lock onto your run speed.", descHeightOverride = 28, func = function(state)
			modifylooprunspeed = state
		end},

		{type = "separator", text = "┌  Blacklists"},
		{type = "checkboxes", title = "Item Aura Blacklist", desc = "Blacklists the checked items from the item aura.", descHeightOverride = 14, shaveheight = -7,
			boxes = { "Air Horn", "Bandage", "Bonbon", "Bottle Of Pop", "Box Of Chocolates", "Chocolate", "Eject Button", "Ext. Speed Candy", "Fake Capsule", "Gumballs", "Health Kit", "Jawbreaker", "Jumper Cable", "Pop", "Protein Bar", "Research Capsule", "Skill Check Candy", "Smoke Bomb", "Speed Candy", "Stamina Candy", "Stealth Candy", "Tape" },
			func = function(box, state) 
			end},
		{type = "checkboxes", title = "Buy Aura Blacklist", desc = "Blacklists the checked items from the buy aura.", descHeightOverride = 14, shaveheight = -10,
			boxes = { "Air Horn", "Bandage", "Bottle Of Pop", "Box Of Chocolates", "Chocolate", "Eject Button", "Ext. Speed Candy", "Gumballs", "Health Kit", "Instructions", "Jawbreaker", "Jumper Cable", "Pop", "Protein Bar", "Skill Check Candy", "Smoke Bomb", "Speed Candy", "Stamina Candy", "Stealth Candy", "Valve" },
			func = function(box, state) 
			end},
		{type = "checkboxes", title = "Twisted Research Blacklist", desc = "Avoids getting research for only the selected Twisteds.", descHeightOverride = 14, shaveheight = 11,
			boxes = { "Astro", "Bassie", "Blot", "Bobette", "Boxten", "Brightney", "Coal", "Cocoa", "Connie", "Cosmo", "Dandy", "Eggson", "Finn", "Flyte", "Gigi", "Ginger", "Glisten", "Goob", "Looey", "Pebble", "Poppy", "Razzle & Dazzle", "Rodger", "Rudie", "Scraps", "Shelly", "Shrimpo", "Sprout", "Teagan", "Tisha", "Toodles", "Vee", "Yatta" },
			func = function(box, state) 
			end},

		{type = "separator", text = "┌  ESP Colors"},
		{type = "inputbox", title = "Player ESP", desc = "Sets the ESP color for players.", descHeightOverride = 14, placeholer = "Input", func = function(color)
			espcolors.players = color
			playersespcolor = color
			if playeresp then
				execcmd("dpesp")
				task.wait()
				execcmd("epesp")
			end
		end},
		{type = "inputbox", title = "Twisted ESP", desc = "Sets the ESP color for Twisteds.", descHeightOverride = 14, placeholer = "Input", func = function(color)
			espcolors.twisteds = color
			twistedsespcolor = color
			if twistedesp then
				execcmd("dtesp")
				task.wait()
				execcmd("etesp")
			end
		end},
		{type = "inputbox", title = "Item ESP", desc = "Sets the ESP color for items.", descHeightOverride = 14, placeholer = "Input", func = function(color)
			espcolors.items = color
			itemsespcolor = color
			if itemesp then
				execcmd("diesp")
				task.wait()
				execcmd("eiesp")
			end
		end},
		{type = "inputbox", title = "Rare Item ESP", desc = "Sets the ESP color for rare items.", descHeightOverride = 14, placeholer = "Input", func = function(color)
			espcolors.rareitems = color
			rareitemsespcolor = color
			if itemesp then
				execcmd("diesp")
				task.wait()
				execcmd("eiesp")
			end
		end},
		{type = "inputbox", title = "Super Rare Item ESP", desc = "Sets the ESP color for super rare\nitems.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.superrareitems = color
			superrareitemsespcolor = color
			if itemesp then
				execcmd("diesp")
				task.wait()
				execcmd("eiesp")
			end
		end},
		{type = "inputbox", title = "Fake Capsule ESP", desc = "Sets the ESP color for fake\ncapsules.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.fakecapsules = color
			fakecapsulesespcolor = color
			if itemesp then
				execcmd("diesp")
				task.wait()
				execcmd("eiesp")
			end
		end},
		{type = "inputbox", title = "Machine ESP", desc = "Sets the ESP color for machines.", descHeightOverride = 14, placeholer = "Input", func = function(color)
			espcolors.machines = color
			machinesespcolor = color
			if machineesp then
				execcmd("dmesp")
				task.wait()
				execcmd("emesp")
			end
		end},
		{type = "inputbox", title = "Completed Machine ESP", desc = "Sets the ESP color for completed \nmachines.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.completedmachines = color
			completedmachinesespcolor = color
			if machineesp then
				execcmd("dmesp")
				task.wait()
				execcmd("emesp")
			end
		end},
		{type = "inputbox", title = "Posessed Machine ESP", desc = "Sets the ESP color for posessed \nmachines.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.posessedmachines = color
			posessedmachinesespcolor = color
			if machineesp then
				execcmd("dmesp")
				task.wait()
				execcmd("emesp")
			end
		end},
		{type = "inputbox", title = "Extracted Machine ESP", desc = "Sets the ESP color for extracted\nmachines.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.machinesbeingextractedespcolor = color
			machinesbeingextractedespcolor = color
			if machineesp then
				execcmd("dmesp")
				task.wait()
				execcmd("emesp")
			end
		end},
		{type = "inputbox", title = "Elevator ESP", desc = "Sets the ESP color for the \nelevator.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.elevator = color
			elevatorespcolor = color
			if elevatoresp then
				execcmd("deesp")
				task.wait()
				execcmd("eeesp")
			end
		end},
		{type = "inputbox", title = "Fake Elevator ESP", desc = "Sets the ESP color for fake\nelevator.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.fakeelevator = color
			fakeelevatorespcolor = color
			if fakeelevatoresp then
				execcmd("dfeesp")
				task.wait()
				execcmd("efeesp")
			end
		end},
		{type = "inputbox", title = "Tendrils ESP", desc = "Sets the ESP color for sprout's\ntendrils.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.tendrils = color
			tendrilsespcolor = color
			if tendrilesp then
				execcmd("dstesp")
				task.wait()
				execcmd("estesp")
			end
		end},
		{type = "inputbox", title = "Blot's Hands ESP", desc = "Sets the ESP color for blot's\nhands.", descHeightOverride = 28, placeholer = "Input", func = function(color)
			espcolors.blotshands = color
			blotshandsespcolor = color
			if blothandsesp then
				execcmd("dbhesp")
				task.wait()
				execcmd("ebhesp")
			end
		end},
	},
	["Settings"] = {
		{type = "separator", text = "┌  Script"},
		{type = "label", text = "Loading in the script too quickly or before the\ngame loads may lead to your settings and\nconfigurations resetting back to default. We\nare working on a fix for this.", addheight = 64, labeltype = "error"},
		{type = "button", title = "Reset To Default", desc = "Restores the default settings and configurations for\nthe script.", descHeightOverride = 28, func = function() 
		end},
		{type = "toggle", title = "Toggle Command Search", desc = "Toggles whether you want the command bar to \nact as a search bar for commands.", descHeightOverride = 28, func = function(state)
			autosearchcommand = state
		end},
		{type = "inputbox", title = "Toggle Keybind", desc = "Sets the keybind to toggle the\nvisibility of the interface.", descHeightOverride = 28, placeholer = "Input", func = function(key)
			togglekeybind = key
		end},
		{type = "label", text = "Language switching will be available in the\nfuture.", addheight = 36, labeltype = "warning"},
		{type = "inputbox", title = "Change Language", desc = "Changes the language used for\nthe script. Available languages:\nPortuguese, Spanish, Russian,\n???ified, Estonian", descHeightOverride = 70, placeholer = "Input", func = function(lang)
			function capname(name)
				noxious["languages"] = { "Portuguese", "Spanish", "Russian", "OwOified" }

				name = name:match("^%s*(.-)%s*$")
				local capped = name:sub(1, 1):upper() .. name:sub(2):lower()

				for _, language in ipairs(noxious["languages"]) do
					if typeof(language) == "string" and language:lower() == capped:lower() then
						-- notify("Chosen language: " .. language, 5)
						return language
					end
				end

				if noxious["loaded"] then notify("Unknown available language: " .. capped, 5, "error") end
				return nil
			end
		end},
		{type = "toggle", title = "Clear On FocusLost", desc = "Toggles the text clearing for when you click on the command bar.", descHeightOverride = 28, func = function(state) 
			ptcleartextbox = state
			updclrtxt()
		end},
		{type = "toggle", title = "Toggle Legacy ESP", desc = "Toggles whether you want to use box adornments instead of highlights for the ESP. (Ugly)", descHeightOverride = 28, func = function(state) 
			spawn(removeesp)
			task.wait(1)
			local anyEnabled = false
			for _, enabled in pairs(noxious["esp types"]) do
				if enabled then
					anyEnabled = true
					break
				end
			end

			if anyEnabled then
				if esplooprunning then
					stopesploop()
				end
				legacyhighlights = state
				startesploop()
			end
		end},
		{type = "toggle", title = "Clearer ESP Text", desc = "Minimizes the amount of text for the ESP.", descHeightOverride = 14, func = function(state) 
			cleareresptext = state
			local anyEnabled = false
			for _, enabled in pairs(noxious["esp types"]) do
				if enabled then
					anyEnabled = true
					break
				end
			end
			if anyEnabled then
				spawn(removeesp)
				startesploop()
			end
		end},
	},
}

-------------------------------------------------------------------------------------------------------------------------------

function fetchchecked(checkboxes)
	local foundfirstelement = nil

	for listname, buttonlist in pairs(noxious["button lists"] or {}) do
		for _, element in ipairs(buttonlist) do
			if element.type == "checkboxes" and element.title == checkboxes then
				foundfirstelement = element
				break
			end
		end
		if foundfirstelement then break end
	end

	if not foundfirstelement then return {} end

	local checkedboxes = {}
	for boxname, isChecked in pairs(foundfirstelement.boxStates or {}) do
		if isChecked then
			table.insert(checkedboxes, boxname)
		end
	end

	ndebug("┌ Checked boxes for '" .. checkboxes .. "':")
	if #checkedboxes == 0 then
		ndebug("│  None")
	else
		for i, boxname in ipairs(checkedboxes) do
			ndebug("│  [" .. i .. "] " .. boxname)
		end
	end
	ndebug("└───────────────────────────────────────────")

	return checkedboxes
end

function fetchcheckboxes()
	local allChecked = {}

	local checkboxElements = {}
	for listName, buttonList in pairs(noxious["button lists"] or {}) do
		for _, element in ipairs(buttonList) do
			if element.type == "checkboxes" then
				table.insert(checkboxElements, {
					list = listName,
					title = element.title,
					element = element
				})
			end
		end
	end

	for _, cb in ipairs(checkboxElements) do
		local groupKey = cb.list.." → "..cb.title
		allChecked[groupKey] = {}

		for boxName, isChecked in pairs(cb.element.boxStates or {}) do
			if isChecked then
				table.insert(allChecked[groupKey], boxName)
			end
		end
	end

	ndebug("┌ Checkboxes:")
	if next(allChecked) == nil then
		ndebug("│  No checkboxes found in any list.")
	else
		for groupName, boxes in pairs(allChecked) do
			ndebug("│  "..groupName..":")
			if #boxes == 0 then
				ndebug("│    None")
			else
				for i, boxName in ipairs(boxes) do
					ndebug("│    ["..i.."] "..boxName)
				end
			end
		end
	end
	ndebug("└───────────────────────────────────────────")

	return allChecked
end

function fetchtoggles()
	local allToggles = {}

	for listName, buttonList in pairs(noxious["button lists"] or {}) do
		for _, element in ipairs(buttonList) do
			if element.type == "toggle" then
				allToggles[listName.." → "..element.title] = element.state or false
			end
		end
	end

	ndebug("┌ Toggles:")
	if next(allToggles) == nil then
		ndebug("│  No toggles found in any list.")
	else
		for toggleName, state in pairs(allToggles) do
			ndebug("│  "..toggleName..": "..(state and "ON" or "OFF"))
		end
	end
	ndebug("└───────────────────────────────────────────")

	return allToggles
end

function fetchinputs()
	local allInputs = {}

	for listName, buttonList in pairs(noxious["button lists"] or {}) do
		for _, element in ipairs(buttonList) do
			if element.type == "inputbox" then
				allInputs[listName.." → "..element.title] = element.lastInput or ""
			end
		end
	end

	ndebug("┌ Inputs:")
	if next(allInputs) == nil then
		ndebug("│  No input boxes found in any list.")
	else
		for inputName, value in pairs(allInputs) do
			ndebug("│  "..inputName..": "..tostring(value))
		end
	end
	ndebug("└───────────────────────────────────────────")

	return allInputs
end

-------------------------------------------------------------------------------------------------------------------------------

if not noxious["in studio"] then
	loadnoxioussettings()
	initializenoxioussettings()
	syncespcolors()
	print("[Noxious Hub]: File config load attempt #2")
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["container button height"] = 50
noxious["container seperator height"] = 20
noxious["container vertical spacing"] = 10
noxious["container element width"] = 120

function createframe(parent, size, isbutton)
	local frame = Instance.new("Frame")
	if isbutton then frame = Instance.new("TextButton") frame.Text = "" end
	frame.Size = size
	frame.BackgroundColor3 = noxious["default black color"]
	frame.BorderColor3 = noxious["default white color"]
	frame.ZIndex = 3
	frame.Parent = parent
	return frame
end

function dispbuttons(buttonList)	
	noxious["saved settings"] = noxious["saved settings"] or {}
	noxious["saved settings"][noxious["current list"]] = noxious["saved settings"][noxious["current list"]] or {}

	local function isValidAudioId(text)
		text = text:gsub("rbxassetid://", "")
		return text:match("^%d+$") ~= nil
	end

	local function processAudioId(text)
		return text:gsub("rbxassetid://", "")
	end

	noxious["scroll bar holder 2"].Visible = true
	for _, child in ipairs(mainframe:GetChildren()) do
		if child:IsA"Frame" and (child.Name == "ButtonContainer" or child.Name == "CommandContainer") then
			child:Destroy()
		elseif child:IsA"TextLabel" and child.Name == "Introduction" then
			child:Destroy()
		elseif child:IsA"ScrollingFrame" and child.Name == "CommandScrollFrame" or child.Name == "ButtonContainer" then
			child:Destroy()
		end
	end

	if not buttonList or type(buttonList) ~= "table" or #buttonList == 0 then
		warn("Invalid button list provided")
		return
	end

	noxious["button container"] = Instance.new("ScrollingFrame")
	noxious["button container"].Name = "ButtonContainer"
	noxious["button container"].Size = UDim2.new(0, 333, 0, 204)
	noxious["button container"].Position = UDim2.new(1, -333, 0, 50)
	noxious["button container"].BackgroundTransparency = 1
	noxious["button container"].BorderSizePixel = 0
	noxious["button container"].ScrollBarThickness = 10
	noxious["button container"].CanvasSize = UDim2.new(0, 0, 0, 0)
	noxious["button container"].ZIndex = 3
	noxious["button container"].AutomaticCanvasSize = Enum.AutomaticSize.Y
	noxious["button container"].Parent = mainframe
	noxious["button container"].ScrollingDirection = Enum.ScrollingDirection.Y

	local layout = Instance.new("UIListLayout")
	layout.Padding = UDim.new(0, noxious["container vertical spacing"])
	layout.SortOrder = Enum.SortOrder.LayoutOrder
	layout.Parent = noxious["button container"]

	local padding = Instance.new("UIPadding")
	padding.PaddingTop = UDim.new(0, 5)
	padding.PaddingLeft = UDim.new(0, 8)
	padding.PaddingRight = UDim.new(0, 5)
	padding.Parent = noxious["button container"]

	local TextService = game:GetService("TextService")

	local function getTextHeight(text, width, fontSize, font)
		font = font or Enum.Font.Nunito
		local size = TextService:GetTextSize(text, fontSize, font, Vector2.new(width, math.huge))
		return size.Y
	end

	local topspacer = Instance.new("Frame")
	topspacer.Size = UDim2.new(1, 0, 0, -5)
	topspacer.BackgroundTransparency = 1
	topspacer.Name = "topspacer"
	topspacer.ZIndex = 1
	topspacer.Parent = noxious["button container"]

	for _, element in ipairs(buttonList) do
		if element.type == "separator" then
			local separator = Instance.new("TextLabel")
			separator.Size = UDim2.new(1, -10, 0, noxious["container seperator height"])
			separator.BackgroundTransparency = 1
			separator.TextColor3 = noxious["default white color"]
			separator.Text = " "..element.text
			separator.TextXAlignment = Enum.TextXAlignment.Left
			separator.Font = Enum.Font.Nunito
			separator.TextSize = 18
			separator.ZIndex = 3
			separator.Parent = noxious["button container"]

		elseif element.type == "label" then
			local labeltype = element.labeltype
			local label = Instance.new("TextLabel")
			label.Size = UDim2.new(1, -14, 0, noxious["container seperator height"] + element.addheight)
			label.BackgroundTransparency = 0
			label.BackgroundColor3 = noxious["default black color"]
			label.Text = element.text
			label.TextXAlignment = Enum.TextXAlignment.Left
			label.Font = Enum.Font.Nunito
			label.TextSize = 16
			label.ZIndex = 3
			label.Parent = noxious["button container"]

			local lol = Instance.new("UIPadding")
			lol.Parent = label
			lol.PaddingLeft = UDim.new(0, 42)

			local hi = Instance.new("ImageLabel")
			hi.Size = UDim2.new(0, 20, 0, 20)
			hi.Position = UDim2.new(1, -295, 0.5, -10)
			hi.BackgroundColor3 = noxious["default black color"]
			hi.BackgroundTransparency = 1
			hi.BorderColor3 = noxious["default white color"]
			hi.Image = "rbxassetid://14563958666"
			hi.ZIndex = 5
			hi.Parent = label

			if labeltype == "warning" then
				label.BorderColor3 = Color3.new(1, 1, 0.4)
				label.TextColor3 = Color3.new(1, 1, 0.4)
				hi.ImageColor3 = Color3.new(1, 1, 0.4)
			elseif labeltype == "error" then
				label.BorderColor3 = Color3.new(1, 0.3, 0.3)
				label.TextColor3 = Color3.new(1, 0.3, 0.3)
				hi.ImageColor3 = Color3.new(1, 0.3, 0.3)
			else
				label.BorderColor3 = noxious["default white color"]
				label.TextColor3 = noxious["default white color"]
				hi.ImageColor3 = noxious["default white color"]
			end

		elseif element.type == "toggle" then
			local titleHeight = 20
			local descTextSize = 14
			local descWidth = noxious["container element width"] - 80

			local hasDesc = element.desc and element.desc ~= ""
			local manualDescHeight = element.descHeightOverride
			local descHeight = manualDescHeight or (element.desc and getTextHeight(element.desc, descWidth, descTextSize) or 0)
			local spacing = hasDesc and 2 or 0
			local combinedHeight = titleHeight + spacing + descHeight

			local paddingY = 10
			local frameHeight = math.max(noxious["container button height"], combinedHeight + paddingY * 2)

			local frame = createframe(noxious["button container"], UDim2.new(1, -14, 0, frameHeight))
			local contentStartY = math.floor((frameHeight - combinedHeight) / 2)

			local title = Instance.new("TextLabel")
			title.Size = UDim2.new(1, -50, 0, titleHeight)
			title.Position = UDim2.new(0, 10, 0, contentStartY)
			title.BackgroundTransparency = 1
			title.TextColor3 = noxious["default white color"]
			title.Text = element.title
			title.Font = Enum.Font.Nunito
			title.TextSize = 16
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.ZIndex = 4
			title.Parent = frame

			if hasDesc then
				local desc = Instance.new("TextLabel")
				desc.Size = UDim2.new(1, -50, 0, descHeight)
				desc.Position = UDim2.new(0, 10, 0, contentStartY + titleHeight + spacing)
				desc.BackgroundTransparency = 1
				desc.TextColor3 = noxious["default gray color"]
				desc.Text = element.desc
				desc.Font = Enum.Font.Nunito
				desc.TextSize = descTextSize
				desc.TextWrapped = true
				desc.TextXAlignment = Enum.TextXAlignment.Left
				desc.ZIndex = 4
				desc.Parent = frame
			end

			local toggleButton = createframe(frame, UDim2.new(0, 20, 0, 20))
			toggleButton.Position = UDim2.new(1, -35, 0.5, -10)
			toggleButton.ZIndex = 4

			local toggleState = Instance.new("TextButton")
			toggleState.Size = UDim2.new(1, 0, 1, 0)
			toggleState.BackgroundTransparency = 0
			toggleState.BackgroundColor3 = noxious["default black color"]
			toggleState.TextColor3 = noxious["default white color"]
			toggleState.Font = Enum.Font.Nunito
			toggleState.TextSize = 16
			toggleState.ZIndex = 5
			toggleState.BorderColor3 = noxious["default white color"]
			toggleState.Parent = toggleButton

			local currentState = false
			if noxious["saved settings"][noxious["current list"]][element.title] then
				currentState = noxious["saved settings"][noxious["current list"]][element.title].state
			elseif noxious["default toggle states"][element.title] ~= nil then
				currentState = noxious["default toggle states"][element.title]()
			elseif element.default ~= nil then
				currentState = element.default
			end

			element.state = currentState
			toggleState.Text = currentState and "X" or " "

			toggleState.MouseButton1Click:Connect(function()
				playclicksound()
				currentState = not currentState
				element.state = currentState
				toggleState.Text = currentState and "X" or " "

				local varName = noxious["variable mappings"][element.title]
				if varName and _G[varName] ~= nil then
					_G[varName] = currentState
				end

				element.func(currentState)
				noxious["saved settings"][noxious["current list"]][element.title] = {
					state = currentState
				}

				if not noxious["in studio"] then savenoxioussettings() end
				fetchtoggles()
			end)

		elseif element.type == "button" then
			local titleHeight = 20
			local descTextSize = 14
			local descWidth = noxious["container element width"] - 80

			local hasDesc = element.desc and element.desc ~= ""
			local manualDescHeight = element.descHeightOverride
			local descHeight = manualDescHeight or (element.desc and getTextHeight(element.desc, descWidth, descTextSize) or 0)
			local spacing = hasDesc and 2 or 0
			local combinedHeight = titleHeight + spacing + descHeight

			local paddingY = 10
			local frameHeight = math.max(noxious["container button height"], combinedHeight + paddingY * 2)

			local frame = createframe(noxious["button container"], UDim2.new(1, -14, 0, frameHeight), true)

			local contentStartY = math.floor((frameHeight - combinedHeight) / 2)

			local title = Instance.new("TextLabel")
			title.Size = UDim2.new(1, -50, 0, titleHeight)
			title.Position = UDim2.new(0, 10, 0, contentStartY)
			title.BackgroundTransparency = 1
			title.TextColor3 = noxious["default white color"]
			title.Text = element.title
			title.Font = Enum.Font.Nunito
			title.TextSize = 16
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.ZIndex = 4
			title.Parent = frame

			if hasDesc then
				local desc = Instance.new("TextLabel")
				desc.Size = UDim2.new(1, -50, 0, descHeight)
				desc.Position = UDim2.new(0, 10, 0, contentStartY + titleHeight + spacing)
				desc.BackgroundTransparency = 1
				desc.TextColor3 = noxious["default gray color"]
				desc.Text = element.desc
				desc.Font = Enum.Font.Nunito
				desc.TextSize = descTextSize
				desc.TextWrapped = true
				desc.TextXAlignment = Enum.TextXAlignment.Left
				desc.ZIndex = 4
				desc.Parent = frame
			end

			local actionButton = Instance.new("ImageLabel")
			actionButton.Size = UDim2.new(0, 20, 0, 20)
			actionButton.Position = UDim2.new(1, -35, 0.5, -10)
			actionButton.BackgroundColor3 = noxious["default black color"]
			actionButton.BackgroundTransparency = 1
			actionButton.BorderColor3 = noxious["default white color"]
			actionButton.Image = "rbxassetid://13306021272"
			actionButton.ZIndex = 5
			actionButton.Parent = frame

			frame.MouseButton1Click:Connect(function()
				playclicksound()
				element.func()
			end)

		elseif element.type == "checkboxes" then
			local manualDescHeight = element.descHeightOverride
			local shaveheight = element.shaveheight
			local descHeight = manualDescHeight or (element.desc and getTextHeight(element.desc, noxious["container element width"] - 60, 12) or 0)
			local rows = math.ceil(#element.boxes / 2)
			local boxFrameHeight = rows * 25 + (rows - 1) * 5
			local frameHeight = descHeight + boxFrameHeight - shaveheight

			local frame = createframe(noxious["button container"], UDim2.new(1, -14, 0, frameHeight))

			local title = Instance.new("TextLabel")
			title.Size = UDim2.new(1, -50, 0, 20)
			title.Position = UDim2.new(0, 10, 0, 8)
			title.BackgroundTransparency = 1
			title.TextColor3 = noxious["default white color"]
			title.Text = element.title
			title.Font = Enum.Font.Nunito
			title.TextSize = 16
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.ZIndex = 4
			title.Parent = frame

			if element.desc then
				local desc = Instance.new("TextLabel")
				desc.Size = UDim2.new(1, -20, 0, descHeight)
				desc.Position = UDim2.new(0, 10, 0, 28)
				desc.BackgroundTransparency = 1
				desc.TextColor3 = noxious["default gray color"]
				desc.Text = element.desc
				desc.Font = Enum.Font.Nunito
				desc.TextSize = 14
				desc.TextWrapped = true
				desc.TextXAlignment = Enum.TextXAlignment.Left
				desc.ZIndex = 4
				desc.Parent = frame
			end

			noxious["checkbox grid frame"] = Instance.new("Frame")
			noxious["checkbox grid frame"].Size = UDim2.new(1, -10, 0, boxFrameHeight)
			noxious["checkbox grid frame"].Position = UDim2.new(0, 5, 0, 25 + descHeight + 11)
			noxious["checkbox grid frame"].BackgroundTransparency = 1
			noxious["checkbox grid frame"].Parent = frame

			local gridLayout = Instance.new("UIGridLayout")
			gridLayout.CellPadding = UDim2.new(0, 10, 0, 5)
			gridLayout.CellSize = UDim2.new(0.5, -5, 0, 22)
			gridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			gridLayout.Parent = noxious["checkbox grid frame"]

			local gridLayout = Instance.new("UIGridLayout")
			gridLayout.CellPadding = UDim2.new(0, 10, 0, 5)
			gridLayout.CellSize = UDim2.new(0.5, -5, 0, 22)
			gridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			gridLayout.Parent = noxious["checkbox grid frame"]

			element.boxStates = {}

			-- Safely get saved settings
			local saved
			if noxious["saved settings"] and 
				noxious["current list"] and 
				noxious["saved settings"][noxious["current list"]] and 
				noxious["saved settings"][noxious["current list"]][element.title] then
				saved = noxious["saved settings"][noxious["current list"]][element.title]
			end

			-- Initialize all boxes as unchecked by default
			for _, boxName in ipairs(element.boxes) do
				element.boxStates[boxName] = false
			end

			-- Apply saved checked states if they exist
			if saved and saved.checked then
				for _, boxName in ipairs(saved.checked) do
					if element.boxStates[boxName] ~= nil then
						element.boxStates[boxName] = true
					end
				end
			end

			for _, boxName in ipairs(element.boxes) do
				local checkboxFrame = Instance.new("Frame")
				checkboxFrame.Size = UDim2.new(1, 0, 0, 25)
				checkboxFrame.BackgroundTransparency = 1
				checkboxFrame.Parent = noxious["checkbox grid frame"]

				local checkbox = createframe(checkboxFrame, UDim2.new(0, 20, 0, 20))
				checkbox.Position = UDim2.new(0, 0, 0.5, -10)
				checkbox.ZIndex = 4

				local checkmark = Instance.new("TextButton")
				checkmark.Size = UDim2.new(1, 0, 1, 0)
				checkmark.BackgroundTransparency = 0
				checkmark.BackgroundColor3 = noxious["default black color"]
				checkmark.TextColor3 = noxious["default white color"]
				checkmark.BorderColor3 = noxious["default white color"]
				checkmark.Text = element.boxStates[boxName] and "X" or ""
				checkmark.ZIndex = 5
				checkmark.Parent = checkbox

				local label = Instance.new("TextLabel")
				label.Size = UDim2.new(1, -25, 1, 0)
				label.Position = UDim2.new(0, 25, 0, 0)
				label.BackgroundTransparency = 1
				label.TextColor3 = noxious["default white color"]
				label.Text = boxName
				label.Font = Enum.Font.Nunito
				label.TextSize = 16
				label.TextXAlignment = Enum.TextXAlignment.Left
				label.ZIndex = 4
				label.Parent = checkboxFrame

				checkmark.MouseButton1Click:Connect(function()
					playclicksound()
					local isChecked = not element.boxStates[boxName]
					element.boxStates[boxName] = isChecked
					checkmark.Text = isChecked and "X" or ""
					element.func(boxName, isChecked)

					-- Update saved settings
					if not noxious["saved settings"] then
						noxious["saved settings"] = {}
					end
					if not noxious["saved settings"][noxious["current list"]] then
						noxious["saved settings"][noxious["current list"]] = {}
					end

					local checkedBoxes = {}
					for name, state in pairs(element.boxStates) do
						if state then
							table.insert(checkedBoxes, name)
						end
					end

					noxious["saved settings"][noxious["current list"]][element.title] = {
						checked = checkedBoxes
					}
					if not noxious["in studio"] then savenoxioussettings() end
				end)
			end

		elseif element.type == "inputbox" then
			local titleHeight = 20
			local descTextSize = 14
			local descWidth = noxious["container element width"] - 180

			local hasDesc = element.desc and element.desc ~= ""
			local manualDescHeight = element.descHeightOverride
			local descHeight = manualDescHeight or (element.desc and getTextHeight(element.desc, noxious["container element width"] - 60, 12) or 0)
			local spacing = hasDesc and 0 or 0
			local combinedHeight = titleHeight + spacing + descHeight

			local paddingY = 10
			local frameHeight = math.max(noxious["container button height"], combinedHeight + paddingY * 2)

			local frame = createframe(noxious["button container"], UDim2.new(1, -14, 0, frameHeight))

			local contentStartY = math.floor((frameHeight - combinedHeight) / 2)

			local title = Instance.new("TextLabel")
			title.Size = UDim2.new(1, -50, 0, titleHeight)
			title.Position = UDim2.new(0, 10, 0, contentStartY)
			title.BackgroundTransparency = 1
			title.TextColor3 = noxious["default white color"]
			title.Text = element.title
			title.Font = Enum.Font.Nunito
			title.TextSize = 16
			title.TextXAlignment = Enum.TextXAlignment.Left
			title.ZIndex = 4
			title.Parent = frame

			if hasDesc then
				local desc = Instance.new("TextLabel")
				desc.Size = UDim2.new(1, -50, 0, descHeight)
				desc.Position = UDim2.new(0, 10, 0, contentStartY + titleHeight + spacing)
				desc.BackgroundTransparency = 1
				desc.TextColor3 = noxious["default gray color"]
				desc.Text = element.desc
				desc.Font = Enum.Font.Nunito
				desc.TextSize = descTextSize
				desc.TextWrapped = true
				desc.TextXAlignment = Enum.TextXAlignment.Left
				desc.ZIndex = 4
				desc.Parent = frame
			end

			local inputBox = Instance.new("TextBox")
			inputBox.Size = UDim2.new(0, 100, 0, 30)
			inputBox.Position = UDim2.new(1, -120, 0, (frameHeight - 30) / 2)
			inputBox.BackgroundColor3 = noxious["default black color"]
			inputBox.PlaceholderColor3 = noxious["default gray color"]
			inputBox.BorderColor3 = noxious["default white color"]
			inputBox.TextColor3 = noxious["default white color"]
			inputBox.PlaceholderText = element.placeholer or ""
			inputBox.Font = Enum.Font.Nunito
			inputBox.TextSize = 16
			inputBox.ClearTextOnFocus = true
			inputBox.ClipsDescendants = true
			inputBox.ZIndex = 4
			inputBox.Parent = frame

			local initialText = ""
			local isESPColor = element.title:match("ESP$") or element.title:match("ESP Color$")
			local espColorVar = isESPColor and getespcolorvariable(element.title)

			if noxious["saved settings"][noxious["current list"]][element.title] then
				initialText = noxious["saved settings"][noxious["current list"]][element.title].text or ""
				element.text = initialText
			elseif isESPColor and espColorVar and defaultespcolors[espColorVar] then
				local color = defaultespcolors[espColorVar]
				if typeof(color) == "Color3" then
					initialText = string.format("%d, %d, %d",
						math.floor(color.R * 255),
						math.floor(color.G * 255),
						math.floor(color.B * 255))
				else
					initialText = tostring(color)
				end
			elseif element.default ~= nil then
				initialText = element.default
			elseif noxious["default input values"][element.title] then
				initialText = noxious["default input values"][element.title]
			end

			inputBox.Text = initialText
			element.lastInput = initialText

			-- Color preview for ESP input boxes
			local colorPreview
			if isESPColor then
				colorPreview = Instance.new("Frame")
				colorPreview.Size = UDim2.new(0, 7, 0, frameHeight)
				colorPreview.Position = UDim2.new(1, -7, 0, 0)
				colorPreview.BackgroundColor3 = tocolor3(initialText) or Color3.new(1, 1, 1)
				colorPreview.BorderSizePixel = 1
				colorPreview.BorderColor3 = noxious["default white color"]
				colorPreview.ZIndex = 4
				colorPreview.Parent = frame

				inputBox.Position = UDim2.new(1, -127, 0, (frameHeight - 30) / 2)
			end
			
			inputBox.Focused:Connect(function()
				canusekeybind = false
			end)

			inputBox.FocusLost:Connect(function(enterPressed)
				canusekeybind = true
				if enterPressed then
					local processedText = inputBox.Text
					if isESPColor then
						local color = tocolor3(processedText)
						if colorPreview and typeof(color) == "Color3" then
							colorPreview.BackgroundColor3 = color
						end
						if espColorVar then
							local varName = noxious["variable mappings"][element.title]
							if varName and _G[varName] ~= nil then
								_G[varName] = color
							end
							processedText = string.format("%d, %d, %d", 
								math.floor(color.R * 255),
								math.floor(color.G * 255),
								math.floor(color.B * 255))
							inputBox.Text = processedText
							element.func(color)
						end
					else
						if element.title == "Target Toon" then
							local lowerText = processedText:lower()
							local shouldcap = true

							-- Special multi-character key mappings
							local specialKeys = {
								["rnd"] = "RND",
								["razzledazzle"] = "RazzleDazzle",
							}

							-- Check if this input is a special multi-character key
							local isSpecial = specialKeys[lowerText] ~= nil

							if isSpecial then
								processedText = specialKeys[lowerText]
								shouldcap = false
							end

							if shouldcap then
								processedText = processedText:sub(1, 1):upper() .. processedText:sub(2):lower()
							end

							inputBox.Text = processedText
						elseif element.title == "Change Language" then
							local lowerText = processedText:lower()
							local shouldcap = true

							-- Special multi-character key mappings
							local specialKeys = {
								["owoified"] = "OwOified",
							}

							-- Check if this input is a special multi-character key
							local isSpecial = specialKeys[lowerText] ~= nil

							if isSpecial then
								processedText = specialKeys[lowerText]
								shouldcap = false
							end

							if shouldcap then
								processedText = processedText:sub(1, 1):upper() .. processedText:sub(2):lower()
							end

							inputBox.Text = processedText
							if element.title == "Change Language" then
								notify("Chosen Language: " .. processedText, 5)
							end
						elseif element.title == "Toggle Keybind" then
							local lowerText = processedText:lower()
							local shouldcap = true

							-- Special multi-character key mappings
							local specialKeys = {
								["leftshift"] = "LeftShift",
								["rightshift"] = "RightShift",
								["["] = "LeftBracket",
								["]"] = "RightBracket",
								[";"] = "Semicolon",
								[","] = "Comma",
								["."] = "Period",
								["1"] = "One",
								["2"] = "Two",
								["3"] = "Three",
								["4"] = "Four",
								["5"] = "Five",
								["6"] = "Six",
								["7"] = "Seven",
								["8"] = "Eight",
								["9"] = "Nine",
								["0"] = "Zero"
							}

							-- Check if this input is a special multi-character key
							local isSpecial = specialKeys[lowerText] ~= nil

							if isSpecial then
								processedText = specialKeys[lowerText]
								shouldcap = false
							elseif element.title == "Toggle Keybind" and #processedText > 1 then
								-- If not a special key and input is too long, cut to 1 character
								processedText = processedText:sub(1, 1)
							end

							if shouldcap then
								processedText = processedText:sub(1, 1):upper() .. processedText:sub(2):lower()
							end

							-- Check validity as Enum.KeyCode
							local isValidKeyCode = pcall(function()
								return Enum.KeyCode[processedText]
							end)

							if not isValidKeyCode then
								notify(processedText .. " is not a valid keybind.", 5, "error")
								return
							end

							inputBox.Text = processedText
							if element.title == "Toggle Keybind" then
								notify("Toggle Keybind: " .. processedText, 5)
							end
						end

						local varName = noxious["variable mappings"][element.title]
						if varName and _G[varName] ~= nil then
							_G[varName] = processedText
						end

						element.func(processedText)
					end

					element.text = processedText
					element.lastInput = processedText

					noxious["saved settings"][noxious["current list"]][element.title] = {
						text = processedText
					}

					-- Also sync to ESP color table if applicable
					if isESPColor and espColorVar then
						espcolors[espColorVar] = tocolor3(processedText)
					end

					if not noxious["in studio"] then savenoxioussettings() end
					fetchinputs()
				end
			end)
		end
	end
	local bottomspacer = Instance.new("Frame")
	bottomspacer.Size = UDim2.new(1, 0, 0, -2)
	bottomspacer.BackgroundTransparency = 1
	bottomspacer.Name = "BottomSpacer"
	bottomspacer.ZIndex = 1
	bottomspacer.Parent = noxious["button container"]
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["favorited command states"] = noxious["favorited command states"] or {}

noxious["command lists"] = noxious["command lists"] or {}
noxious["button lists"] = noxious["button lists"] or {}
noxious["command lists"]["Favorited Commands"] = noxious["command lists"]["Favorited Commands"] or {}

if not noxious["in studio"] then
	noxious["favorited commands filepath"] = tofolder()
	noxious["favorited commands file"] = noxious["favorited commands filepath"] .. "/FavoritedCommands.txt"
	noxious["favorited command states file"] = noxious["favorited commands filepath"] .. "/FavoritedCommandStates.txt"
end

function deletefile(filename)
	if isfile(filename) then
		delfile(filename)
	end
end

function loadfavoritedcommands()
	if not isfile(noxious["favorited commands file"]) then
		writefile(noxious["favorited commands file"], "")
	end

	if isfile(noxious["favorited commands file"]) then
		local fileContent = readfile(noxious["favorited commands file"])
		for command in fileContent:gmatch('"([^"]+)"') do
			table.insert(noxious["command lists"]["Favorited Commands"], command)
		end
	else
		noxious["command lists"]["Favorited Commands"] = {}
	end
end

function savefavoritedcommands()
	local fileContent = ""
	for _, command in ipairs(noxious["command lists"]["Favorited Commands"]) do
		fileContent = fileContent .. ('"%s",\n'):format(command)
	end
	writefile(noxious["favorited commands file"], fileContent)
end

function loadfavoritedcommandstates()
	if not isfile(noxious["favorited command states file"]) then
		writefile(noxious["favorited command states file"], "")
	end

	if isfile(noxious["favorited command states file"]) then
		local fileContent = readfile(noxious["favorited command states file"])
		for command, state in fileContent:gmatch('"([^"]+)":([01]),') do
			noxious["favorited command states"][command] = state == "1"
		end
	else
		noxious["favorited command states"] = {}
	end
end

function savefavoritedcommandstates()
	local fileContent = ""
	for command, state in pairs(noxious["favorited command states"]) do
		fileContent = fileContent .. ('"%s":%s,\n'):format(command, state and "1" or "0")
	end
	writefile(noxious["favorited command states file"], fileContent)
end

task.spawn(function()
	if not noxious["in studio"] then
		for _, file in pairs(listfiles("")) do
			if file:find("DSWD") then
				local success, err = pcall(function()
					deletefile(file)
				end)
				if success then end
			end
		end
	end
end)

task.spawn(function()
	if not noxious["in studio"] then
		loadfavoritedcommands()
		loadfavoritedcommandstates()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["introduction"] = Instance.new("TextLabel")
noxious["introduction"].Size = UDim2.new(0, 333.3, 0, 204)
noxious["introduction"].Position = UDim2.new(1, -333.5, 0, 50)
noxious["introduction"].TextColor3 = noxious["default white color"]
noxious["introduction"].BorderColor3 = noxious["default white color"]
noxious["introduction"].BackgroundTransparency = 1
noxious["introduction"].Font = Enum.Font.Nunito
noxious["introduction"].Name = "Introduction"
noxious["introduction"].TextSize = 21.6
noxious["introduction"].Text = "Thanks for using our script!\n\nPress a button on the left to get started.\n\nSwitch to the 'Changelogs' tab to view the\nupdate logs.\n\nCurrent version: " .. noxious["version"]
noxious["introduction"].TextWrapped = true
noxious["introduction"].TextXAlignment = Enum.TextXAlignment.Center
noxious["introduction"].TextYAlignment = Enum.TextYAlignment.Center
noxious["introduction"].Parent = mainframe
noxious["introduction"].ZIndex = 3

noxious["tooltip main frame"] = Instance.new("Frame")
noxious["tooltip main frame"].Name = "tooltip"
noxious["tooltip main frame"].Size = UDim2.new(0, 265, 0, 55)
noxious["tooltip main frame"].BackgroundTransparency = 1
noxious["tooltip main frame"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip main frame"].BorderSizePixel = 0
noxious["tooltip main frame"].ZIndex = 999920
noxious["tooltip main frame"].Visible = false
noxious["tooltip main frame"].Parent = noxious["mainframe"]

noxious["tooltip command name"] = Instance.new("TextLabel")
noxious["tooltip command name"].Name = "CommandName"
noxious["tooltip command name"].Size = UDim2.new(0, 333, 0, 27)
noxious["tooltip command name"].Position = UDim2.new(0, -5, 0, -55)
noxious["tooltip command name"].BackgroundTransparency = 0
noxious["tooltip command name"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command name"].TextColor3 = noxious["default white color"]
noxious["tooltip command name"].Font = Enum.Font.Nunito
noxious["tooltip command name"].TextSize = 16
noxious["tooltip command name"].TextScaled = false
noxious["tooltip command name"].TextWrapped = true
noxious["tooltip command name"].BorderSizePixel = 1
noxious["tooltip command name"].BorderColor3 = noxious["default white color"]
noxious["tooltip command name"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command name"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command name"].Parent = noxious["tooltip main frame"]
noxious["tooltip command name"].ZIndex = 10001

noxious["tooltip command description"] = Instance.new("TextLabel")
noxious["tooltip command description"].Name = "Description"
noxious["tooltip command description"].Size = UDim2.new(0, 333, 0, 70)
noxious["tooltip command description"].Position = UDim2.new(0, -5, -0.43, -10)
noxious["tooltip command description"].BackgroundTransparency = 0.2
noxious["tooltip command description"].BackgroundColor3 = noxious["default black color"]
noxious["tooltip command description"].TextColor3 = noxious["default white color"]
noxious["tooltip command description"].Font = Enum.Font.Nunito
noxious["tooltip command description"].TextSize = 16
noxious["tooltip command description"].TextScaled = false
noxious["tooltip command description"].TextWrapped = true
noxious["tooltip command description"].BorderSizePixel = 0
noxious["tooltip command description"].BorderColor3 = noxious["default white color"]
noxious["tooltip command description"].TextXAlignment = Enum.TextXAlignment.Center
noxious["tooltip command description"].TextYAlignment = Enum.TextYAlignment.Center
noxious["tooltip command description"].Parent = noxious["tooltip main frame"]
noxious["tooltip command description"].ZIndex = 10000

local padding = Instance.new("UIPadding")
padding.PaddingLeft = UDim.new(0, 13)
padding.PaddingRight = UDim.new(0, 13)
padding.Parent = noxious["tooltip command description"]

local function isWhitespaceOnly(str)
	return str:match("^%s*$") ~= nil
end

local commandListOrder = {
	"Favorited Commands",
	"Main",
	"Donor Commands",
	"ESPs / Visuals",
	"Client Sided Skins",
	"Map / Environment",
	"Teleports / Locating",
	"Local Player",
	"Fun / Trolls",
	"Automation",
	"Animations / Emotes",
	"Scripts"
}

function initializeAllCommands()
	local allCommands = {}
	local added = {}

	local commandLists = noxious["command lists"]
	if not commandLists then return end

	for _, listName in ipairs(commandListOrder) do
		local list = commandLists[listName]
		if list then
			-- Skip Favorited Commands if empty
			if listName == "Favorited Commands" and #list == 0 then
				continue
			end

			for _, cmd in ipairs(list) do
				-- Avoid duplicate non-whitespace commands
				if isWhitespaceOnly(cmd) or not added[cmd] then
					table.insert(allCommands, cmd)
					if not isWhitespaceOnly(cmd) then
						added[cmd] = true
					end
				end
			end

			-- Add a space if the last line isn't already a space
			if #allCommands > 0 and not isWhitespaceOnly(allCommands[#allCommands]) then
				table.insert(allCommands, "")
			end
		end
	end

	-- Remove final trailing blank line if present
	if #allCommands > 0 and isWhitespaceOnly(allCommands[#allCommands]) then
		table.remove(allCommands)
	end

	-- ⛏️ Clean up consecutive blank lines
	local cleanedCommands = {}
	local lastWasSpace = false

	for _, cmd in ipairs(allCommands) do
		if isWhitespaceOnly(cmd) then
			if not lastWasSpace then
				table.insert(cleanedCommands, cmd)
				lastWasSpace = true
			end
		else
			table.insert(cleanedCommands, cmd)
			lastWasSpace = false
		end
	end

	commandLists["All Commands"] = cleanedCommands
end

initializeAllCommands()

function updatetooltipSize(commandName, description)
	local totalHeight = 40
	local fixedWidth = 302

	noxious["tooltip command name"].Text = commandName
	noxious["tooltip command description"].Text = description

	noxious["tooltip main frame"].Size = UDim2.new(0, fixedWidth, 0, totalHeight)
end

noxious["tooltip hover debounce"] = false
noxious["current hovering command"] = nil

function dispcmds(commandList, listName)
	noxious["scroll bar holder 2"].Visible = false

	if listName and noxious["command lists"][listName] == commandList then
		noxious["current list"] = listName
	end

	for _, child in ipairs(mainframe:GetChildren()) do
		if child:IsA("Frame") and (child.Name == "ButtonContainer" or child.Name == "CommandContainer") then
			child:Destroy()
		elseif child:IsA("TextLabel") and child.Name == "Introduction" then
			child:Destroy()
		elseif (child:IsA("ScrollingFrame") and child.Name == "CommandScrollFrame") or child.Name == "ButtonContainer" then
			child:Destroy()
		end
	end

	if noxious["button lists"] then
		for btnListName, buttonList in pairs(noxious["button lists"]) do
			if commandList == buttonList then
				return dispbuttons(buttonList)
			end
		end
	end

	local commandscrollframe = Instance.new("ScrollingFrame")
	commandscrollframe.Name = "CommandScrollFrame"
	commandscrollframe.Size = UDim2.new(0, 333, 0, 205)
	commandscrollframe.Position = UDim2.new(1, -333, 0, 50)
	commandscrollframe.CanvasSize = UDim2.new(0, 0, 0, 0)
	commandscrollframe.ScrollBarThickness = 10
	commandscrollframe.BackgroundTransparency = 1
	commandscrollframe.BorderColor3 = noxious["default white color"]
	commandscrollframe.BorderSizePixel = 0
	commandscrollframe.ZIndex = 3
	commandscrollframe.Parent = mainframe
	commandscrollframe.ScrollingDirection = Enum.ScrollingDirection.Y
	commandscrollframe.ScrollBarImageTransparency = 0

	local commandpadding = Instance.new("UIPadding")
	commandpadding.PaddingLeft = UDim.new(0, 8)
	commandpadding.PaddingTop = UDim.new(0, 7)
	commandpadding.Parent = commandscrollframe

	local itemHeight = 15
	local spacing = 1
	local totalHeight = (#commandList * itemHeight) + (#commandList - 1) * spacing

	for i, commandText in ipairs(commandList) do
		if commandText:match("^%s*$") then
			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			commandtext.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing) + 2)
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = commandscrollframe
			commandtext.ZIndex = 4
		else
			local container = Instance.new("Frame")
			container.Size = UDim2.new(1, 0, 0, itemHeight * 1.1)
			container.Position = UDim2.new(0, 0, 0, (i - 1) * (itemHeight + spacing))
			container.BackgroundTransparency = 1
			container.Parent = commandscrollframe
			container.ZIndex = 4

			local imageButton = Instance.new("ImageButton")
			imageButton.Size = UDim2.new(0, 16, 0, 16)
			imageButton.Position = UDim2.new(0, -3.5, 0.5, 0.5)
			imageButton.AnchorPoint = Vector2.new(0, 0.5)
			imageButton.BackgroundTransparency = 1
			imageButton.Image = noxious["favorited command states"][commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099"
			imageButton.Parent = container
			imageButton.ImageColor3 = noxious["default white color"]
			imageButton.ZIndex = 5

			local infobutton = Instance.new("ImageButton")
			infobutton.Size = UDim2.new(0, 16, 0, 16)
			infobutton.Position = UDim2.new(0, 12, 0.5, 0.5)
			infobutton.AnchorPoint = Vector2.new(0, 0.5)
			infobutton.BackgroundTransparency = 1
			infobutton.Image = "rbxassetid://76311199408449"
			infobutton.Parent = container
			infobutton.ImageColor3 = noxious["default white color"]
			infobutton.ZIndex = 5

			local commandtext = Instance.new("TextButton")
			commandtext.Size = UDim2.new(1, -20, 1, 0)
			commandtext.Position = UDim2.new(0, 30, 0, 0)
			commandtext.BackgroundTransparency = 1
			commandtext.TextColor3 = noxious["default white color"]
			commandtext.Font = Enum.Font.Nunito
			commandtext.TextSize = 17
			commandtext.TextScaled = false
			commandtext.Text = commandText
			commandtext.BorderSizePixel = 0
			commandtext.TextXAlignment = Enum.TextXAlignment.Left
			commandtext.Parent = container
			commandtext.ZIndex = 5

			-- Favoriting toggle logic
			imageButton.MouseButton1Click:Connect(function()
				playclicksound()

				noxious["favorited command states"][commandText] = not noxious["favorited command states"][commandText]
				imageButton.Image = noxious["favorited command states"][commandText] and "rbxassetid://84270520426892" or "rbxassetid://110183128911099"

				if noxious["favorited command states"][commandText] then
					if not table.find(noxious["command lists"]["Favorited Commands"], commandText) then
						table.insert(noxious["command lists"]["Favorited Commands"], commandText)
					end
				else
					local index = table.find(noxious["command lists"]["Favorited Commands"], commandText)
					if index then
						table.remove(noxious["command lists"]["Favorited Commands"], index)
					end
				end

				task.spawn(savefavoritedcommandstates)
				task.spawn(savefavoritedcommands)
				task.spawn(initializeAllCommands)
			end)

			commandtext.MouseButton1Click:Connect(function()
				playclicksound()

				local commandText = commandtext.Text
				local commandName

				commandName = commandText:match("^(.-),")

				if not commandName then
					commandName = commandText:match("^(.-)%s*%[")
				end

				if not commandName then
					commandName = commandText:match("^(.-)%s*%-")
				end

				commandName = commandName or commandText

				commandName = commandName:gsub("%(P%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(HP%) ", ""):gsub("%s+$", "")
				commandName = commandName:gsub("%(KEY%) ", ""):gsub("%s+$", "")

				noxious["command bar"].Text = commandName
			end)

			infobutton.MouseEnter:Connect(function()
				if not noxious["tooltip hover debounce"] and commandText and commandText:match("^%s*$") == nil then
					noxious["tooltip hover debounce"] = true
					noxious["current hovering command"] = commandtext

					local namePart, descriptionPart = commandText:match("^(.-)%s*%-%s*(.*)$")
					namePart = namePart or commandText
					descriptionPart = descriptionPart or ""

					updatetooltipSize(namePart, descriptionPart)

					noxious["tooltip main frame"].Position = infobutton.Position + UDim2.new(0, 254, 0, 76)
					noxious["tooltip main frame"].Visible = true

					task.delay(0.05, function()
						noxious["tooltip hover debounce"] = false
					end)
				end
			end)

			infobutton.MouseLeave:Connect(function()
				if noxious["current hovering command"] == commandtext then
					noxious["tooltip main frame"].Visible = false
					noxious["current hovering command"] = nil
				end
			end)
		end
	end

	commandscrollframe.CanvasSize = UDim2.new(0, 0, 0.017, totalHeight+ 11)
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["command button holder"] = Instance.new("ScrollingFrame")
noxious["command button holder"].Size = UDim2.new(0, 260.7, 0, 204)
noxious["command button holder"].Position = UDim2.new(0, 0, 0, 50)
noxious["command button holder"].ScrollBarThickness = 12
noxious["command button holder"].BackgroundTransparency = 1
noxious["command button holder"].BorderSizePixel = 1
noxious["command button holder"].BorderColor3 = noxious["default white color"]
noxious["command button holder"].Parent = mainframe
noxious["command button holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["command button holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["command button holder"].ScrollBarImageTransparency = 0

-------------------------------------------------------------------------------------------------------------------------------

noxious["scroll bar holder"] = Instance.new("Frame")
noxious["scroll bar holder"].Size = UDim2.new(0, 12.100000000000001, 0, 242.00000000000003)
noxious["scroll bar holder"].BackgroundColor3 = noxious["default black color"]
noxious["scroll bar holder"].BorderSizePixel = 0
noxious["scroll bar holder"].Position = UDim2.new(0, 248, 0, 48)
noxious["scroll bar holder"].BorderColor3 = noxious["default white color"]
noxious["scroll bar holder"].BorderSizePixel = 1
noxious["scroll bar holder"].ZIndex = 0
noxious["scroll bar holder"].Parent = mainframe

-------------------------------------------------------------------------------------------------------------------------------

task.wait(0.1)

-------------------------------------------------------------------------------------------------------------------------------

-- triple check...
if not noxious["in studio"] then
	loadnoxioussettings()
	initializenoxioussettings()
	syncespcolors()
	print("[Noxious Hub]: File config load attempt #3")
end

-------------------------------------------------------------------------------------------------------------------------------

local sectionData = {
	{type = "separator", text = " ┌  Commands  ─────────────────────────"},
	{type = "button", text = "All Commands"},
	{type = "button", text = "Main"},
	{type = "button", text = "Donor Commands"},
	{type = "button", text = "Favorited Commands"},
	{type = "button", text = "ESPs / Visuals"},
	{type = "button", text = "Client Sided Skins"},
	{type = "button", text = "Map / Environment"},
	{type = "button", text = "Teleports / Locating"},
	{type = "button", text = "Local Player"},
	{type = "button", text = "Fun / Trolls"},
	{type = "button", text = "Automation"},
	{type = "button", text = "Animations / Emotes"},
	{type = "button", text = "Scripts"},
	{type = "separator", text = " ├  Buttons  ──────────────────────────"},
	{type = "button", text = "Autofarm"},
	{type = "button", text = "Animations"},
	{type = "button", text = "Toon Customization"},
	{type = "separator", text = " ├  File  ─────────────────────────────"},
	{type = "button", text = "Configuration"},
	{type = "button", text = "Settings"},
	{type = "separator", text = " └─────────────────────────────────────"},
}

function updateButtonText(clickedButton)
	for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
		if button:IsA("TextButton") then
			if clickedButton and button == clickedButton then
				if not button.Text:find("> ") then
					button.Text = "> " .. button.Text .. " <"
				end
			else
				button.Text = button.Text:gsub("> ", ""):gsub(" <", "")
			end
		end
	end
end

noxious["buttons section button height"] = 45
noxious["buttons section seperator height"] = 20
noxious["buttons section vertical spacing"] = 10
noxious["buttons section starting y pos"] = 9

noxious["command button holder"]:ClearAllChildren()

for _, element in ipairs(sectionData) do
	if element.type == "separator" then
		local separator = Instance.new("TextLabel")
		separator.Name = "Separator_"..element.text
		separator.Size = UDim2.new(0, 219, 0, noxious["buttons section seperator height"])
		separator.Position = UDim2.new(0, 8, 0, noxious["buttons section starting y pos"])
		separator.BackgroundTransparency = 1
		separator.TextColor3 = noxious["default white color"]
		separator.Text = element.text
		separator.TextXAlignment = Enum.TextXAlignment.Left
		separator.Font = Enum.Font.Nunito
		separator.TextSize = 19.2
		separator.ZIndex = 18
		separator.ClipsDescendants = true
		separator.Parent = noxious["command button holder"]

		local seppadding = Instance.new("UIPadding")
		seppadding.PaddingTop = UDim.new(0, 1)
		seppadding.Parent = separator

		noxious["buttons section starting y pos"] = noxious["buttons section starting y pos"] + noxious["buttons section seperator height"] + noxious["buttons section vertical spacing"]
	elseif element.type == "button" then
		local button = Instance.new("TextButton")
		button.Name = "Btn_"..element.text
		button.Size = UDim2.new(0, 231, 0, noxious["buttons section button height"])
		button.Position = UDim2.new(0, 8, 0, noxious["buttons section starting y pos"])
		button.BackgroundColor3 = Color3.new(0, 0, 0)
		button.TextColor3 = noxious["default white color"]
		button.Text = element.text
		button.BorderSizePixel = 1
		button.BorderColor3 = noxious["default white color"]
		button.ZIndex = 18
		button.Font = Enum.Font.Nunito
		button.TextSize = 19.2
		button.TextXAlignment = Enum.TextXAlignment.Center
		button.Parent = noxious["command button holder"]
		button.AutoButtonColor = true

		local uicorner = Instance.new("UICorner")
		uicorner.CornerRadius = UDim.new(0.2, 0)
		uicorner.Parent = button

		local border = Instance.new("Frame")
		border.Size = UDim2.new(0, 233, 0, noxious["buttons section button height"] + 2)
		border.BackgroundColor3 = noxious["default white color"]
		border.Position = UDim2.new(0, -1, 0, -1)
		border.ZIndex = 17
		border.Parent = button

		local bordercorner = Instance.new("UICorner")
		bordercorner.CornerRadius = UDim.new(0.2, 0)
		bordercorner.Parent = border

		button.MouseButton1Click:Connect(function()
			playclicksound()
			task.spawn(function()
				if noxious["button lists"] and noxious["button lists"][element.text] then
					noxious["current list"] = element.text
					dispbuttons(noxious["button lists"][element.text])
				else
					local commandList = noxious["command lists"][element.text]
					if commandList then
						for _, child in ipairs(mainframe:GetChildren()) do
							if child:IsA("TextLabel") and child.Name == "Introduction" then
								child:Destroy()
							elseif child:IsA("ScrollingFrame") and child.Name == "CommandScrollFrame" then
								child:Destroy()
							elseif child:IsA("Frame") and child.Name == "CommandContainer" then
								child:Destroy()
							end
						end
						dispcmds(commandList)
					end
				end

				-- <<<<< HERE: update previousListName to current clicked button list >>>>>
				previousListName = element.text
				noxious["current displayed list"] = element.text

				updateButtonText(button)
			end)
		end)

		noxious["buttons section starting y pos"] = noxious["buttons section starting y pos"] + noxious["buttons section button height"] + noxious["buttons section vertical spacing"]
	end
end

noxious["command button holder"].CanvasSize = UDim2.new(0, 0, 0, noxious["buttons section starting y pos"] - 2)

-------------------------------------------------------------------------------------------------------------------------------

noxious["tabs frame"] = Instance.new("Frame")
noxious["tabs frame"].Size = UDim2.new(0, 594, 0, 26.4)
noxious["tabs frame"].Position = UDim2.new(0, 0, 0, 53)
noxious["tabs frame"].BackgroundColor3 = noxious["default black color"]
noxious["tabs frame"].BorderColor3 = noxious["default white color"]
noxious["tabs frame"].BorderSizePixel = 1
noxious["tabs frame"].Parent = noxious["top frame"]

tabCount = 4
tabWidth = 0.25
totalRelativeWidth = tabCount * tabWidth
startPosition = (1 - totalRelativeWidth) / 2

noxious["functions tab"] = Instance.new("TextButton")
noxious["functions tab"].Size = UDim2.new(tabWidth, 0, 0, 26.4)
noxious["functions tab"].Position = UDim2.new(startPosition, 0, 0, 0)
noxious["functions tab"].BackgroundColor3 = noxious["default black color"]
noxious["functions tab"].BorderColor3 = noxious["default white color"]
noxious["functions tab"].BorderSizePixel = 1
noxious["functions tab"].Parent = noxious["tabs frame"]
noxious["functions tab"].TextColor3 = noxious["default white color"]
noxious["functions tab"].Font = Enum.Font.Nunito
noxious["functions tab"].TextSize = 20
noxious["functions tab"].TextScaled = false
noxious["functions tab"].Text = "> Functions <"
noxious["functions tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["functions tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["information tab"] = Instance.new("TextButton")
noxious["information tab"].Size = UDim2.new(tabWidth, 0, 0, 26.4)
noxious["information tab"].Position = UDim2.new(startPosition + tabWidth, 0, 0, 0)
noxious["information tab"].BackgroundColor3 = noxious["default black color"]
noxious["information tab"].BorderColor3 = noxious["default white color"]
noxious["information tab"].BorderSizePixel = 1
noxious["information tab"].Parent = noxious["tabs frame"]
noxious["information tab"].TextColor3 = noxious["default white color"]
noxious["information tab"].Font = Enum.Font.Nunito
noxious["information tab"].TextSize = 20
noxious["information tab"].TextScaled = false
noxious["information tab"].Text = "Info"
noxious["information tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["information tab"].TextYAlignment = Enum.TextYAlignment.Center

noxious["changelogs tab"] = Instance.new("TextButton")
noxious["changelogs tab"].Size = UDim2.new(tabWidth, 0, 0, 26.4)
noxious["changelogs tab"].Position = UDim2.new(startPosition + tabWidth * 2, 0, 0, 0)
noxious["changelogs tab"].BackgroundColor3 = noxious["default black color"]
noxious["changelogs tab"].BorderColor3 = noxious["default white color"]
noxious["changelogs tab"].BorderSizePixel = 1
noxious["changelogs tab"].Parent = noxious["tabs frame"]
noxious["changelogs tab"].TextColor3 = noxious["default white color"]
noxious["changelogs tab"].Font = Enum.Font.Nunito
noxious["changelogs tab"].TextSize = 20
noxious["changelogs tab"].TextScaled = false
noxious["changelogs tab"].Text = "Changes"
noxious["changelogs tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["changelogs tab"].TextYAlignment = Enum.TextYAlignment.Center


noxious["credits tab"] = Instance.new("TextButton")
noxious["credits tab"].Size = UDim2.new(tabWidth, 0, 0, 26.4)
noxious["credits tab"].Position = UDim2.new(startPosition + tabWidth * 3, 0, 0, 0)
noxious["credits tab"].BackgroundColor3 = noxious["default black color"]
noxious["credits tab"].BorderColor3 = noxious["default white color"]
noxious["credits tab"].BorderSizePixel = 1
noxious["credits tab"].Parent = noxious["tabs frame"]
noxious["credits tab"].TextColor3 = noxious["default white color"]
noxious["credits tab"].Font = Enum.Font.Nunito
noxious["credits tab"].TextSize = 20
noxious["credits tab"].TextScaled = false
noxious["credits tab"].Text = "Credits"
noxious["credits tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["credits tab"].TextYAlignment = Enum.TextYAlignment.Center

-------------------------------------------------------------------------------------------------------------------------------

noxious["settings tab"] = Instance.new("TextButton")
noxious["settings tab"].Size = UDim2.new(0.5, 0, 0, 26.4)
noxious["settings tab"].Position = UDim2.new(startPosition, 0, 0, 0)
noxious["settings tab"].BackgroundColor3 = noxious["default black color"]
noxious["settings tab"].BorderColor3 = noxious["default white color"]
noxious["settings tab"].BorderSizePixel = 1
noxious["settings tab"].Parent = noxious["tabs frame"]
noxious["settings tab"].TextColor3 = noxious["default white color"]
noxious["settings tab"].Font = Enum.Font.Nunito
noxious["settings tab"].TextSize = 20
noxious["settings tab"].TextScaled = false
noxious["settings tab"].Text = "> Settings <"
noxious["settings tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["settings tab"].TextYAlignment = Enum.TextYAlignment.Center
noxious["settings tab"].Visible = false

noxious["configurations tab"] = Instance.new("TextButton")
noxious["configurations tab"].Size = UDim2.new(0.5, 0, 0, 26.4)
noxious["configurations tab"].Position = UDim2.new(startPosition + 0.5, 0, 0, 0)
noxious["configurations tab"].BackgroundColor3 = noxious["default black color"]
noxious["configurations tab"].BorderColor3 = noxious["default white color"]
noxious["configurations tab"].BorderSizePixel = 1
noxious["configurations tab"].Parent = noxious["tabs frame"]
noxious["configurations tab"].TextColor3 = noxious["default white color"]
noxious["configurations tab"].Font = Enum.Font.Nunito
noxious["configurations tab"].TextSize = 20
noxious["configurations tab"].TextScaled = false
noxious["configurations tab"].Text = "Configurations"
noxious["configurations tab"].TextXAlignment = Enum.TextXAlignment.Center
noxious["configurations tab"].TextYAlignment = Enum.TextYAlignment.Center
noxious["configurations tab"].Visible = false

-------------------------------------------------------------------------------------------------------------------------------

noxious["back to functions button"] = Instance.new("TextButton")
noxious["back to functions button"].Visible = false
noxious["back to functions button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["back to functions button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["back to functions button"].BackgroundColor3 = noxious["default black color"]
noxious["back to functions button"].BorderColor3 = noxious["default white color"]
noxious["back to functions button"].BorderSizePixel = 1
noxious["back to functions button"].Parent = noxious["bottom frame"]
noxious["back to functions button"].TextColor3 = noxious["default white color"]
noxious["back to functions button"].Font = Enum.Font.Nunito
noxious["back to functions button"].TextSize = 20
noxious["back to functions button"].TextScaled = false
noxious["back to functions button"].Text = "Back to Functions"
noxious["back to functions button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["back to functions button"].TextYAlignment = Enum.TextYAlignment.Center

noxious["back to functions button ui corner"] = Instance.new("UICorner")
noxious["back to functions button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["back to functions button ui corner"].Parent = noxious["back to functions button"]

noxious["back to functions button border"] = Instance.new("Frame")
noxious["back to functions button border"].Size = UDim2.new(0, 158.3, 0, 38.3)
noxious["back to functions button border"].BackgroundColor3 = noxious["default white color"]
noxious["back to functions button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["back to functions button border"].Parent = noxious["back to functions button"]
noxious["back to functions button border"].ZIndex = 18

noxious["back to functions button border ui corner"] = Instance.new("UICorner")
noxious["back to functions button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["back to functions button border ui corner"].Parent = noxious["back to functions button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["back button"] = Instance.new("TextButton")
noxious["back button"].Visible = false
noxious["back button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["back button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["back button"].BackgroundColor3 = noxious["default black color"]
noxious["back button"].BorderColor3 = noxious["default white color"]
noxious["back button"].BorderSizePixel = 1
noxious["back button"].Parent = noxious["bottom frame"]
noxious["back button"].TextColor3 = noxious["default white color"]
noxious["back button"].Font = Enum.Font.Nunito
noxious["back button"].TextSize = 20
noxious["back button"].TextScaled = false
noxious["back button"].Text = "Back"
noxious["back button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["back button"].TextYAlignment = Enum.TextYAlignment.Center

noxious["back button ui corner"] = Instance.new("UICorner")
noxious["back button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["back button ui corner"].Parent = noxious["back button"]

noxious["back button border"] = Instance.new("Frame")
noxious["back button border"].Size = UDim2.new(0, 158.3, 0, 38.3)
noxious["back button border"].BackgroundColor3 = noxious["default white color"]
noxious["back button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["back button border"].Parent = noxious["back button"]
noxious["back button border"].ZIndex = 18

noxious["back button border ui corner"] = Instance.new("UICorner")
noxious["back button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["back button border ui corner"].Parent = noxious["back button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["reload noxious button"] = Instance.new("TextButton")
noxious["reload noxious button"].Visible = false
noxious["reload noxious button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["reload noxious button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["reload noxious button"].BackgroundColor3 = noxious["default black color"]
noxious["reload noxious button"].BorderColor3 = noxious["default white color"]
noxious["reload noxious button"].BorderSizePixel = 1
noxious["reload noxious button"].Parent = noxious["bottom frame"]
noxious["reload noxious button"].TextColor3 = noxious["default white color"]
noxious["reload noxious button"].Font = Enum.Font.Nunito
noxious["reload noxious button"].TextSize = 20
noxious["reload noxious button"].TextScaled = false
noxious["reload noxious button"].Text = "Reload Noxious"
noxious["reload noxious button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["reload noxious button"].TextYAlignment = Enum.TextYAlignment.Center

noxious["reload noxious button ui corner"] = Instance.new("UICorner")
noxious["reload noxious button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["reload noxious button ui corner"].Parent = noxious["reload noxious button"]

noxious["reload noxious button border"] = Instance.new("Frame")
noxious["reload noxious button border"].Size = UDim2.new(0, 138.3, 0, 38.3)
noxious["reload noxious button border"].BackgroundColor3 = noxious["default white color"]
noxious["reload noxious button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["reload noxious button border"].Parent = noxious["reload noxious button"]
noxious["reload noxious button border"].ZIndex = 18

noxious["reload noxious button border ui corner"] = Instance.new("UICorner")
noxious["reload noxious button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["reload noxious button border ui corner"].Parent = noxious["reload noxious button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"] = Instance.new("TextButton")
noxious["workspace.info button"].Visible = false
noxious["workspace.info button"].Size = UDim2.new(0, 156.3, 0, 36.3)
noxious["workspace.info button"].Position = UDim2.new(0.013, 0, 0.1579, 0)
noxious["workspace.info button"].BackgroundColor3 = noxious["default black color"]
noxious["workspace.info button"].BorderColor3 = noxious["default white color"]
noxious["workspace.info button"].BorderSizePixel = 1
noxious["workspace.info button"].Parent = noxious["bottom frame"]
noxious["workspace.info button"].TextColor3 = noxious["default white color"]
noxious["workspace.info button"].Font = Enum.Font.Nunito
noxious["workspace.info button"].TextSize = 20
noxious["workspace.info button"].TextScaled = false
noxious["workspace.info button"].Text = "Workspace.Info"
noxious["workspace.info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["workspace.info button"].TextYAlignment = Enum.TextYAlignment.Center

noxious["workspace.info button ui corner"] = Instance.new("UICorner")
noxious["workspace.info button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["workspace.info button ui corner"].Parent = noxious["workspace.info button"]

noxious["workspace.info button border"] = Instance.new("Frame")
noxious["workspace.info button border"].Size = UDim2.new(0, 158.3, 0, 38.3)
noxious["workspace.info button border"].BackgroundColor3 = noxious["default white color"]
noxious["workspace.info button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["workspace.info button border"].Parent = noxious["workspace.info button"]
noxious["workspace.info button border"].ZIndex = 18

noxious["workspace.info button border ui corner"] = Instance.new("UICorner")
noxious["workspace.info button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["workspace.info button border ui corner"].Parent = noxious["workspace.info button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"] = Instance.new("TextButton")
noxious["noxious info button"].Visible = false
noxious["noxious info button"].Size = UDim2.new(0, 136.3, 0, 36.3)
noxious["noxious info button"].Position = UDim2.new(0.292, 0, 0.1579, 0)
noxious["noxious info button"].BackgroundColor3 = noxious["default black color"]
noxious["noxious info button"].BorderColor3 = noxious["default white color"]
noxious["noxious info button"].BorderSizePixel = 1
noxious["noxious info button"].Parent = noxious["bottom frame"]
noxious["noxious info button"].TextColor3 = noxious["default white color"]
noxious["noxious info button"].Font = Enum.Font.Nunito
noxious["noxious info button"].TextSize = 20
noxious["noxious info button"].TextScaled = false
noxious["noxious info button"].Text = "> Noxious Info <"
noxious["noxious info button"].TextXAlignment = Enum.TextXAlignment.Center
noxious["noxious info button"].TextYAlignment = Enum.TextYAlignment.Center

noxious["noxious info button ui corner"] = Instance.new("UICorner")
noxious["noxious info button ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["noxious info button ui corner"].Parent = noxious["noxious info button"]

noxious["noxious info button border"] = Instance.new("Frame")
noxious["noxious info button border"].Size = UDim2.new(0, 138.3, 0, 38.3)
noxious["noxious info button border"].BackgroundColor3 = noxious["default white color"]
noxious["noxious info button border"].Position = UDim2.new(0, -1, 0, -1)
noxious["noxious info button border"].Parent = noxious["noxious info button"]
noxious["noxious info button border"].ZIndex = 18

noxious["noxious info button border ui corner"] = Instance.new("UICorner")
noxious["noxious info button border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["noxious info button border ui corner"].Parent = noxious["noxious info button border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["total commands"] = 0

for listName, commandList in pairs(noxious["command lists"]) do
	if listName ~= "All Commands" then
		for _, commandString in ipairs(commandList) do
			if string.find(commandString, " %- ") then
				noxious["total commands"] += 1
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs"] = {
	{type = "line", text = "┌  Current version (Version " .. noxious["version"] .. ")", paddingRight = 12},
	{type = "paragraph",
		text = [[
UI changes:
- Adjusted the look of the interface.
- Added categories.
- Added 2 new categories. (Buttons, File)
- Renamed the 'Commands' tab to 'Functions'.
- Removed the 'Patched Commands' commands section.
- Renamed the 'Teleports' command section with 'Teleports / Locating'.

Command updates:
- Added 3 'Main' commands. (rerun, commandbar, joinrandomnoxioususer)
- Added 19 'Local Player' commands. (pulsespeed, unpulsespeed, disableinfinitestamina, enable / disable extractingtpwalk [speed], enable / disable dodgetwisteds, exitdeath, rejoindeath, rerundeath, un / loopspeed [speed], enable / disable buyaura, enable / disable antitendrils, un / stretchcamera [x, y])
- Added 3 'Client Sided Skins' commands. (changeskin, clonestack [number], unclonestack)
- Added 4 'Automation' commands. (enable / disable autosprint, enable / disable autoshellyboost)
- Added 6 'Donor Commands' commands. (scriptolviajumpscare, scriptps4glitchjumpscare, scriptlucyjumpscare, noxioususercheck, scriptpatrickbatemanscreamingjumpscare, scriptkendricklamarjumpscare)
- Added 10 'Fun / Trolls' commands. (floatlay, unfloatlay, upsidedown, rightsideup, rotate [x, y, z], convulse, unconvulse, xspin [speed], zspin [speed], reversemessages)
- Added 4 'Teleports / Locating' commands. (teleporttofakeelevator, pathfindtogenerator, pathfindtoelevator, predictserverposition)
- Attempted to make the script cause less performance issues.
- Removed patched commands.
- Replaced the 'enablegodmode2' command with 'enableavoidtwisteds'.
- Replaced the 'disablegodmode3' command with 'disableavoidtwisteds'.
- Removed the 'animationsgui' and the 'autofarmgui' commands.
- Removed the 'scarletautofarm' command. Use the one in her hub.
- Attempted to fix the 'riddance' command not working at all.
- Renamed the 'infinitestamina' command to 'enableinfinitestamina'.
- Renamed the 'getresearch' command to 'encountertwisteds'.
- Made the 'fly' command easier to control.
- Made it so the 'enablegeneratoraura' command doesnt force you back into the machine when a twisted spots you or when you want to stop extracting.
- Made it so the 'teleporttogenerator' command excludes generators that are being worked on.
- Updated the 'enableautoteleporttogenerator' command.
- Made it so the 'enableautovotebestcard' command votes for the heal card if any Toons have a health lower than 3.
- Made it so the 'enableinfinitestamina' command works with Looey's passive ability.

Other:
- Removed script execution logging.
- Attempted to fix Donor commands not working at all.
- Rewrote and optimized the script's code.
- Updated teleportation method.
- Removed the animations GUI and the autofarm GUI.
- Corrected spelling errors.
- Fixed script crashing when executing on Krnl.
- Fixed Toon checks. (idk how we keep accidentally removing it)
- Added generator statuses for the generator ESP.
- Changed 'Heals' to 'Rare Items' and 'Extraction Items' to 'Super Rare Items' for the ESP, and changed their targets.
- Updated the timer functionality for the ESP for Twisteds that have a grabbing ability. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.6 (Fully released on June 11th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Updated the 'enablegodmode3' command.
- Attempted to fix both 'enableitemaura2' and 'enablegeneratoraura' commands causing performance issues.
- Attempted to make the 'getresearch' command more reliable.

Other:
- Updated teleportation method. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.5 (Fully released on June 9th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 1 'Local Player' command. (infinitestamina) 
- Added 2 'Automation' commands. (enable / disable autovotebestcard)
- Attempted to fix the 'enablegodmode3' command bugging out on some occasions.
- Attempted to fix the 'enableautoteleporttogenerator' command only working once.
- Attempted to fix the 'enablerareitemspickedupnotifier' command only working once.

Other:
- Made it so there is an ability cooldown timer for the Twisted craft siblings.
- Made it so teleporting to a generator excludes generators that are being worked on. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.4 (Fully released on June 6th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 2 'Local Player' commands. (disablegodmode, disablegodmode2)
- Added 1 'Automation' command. (disableautocalibration2)
- Added Twisted Toodles' old animations for the 'animationpack' command.
- Attempted to fix the 'enablegodmode3' command bugging out on some occasions.
- Attempted to fix both 'enablegeneratoraura' and 'enableitemaura2' commands causing problems with your server position.
- Made it so the 'enablegeneratoraura' command does not work on posessed machines.

Other:
- Attempted to optimize the ESP. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.3 (Fully released on June 3rd 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added an argument for the 'enablespameggsonabilityaudio' command. (speed)
- Fixed commands from update 7.8.2 disappearing.

Other:
- Updated the Animations GUI. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.2 (Fully released on June 1st 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 12 'Automation' commands. (enable / disable panicautopickupallitems, enable / disable panicautopickupallresearchcapsules, enable / disable panicautopickupalltapes, enable / disable, panicautopickupallheals, enable / disable panicautopickupallresearchcapsules, enable / disable panicautogetresearch)
- Added 2 'Fun / Trolls' commands. (enable / disable spameggsonabilityaudio)
- Attempted to fix the 'facelessshrimpo' command making your face untextured.
- Fixed commands from update 7.8.1 disappearing. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.1 (Fully released on May 31st 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
UI changes:
- Added 1 command button. (Automation)
- Attempted to fix commands and lists not fully loading.

Command updates:
- Added 3 'Local Player' commands. (disableanticheatbypasser)
- Added 2 'Map / Environment' commands. (pointlight [target] [range] [color], unpointlight [target])
- Added 12 'Automation' commands. (enable / disable autopickupallitems, enable / disable autopickupallresearchcapsules, enable / disable autopickupalltapes, enable / disable autopickupallheals, enable / disable autopickupallextractionitems, enable / disable autogetresearch)
- Added 1 'Client Sided Skins' command. (whatsappastro)
- Replaced the 'bypassanticheat' command with 'enableanticheatbypasser'. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.8.0 (Fully released on May 25th 2025)", paddingRight = 12},

	{type = "paragraph",
		text = [[
Command updates:
- Added 1 'Main' command. (scarletdiscord)
- Added 13 'ESPs / Visuals' commands. (enable / disable elevatoresp, enable / disable elevatortracers, enable / disable sproutstendrilesp, enable / disable sproutstendriltracers, enable / disable blotshandsesp, enable / disable blotshandstracers, faketapes [number])
- Added 2 'Client Sided Skins' commands. (facelessshrimpo, smilingcosmo)
- Added 11 'Map / Environment' commands. (close / open elevator, close / open trapdoors, enable / disable panicmode, enable / disable blackout, fakefloor [number], fakerequiredmachines [number], fakemachinescompleted [number])
- Added 16 'Local Player' commands. (enable / disable autovoterandomcard, enable / disable autovotehealcard, enable / disable autovoteblindgrabcard, enable / disable autovotetapescard, enable / disable autovotefrugalcard, enable / disable autovoteelevatortimecard, enable / disable autovotemaxstaminacard, enable / disable autovotesparkplugcard, enable / disable autovoteelectriciancard, enable / disable autovotecovetouscard, enable / disable autovotetechsavvycard, enable / disable autovoteabilitycard)
- Fixed the 'fakeblackouts', 'fakeichor', 'fakedandyitemspurchased', 'fakefloorstraveled', 'fakemachinescompleted', 'fakefurthestfloor', and 'fakeitemspickedup' commands not working at all.
- Made it so the ESP for the research capsules tween to black for mains.
- Fixed the 'enablenotifer' command not executing the 'enablerareitemspickedupnotifier' command. 
- Made it so the 'enablelooprunspeed' plays your Toon's running animation when moving for Toons with new animation rigs.
- Attempted to fix the 'enablerareitemspickedupnotifier' command not working at all after notifying once. 

Other:
- Added Vee and Twisted Vee's new animations to the Animations GUI.
- Added Blot and Twisted Blot's animations to the Animations GUI. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.9 (Fully released on May 23rd 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Made it so executing a command in the 'Patched Commands' section will give you a warning.
- Renamed the 'Risky Commands' command button to 'Patched Commands'.
- Updated the 'Info' section.
 
Command updates:
- Added 1 'Scripts' command. (scarletdwscript)
- Added 3 'Donor Commands' commands. (scriptstripperblotjumpscare, scriptpalemachinejumpscare, jobapplicationjumpscare)
- Added 2 'Local Player' commands. (enable / disable shiftlock)
- Added some patched commands to the 'Patched Commands' section.
- Added Blot to the 'unlockalltoons' command.
- Added Blot and Twisted Blot's animations to the 'animationpack' command.
- Added Vee and Twisted Vee's new animations to the 'animationpack' command. 

Other:
- Fixed the ESP not working at all. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.8 (Fully released on May 23rd 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Renamed the 'Risky Commands' command button to 'Patched Commands'.
 
Command updates:
- Updated the 'enablegodmode3' command and made it more reliable.
- Renamed the 'enable / disable allvisualizers' commands to 'show / hide allvisualizers'.
- Fixed the 'smallserverhop' command always not being able to find a small server.
- Fixed the 'enablewalkfling' command glitching your character.
- Attempted to fix commands regarding teleportation always disabling noclip upon execution.
	 
Other:
- Added Blot and Twisted Blot's animations to the Animations GUI.
- Attempted to optimize the script. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.7 (Fully released on May 20th 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Fixed configurations and settings tab requiring two inputs in order to edit a setting for mobile.
- Removed the Settings and Configurations tab and added a 'Settings' button in the 'Credits' section.
- Attempted to fix commands and lists not fully loading.
- Updated the interface design.
- Added a minimize interface button.
- Brung back the 'Client Sided Skins' command list button.
- Updated the intro sequence.

Command updates:
- Added 1 'Map / Environment' commands. (spawnplushies)
- Added 2 'Main' commands. (serverhop, smallserverhop)
- Added 4 'Animations / Emotes' commands. (spasm, unspasm, glitch, unglitch)
- Added 1 'Donor Commands' command. (scriptforceruncommand [command])
- Added 2 'Risky Commands' commands. (enable / disable spameggsonabilityaudio)
- Added Twisted Toon animations for the animpack command.
- Renamed the 'enable / disable rareitempickedupchatguider' commands to 'enable / disable rareitempickedupnotifier.'
- Renamed 'bbang' to 'peg'.
- Removed the 'usesemiblatantloadout' command and replaced it with the 'usenonblatantloadout' command.
- Made it so the 'enablelooprunspeed' command gets adjusted and multiplied by the walkspeed modifier.
- Fixed the 'enablesprouthealnearby' and 'enablecosmohealnearby' commands not working at all.

Other:
- Attempted to fix the donor gamepass check.
- Fixed ESP configurations not working at all.
- Updated item name aliases.
- Attempted to fix random lagspikes occurring when reaching floor 5-7.
- Made it so extraction speed candies count as an extraction item.
- Adjusted some command descriptions.
- Renamed 'Premium' to 'Donor'.
- Attempted to optimize the script. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Version 7.7.6 (Fully released on May 14th 2025)", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
UI changes:
- Attempted to fix commands and lists not fully loading.
- Updated the Intro animations.
- Removed the settings and main button.
- Added 2 new tabs. (Configs, Settings)
- Renamed Changelogs tab to 'Changes'.
 
Command updates:
- Added 6 'Local Player' commands. (enable / disable dekaautofarm, enable / disable sprouthealnearby, enable / disable cosmohealnearby)
- Attempted to fix the 'enableitempickupchatguider' command spamming messages.
- Attempted to fix the 'deleteinvisibleborders' command not working at all.
- Fixed Vee's Remote causing issues for the 'gtechatguider' command.
	 
Other:
- Fixed command descriptions. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["information"] = {
	{type = "line", text = "┌  Script information", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
Noxious Hub: Dandy's World (Version ]] .. noxious["version"] .. [[)
A script used to enhance your experience when playing Dandy's World.
Total commands: ]] .. noxious["total commands"] .. [[


Thank you all for ]] .. noxious["uses"] .. [[ uses!
If you enjoy the script, please consider donating for donor perks! (getdonorperks) ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Command information", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
Command bar prefix: . ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Keybinds", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
Press Q or the icon to skip the loading sequence after running the script.

Press the toggle button to toggle the visibility of the interface.

Press X on your keyboard to close all notifications. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Toon names", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
'Astro' = Astro
'Bassie' = Bassie
'Boxten' = Boxten
'Bobette' = Bobette
'Blot' = Blot
'Brightney' = Brightney
'Coal' = Coal
'Cocoa' = Cocoa
'Connie' = Connie
'Cosmo' = Cosmo
'Dandy' = Dandy
'Eggson' = Eggson
'Finn' = Finn
'Flutter' = Flutter
'Flyte' = Flyte
'Gigi' = Gigi
'Ginger' = Ginger
'Glisten' = Glisten
'Goob' = Goob
'Looey' = Looey
'Pebble', 'Pebbles' = Pebble
'Poppy' = Poppy
'RazzleAndDazzle', 'RazzleDazzle', 'RND' = Razzle & Dazzle
'Rodger' = Rodger
'Rudie' = Rudie
'Scraps' = Scraps
'Shelly' = Shelly
'Shrimpo' = Shrimpo
'Srpout' = Sprout
'Teagan' = Teagan
'Tisha' = Tisha
'Toodles' = Toodles
'Vee' = Vee
'Yatta' = Yatta ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Command arguments", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
[target] = Sets the target(s) for the command.
[target 1] [target 2] = Sets target 2 to be affected by target 1.
[command] = Sets the command used for the command.
[(asset) id] = Sets the target asset ID used for the command.
[color] = Sets the color used for the command.
[number] = Sets the number input for the command.
[speed] = Sets the speed for the command.
[range] = Sets the range for the command.
[delay] = Sets the delay for a loop command.
[text] = Sets the text used for the command.
[toon name] = Sets the Toon used for the command.
[x, y, z] = Sets the X, Y, and Z values for the command. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Player arguments", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
'Me' = Targets you
'Others' = Targets everyone but you
'All' = Targets everyone in the server
'Random' = Targets a random player in the server.
'(Username)' = Targets the specified username. ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Color arguments", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
'Red', 'R' = Red color
'Orange', 'O' = Orange color
'Yellow', 'Y' = Yellow color
'Green', 'GN' = Green color
'Cyan', 'C' = Cyan color
'Blue', 'BE' = Blue color
'Purple', 'PE' = Purple color
'Pink', 'PK' = Pink color
'Brown', 'BN' = Brown color
'White', 'W' = White color
'Gray', 'GY' = Gray color
'Black', 'BK' = Black color
'Rainbow', 'RB' = Dynamic rainbow ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits"] = {
	{type = "line", text = "┌  Team Noxious, Team Occulence & Others", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
unable & Plethora - Scripting, UI designing
dextrocities, pronouncer & mnqn - Scripting, Bug fixing
hypnic, incognito, & qapacity - Scripting
OpenAI & nomin8 - Bug fixing
scope & timeisticking - UI designing
Able, craadle & Our Testers - Testing ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Additional thanks / Credits", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
Scarlet & olivia - For their 'Riddance Hub' script and anticheat bypasses
Deka (Omen) - For their godmodes, anticheat bypasses and autofarm script
Crossattic - For their teleport bypass
Rode Striker - For their 'The Dandy Helper' script
FFJ - For their 'Dandys | FFJ Hub' script
jaonoobao - For their 'Poltergeist Hub' script
ApparentlySpooks & Mox - For their 'MoxHub' and 'Spooks Hub' scripts
Otvajni - For their 'Fly REBORN' and 'EgasHub' scripts
bob junior - For their 'B0bbyhub' script
Bac0nH1ckOff - For their 'OP SCRIPT | REUPLOAD' script
@gigi_hilton on Discord - For his Twisted Poppy skin script
@omg0960 on Discord - For their 'Yiw Hub' script
G0bbyD0llan57 - For their 'G0bbyD0llan DW' script
Hex233222 - For their 'Hex's Hub' script
RED_BLOXZ - For their 'Mobile Keyboard' script
Edge & Others - For their 'FE Infinite Yield' script
Moon & Others - For their 'Dark Dex' script
ScriptBlox Comments - Reporting bugs and making suggestions ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},

	{type = "line", text = "┌  Developer note", paddingRight = 12},

	{
		type = "paragraph",
		text = [[
nebulabrasque by cherryteam finna be a fire ass level icl ]],
		width = UDim2.new(0, 565, 0, 0),
		paddingLeft = 1,
		paddingRight = 10,
		textPaddingLeft = 8,
		textPaddingTop = 6
	},
}

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs holder"] = Instance.new("ScrollingFrame")
noxious["changelogs holder"].Visible = false
noxious["changelogs holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["changelogs holder"].Position = UDim2.new(0, 0, 0, 50)
noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["changelogs holder"].ScrollBarThickness = 10
noxious["changelogs holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["changelogs holder"].BackgroundTransparency = 1
noxious["changelogs holder"].BorderSizePixel = 0
noxious["changelogs holder"].BorderColor3 = noxious["default white color"]
noxious["changelogs holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["changelogs holder"].Parent = mainframe

noxious["changelogs text padding"] = Instance.new("UIPadding")
noxious["changelogs text padding"].PaddingLeft = UDim.new(0, 8)
noxious["changelogs text padding"].PaddingTop = UDim.new(0, 4)
noxious["changelogs text padding"].Parent = noxious["changelogs holder"]

function populateChangelogs(entries)
	local offsetY = 0
	for _, entry in ipairs(entries) do
		local element = Instance.new("TextLabel")

		local leftPad = entry.paddingLeft or 5
		local rightPad = entry.paddingRight or 5
		local topPad = entry.paddingTop or 5
		local bottomPad = entry.paddingBottom or 5

		element.Position = UDim2.new(0, leftPad, 0, offsetY)
		element.BackgroundTransparency = (entry.type == "line") and 1 or 0
		element.BackgroundColor3 = (entry.type == "paragraph") and Color3.fromRGB(0, 0, 0) or Color3.new(0, 0, 0)
		element.BorderSizePixel = 1
		element.BorderColor3 = noxious["default white color"]
		element.TextColor3 = noxious["default white color"]
		element.Font = Enum.Font.Nunito
		element.TextSize = 19
		element.TextWrapped = true
		element.TextScaled = false
		element.TextXAlignment = Enum.TextXAlignment.Left
		element.TextYAlignment = Enum.TextYAlignment.Top
		element.Text = entry.text
		element.Parent = noxious["changelogs holder"]
		element.ZIndex = 3

		if entry.type == "paragraph" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, entry.textPaddingLeft or 6)
			padding.PaddingTop = UDim.new(0, entry.textPaddingTop or 4)
			padding.PaddingRight = UDim.new(0, entry.textPaddingRight or 6)
			padding.PaddingBottom = UDim.new(0, entry.textPaddingBottom or 4)
			padding.Parent = element
			element.TextSize = 17
		end

		if entry.type == "line" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, -2)
			padding.PaddingTop = UDim.new(0, 6)
			padding.Parent = element
		end

		local widthOffset = (leftPad + rightPad)
		local widthUDim = entry.width or UDim2.new(1, -widthOffset, 0, 10)
		element.Size = widthUDim

		local height
		if entry.height then
			height = entry.height
		else
			local textService = game:GetService("TextService")
			local contentWidth = noxious["changelogs holder"].AbsoluteSize.X - (widthOffset + 10)
			local textSize = textService:GetTextSize(entry.text, 19, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			if entry.type == "paragraph" then
				textSize = textService:GetTextSize(entry.text, 17, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			end
			height = math.max(30, textSize.Y + topPad + bottomPad + 3)
		end

		element.Size = UDim2.new(element.Size.X.Scale, element.Size.X.Offset, 0, height)

		offsetY += height + 4
	end

	noxious["changelogs holder"].CanvasSize = UDim2.new(0, 0, 0, offsetY + 9)
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["information holder"] = Instance.new("ScrollingFrame")
noxious["information holder"].Visible = false
noxious["information holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["information holder"].Position = UDim2.new(0, 0, 0, 50)
noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["information holder"].ScrollBarThickness = 10
noxious["information holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["information holder"].BackgroundTransparency = 1
noxious["information holder"].BorderSizePixel = 0
noxious["information holder"].BorderColor3 = noxious["default white color"]
noxious["information holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["information holder"].Parent = mainframe

noxious["information text padding"] = Instance.new("UIPadding")
noxious["information text padding"].PaddingLeft = UDim.new(0, 8)
noxious["information text padding"].PaddingTop = UDim.new(0, 4)
noxious["information text padding"].Parent = noxious["information holder"]

function populateInformation(entries)
	local offsetY = 0
	for _, entry in ipairs(entries) do
		local element = Instance.new("TextLabel")

		local leftPad = entry.paddingLeft or 5
		local rightPad = entry.paddingRight or 5
		local topPad = entry.paddingTop or 5
		local bottomPad = entry.paddingBottom or 5

		element.Position = UDim2.new(0, leftPad, 0, offsetY)
		element.BackgroundTransparency = (entry.type == "line") and 1 or 0
		element.BackgroundColor3 = (entry.type == "paragraph") and Color3.fromRGB(0, 0, 0) or Color3.new(0, 0, 0)
		element.BorderSizePixel = 1
		element.BorderColor3 = noxious["default white color"]
		element.TextColor3 = noxious["default white color"]
		element.Font = Enum.Font.Nunito
		element.TextSize = 19
		element.TextWrapped = true
		element.TextScaled = false
		element.TextXAlignment = Enum.TextXAlignment.Left
		element.TextYAlignment = Enum.TextYAlignment.Top
		element.Text = entry.text
		element.Parent = noxious["information holder"]
		element.ZIndex = 3

		if entry.type == "paragraph" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, entry.textPaddingLeft or 6)
			padding.PaddingTop = UDim.new(0, entry.textPaddingTop or 4)
			padding.PaddingRight = UDim.new(0, entry.textPaddingRight or 6)
			padding.PaddingBottom = UDim.new(0, entry.textPaddingBottom or 4)
			padding.Parent = element
			element.TextSize = 17
		end

		if entry.type == "line" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, -2)
			padding.PaddingTop = UDim.new(0, 6)
			padding.Parent = element
		end

		local widthOffset = (leftPad + rightPad)
		local widthUDim = entry.width or UDim2.new(1, -widthOffset, 0, 10)
		element.Size = widthUDim

		local height
		if entry.height then
			height = entry.height
		else
			local textService = game:GetService("TextService")
			local contentWidth = noxious["information holder"].AbsoluteSize.X - (widthOffset + 10)
			local textSize = textService:GetTextSize(entry.text, 19, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			if entry.type == "paragraph" then
				textSize = textService:GetTextSize(entry.text, 17, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			end
			height = math.max(30, textSize.Y + topPad + bottomPad + 3)
		end

		element.Size = UDim2.new(element.Size.X.Scale, element.Size.X.Offset, 0, height)

		offsetY += height + 4
	end

	noxious["information holder"].CanvasSize = UDim2.new(0, 0, 0, offsetY + 9)
end

-------------------------------------------------------------------------------------------------------------------------------

function populateinfo()
	local infoFolder = workspace:FindFirstChild("Info")

	local excludedNames = {
		["Message"] = true,
		["PickedCharacters"] = true,
		["PlayerStats"] = true,
		["CardVote"] = true,
		["DandyTracker"] = true,
		["CardModifiers"] = true,
		["ForceSpawnFloor"] = true,
		["GameStats"] = true,
		["ElevatorPrompt"] = true,
	}

	local function populateInformation(entries)
		local offsetY = 0
		local holder = noxious["dandy's world workspace.info holder"]

		for _, child in ipairs(holder:GetChildren()) do
			if child:IsA("TextLabel") then
				child:Destroy()
			end
		end

		for _, entry in ipairs(entries) do
			local element = Instance.new("TextLabel")

			local leftPad = entry.paddingLeft or 5
			local rightPad = entry.paddingRight or 5
			local topPad = entry.paddingTop or 5
			local bottomPad = entry.paddingBottom or 5

			element.Position = UDim2.new(0, leftPad, 0, offsetY)
			element.BackgroundTransparency = (entry.type == "line") and 1 or 0
			element.BackgroundColor3 = (entry.type == "paragraph") and Color3.fromRGB(0, 0, 0) or Color3.new(0, 0, 0)
			element.BorderSizePixel = 1
			element.BorderColor3 = noxious["default white color"]
			element.TextColor3 = noxious["default white color"]
			element.Font = Enum.Font.Nunito
			element.TextSize = 19
			element.TextWrapped = true
			element.TextScaled = false
			element.TextXAlignment = Enum.TextXAlignment.Left
			element.TextYAlignment = Enum.TextYAlignment.Top
			element.Text = entry.text
			element.Parent = holder
			element.ZIndex = 3

			if entry.type == "paragraph" or entry.type == "title" then
				local padding = Instance.new("UIPadding")
				padding.PaddingLeft = UDim.new(0, entry.textPaddingLeft or 6)
				padding.PaddingTop = UDim.new(0, entry.textPaddingTop or 4)
				padding.PaddingRight = UDim.new(0, entry.textPaddingRight or 6)
				padding.PaddingBottom = UDim.new(0, entry.textPaddingBottom or 4)
				padding.Parent = element

				if entry.type == "paragraph" then
					element.TextSize = 17
					element.Size = UDim2.new(0, 2, 0, 0)
				end

				if entry.type == "title" then
					element.BackgroundTransparency = 1
				end
			end

			local widthOffset = (leftPad + rightPad)
			local widthUDim = entry.width or UDim2.new(1, -widthOffset, 0, 10)
			element.Size = widthUDim

			local height
			if entry.height then
				height = entry.height
			else
				local textService = game:GetService("TextService")
				local contentWidth = holder.AbsoluteSize.X - (widthOffset + 10)
				local fontSize = (entry.type == "paragraph") and 17 or 19
				local textSize = textService:GetTextSize(entry.text, fontSize, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
				height = math.max(30, textSize.Y + topPad + bottomPad)
			end

			element.Size = UDim2.new(element.Size.X.Scale, element.Size.X.Offset, 0, height)
			offsetY += height + 6
		end

		holder.CanvasSize = UDim2.new(0, 0, 0, offsetY + 7)
	end

	if typeof(infoFolder) ~= "Instance" or not infoFolder:IsA("Folder") then
		populateInformation({
			{type = "title", 
				text = "┌  Information (Workspace.Info)", 			
				paddingLeft = -3,
				paddingRight = 5,
				paddingTop = 5,
				paddingBottom = 5,
				textPaddingLeft = 6,
				textPaddingTop = 6,
				textPaddingRight = 6,
				textPaddingBottom = 4,},
			{type = "paragraph", 
				text = "No information available.",
				width = UDim2.new(0, 565, 0, 10),
				paddingLeft = 1,
				paddingRight = 5,
				paddingTop = 5,
				paddingBottom = 5,
				textPaddingLeft = 8,
				textPaddingTop = 6,
				textPaddingRight = 6,
				textPaddingBottom = 4,
			}
		})
		return
	end

	local function getValue(instance)
		if instance:IsA("StringValue") then
			return instance.Value
		elseif instance:IsA("IntValue") or instance:IsA("NumberValue") or instance:IsA("BoolValue") then
			return tostring(instance.Value)
		else
			return "N/A"
		end
	end

	local function refresh()
		local entries = {}

		table.insert(entries, {
			type = "title",
			text = "┌  Information (Workspace.Info)",
			paddingLeft = -3,
			paddingRight = 5,
			paddingTop = 5,
			paddingBottom = 5,
			textPaddingLeft = 6,
			textPaddingTop = 6,
			textPaddingRight = 6,
			textPaddingBottom = 4,
		})

		local infoEntries = infoFolder and infoFolder:GetChildren() or noxious["dandy's world workspace.info"]
		local paragraphText = ""

		local lines = {}
		for _, child in ipairs(infoEntries) do
			if not excludedNames[child.Name] then
				table.insert(lines, "[" .. child.Name .. "]: " .. getValue(child))
			end
		end

		paragraphText = table.concat(lines, "\n")

		if paragraphText == "" then
			paragraphText = "No information available."
		end

		table.insert(entries, {
			type = "paragraph",
			text = paragraphText,
			width = UDim2.new(0, 565, 0, 8),
			paddingLeft = 1,
			paddingRight = 5,
			paddingTop = 5,
			paddingBottom = 5,
			textPaddingLeft = 6,
			textPaddingTop = 4,
			textPaddingRight = 6,
			textPaddingBottom = 4,
		})

		populateInformation(entries)
	end

	refresh()

	if infoFolder then
		infoFolder.ChildAdded:Connect(function()
			task.wait(0.1)
			refresh()
		end)
		infoFolder.ChildRemoved:Connect(refresh)

		for _, child in ipairs(infoFolder:GetChildren()) do
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(refresh)
			end
		end

		infoFolder.ChildAdded:Connect(function(child)
			if child:IsA("ValueBase") then
				child:GetPropertyChangedSignal("Value"):Connect(refresh)
			end
		end)
	end
end

noxious["dandy's world workspace.info holder"] = Instance.new("ScrollingFrame")
noxious["dandy's world workspace.info holder"].Visible = false
noxious["dandy's world workspace.info holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["dandy's world workspace.info holder"].Position = UDim2.new(0, 0, 0, 50)
noxious["dandy's world workspace.info holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["dandy's world workspace.info holder"].ScrollBarThickness = 10
noxious["dandy's world workspace.info holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].BackgroundTransparency = 1
noxious["dandy's world workspace.info holder"].BorderSizePixel = 0
noxious["dandy's world workspace.info holder"].BorderColor3 = noxious["default white color"]
noxious["dandy's world workspace.info holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["dandy's world workspace.info holder"].Parent = mainframe

noxious["dandy's world workspace.info text padding"] = Instance.new("UIPadding")
noxious["dandy's world workspace.info text padding"].PaddingLeft = UDim.new(0, 8)
noxious["dandy's world workspace.info text padding"].PaddingTop = UDim.new(0, 4)
noxious["dandy's world workspace.info text padding"].Parent = noxious["dandy's world workspace.info holder"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits holder"] = Instance.new("ScrollingFrame")
noxious["credits holder"].Visible = false
noxious["credits holder"].Size = UDim2.new(1, 0, 0, 204)
noxious["credits holder"].Position = UDim2.new(0, 0, 0, 50)
noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0, 0)
noxious["credits holder"].ScrollBarThickness = 10
noxious["credits holder"].ScrollBarImageColor3 = noxious["default white color"]
noxious["credits holder"].BackgroundTransparency = 1
noxious["credits holder"].BorderSizePixel = 0
noxious["credits holder"].BorderColor3 = noxious["default white color"]
noxious["credits holder"].ScrollingDirection = Enum.ScrollingDirection.Y
noxious["credits holder"].Parent = mainframe

noxious["credits text padding"] = Instance.new("UIPadding")
noxious["credits text padding"].PaddingLeft = UDim.new(0, 8)
noxious["credits text padding"].PaddingTop = UDim.new(0, 4)
noxious["credits text padding"].Parent = noxious["credits holder"]

function populatecredits(entries)
	local offsetY = 0
	for _, entry in ipairs(entries) do
		local element = Instance.new("TextLabel")

		local leftPad = entry.paddingLeft or 5
		local rightPad = entry.paddingRight or 5
		local topPad = entry.paddingTop or 5
		local bottomPad = entry.paddingBottom or 5

		element.Position = UDim2.new(0, leftPad, 0, offsetY)
		element.BackgroundTransparency = (entry.type == "line") and 1 or 0
		element.BackgroundColor3 = (entry.type == "paragraph") and Color3.fromRGB(0, 0, 0) or Color3.new(0, 0, 0)
		element.BorderSizePixel = 1
		element.BorderColor3 = noxious["default white color"]
		element.TextColor3 = noxious["default white color"]
		element.Font = Enum.Font.Nunito
		element.TextSize = 19
		element.TextWrapped = true
		element.TextScaled = false
		element.TextXAlignment = Enum.TextXAlignment.Left
		element.TextYAlignment = Enum.TextYAlignment.Top
		element.Text = entry.text
		element.Parent = noxious["credits holder"]
		element.ZIndex = 3

		if entry.type == "paragraph" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, entry.textPaddingLeft or 6)
			padding.PaddingTop = UDim.new(0, entry.textPaddingTop or 4)
			padding.PaddingRight = UDim.new(0, entry.textPaddingRight or 6)
			padding.PaddingBottom = UDim.new(0, entry.textPaddingBottom or 4)
			padding.Parent = element
			element.TextSize = 17
		end

		if entry.type == "line" then
			local padding = Instance.new("UIPadding")
			padding.PaddingLeft = UDim.new(0, -2)
			padding.PaddingTop = UDim.new(0, 6)
			padding.Parent = element
		end

		local widthOffset = (leftPad + rightPad)
		local widthUDim = entry.width or UDim2.new(1, -widthOffset, 0, 10)
		element.Size = widthUDim

		local height
		if entry.height then
			height = entry.height
		else
			local textService = game:GetService("TextService")
			local contentWidth = noxious["credits holder"].AbsoluteSize.X - (widthOffset + 10)
			local textSize = textService:GetTextSize(entry.text, 19, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			if entry.type == "paragraph" then
				textSize = textService:GetTextSize(entry.text, 17, Enum.Font.Nunito, Vector2.new(contentWidth, math.huge))
			end
			height = math.max(30, textSize.Y + topPad + bottomPad + 3)
		end

		element.Size = UDim2.new(element.Size.X.Scale, element.Size.X.Offset, 0, height)

		offsetY += height + 4
	end

	noxious["credits holder"].CanvasSize = UDim2.new(0, 0, 0, offsetY + 9)
end

-------------------------------------------------------------------------------------------------------------------------------

noxious["workspace.info button"].MouseButton1Click:Connect(
	function()
		playclicksound()
		noxious["workspace.info button"].Text = "> Workspace.Info <"
		noxious["noxious info button"].Text = "Noxious Info"

		noxious["information holder"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = true
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["noxious info button"].MouseButton1Click:Connect(
	function()
		playclicksound()
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["noxious info button"].Text = "> Noxious Info <"

		noxious["information holder"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["changelogs tab"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = false
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = true
		noxious["reload noxious button"].Visible = true
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["credits tab"].Text = "Credits"
		noxious["changelogs tab"].Text = "> Changes <"
		noxious["functions tab"].Text = "Functions"
		noxious["information tab"].Text = "Info"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = true
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")		
		if commandscrollframe then
			commandscrollframe.Visible = false
		end
		if buttoncontainer then
			buttoncontainer.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["information tab"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = false
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["noxious info button"].Text = "> Noxious Info <"
		noxious["workspace.info button"].Text = "Workspace.Info"
		noxious["workspace.info button"].Visible = true
		noxious["noxious info button"].Visible = true
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["credits tab"].Text = "Credits"
		noxious["changelogs tab"].Text = "Changes"
		noxious["functions tab"].Text = "Functions"
		noxious["information tab"].Text = "> Info <"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["information holder"].Visible = true
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")		
		if commandscrollframe then
			commandscrollframe.Visible = false
		end
		if buttoncontainer then
			buttoncontainer.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["credits tab"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = false
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = true
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["credits tab"].Text = "> Credits <"
		noxious["changelogs tab"].Text = "Changes"
		noxious["functions tab"].Text = "Functions"
		noxious["information tab"].Text = "Info"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = true
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")	
		if commandscrollframe then
			commandscrollframe.Visible = false
		end
		if buttoncontainer then
			buttoncontainer.Visible = false
		end
	end
)

noxious["back button"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = false
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = true
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["credits tab"].Visible = true
		noxious["changelogs tab"].Visible = true
		noxious["functions tab"].Visible = true
		noxious["information tab"].Visible = true
		noxious["credits tab"].Text = "> Credits <"
		noxious["changelogs tab"].Text = "Changes"
		noxious["functions tab"].Text = "Functions"
		noxious["information tab"].Text = "Info"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["execute button"].Visible = false
		noxious["hide"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = true
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = false
		noxious["command button holder"].Visible = false
		noxious["command bar"].Visible = false
		noxious["scroll bar holder"].Visible = false
		noxious["scroll bar holder 2"].Visible = true
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")	
		if commandscrollframe then
			commandscrollframe.Visible = false
		end
		if buttoncontainer then
			buttoncontainer.Visible = false
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["functions tab"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = true
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["credits tab"].Text = "Credits"
		noxious["changelogs tab"].Text = "Changes"
		noxious["functions tab"].Text = "> Functions <"
		noxious["information tab"].Text = "Info"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")	
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")	
		if commandscrollframe then
			commandscrollframe.Visible = true
		end
		if buttoncontainer then
			buttoncontainer.Visible = true
			noxious["scroll bar holder 2"].Visible = true
		end
	end
)

noxious["back to functions button"].MouseButton1Click:Connect(
	function()
		playclicksound()
		shouldseecmdbar = true
		noxious["back button"].Visible = false
		noxious["back to functions button"].Visible = false
		noxious["reload noxious button"].Visible = false
		noxious["dandy's world workspace.info holder"].Visible = false
		noxious["workspace.info button"].Visible = false
		noxious["noxious info button"].Visible = false
		noxious["execute button"].Visible = true
		noxious["hide"].Visible = true
		noxious["credits tab"].Text = "Credits"
		noxious["changelogs tab"].Text = "Changes"
		noxious["functions tab"].Text = "> Functions <"
		noxious["information tab"].Text = "Info"
		noxious["configurations tab"].Visible = false
		noxious["settings tab"].Visible = false
		noxious["information holder"].Visible = false
		noxious["credits holder"].Visible = false
		noxious["changelogs holder"].Visible = false
		noxious["introduction"].Visible = true
		noxious["command button holder"].Visible = true
		noxious["command bar"].Visible = true
		noxious["scroll bar holder"].Visible = true
		noxious["scroll bar holder 2"].Visible = false
		local commandscrollframe = mainframe:FindFirstChild("CommandScrollFrame")	
		local buttoncontainer = mainframe:FindFirstChild("ButtonContainer")	
		if commandscrollframe then
			commandscrollframe.Visible = true
			noxious["list sublabel"].Visible = true
		end
		if buttoncontainer then
			buttoncontainer.Visible = true
			noxious["scroll bar holder 2"].Visible = true
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

if noxious["is mobile?"] then
	noxious["toggle interface visibility button"].TouchTap:Connect(
		function()
			togglevisibility()
			playclicksound()
		end
	)
else
	noxious["toggle interface visibility button"].MouseButton1Click:Connect(
		function()
			togglevisibility()
			playclicksound()
		end
	)
end

-------------------------------------------------------------------------------------------------------------------------------

shouldseecmdbar = true
oldtopframetext = noxious["top frame text"].Text
oldtopframesubtext = noxious["top frame subtext"].Text

noxious["minimize interface button"].MouseButton1Click:Connect(
	function()
		playclicksound()

		if mainframe.Visible == true then 
			mainframe.Visible = false
		else
			mainframe.Visible = true
		end

		if noxious["mainframe"].Size == UDim2.new(0, 594, 0, 330) then 
			noxious["mainframe"].Size = UDim2.new(0, 594, 0, 52)
			noxious["mainframe shadow"].Size = UDim2.new(0, 608, 0, 65)
		else
			noxious["mainframe"].Size = UDim2.new(0, 594, 0, 330)
			noxious["mainframe shadow"].Size = UDim2.new(0, 608, 0, 350)
		end

		if noxious["minimize interface button"].Text == "-" then
			noxious["minimize interface button"].Text = "+"
		else
			noxious["minimize interface button"].Text = "-"
		end

		if noxious["top frame profile picture"].Image == "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png" then
			noxious["top frame profile picture"].Image = "rbxassetid://130584446591314"
		else
			noxious["top frame profile picture"].Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
		end

		if noxious["minimize interface button"].Text == "+" then
			oldtopframetext = noxious["top frame text"].Text
			oldtopframesubtext = noxious["top frame subtext"].Text
			noxious["top frame text"].Text = "Noxious Hub: Dandy's World"
			noxious["top frame subtext"].Text = "Team Noxious & Team Occulence"
		else
			noxious["top frame text"].Text = oldtopframetext
			noxious["top frame subtext"].Text = oldtopframesubtext
		end

		if noxious["tabs frame"].Visible == true then 
			noxious["tabs frame"].Visible = false
		else
			noxious["tabs frame"].Visible = true
		end

		if noxious["bottom frame"].Visible == true then 
			noxious["bottom frame"].Visible = false
		else
			noxious["bottom frame"].Visible = true
		end

		if noxious["command bar"].Visible == true then 
			noxious["command bar"].Visible = false
		else
			if not shouldseecmdbar then return end
			noxious["command bar"].Visible = true
		end

		if noxious["hide"].Visible == true then 
			noxious["hide"].Visible = false
		else
			noxious["hide"].Visible = true
		end

		if noxious["execute button"].Visible == true then 
			noxious["execute button"].Visible = false
		else
			noxious["execute button"].Visible = true
		end
	end
)

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame team icon"] = Instance.new("ImageLabel")
noxious["bottom frame team icon"].Size = UDim2.new(0, 36.3, 0, 36.3)
noxious["bottom frame team icon"].Position = UDim2.new(0.926, 0, 0.1579, 0)
noxious["bottom frame team icon"].BackgroundTransparency = 0
noxious["bottom frame team icon"].BackgroundColor3 = noxious["default black color"]
noxious["bottom frame team icon"].BorderSizePixel = 1
noxious["bottom frame team icon"].BorderColor3 = noxious["default white color"]
noxious["bottom frame team icon"].Image = "rbxassetid://130584446591314"
noxious["bottom frame team icon"].Parent = noxious["bottom frame"]
noxious["bottom frame team icon"].ImageColor3 = noxious["default white color"]

noxious["bottom frame team icon ui corner"] = Instance.new("UICorner")
noxious["bottom frame team icon ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["bottom frame team icon ui corner"].Parent = noxious["bottom frame team icon"]

noxious["bottom frame team icon border"] = Instance.new("Frame")
noxious["bottom frame team icon border"].Size = UDim2.new(0, 38.3, 0, 38.3)
noxious["bottom frame team icon border"].Position = UDim2.new(0, -1, 0, -1)
noxious["bottom frame team icon border"].BackgroundColor3 = noxious["default white color"]
noxious["bottom frame team icon border"].BorderSizePixel = 0
noxious["bottom frame team icon border"].ZIndex = 18
noxious["bottom frame team icon border"].Parent = noxious["bottom frame team icon"]

noxious["bottom frame team icon border ui corner"] = Instance.new("UICorner")
noxious["bottom frame team icon border ui corner"].CornerRadius = UDim.new(0.2, 0)
noxious["bottom frame team icon border ui corner"].Parent = noxious["bottom frame team icon border"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["bottom frame title"] = Instance.new("TextLabel")
noxious["bottom frame title"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame title"].Position = UDim2.new(0, -37, -0.18, 1)
noxious["bottom frame title"].BackgroundTransparency = 1
noxious["bottom frame title"].TextColor3 = noxious["default white color"]
noxious["bottom frame title"].Font = Enum.Font.Nunito
noxious["bottom frame title"].TextSize = 21.6
noxious["bottom frame title"].TextScaled = false
noxious["bottom frame title"].Text = "Noxious Hub: Dandy's World"
noxious["bottom frame title"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame title"].Parent = noxious["bottom frame"]

noxious["bottom frame subtitle"] = Instance.new("TextLabel")
noxious["bottom frame subtitle"].Size = UDim2.new(0.978, 0, 1.1, -5.5)
noxious["bottom frame subtitle"].Position = UDim2.new(0, -37, 0.18, 1)
noxious["bottom frame subtitle"].BackgroundTransparency = 1
noxious["bottom frame subtitle"].TextColor3 = noxious["default gray color"]
noxious["bottom frame subtitle"].Font = Enum.Font.Nunito
noxious["bottom frame subtitle"].TextSize = 18
noxious["bottom frame subtitle"].TextScaled = false
noxious["bottom frame subtitle"].Text = "Team Noxious & Team Occulence"
noxious["bottom frame subtitle"].TextXAlignment = Enum.TextXAlignment.Right
noxious["bottom frame subtitle"].Parent = noxious["bottom frame"]

-------------------------------------------------------------------------------------------------------------------------------

noxious["toggle interface visibility button"].ZIndex = 20000
noxious["tivb border"].ZIndex = 19999

noxious["tabs frame"].ZIndex = 18
noxious["credits tab"].ZIndex = 19
noxious["configurations tab"].ZIndex = 19
noxious["settings tab"].ZIndex = 19
noxious["information tab"].ZIndex = 19
noxious["changelogs tab"].ZIndex = 19
noxious["functions tab"].ZIndex = 19
noxious["scroll bar holder 2"].ZIndex = 2

noxious["noxious info button"].ZIndex = 19
noxious["workspace.info button"].ZIndex = 19
noxious["reload noxious button"].ZIndex = 19
noxious["back to functions button"].ZIndex = 19
noxious["back button"].ZIndex = 19

noxious["command bar"].ZIndex = 19
noxious["execute button"].ZIndex = 31
noxious["hide"].ZIndex = 22

noxious["top frame"].ZIndex = 17
noxious["top frame profile picture"].ZIndex = 19
noxious["top frame text"].ZIndex = 19
noxious["top frame subtext"].ZIndex = 19
noxious["reposition interface button"].ZIndex = 19
noxious["minimize interface button"].ZIndex = 19
noxious["hide interface button"].ZIndex = 19

noxious["dandy's world workspace.info holder"].ZIndex = 18
noxious["changelogs holder"].ZIndex = 18
noxious["information holder"].ZIndex = 18
noxious["credits holder"].ZIndex = 18

noxious["bottom frame"].ZIndex = 17
noxious["bottom frame team icon"].ZIndex = 19
noxious["bottom frame title"].ZIndex = 19
noxious["bottom frame subtitle"].ZIndex = 19

noxious["command button holder"].ZIndex = 16
noxious["scroll bar holder"].ZIndex = 15

------------------------------------------------------------------------------------------------------------------------------

-- quadruple check...
if not noxious["in studio"] then
	loadnoxioussettings()
	initializenoxioussettings()
	syncespcolors()
	print("[Noxious Hub]: File config load attempt #4")
end

------------------------------------------------------------------------------------------------------------------------------

function intro()
	local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
	local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y

	local frameWidth = 90
	local frameHeight = 90
	local centerX = (screenWidth - frameWidth) / 2
	local centerY = (screenHeight - frameHeight) / 2 - 58

	local screenGui = Instance.new("ScreenGui")
	screenGui.Parent = noxious["screen gui"]

	local function createAndTweenImage(imageId, startPosition, endPosition, startRotation, endRotation, duration)
		local image = Instance.new("ImageLabel")
		image.Size = UDim2.new(0, frameWidth, 0, frameHeight)
		image.Position = startPosition
		image.Image = imageId
		image.BackgroundTransparency = 1
		image.ImageTransparency = 1
		image.Rotation = startRotation
		image.Parent = screenGui

		local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

		local positionTween = noxious["tween service"]:Create(image, tweenInfo, {Position = endPosition})
		local transparencyTween = noxious["tween service"]:Create(image, tweenInfo, {ImageTransparency = 0})
		local rotationTween = noxious["tween service"]:Create(image, tweenInfo, {Rotation = endRotation})

		positionTween:Play()
		rotationTween:Play()
		task.wait(0.4)
		transparencyTween:Play()

		task.spawn(function()
			positionTween.Completed:Wait()
			rotationTween.Completed:Wait()
			transparencyTween.Completed:Wait()
		end)
		task.wait(1.6)

		image:Destroy()
	end

	local duration = 2
	task.spawn(function() 
		createAndTweenImage(
			"rbxassetid://105319046533888",
			UDim2.new(0.5, -frameWidth / 2, 0, -frameHeight),
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180),
			0,
			duration
		)
	end)
	task.spawn(function() 
		createAndTweenImage(
			"rbxassetid://129058777635468",
			UDim2.new(0.5, -frameWidth / 2, 1, 0),
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180),
			0,
			duration
		)
	end)
	task.spawn(function() 
		createAndTweenImage(
			"rbxassetid://99947170158417",
			UDim2.new(0, -frameWidth, 0.5, -frameHeight / 2),
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180),
			0,
			duration
		)
	end)
	task.spawn(function() 
		createAndTweenImage(
			"rbxassetid://95135112375096",
			UDim2.new(1, 0, 0.5, -frameHeight / 2),
			UDim2.new(0, centerX, 0, centerY),
			math.random(-180, 180),
			0,
			duration
		)
	end)

	task.spawn(function() task.wait(duration - 0.7) end)

	task.wait(duration)

	local imageLabel = Instance.new("ImageButton")	
	imageLabel.Parent = screenGui
	imageLabel.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel.Image = "rbxassetid://0"
	imageLabel.BackgroundTransparency = 1
	imageLabel.BorderSizePixel = 0
	imageLabel.ImageTransparency = 1
	imageLabel.ZIndex = 9999

	local imageLabel2 = Instance.new("ImageLabel")	
	imageLabel2.Parent = screenGui
	imageLabel2.Size = UDim2.new(0, frameWidth, 0, frameHeight)
	imageLabel2.Position = UDim2.new(0, centerX, 0, centerY)
	imageLabel2.Image = "rbxassetid://100574547642033"
	imageLabel2.BackgroundTransparency = 1
	imageLabel2.BorderSizePixel = 0
	imageLabel2.ImageTransparency = 0
	imageLabel2.ZIndex = 9999

	local textLabel = Instance.new("TextLabel")	
	textLabel.Parent = screenGui
	textLabel.Size = UDim2.new(0, frameWidth, 0, 40)
	textLabel.Position = UDim2.new(0, centerX - 40, 0, centerY + 13)
	textLabel.Text = " "
	textLabel.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel.Font = Enum.Font.Nunito
	textLabel.BackgroundTransparency = 1
	textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textLabel.TextSize = 22
	textLabel.TextTransparency = 1
	textLabel.TextXAlignment = Enum.TextXAlignment.Left
	textLabel.ZIndex = 9999

	local textLabel2 = Instance.new("TextLabel")	
	textLabel2.Parent = screenGui
	textLabel2.Size = UDim2.new(0, frameWidth, 0, 30)
	textLabel2.Position = UDim2.new(0, centerX - 40, 0, centerY + 42)
	textLabel2.Text = " "
	textLabel2.TextStrokeColor3 = Color3.new(1,1,1)
	textLabel2.Font = Enum.Font.Nunito
	textLabel2.BackgroundTransparency = 1
	textLabel2.TextColor3 = noxious["default white color"]
	textLabel2.TextSize = 21.6
	textLabel2.TextTransparency = 0.5
	textLabel2.TextXAlignment = Enum.TextXAlignment.Left
	textLabel2.ZIndex = 9999

	local targetPosition = UDim2.new(0, centerX - 118, 0, centerY)
	local tweenInfo = TweenInfo.new(
		0.5,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.InOut
	)

	local tween = noxious["tween service"]:Create(imageLabel2, tweenInfo, {
		Position = targetPosition
	})
	local tween2 = noxious["tween service"]:Create(imageLabel, tweenInfo, {
		Position = targetPosition
	})

	local skipRequested = false
	local canSkip = false
	local moveButtonCalled = false

	local function fadeIn()
		local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)

		local imageTween = noxious["tween service"]:Create(imageLabel, tweenInfo, {ImageTransparency = 1})
		local imageTween2 = noxious["tween service"]:Create(imageLabel2, tweenInfo, {ImageTransparency = 0})

		imageTween:Play()
		imageTween2:Play()

		imageTween.Completed:Wait()

		local fullText1 = "Noxious Hub: Dandy's World"
		local fullText2 = "Version " .. noxious["version"] .. " | Initializing..."
		-- local fullText2 = "Test version 7.8.1 | Initializing..."

		textLabel.Text = ""
		textLabel2.Text = ""

		local typingDelay = 0

		task.spawn(function()
			textLabel.TextTransparency = 0
			textLabel2.TextTransparency = 0.5
			for i = 1, #fullText1 do
				textLabel.Text = string.sub(fullText1, 1, i)
				task.wait(typingDelay)
			end
		end)

		task.spawn(function()
			for i = 1, #fullText2 do
				textLabel2.Text = string.sub(fullText2, 1, i)
				task.wait(typingDelay)
			end
		end)

		task.spawn(function()
			while not skipRequested do
				local tweenInfo = TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, -1)
				local goal = {Rotation = imageLabel.Rotation + 360}
				local tween = noxious["tween service"]:Create(imageLabel, tweenInfo, goal)
				local tween2 = noxious["tween service"]:Create(imageLabel2, tweenInfo, goal)
				tween:Play()
				tween2:Play()
				tween.Completed:Wait()
				tween2.Completed:Wait()
			end
		end)

		task.wait(1.5)

		canSkip = true
	end

	task.spawn(function() tween:Play() tween2:Play() end)
	task.spawn(function() task.spawn(fadeIn) end)

	local function fadeOut()
		task.spawn(function()
			imageLabel:Destroy()
		end)		
		local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
		noxious["tween service"]:Create(imageLabel2, tweenInfo, {ImageTransparency = 1}):Play()
		noxious["tween service"]:Create(textLabel, tweenInfo, {TextTransparency = 1}):Play()
		noxious["tween service"]:Create(textLabel2, tweenInfo, {TextTransparency = 1}):Play()
		task.wait(0.5)
		imageLabel2:Destroy()
		textLabel:Destroy()
		textLabel2:Destroy()
	end

	local function handleSkipOrComplete()
		if not moveButtonCalled then
			moveButtonCalled = true
			task.spawn(function() centermainframe(true) dragmainframe() task.wait(0.3) movebutton() end)
			task.spawn(function() populatecredits(noxious["credits"]) end)
			task.spawn(function() populateInformation(noxious["information"]) end)
			task.spawn(function() populateChangelogs(noxious["changelogs"]) end)
			task.spawn(function() populateinfo() end)
			task.spawn(function() fadeOut() end)
			task.spawn(function() log() end)
			noxious["loaded"] = true
			ndebug("Load successful.")
		end
	end

	local textLocked = false

	local function setTextLabel2Text(newText)
		if textLocked then return end
		textLabel2.Text = newText
		if newText == "Successfully loaded!" then
			textLocked = true
		end
	end

	noxious["user input service"].InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if not canSkip then return end
		if input.KeyCode == Enum.KeyCode.Q then
			skipRequested = true
			setTextLabel2Text"Loading sequence skipped."
			handleSkipOrComplete()
			task.spawn(handleSkipOrComplete)
		end
	end)

	local function waitForCompletion()
		local targetMessages = {
			["Successfully loaded!"] = true,
			["Loading sequence skipped."] = true
		}

		repeat
			task.wait()
		until targetMessages[textLabel2.Text]
	end

	local fadeOutFinished = false

	local function handleSkip()
		if not fadeOutFinished then
			skipRequested = true
			setTextLabel2Text("Loading sequence skipped.")
			task.spawn(function() fadeOut() end)
			task.spawn(handleSkipOrComplete)
		end
	end

	local soundPlayed = false

	imageLabel.MouseButton1Click:Connect(function()
		if not canSkip then return end
		if not soundPlayed then
			playclicksound()
			soundPlayed = true
		end
		handleSkip()
	end)

	task.spawn(function()
		task.wait(math.random(3, 5))

		if skipRequested then
			setTextLabel2Text("Loading sequence skipped.")	
		else
			setTextLabel2Text("Successfully loaded!")
		end

		task.spawn(function() fadeOut() end)
		task.spawn(handleSkipOrComplete)
	end)

	waitForCompletion()

	local unablenotified = {}
	local qwelvernotified = {}
	local devnotified = {}
	local hypnicnotified = {}

	-- devs
	local function devnotify(player, isJoining)
		for _, scriptdeveloper in ipairs(noxious["admins"]) do
			if player.Name == scriptdeveloper and not devnotified[player.UserId] then
				if isJoining then
					notify("A Noxious Team Member joined your server.", 5, "tmishere")
				else
					notify("A Noxious Team Member is in your your server.", 5, "tmishere")
				end
				devnotified[player.UserId] = true
			end
		end
	end

	-- unable
	local function unablenotify(player, isJoining)
		for _, unablealt in ipairs(noxious["unable"]) do
			if player.Name == unablealt and not unablenotified[player.UserId] then
				if isJoining then
					notify("Unable joined your server.", 5, "unableishere")
				else
					notify("Unable is in your server.", 5, "unableishere")
				end
				unablenotified[player.UserId] = true
			end
		end
	end

	-- hypnic
	local function hypnicnotify(player, isJoining)
		for _, hypnicacc in ipairs(noxious["hypnic"]) do
			if player.Name == hypnicacc and not hypnicnotified[player.UserId] then
				if isJoining then
					notify("Hypnic joined your server.", 5, "hypnicishere")
				else
					notify("Hypnic is in your server.", 5, "hypnicishere")
				end
				hypnicnotified[player.UserId] = true
			end
		end
	end

	-- qwelver
	local function qwelvernotify(player, isJoining)
		for _, fakeqwelver in ipairs(noxious["qwelver"]) do
			if player.Name == fakeqwelver and not qwelvernotified[player.UserId] then
				if isJoining then
					notify("Qwelver joined your server.", 5, "qwelverishere")
				else
					notify("Qwelver is in your server.", 5, "qwelverishere")
				end
				qwelvernotified[player.UserId] = true
			end
		end
	end

	noxious["players"].PlayerAdded:Connect(function(player)
		unablenotify(player, true)
		hypnicnotify(player, true)
		qwelvernotify(player, true)
		devnotify(player, true)
	end)

	noxious["players"].PlayerRemoving:Connect(function(player)
		devnotified[player.UserId] = nil
		unablenotified[player.UserId] = nil
		hypnicnotified[player.UserId] = nil
		qwelvernotified[player.UserId] = nil
	end)

	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		unablenotify(player, false)
		hypnicnotify(player, false)
		qwelvernotify(player, false)
		devnotify(player, false)
	end

	if istester(noxious["username"]) then
		task.spawn(function()
			notify("Welcome, tester.", 5)
			-- task.wait(1.5)
			-- notify("You are currently using an unreleased version of Noxious Hub: Dandy's World.", 5, "warning")
		end)
	end

	task.wait(1.5)

	if game.PlaceId ~= noxious["dandy's world lobby"] 
		and game.PlaceId ~= noxious["dandy's world run"] 
		and game.PlaceId ~= noxious["dandy's world roleplay server"] 
		and not noxious["in studio"] then

		notify("You aren't in Dandy's World.", 5, "warning")

		task.wait(1.5)

		notify("This script will not function properly.", 5, "warning")
	end
end

cantogglevisibility = false
canusekeybind = true

noxious["user input service"].InputBegan:Connect(function(input)
	if not cantogglevisibility then return end
	if not canusekeybind then return end
	if input.KeyCode == Enum.KeyCode[togglekeybind] then
		togglevisibility()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

-- fuck it
task.spawn(function()
	if not noxious["in studio"] then
		loadnoxioussettings()
		initializenoxioussettings()
		syncespcolors()
		print("[Noxious Hub]: File config load attempt #5")
	end

	if not noxious["in studio"] then
		loadnoxioussettings()
		initializenoxioussettings()
		syncespcolors()
		print("[Noxious Hub]: File config load attempt #6")
	end

	if not noxious["in studio"] then
		loadnoxioussettings()
		initializenoxioussettings()
		syncespcolors()
		print("[Noxious Hub]: File config load attempt #7")
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function popup(func, title, text, button1, button2, iserror)
	if noxious["halt mainframe"] then noxious["halt mainframe"]:Destroy() noxious["halt text"]:Destroy() end

	if iserror then
		noxious["default halt mainframe white color"] = Color3.new(1, 0.3, 0.3)
	else
		noxious["default halt mainframe white color"] = noxious["default white color"]
	end

	local lonebutton = false
	if not button2 then lonebutton = true end

	noxious["alert sound"] = Instance.new("Sound")
	noxious["alert sound"].SoundId = "rbxassetid://8426701399"
	noxious["alert sound"].Parent = workspace
	noxious["alert sound"].Volume = 1

	task.spawn(function() noxious["alert sound"]:Play() end)

	noxious["halt mainframe"] = Instance.new("Frame")
	noxious["halt mainframe"].Parent = noxious["screen gui"]
	noxious["halt mainframe"].Size = UDim2.new(0, 280, 0, 170)
	noxious["halt mainframe"].BackgroundTransparency = 0.6
	noxious["halt mainframe"].BackgroundColor3 = noxious["default black color"]
	noxious["halt mainframe"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["halt mainframe"].ZIndex = 998

	noxious["halt text"] = Instance.new("TextLabel")
	noxious["halt text"].Parent = noxious["screen gui"]
	noxious["halt text"].Size = UDim2.new(0, 240, 0, 170)
	noxious["halt text"].BackgroundTransparency = 1
	noxious["halt text"].BackgroundColor3 = noxious["default black color"]
	noxious["halt text"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["halt text"].TextColor3 = noxious["default halt mainframe white color"]
	noxious["halt text"].TextSize = 17
	noxious["halt text"].TextScaled = false
	noxious["halt text"].TextWrapped = true
	noxious["halt text"].Text = text .. "\n\n"
	noxious["halt text"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["halt text"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["halt text"].Font = Enum.Font.Nunito
	noxious["halt text"].ZIndex = 999

	local textpadding = Instance.new("UIPadding")
	textpadding.PaddingBottom = UDim.new(0, 16)
	textpadding.Parent = noxious["halt text"]

	noxious["halt mainframe line"] = Instance.new("Frame")
	noxious["halt mainframe line"].Size = UDim2.new(0, 1, 0, 150)
	noxious["halt mainframe line"].Position = UDim2.new(0, -1, 0, 0)
	noxious["halt mainframe line"].BackgroundColor3 = noxious["default halt mainframe white color"]
	noxious["halt mainframe line"].BorderSizePixel = 0
	noxious["halt mainframe line"].BackgroundTransparency = 0
	noxious["halt mainframe line"].Parent = noxious["halt mainframe"]
	noxious["halt mainframe line"].Visible = true
	noxious["halt mainframe line"].ZIndex = 1000

	noxious["halt mainframe line 2"] = Instance.new("Frame")
	noxious["halt mainframe line 2"].Size = UDim2.new(0, 1, 0, 150)
	noxious["halt mainframe line 2"].Position = UDim2.new(0, 280, 0, 0)
	noxious["halt mainframe line 2"].BackgroundColor3 = noxious["default halt mainframe white color"]
	noxious["halt mainframe line 2"].BorderSizePixel = 0
	noxious["halt mainframe line 2"].BackgroundTransparency = 0
	noxious["halt mainframe line 2"].Parent =	noxious["halt mainframe"]
	noxious["halt mainframe line 2"].Visible = true
	noxious["halt mainframe line 2"].ZIndex = 1000

	noxious["halt mainframe shadow"] = Instance.new("ImageLabel")
	noxious["halt mainframe shadow"].Name = "Shadow"
	noxious["halt mainframe shadow"].Size = UDim2.new(0, 292, 0, 204)
	noxious["halt mainframe shadow"].Position = UDim2.new(0, -6, 0, -27)
	noxious["halt mainframe shadow"].BackgroundTransparency = 1
	noxious["halt mainframe shadow"].Image = "rbxassetid://1316045217"
	noxious["halt mainframe shadow"].ImageColor3 = Color3.new(0, 0, 0)
	noxious["halt mainframe shadow"].ImageTransparency = 0.3
	noxious["halt mainframe shadow"].ScaleType = Enum.ScaleType.Slice
	noxious["halt mainframe shadow"].SliceCenter = Rect.new(10, 10, 90, 90)
	noxious["halt mainframe shadow"].ZIndex = 998
	noxious["halt mainframe shadow"].Parent = noxious["halt mainframe"]

	noxious["halt top frame"] = Instance.new("TextLabel")
	noxious["halt top frame"].Parent = noxious["halt mainframe"]
	noxious["halt top frame"].Size = UDim2.new(0, 280, 0, 30)
	noxious["halt top frame"].Position = UDim2.new(0, 0, 0, -20)
	noxious["halt top frame"].BackgroundTransparency = 0
	noxious["halt top frame"].BackgroundColor3 = noxious["default black color"]
	noxious["halt top frame"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["halt top frame"].TextColor3 = noxious["default halt mainframe white color"]
	noxious["halt top frame"].TextSize = 20
	noxious["halt top frame"].TextScaled = false
	noxious["halt top frame"].Text = title
	noxious["halt top frame"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["halt top frame"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["halt top frame"].Font = Enum.Font.Nunito
	noxious["halt top frame"].ZIndex = 9992

	noxious["halt bottom frame"] = Instance.new("TextLabel")
	noxious["halt bottom frame"].Parent = noxious["halt mainframe"]
	noxious["halt bottom frame"].Size = UDim2.new(0, 280, 0, 30)
	noxious["halt bottom frame"].Position = UDim2.new(0, 0, 0, 140)
	noxious["halt bottom frame"].BackgroundTransparency = 0
	noxious["halt bottom frame"].BackgroundColor3 = noxious["default black color"]
	noxious["halt bottom frame"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["halt bottom frame"].TextColor3 = noxious["default halt mainframe white color"]
	noxious["halt bottom frame"].TextSize = 20
	noxious["halt bottom frame"].TextScaled = false
	noxious["halt bottom frame"].Text = ""
	noxious["halt bottom frame"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["halt bottom frame"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["halt bottom frame"].Font = Enum.Font.Nunito
	noxious["halt bottom frame"].ZIndex = 9992

	local function centerhaltmainframe()
		local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
		local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
		local frameWidth = 280
		local frameHeight = 140
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 58
		local targetPosition = UDim2.new(0, centerX, 0, centerY)
		local tweenInfo = TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
		local tween = noxious["tween service"]:Create(noxious["halt mainframe"], tweenInfo, {Position = targetPosition})
		tween:Play()
	end
	centerhaltmainframe()

	local function centerhalttext()
		local screenWidth = game:GetService("Workspace").CurrentCamera.ViewportSize.X
		local screenHeight = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
		local frameWidth = 240
		local frameHeight = 140
		local centerX = (screenWidth - frameWidth) / 2
		local centerY = (screenHeight - frameHeight) / 2 - 58
		local targetPosition = UDim2.new(0, centerX, 0, centerY)
		local tweenInfo = TweenInfo.new(0, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut, 0, false, 0)
		local tween = noxious["tween service"]:Create(noxious["halt text"], tweenInfo, {Position = targetPosition})
		tween:Play()
	end
	centerhalttext()

	noxious["yes button"] = Instance.new("TextButton")
	noxious["yes button"].Parent = noxious["halt mainframe"]
	noxious["yes button"].Size = UDim2.new(0, 128, 0, 27)
	if lonebutton then noxious["yes button"].Size = UDim2.new(0, 266, 0, 27) end
	noxious["yes button"].Position = UDim2.new(0, 7, 0, 104)
	noxious["yes button"].BackgroundTransparency = 0
	noxious["yes button"].BackgroundColor3 = noxious["default black color"]
	noxious["yes button"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["yes button"].TextColor3 = noxious["default halt mainframe white color"]
	noxious["yes button"].TextSize = 17
	noxious["yes button"].TextScaled = false
	noxious["yes button"].Text = button1
	noxious["yes button"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["yes button"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["yes button"].Font = Enum.Font.Nunito
	noxious["yes button"].ZIndex = 9992

	noxious["yes button ui corner"] = Instance.new("UICorner")
	noxious["yes button ui corner"].CornerRadius = UDim.new(0.3, 0)
	noxious["yes button ui corner"].Parent = noxious["yes button"]

	noxious["yes button border"] = Instance.new("Frame")
	noxious["yes button border"].Parent = noxious["yes button"]
	noxious["yes button border"].Size = UDim2.new(0, 130, 0, 29)
	if lonebutton then noxious["yes button border"].Size = UDim2.new(0, 268, 0, 29) end
	noxious["yes button border"].Position = UDim2.new(0, -1, 0, -1)
	noxious["yes button border"].BackgroundTransparency = 0
	noxious["yes button border"].BackgroundColor3 = noxious["default halt mainframe white color"]
	noxious["yes button border"].BorderSizePixel = 0
	noxious["yes button border"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["yes button border"].ZIndex = 9991

	noxious["yes button ui corner"] = Instance.new("UICorner")
	noxious["yes button ui corner"].CornerRadius = UDim.new(0.3, 0)
	noxious["yes button ui corner"].Parent = noxious["yes button border"]

	noxious["yes button"].MouseButton1Click:Connect(function()
		playclicksound()
		if noxious["halt mainframe"] then
			noxious["halt mainframe"]:Destroy()
			noxious["halt text"]:Destroy()
		end
		if typeof(func) == "function" then
			func("yes")
		end
	end)

	noxious["no button"] = Instance.new("TextButton")
	if lonebutton then noxious["no button"].Visible = false end
	noxious["no button"].Parent = noxious["halt mainframe"]
	noxious["no button"].Size = UDim2.new(0, 128, 0, 27)
	noxious["no button"].Position = UDim2.new(0, 144, 0, 104)
	noxious["no button"].BackgroundTransparency = 0
	noxious["no button"].BackgroundColor3 = noxious["default black color"]
	noxious["no button"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["no button"].TextColor3 = noxious["default halt mainframe white color"]
	noxious["no button"].TextSize = 17
	noxious["no button"].TextScaled = false
	if not lonebutton then noxious["no button"].Text = button2 end
	noxious["no button"].TextXAlignment = Enum.TextXAlignment.Center
	noxious["no button"].TextYAlignment = Enum.TextYAlignment.Center
	noxious["no button"].Font = Enum.Font.Nunito
	noxious["no button"].ZIndex = 9992

	noxious["no button ui corner"] = Instance.new("UICorner")
	noxious["no button ui corner"].CornerRadius = UDim.new(0.3, 0)
	noxious["no button ui corner"].Parent = noxious["no button"]

	noxious["no button border"] = Instance.new("Frame")
	noxious["no button border"].Parent = noxious["no button"]
	noxious["no button border"].Size = UDim2.new(0, 130, 0, 29)
	noxious["no button border"].Position = UDim2.new(0, -1, 0, -1)
	noxious["no button border"].BackgroundTransparency = 0
	noxious["no button border"].BackgroundColor3 = noxious["default halt mainframe white color"]
	noxious["no button border"].BorderSizePixel = 0
	noxious["no button border"].BorderColor3 = noxious["default halt mainframe white color"]
	noxious["no button border"].ZIndex = 9991

	noxious["no button ui corner"] = Instance.new("UICorner")
	noxious["no button ui corner"].CornerRadius = UDim.new(0.3, 0)
	noxious["no button ui corner"].Parent = noxious["no button border"]

	noxious["no button"].MouseButton1Click:Connect(function()
		playclicksound()
		if noxious["halt mainframe"] then
			noxious["halt mainframe"]:Destroy()
			noxious["halt text"]:Destroy()
		end
		if typeof(func) == "function" then
			func("no")
		end
	end)

	if iserror then
		task.spawn(function()
			local function tweenHaltFrameToWhite()
				if not noxious["halt mainframe"] then return end

				local tweenInfo = TweenInfo.new(
					2,
					Enum.EasingStyle.Linear,
					Enum.EasingDirection.Out,
					0,
					false,
					0
				)

				local elementsToTween = {
					{object = noxious["halt mainframe"], property = "BorderColor3"},
					{object = noxious["halt text"], property = "TextColor3"},
					{object = noxious["halt mainframe line"], property = "BackgroundColor3"},
					{object = noxious["halt mainframe line 2"], property = "BackgroundColor3"},
					{object = noxious["halt top frame"], property = "TextColor3"},
					{object = noxious["halt top frame"], property = "BorderColor3"},
					{object = noxious["halt bottom frame"], property = "TextColor3"},
					{object = noxious["halt bottom frame"], property = "BorderColor3"},
					{object = noxious["yes button"], property = "BorderColor3"},
					{object = noxious["yes button"], property = "TextColor3"},
					{object = noxious["yes button border"], property = "BackgroundColor3"},
					{object = noxious["no button"], property = "BorderColor3"},
					{object = noxious["no button border"], property = "BackgroundColor3"},
					{object = noxious["no button"], property = "TextColor3"},
				}

				for _, element in pairs(elementsToTween) do
					if element.object then
						local tween = noxious["tween service"]:Create(
							element.object,
							tweenInfo,
							{[element.property] = noxious["default white color"]}
						)
						tween:Play()
					end
				end
			end
			tweenHaltFrameToWhite()
		end)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function closeallnotificationswithkey(input, gameProcessedEvent)
	if gameProcessedEvent then
		return
	end

	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.X then
		closeallnotifs()
	end
end

noxious["user input service"].InputBegan:Connect(closeallnotificationswithkey)

-------------------------------------------------------------------------------------------------------------------------------

task.spawn(function()
	if game.PlaceId == noxious["dandy's world run"] then
		noxious["anti anticheat platform"] = Instance.new("Part")
		noxious["anti anticheat platform"].Size = Vector3.new(2048, 1, 2048)
		noxious["anti anticheat platform"].Position = Vector3.new(0, 135, 0)
		noxious["anti anticheat platform"].Anchored = true
		noxious["anti anticheat platform"].Name = "NoxiousAntiAnticheatPlatform"
		noxious["anti anticheat platform"].Material = Enum.Material.Neon
		noxious["anti anticheat platform"].Color = Color3.new(0, 0, 0)
		noxious["anti anticheat platform"].Parent = game.Workspace
	end
end)

task.spawn(function()
	if not noxious["in studio"] then
		for i, v in getconnections(noxious["humanoid"]:GetPropertyChangedSignal("HipHeight")) do
			v:Disable()
		end;
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local commands = {}
local prefix = "."
local prefixreq = true

function addcommand(name, shortname, func)
	commands[string.lower(name)] = func
	if shortname and shortname ~= "" then
		commands[string.lower(shortname)] = func
	end
end

function changeprefix(newprefix)
	if newprefix and newprefix ~= "" then
		prefix = newprefix
	end
end

function parsecmds(input)
	local cmdgroups = {}
	local currentcmd = {}

	local words = {}
	for word in string.gmatch(input, "[^%s]+") do
		table.insert(words, word)
	end

	for i, word in ipairs(words) do
		if word:sub(1, #prefix) == prefix then
			if #currentcmd > 0 then
				table.insert(cmdgroups, currentcmd)
			end
			currentcmd = {word:sub(#prefix + 1)}
		elseif #currentcmd == 0 then
			currentcmd = {word}
		else
			table.insert(currentcmd, word)
		end
	end

	if #currentcmd > 0 then
		table.insert(cmdgroups, currentcmd)
	end

	return cmdgroups
end

function execcmd(input, isRetry)
	local cmdgroups = parsecmds(input)
	local anyValid = false
	local anyInvalid = false

	for _, cmd in ipairs(cmdgroups) do
		local cmdname = string.lower(table.remove(cmd, 1))
		if commands[cmdname] then
			commands[cmdname](table.unpack(cmd))
			anyValid = true
		else
			anyInvalid = true
		end
	end

	return anyValid
end

function handle(command, clr)
	if command == "" then
		notify("Unknown command or invalid arguments.", 5, "error")
		return
	end

	if clr then
		noxious["command bar"].Text = ""
	end

	local success = execcmd(command, false)

	if not success then
		local words = {}
		for word in string.gmatch(command, "[^%s]+") do
			table.insert(words, word)
		end

		if #words > 0 then
			words[1] = prefix .. words[1]
			local retrySuccess = execcmd(table.concat(words, " "), true)

			if not retrySuccess then
				notify("Unknown command or invalid arguments.", 5, "error")
			end
		else
			notify("Unknown command or invalid arguments.", 5, "error")
		end
	end
end

noxious["execute button"].MouseButton1Click:Connect(function()
	playclicksound()
	local text = noxious["command bar"].Text
	canusekeybind = true

	if text == "" then
		task.spawn(function() notify("Unknown command or invalid arguments.", 5, "error") end)
		if autosearchcommand then
			if previousListName == nil then
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
			elseif noxious["command lists"][previousListName] then
				dispcmds(noxious["command lists"][previousListName], previousListName)
				noxious["current displayed list"] = previousListName

				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == previousListName then
							updateButtonText(button)
							break
						end
					end
				end
			else
				for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
					if button:IsA("TextButton") then
						if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
							updateButtonText(button)
							break
						end
					end
				end
				noxious["current displayed list"] = "All Commands"
				dispcmds(noxious["command lists"]["All Commands"])
			end
		end
	else
		handle(text, false)
		if not autosearchcommand then return end
		dispcmds(noxious["command lists"]["All Commands"])
		noxious["current displayed list"] = "All Commands"

		for _, button in ipairs(noxious["command button holder"]:GetChildren()) do
			if button:IsA("TextButton") then
				if button.Text:gsub("> ", ""):gsub(" <", "") == "All Commands" then
					updateButtonText(button)
					break
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function updateCharacterReferences(newCharacter)
	noxious["humanoid"] = newCharacter
	noxious["humanoid"]:WaitForChild"Humanoid"	
end

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

function checktoon(toon)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait() character:WaitForChild("Head")		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild("InGamePlayers")

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("ToonName")

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("Config")			
		local charNameValue = config and config:FindFirstChild("CharacterName")			
		if charNameValue and charNameValue:IsA("StringValue") then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= toon) and (not characterName or characterName ~= toon) then
		notify("You need to be ".. toon .." to enable this.", 5, "error")
		return false
	end

	return true
end

function istoon(toon)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait() character:WaitForChild("Head")		
	local playerModel = workspace:FindFirstChild"Players"or workspace:FindFirstChild("InGamePlayers")

	local toonName = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("ToonName")

	local characterName
	if not toonName then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("Config")			
		local charNameValue = config and config:FindFirstChild("CharacterName")			
		if charNameValue and charNameValue:IsA("StringValue") then
			characterName = charNameValue.Value
		end
	end

	if (not toonName or toonName.Value ~= toon) and (not characterName or characterName ~= toon) then
		return false
	end

	return true
end

-------------------------------------------------------------------------------------------------------------------------------

addcommand("reloadnoxious", "reloadnxs", function()
	reloadnoxiouscommand()
end)

addcommand("repositionnoxious", "reposnxs", function()
	centermainframe(false)
end)

addcommand("hidenoxious", "hidenxs", function()
	togglevisibility()
end)

local destroycallcount = 0

addcommand("destroynoxious", "destroynxs", function()
	destroycallcount += 1

	if destroycallcount == 1 then
		notify("Click button again to confirm.", 5)
	end

	if destroycallcount == 2 then
		task.spawn(function()
			noxious["screen gui"]:Destroy()
		end)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

lineThickness = 6
lineLength = 40
gapSize = 17
fadeOutTime = 0.3
activeCrosshairs = {}
crosshairsEnabled = false

function createCrosshair(position)
	if not crosshairsEnabled then
		return
	end

	local crosshairFrame = Instance.new("Frame")		
	crosshairFrame.Size = UDim2.new(0, lineLength * 2 + gapSize, 0, lineLength * 2 + gapSize)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
	crosshairFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	crosshairFrame.BackgroundTransparency = 1
	crosshairFrame.Parent = noxious["screen gui"]
	crosshairFrame.ZIndex = math.huge

	local function createLine(size, pos)
		local line = Instance.new("Frame")			
		line.Size = size
		line.Position = pos
		line.BackgroundColor3 = Color3.new(1, 1, 1)
		line.BorderSizePixel = 0
		line.AnchorPoint = Vector2.new(0.5, 0.5)
		line.Parent = crosshairFrame
		line.ZIndex = 999
		return line
	end

	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 0, -gapSize / 2))
	createLine(UDim2.new(0, lineThickness, 0, lineLength), UDim2.new(0.5, 0, 1, gapSize / 2))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(0, -gapSize / 2, 0.5, 0))
	createLine(UDim2.new(0, lineLength, 0, lineThickness), UDim2.new(1, gapSize / 2, 0.5, 0))

	local function spinCrosshair()
		local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1)
		local tween = noxious["tween service"]:Create(crosshairFrame, tweenInfo, {Rotation = 360})
		tween:Play()
	end

	spinCrosshair()

	return crosshairFrame
end

function updateCrosshair(crosshairFrame, position)
	crosshairFrame.Position = UDim2.new(0, position.X, 0, position.Y)
end

function fadeOutCrosshair(crosshairFrame)
	local tweenInfo = TweenInfo.new(fadeOutTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)


	for _, line in pairs(crosshairFrame:GetChildren()) do
		local tween = noxious["tween service"]:Create(line, tweenInfo, {BackgroundTransparency = 1})
		tween:Play()
	end

	task.delay(
		fadeOutTime,
		function()
			crosshairFrame:Destroy()
		end
	)
end

noxious["user input service"].InputBegan:Connect(
	function(input, processed)
		if
			(input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and
			crosshairsEnabled
		then
			local position = input.Position
			local crosshair = createCrosshair(position)
			if crosshair then
				activeCrosshairs[input] = crosshair

				input:GetPropertyChangedSignal"Position":Connect(
					function()
						if activeCrosshairs[input] then
							updateCrosshair(crosshair, input.Position)
						end
					end
				)

				input:GetPropertyChangedSignal"UserInputState":Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							fadeOutCrosshair(crosshair)
							activeCrosshairs[input] = nil
						end
					end
				)
			end
		end
	end
)

addcommand("enablemobiletapindicators", "emti", function()
	crosshairsEnabled = true
end)

addcommand("disablemobiletapindicators", "dmti", function()
	crosshairsEnabled = false
	for _, crosshair in pairs(activeCrosshairs) do
		fadeOutCrosshair(crosshair)
	end
	activeCrosshairs = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

function stoprunningconnections()
	task.spawn(function() execcmd("unview") end)
	task.spawn(function() execcmd("untpwalk") end)
	task.spawn(function() execcmd("unpspeed") end)
	task.spawn(function() execcmd("drosrpn") end)
	task.spawn(function() execcmd("disableloopmaxspeed") end)
	task.spawn(function() execcmd("dgrpn") end)
	task.spawn(function() execcmd("disablespameggsonabilityaudio") end)
	task.spawn(function() execcmd("dtcg") end)
	task.spawn(function() execcmd("dricg") end)
	task.spawn(function() execcmd("dtn") end)
	task.spawn(function() execcmd("drin") end)
	task.spawn(function() execcmd("ddpn") end)
	task.spawn(function() execcmd("dinmd") end)
	task.spawn(function() execcmd("hdg") end)
	task.spawn(function() execcmd("dgfb") end)
	task.spawn(function() execcmd("dlhcg") end)
	task.spawn(function() execcmd("ddpcg") end)
	task.spawn(function() execcmd("unspin") end)
	task.spawn(function() execcmd("datpt7pe") end)
	task.spawn(function() execcmd("rec") end)
	task.spawn(function() execcmd("dia") end)
	task.spawn(function() execcmd("hot") end)
	task.spawn(function() execcmd("dlrs") end)
	task.spawn(function() execcmd("daui") end)
	task.spawn(function() execcmd("unfly") end)
	task.spawn(function() execcmd("uncffly") end)
	task.spawn(function() execcmd("daua") end)
	task.spawn(function() execcmd("djump") end)
	task.spawn(function() execcmd("dmti") end)
	task.spawn(function() execcmd("dgnt") end)
	task.spawn(function() execcmd("clip") end)
	task.spawn(function() execcmd("dac") end)
	task.spawn(function() execcmd("hap") end)
	task.spawn(function() execcmd("datpte") end)
	task.spawn(function() execcmd("slt") end)
	task.spawn(function() execcmd("sespt") end)
	task.spawn(function() execcmd("sesph") end)
	task.spawn(function() execcmd("daesp") end)
	task.spawn(function() execcmd("dfb") end)
	task.spawn(function() execcmd("dafb") end)
	task.spawn(function() execcmd("unhead") end)
	task.spawn(function() execcmd("unhsit") end)
	task.spawn(function() execcmd("unhsit2") end)
	task.spawn(function() execcmd("unhjump") end)
	task.spawn(function() execcmd("unbbang") end)
	task.spawn(function() execcmd("dwf") end)
	task.spawn(function() hideRadius("KillRadius") end)
	task.spawn(function() hideRadius("InstantRadius") end)
	task.spawn(function() hideRadius("VisionRadius") end)
	task.spawn(function() hideRadius("HearingRadius") end)
	task.spawn(function() execcmd("disablebassiemacro") end)
	task.spawn(function() execcmd("unbang") end)
	task.spawn(function() disableAnimation() end)
	task.spawn(function() execcmd("undance") end)
	task.spawn(function() execcmd("sdl") end)
	task.spawn(function() execcmd("hph") end)
	task.spawn(function() execcmd("untpose") end)
	task.spawn(function() execcmd("unbodiless") end)
	task.spawn(function() execcmd("unheadless") end)
	task.spawn(function() execcmd("unarmless") end)
	task.spawn(function() execcmd("unlegless") end)
	task.spawn(function() execcmd("unkorblox") end)
	task.spawn(function() execcmd("dlfui all") end)
	task.spawn(function() disableAllAnimationLoops() end)
	task.spawn(function() execcmd("dga") end)
	task.spawn(function() execcmd("disableautopickupallitems") end)
	task.spawn(function() execcmd("disableautopickupallresearchcapsules") end)
	task.spawn(function() execcmd("disableautopickupalltapes") end)
	task.spawn(function() execcmd("disableautopickupallheals") end)
	task.spawn(function() execcmd("disableautopickupallextractionitems") end)
	task.spawn(function() execcmd("disableautoencountertwisteds") end)
	task.spawn(function() execcmd("disableautoencountertwisteds") end)
	task.spawn(function() execcmd("disableautopickupallresearchcapsules") end)
	task.spawn(function() execcmd("disableautopickupalltapes") end)
	task.spawn(function() execcmd("disableautopickupallheals") end)
	task.spawn(function() execcmd("disableautopickupallextractionitems") end)
	task.spawn(function() execcmd("disablepanicautopickupallitems") end)
	task.spawn(function() execcmd("disablepanicautopickupallresearchcapsules") end)
	task.spawn(function() execcmd("disablepanicautopickupalltapes") end)
	task.spawn(function() execcmd("disablepanicautopickupallheals") end)
	task.spawn(function() execcmd("disablepanicautopickupallextractionitems") end)
	task.spawn(function() execcmd("disablepanicautoencountertwisteds") end)
	task.spawn(function() execcmd("disablepanicautopickupallitems") end)
	task.spawn(function() execcmd("disablepanicautopickupallresearchcapsules") end)
	task.spawn(function() execcmd("disablepanicautopickupalltapes") end)
	task.spawn(function() execcmd("disablepanicautopickupallheals") end)
	task.spawn(function() execcmd("disablepanicautopickupallextractionitems") end)
	task.spawn(function() execcmd("disablepanicautoencountertwisteds") end)
	task.spawn(function() execcmd("disablecosmohealnearby") end)
	task.spawn(function() execcmd("disablesprouthealnearby") end)
	task.spawn(function() execcmd("disableautouseability") end)
	task.spawn(function() execcmd("disableautovoterandomcard") end)
	task.spawn(function() execcmd("disableautovotehealcard") end)
	task.spawn(function() execcmd("disableautovoteblindgrabcard") end)
	task.spawn(function() execcmd("disableautovotetapescard") end)
	task.spawn(function() execcmd("disableautovotefrugalcard") end)
	task.spawn(function() execcmd("disableautovoteelevatortimecard") end)
	task.spawn(function() execcmd("disableautovotemaxstaminacard") end)
	task.spawn(function() execcmd("disableautovotesparkplugcard") end)
	task.spawn(function() execcmd("disableautovoteelectriciancard") end)
	task.spawn(function() execcmd("disableautovotesuppressioncard") end)
	task.spawn(function() execcmd("disableautovotetechsavvycard") end)
	task.spawn(function() execcmd("disableautovoteabilitycard") end)
end

addcommand("stoprunningconnections", "src", function()
	stoprunningconnections()
end)

addcommand("scriptforcestoprunningconnections", "sfsrc", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end   
	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync("/e stopconnections")        
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("openconsole", "console", function()
	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
	if channel then
		channel:SendAsync("/console")        
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("hidedeveloperlabel", "hdl", function()
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild("HumanoidRootPart")				
			if HRP then
				local billboardGui = HRP:FindFirstChild("UserImageBillboard")			
				if billboardGui then
					billboardGui.Size = UDim2.new(0, 0, 0, 0)
				end
			end
		end
	end
end)

addcommand("showdeveloperlabel", "sdl", function()
	for _, player in ipairs(noxious["players"]:GetPlayers()) do
		local character = player.Character
		if character then
			local HRP = character:FindFirstChild("HumanoidRootPart")				
			if HRP then
				local billboardGui = HRP:FindFirstChild("UserImageBillboard")					
				if billboardGui then
					billboardGui.Size = UDim2.new(0, 0, 0, 0)
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("executeallfavoritedcommands", "eafc", function()
	if #noxious["command lists"]["Favorited Commands"] == 0 then
		notify("No favorited commands to execute.", 5, "error")
		return
	end

	for _, pinnedCommand in ipairs(noxious["command lists"]["Favorited Commands"]) do
		task.spawn(function()
			local mainCommand = pinnedCommand:match("^(.-),") or pinnedCommand:match("^(.-)%s*%-") or pinnedCommand

			execcmd(mainCommand)
		end)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("commandbar", "cmdbar", function()
	makecmdbar()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("dandybindiscord", "dbdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://discord.com/invite/dandysworldexploits"	
end)

addcommand("hexdiscord", "hdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://discord.gg/QnkQ9q4P"	
end)

addcommand("blushcrunchdiscord", "bcdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://discord.gg/blushcrunch"	
end)

addcommand("noxiousdiscord", "nxsdiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard("https://discord.gg/bwdk8vAy8n")
end)

addcommand("gobbydiscord", "gbydiscord", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://discord.gg/acwaBYnSJM"	
end)

addcommand("scarletdiscord", "bookclub", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://discord.gg/hbHEv8QvE9"	
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("notify", "n", function(...)
	local text = table.concat({...}, " ")
	if text ~= "" then
		notify(text, 5)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("notifyversion", "notifyver", function()
	notify("The current version is: " .. noxious["version"], 5)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("closeallnotifications", "can", function()
	closeallnotifs()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("serverhop", "shop", function()
	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if httprequest then
		local servers = {}
		local req = httprequest({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)})
		local body = noxious["http service"]:JSONDecode(req.Body)

		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
					table.insert(servers, 1, v.id)
				end
			end
		end

		if #servers > 0 then
			noxious["teleport service"]:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], noxious["players"].LocalPlayer)
		else
			return notify("Couldnt find a server.", 5, "error")
		end
	else
		notify("Your executor does not support this command.", 5, "error")
	end
end)

addcommand("smallserverhop", "sshop", function()
	local Number=math.huge
	local SomeSRVS={}
	local found=0

	for _,v in ipairs(noxious["http service"]:JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100")).data) do
		if type(v)=="table" and v.maxPlayers>v.playing and v.id~=game.JobId then
			if v.playing<Number then
				Number=v.playing
				SomeSRVS[1]=v.id
				found=v.playing
			end
		end
	end

	if #SomeSRVS>0 then
		noxious["teleport service"]:TeleportToPlaceInstance(game.PlaceId,SomeSRVS[1])
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("joinlobby", "jl", function()
	noxious["teleport service"]:Teleport(noxious["dandy's world lobby"], noxious["local player"])
end)

addcommand("joinroleplayserver", "jrps", function()
	noxious["teleport service"]:Teleport(noxious["dandy's world roleplay server"], noxious["local player"])
end)

addcommand("joinrun", "jr", function()
	noxious["teleport service"]:Teleport(noxious["dandy's world run"], noxious["local player"])
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("rerun", "rrun", function()
	task.spawn(function()
		noxious["qtp"]([[local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local function findgate()
		for _, model in ipairs(workspace["Elevators"]:GetChildren()) do
			if model:IsA("Model") and model.Name == "Gate" then
				local gate = model:FindFirstChild("Gate")
				local partOne = model:FindFirstChild("1")
				if gate and gate:IsA("BasePart") and partOne and partOne:IsA("BasePart") then
					return gate
				end
			end
		end
		return nil
	end

	local function gog(lal)
		local character = player.Character or player.CharacterAdded:Wait()
		local root = character:WaitForChild("HumanoidRootPart")

		local savedCFrame = root.CFrame

		firetouchinterest(root, lal, 0)
		task.wait(0.1)
		firetouchinterest(root, lal, 1)

		root.Anchored = true
		task.wait(0.1)
		root.CFrame = savedCFrame
		task.wait(0.1)
		root.Anchored = false
	end

	local function waitForFullCharacter()
		local character = player.Character or player.CharacterAdded:Wait()
		repeat
			task.wait()
		until character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid")
		return character
	end

	task.spawn(function()
		waitForFullCharacter()
		local gate = findgate()
		if gate then
			gog(gate)
		end
	end)]])
	end)
	task.wait(0.5)
	noxious["teleport service"]:Teleport(noxious["dandy's world lobby"], noxious["local player"])
end)

-------------------------------------------------------------------------------------------------------------------------------

healnearbyloopenabled = false
healnearbyconnection = nil

function enablehealnearby()
	if healnearbyloopenabled then return end
	healnearbyloopenabled = true

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local LocalPlayer = Players.LocalPlayer
	local AbilityEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("AbilityEvent")

	local lastTarget = nil

	local function getClosestOneHealthPlayer()
		local closestPlayer = nil
		local closestDistance = math.huge

		local myChar = LocalPlayer.Character
		if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return nil end
		local myPos = myChar.HumanoidRootPart.Position

		for _, player in pairs(Players:GetPlayers()) do
			if player ~= LocalPlayer then
				local char = player.Character
				if char and char:FindFirstChild("Humanoid") and char.Humanoid.Health == 1 and char:FindFirstChild("HumanoidRootPart") then
					local distance = (char.HumanoidRootPart.Position - myPos).Magnitude
					if distance < closestDistance then
						closestDistance = distance
						closestPlayer = player
					end
				end
			end
		end

		return closestPlayer
	end

	healnearbyconnection = task.spawn(function()
		while healnearbyloopenabled do
			local closest = getClosestOneHealthPlayer()

			if closest and closest ~= lastTarget then
				lastTarget = closest
			end

			if lastTarget and lastTarget.Character and lastTarget.Character:FindFirstChild("Humanoid") then
				if lastTarget.Character.Humanoid.Health == 1 then
					local myChar = LocalPlayer.Character
					local targetChar = lastTarget.Character
					if myChar and targetChar then
						local args = {
							myChar,
							CFrame.new(21.400053024291992, 146.07144165039062, -0.820641815662384, -0.883121907711029, -2.6923208551465905e-08, 0.4691435396671295, -2.2795578757950352e-08, 1, 1.4477303800219943e-08, -0.4691435396671295, 2.0908255127238817e-09, -0.883121907711029),
							targetChar
						}
						AbilityEvent:InvokeServer(unpack(args))
					end
				else
					lastTarget = nil
				end
			end

			task.wait(0.5)
		end
	end)
end

addcommand("enablesprouthealnearby", "eshn", function()
	if not checktoon("Sprout") then return end
	enablehealnearby()
end)

addcommand("disablesprouthealnearby", "dshn", function()
	if not checktoon("Sprout") then return end
	healnearbyloopenabled = false
end)

addcommand("enablecosmohealnearby", "echn", function()
	if not checktoon("Cosmo") then return end
	enablehealnearby()
end)

addcommand("disablecosmohealnearby", "dchn", function()
	if not checktoon("Cosmo") then return end
	healnearbyloopenabled = false
end)

---------------------------------------------------------------------------------------------------------------------------

autoboostenabled = false
autoboostconnection = nil

function enableautoboost()
	if autoboostenabled then return end
	autoboostenabled = true

	local Players = game:GetService("Players")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local LocalPlayer = Players.LocalPlayer
	local AbilityEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("AbilityEvent")

	local lastTarget = nil

	local function getClosestDecodingPlayer()
		local closestPlayer = nil
		local closestDistance = math.huge

		local myChar = LocalPlayer.Character
		if not myChar or not myChar:FindFirstChild("HumanoidRootPart") then return nil end
		local myPos = myChar.HumanoidRootPart.Position

		for _, player in pairs(Players:GetPlayers()) do
			if player ~= LocalPlayer then
				local char = player.Character
				if char and char:FindFirstChild("HumanoidRootPart") and char:FindFirstChild("Decoding") then
					if char.Decoding.Value ~= nil then
						local distance = (char.HumanoidRootPart.Position - myPos).Magnitude
						if distance < closestDistance then
							closestDistance = distance
							closestPlayer = player
						end
					end
				end
			end
		end

		return closestPlayer
	end

	autoboostconnection = task.spawn(function()
		while autoboostenabled do
			local closest = getClosestDecodingPlayer()

			if closest and closest ~= lastTarget then
				lastTarget = closest
			end

			if lastTarget and lastTarget.Character and lastTarget.Character:FindFirstChild("Decoding") then
				if lastTarget.Character.Decoding.Value ~= nil then
					local myChar = LocalPlayer.Character
					local targetChar = lastTarget.Character
					if myChar and targetChar then
						local args = {
							myChar,
							CFrame.new(21.400053024291992, 146.07144165039062, -0.820641815662384, -0.883121907711029, -2.6923208551465905e-08, 0.4691435396671295, -2.2795578757950352e-08, 1, 1.4477303800219943e-08, -0.4691435396671295, 2.0908255127238817e-09, -0.883121907711029),
							targetChar
						}
						AbilityEvent:InvokeServer(unpack(args))
					end
				else
					lastTarget = nil
				end
			end

			task.wait(0.5)
		end
	end)
end

addcommand("enableshellyautoboost", "esab", function()
	if not checktoon("Shelly") then return end
	enableautoboost()
end)

addcommand("disableautoshellyboost", "dsab", function()
	if not checktoon("Shelly") then return end
	autoboostenabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

esptextvisible = true
espvisualsvisible = true
esplooprunning = false

function createAdornment(parent, color)
	if legacyhighlights then
		local adornment = Instance.new("BoxHandleAdornment")
		adornment.Name = "EspAdornment"
		adornment.Adornee = parent
		adornment.AlwaysOnTop = true
		adornment.ZIndex = 10 
		adornment.Size = parent:GetExtentsSize()
		adornment.Color3 = color
		adornment.Transparency = 0.5
		adornment.Visible = espvisualsvisible
		adornment.Parent = parent
		return adornment
	else
		local highlight = Instance.new("Highlight")
		highlight.Name = "EspHighlight"
		highlight.FillColor = color
		highlight.OutlineColor = Color3.new(1, 1, 1)
		highlight.Enabled = espvisualsvisible
		highlight.Parent = parent
		return highlight
	end
end

function makeespbillboard(parent, modelName, textColor, generatorStats)
	local billboard = Instance.new("BillboardGui")        
	billboard.Name = "EspBillboardGUIName"
	billboard.Adornee = parent
	billboard.Size = UDim2.new(0, 100, 0, 50)
	billboard.AlwaysOnTop = true
	billboard.Parent = parent

	local label = Instance.new("TextLabel")        
	label.Size = UDim2.new(1, 0, 1, 0)
	label.BackgroundTransparency = 1
	label.Text = modelName
	label.Font = Enum.Font.Nunito
	label.ZIndex = 11
	label.TextColor3 = textColor
	label.TextStrokeTransparency = 0.5
	label.TextStrokeColor3 = Color3.new(1, 1, 1)
	label.TextSize = 21.6
	label.Visible = esptextvisible
	label.Parent = billboard

	if generatorStats then
		local currentAmount = generatorStats.CurrentAmount or 0
		local requiredAmount = generatorStats.RequiredAmount or 0
		label.Text = modelName .. "\n(" .. currentAmount .. " / " .. requiredAmount .. ")"
	end

	return billboard, label
end

function toggleespbillboardvisibility(visible)
	esptextvisible = visible

	for _, descendant in pairs(workspace:GetDescendants()) do
		if descendant:IsA("BillboardGui") and descendant.Name == "EspBillboardGUIName" then
			local label = descendant:FindFirstChildOfClass("TextLabel")            
			if label then
				label.Visible = visible
			end
		end
	end
end

function toggleesphighlightvisibility(visible)
	espvisualsvisible = visible

	if legacyhighlights then
		for _, descendant in pairs(workspace:GetDescendants()) do
			if descendant:IsA("BoxHandleAdornment") and descendant.Name == "EspAdornment" then
				descendant.Visible = visible
			end
		end
	else
		for _, descendant in pairs(workspace:GetDescendants()) do
			if descendant:IsA("Highlight") and descendant.Name == "EspHighlight" then
				descendant.Enabled = visible
			end
		end
	end
end

function tweentoblack(target)
	local visual
	if legacyhighlights then
		visual = target:FindFirstChild("EspAdornment")
	else
		visual = target:FindFirstChild("EspHighlight")
	end

	local billboard = target:FindFirstChild("EspBillboardGUIName")
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	if visual then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		-- Tween the visual element
		if legacyhighlights then
			local adornmentTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ Color3 = Color3.new(0, 0, 0) }
			)
			adornmentTween:Play()
		else
			local highlightTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ FillColor = Color3.new(0, 0, 0) }
			)
			highlightTween:Play()
		end

		-- Always tween the text label if it exists
		if textLabel then
			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.new(0, 0, 0) }
			)
			textTween:Play()
		end
	end
end

function eventesptween(monster)
	local visual
	if legacyhighlights then
		visual = monster:FindFirstChild("EspAdornment")
	else
		visual = monster:FindFirstChild("EspHighlight")
	end

	local billboard = monster:FindFirstChild("EspBillboardGUIName")        
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	if visual then
		if legacyhighlights then
			visual.Color3 = Color3.fromRGB(140, 255, 140)
		else
			visual.FillColor = Color3.fromRGB(140, 255, 140)
		end

		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		if legacyhighlights then
			local adornmentTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ Color3 = Color3.fromRGB(237, 121, 210) }
			)
			adornmentTween:Play()
		else
			local highlightTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ FillColor = Color3.fromRGB(237, 121, 210) }
			)
			highlightTween:Play()
		end

		if textLabel then
			textLabel.TextColor3 = Color3.fromRGB(140, 255, 140)

			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = Color3.fromRGB(237, 121, 210) }
			)
			textTween:Play()
		end
	end
end

function specialitemtween(item)
	local visual
	if legacyhighlights then
		visual = item:FindFirstChild("EspAdornment")
	else
		visual = item:FindFirstChild("EspHighlight")
	end

	local billboard = item:FindFirstChild("EspBillboardGUIName")
	local textLabel = billboard and billboard:FindFirstChildOfClass("TextLabel")

	if visual then
		local tweenInfo = TweenInfo.new(
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			-1,
			true
		)

		local targetColor = Color3.fromRGB(237, 121, 210)

		if legacyhighlights then
			local adornmentTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ Color3 = targetColor }
			)
			adornmentTween:Play()
		else
			local highlightTween = noxious["tween service"]:Create(
				visual,
				tweenInfo,
				{ FillColor = targetColor }
			)
			highlightTween:Play()
		end

		if textLabel then
			local textTween = noxious["tween service"]:Create(
				textLabel,
				tweenInfo,
				{ TextColor3 = targetColor }
			)
			textTween:Play()
		end
	end
end

function addesp()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")

	if noxious["esp types"].Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") and not (legacyhighlights and monster:FindFirstChild("EspAdornment")) and not (not legacyhighlights and monster:FindFirstChild("EspHighlight")) then
						local rawName = monster.Name
						local baseName

						if rawName == "RazzleDazzleMonster" then
							baseName = cleareresptext and "T. R&D" or "Twisted Razzle & Dazzle"
						elseif rawName == "BlottMonster" or rawName == "BlotMonster" then
							baseName = cleareresptext and "T. Blot" or "Twisted Blot"
						else
							baseName = rawName:gsub("Monster", ""):match("^%s*(.-)%s*$")
							baseName = cleareresptext and ("T. " .. baseName) or ("Twisted " .. baseName)
						end

						local visual = createAdornment(monster, getespcolor("twisteds"))

						local trackedNames = {
							["GoobMonster"] = true,
							["GigiMonster"] = true,
							["ScrapsMonster"] = true,
							["Twisted Goob"] = true,
							["Twisted Gigi"] = true,
							["Twisted Scraps"] = true,
						}

						local showTimer = trackedNames[rawName] == true
						local initialText = showTimer and (baseName .. "\n(0)") or baseName
						local billboard, label = makeespbillboard(monster, initialText, getespcolor("twisteds"))

						if showTimer then
							local grabbing = monster:FindFirstChild("Grabbing")
							if grabbing and grabbing:IsA("BoolValue") then
								local timerThread = nil

								grabbing.Changed:Connect(function(newVal)
									if newVal then return end
									if timerThread then return end

									timerThread = task.spawn(function()
										for i = 11, 0, -1 do
											if label then
												label.Text = baseName .. "\n(" .. i .. ")"
											end
											task.wait(1)
										end
										if label then
											label.Text = baseName .. "\n(0)"
										end
										timerThread = nil
									end)
								end)
							end
						end

						if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, rawName) then
							tweentoblack(monster)
						elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster", "ShellyMonster", "DandyMonster"}, rawName) then
							if legacyhighlights then
								visual.Color3 = Color3.fromRGB(140, 255, 140)
							else
								visual.FillColor = Color3.fromRGB(140, 255, 140)
							end
							eventesptween(monster)
						end
					end
				end
			end
		end
	end

	if noxious["esp types"].Tendrils and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				for _, child in pairs(freeArea:GetChildren()) do
					if child.Name == "SproutTendril" and child:IsA("Model") and not (legacyhighlights and child:FindFirstChild("EspAdornment")) and not (not legacyhighlights and child:FindFirstChild("EspHighlight")) then
						local visual = createAdornment(child, getespcolor("tendrils"))

						local displayText = "Sprout's Tendril"
						if cleareresptext then displayText = "Tendril" end
						makeespbillboard(child, displayText, getespcolor("tendrils"))
					end
				end
			end
		end
	end

	if noxious["esp types"].BlotHands and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				for _, child in pairs(model:GetChildren()) do
					if (child.Name == "BlotHand" or child.Name == "BlotHandZone_1" or child.Name == "BlotHandZone_2")
						and not (legacyhighlights and child:FindFirstChild("EspAdornment")) and not (not legacyhighlights and child:FindFirstChild("EspHighlight"))
					then
						local target = nil

						if child:IsA("Model") then
							local primaryPart = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
							if primaryPart then
								target = child
							end
						end

						if not target and child:IsA("BasePart") then
							target = child
						end

						if target then
							local visual = createAdornment(target, getespcolor("blotshands"))

							local displayText = "Blot's Hand"
							if cleareresptext then displayText = "Hand" end
							makeespbillboard(target, displayText, getespcolor("blotshands"))
						end
					end
				end
			end
		end
	end

	if noxious["esp types"].FakeElevator then
		if currentRoom then
			for _, model in pairs(currentRoom:GetChildren()) do
				local freeArea = model:FindFirstChild("FreeArea")
				if freeArea then
					local fakeElevatorModel = freeArea:FindFirstChild("FakeElevator")
					if fakeElevatorModel then
						local fakeElevator = fakeElevatorModel:FindFirstChild("ElevatorDoor")
						if fakeElevator and fakeElevator:IsA("Model") and not (legacyhighlights and fakeElevator:FindFirstChild("EspAdornment")) and not (not legacyhighlights and fakeElevator:FindFirstChild("EspHighlight")) then
							local visual = createAdornment(fakeElevator, getespcolor("fakeelevator"))

							local displayText = cleareresptext and "F. Ele" or "Fake Elevator"
							makeespbillboard(fakeElevator, displayText, getespcolor("fakeelevator"))
							tweentoblack(fakeElevator)
						end
					end
				end
			end
		end
	end

	if noxious["esp types"].Elevator then
		local elevatorsFolder = workspace:FindFirstChild("Elevators")
		if elevatorsFolder then
			local elevatorModel = elevatorsFolder:FindFirstChild("Elevator")
			if elevatorModel then
				local elevator = elevatorModel:FindFirstChild("ElevatorDoor")
				if elevator and elevator:IsA("Model") and not (legacyhighlights and elevator:FindFirstChild("EspAdornment")) and not (not legacyhighlights and elevator:FindFirstChild("EspHighlight")) then
					local visual = createAdornment(elevator, getespcolor("elevator"))

					local displayText = cleareresptext and "Ele" or "Elevator"
					makeespbillboard(elevator, displayText, getespcolor("elevator"))
					tweentoblack(elevator)
				end
			end
		end
	end

	if noxious["esp types"].Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") and not (legacyhighlights and item:FindFirstChild("EspAdornment")) and not (not legacyhighlights and item:FindFirstChild("EspHighlight")) then
						local displayText = item.Name
						local formattedText = ""

						if item.Name == "ResearchCapsule" then
							local function fetchMonsterName()
								local prompt = item:FindFirstChild("Prompt")
								if prompt then
									local monsterString = prompt:FindFirstChild("Monster")
									if monsterString and monsterString:IsA("StringValue") then
										local monsterName = monsterString.Value
										if monsterName == "RazzleDazzleMonster" then
											if cleareresptext then 
												monsterName = "R&D"
											else 
												monsterName = "Razzle & Dazzle"
											end
										end

										monsterName = monsterName:gsub("Monster", "")
										monsterName = monsterName:match("^%s*(.-)%s*$")

										if cleareresptext then
											return "T. " .. monsterName
										else
											return "Twisted " .. monsterName
										end
									end
								end
								return nil
							end

							local monsterName = fetchMonsterName()
							if not monsterName then
								task.delay(0.1, function()
									monsterName = fetchMonsterName()
									if monsterName then
										displayText = cleareresptext and "Capsule" or "Research Capsule (" .. monsterName .. ")"
										if item:FindFirstChild("EspBillboardGUIName") then
											local billboard = item.EspBillboardGUIName:FindFirstChildOfClass("TextLabel")
											if billboard then
												billboard.Text = displayText
											end
										end
									end
								end)
							else
								displayText = cleareresptext and "Capsule" or "Research Capsule (" .. monsterName .. ")"
							end
						end

						for i = 1, #item.Name do
							local char = item.Name:sub(i, i)
							if char:match("%u") and i > 1 then
								formattedText = formattedText .. " " .. char
							else
								formattedText = formattedText .. char
							end
						end

						if item.Name ~= "ResearchCapsule" then
							displayText = formattedText
						end

						if item.Name == "RazzleDazzle" then
							displayText = cleareresptext and "R&D" or "Razzle & Dazzle"
						elseif item.Name == "HolidayCollectibleItem" or item.Name == "Holiday Collectible Item" then
							displayText = "Basket"
						end

						local espColor = getespcolor("items") -- default color
						local shouldTween = false
						local shouldTween2 = false

						-- Determine displayText & color override
						if item.Name == "FakeCapsule" then
							espColor = getespcolor("fakecapsules")
						elseif table.find({ "JumperCable", "Bandage", "AirHorn", "Jawbreaker", "BonBon", "ExtractionSpeedCandy" }, item.Name) then
							espColor = getespcolor("rareitems")
						elseif table.find({ "PopBottle", "HealthKit", "ChocolateBox", "EjectButton", "SmokeBomb" }, item.Name) then
							espColor = getespcolor("superrareitems")
						elseif table.find({ "HolidayCollectibleItem", "Holiday Collectible Item", "Basket" }, item.Name) then
							espColor = Color3.fromRGB(140, 255, 140)
							shouldTween = true
						elseif table.find({
							"Research Capsule (Twisted Eggson)",
							"Research Capsule (Twisted Cocoa)",
							"Research Capsule (Twisted Bassie)",
							"Research Capsule (Twisted Flyte)",
							}, displayText) then
							espColor = Color3.fromRGB(140, 255, 140)
							shouldTween = true
						elseif table.find({
							"Research Capsule (Twisted Dandy)",
							"Research Capsule (Twisted Vee)",
							"Research Capsule (Twisted Sprout)",
							"Research Capsule (Twisted Astro)",
							"Research Capsule (Twisted Pebble)",
							"Research Capsule (Twisted Shelly)",
							}, displayText) then
							shouldTween2 = true
						end

						-- Create visual and billboard once
						local visual = createAdornment(item, espColor)
						local billboard, label = makeespbillboard(item, displayText, espColor)

						-- Apply special tween effects
						if shouldTween then
							task.spawn(function()
								specialitemtween(item)
							end)
						elseif shouldTween2 then
							task.spawn(function()
								task.wait(0)
								tweentoblack(item)
							end)
						end
					end
				end
			end
		end
	end

	if noxious["esp types"].Players then
		for _, player in pairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["local player"] and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
				local visual
				if legacyhighlights then
					visual = player.Character:FindFirstChild("EspAdornment")
				else
					visual = player.Character:FindFirstChild("EspHighlight")
				end

				if not visual then
					visual = createAdornment(player.Character, getespcolor("players"))

					local billboardText
					if cleareresptext == true then
						billboardText = player.DisplayName
					else
						billboardText = "(@" .. player.Name .. ")\n" .. player.DisplayName
					end

					makeespbillboard(player.Character, billboardText, getespcolor("players"))
				end
			end
		end
	end

	local function round(num)
		return math.floor(num + 0.5)
	end

	if noxious["esp types"].Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")                
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") and not (legacyhighlights and generator:FindFirstChild("EspAdornment")) and not (not legacyhighlights and generator:FindFirstChild("EspHighlight")) then
						local textColor = getespcolor("machines")
						local fillColor = getespcolor("machines")
						local statsFolder = generator:FindFirstChild("Stats")                            
						local completed = statsFolder and statsFolder:FindFirstChild("Completed")                            
						local currentAmount = statsFolder and statsFolder:FindFirstChild("CurrentAmount")                            
						local requiredAmount = statsFolder and statsFolder:FindFirstChild("RequiredAmount")  
						local playeractive = statsFolder and statsFolder:FindFirstChild("ActivePlayer")
						local connie = statsFolder and statsFolder:FindFirstChild("Connie")

						local visual = createAdornment(generator, fillColor)

						local function updateGeneratorAppearance()
							if connie and connie.Value == true then
								fillColor = getespcolor("posessedmachines")
								textColor = getespcolor("posessedmachines")
							elseif completed and completed.Value == true then
								fillColor = getespcolor("completedmachines")
								textColor = getespcolor("completedmachines")
							elseif playeractive and playeractive.Value ~= nil then
								fillColor = getespcolor("machinesbeingextracted")
								textColor = getespcolor("machinesbeingextracted")
							else
								fillColor = getespcolor("machines")
								textColor = getespcolor("machines")
							end

							if legacyhighlights then
								visual.Color3 = fillColor
							else
								visual.FillColor = fillColor
							end

							local billboard = generator:FindFirstChild("EspBillboardGUIName")                                
							if billboard then
								local label = billboard:FindFirstChildOfClass("TextLabel")                                    
								if label then
									label.TextColor3 = textColor
									local generatorName = generator.Name
									if connie and connie.Value == true then
										if not cleareresptext then generatorName = generatorName .. " (Possessed)" else
											generatorName = generatorName .. " (P)"
										end
									end
									if completed and completed.Value == true then
										if not cleareresptext then generatorName = generatorName .. " (Completed)" else
											generatorName = generatorName .. " (C)"
										end
									end
									if playeractive and playeractive.Value ~= nil then
										if not cleareresptext then generatorName = generatorName .. " (Extracting)" else
											generatorName = generatorName .. " (E)"
										end
									end
									label.Text = generatorName .. "\n(" .. (currentAmount and round(currentAmount.Value) or 0) .. " / " .. (requiredAmount and requiredAmount.Value or 0) .. ")"
								end
							end
						end

						if connie then
							connie:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if completed then
							completed:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if currentAmount then
							currentAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if requiredAmount then
							requiredAmount:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						if playeractive then
							playeractive:GetPropertyChangedSignal("Value"):Connect(updateGeneratorAppearance)
						end

						makeespbillboard(generator, generator.Name, textColor, {
							CurrentAmount = currentAmount and round(currentAmount.Value) or 0,
							RequiredAmount = requiredAmount and requiredAmount.Value or 0
						})

						updateGeneratorAppearance()
					end
				end
			end
		end
	end
end

function removeesp()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")

	if currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			for _, folderName in pairs { "Monsters", "Items", "Generators" } do
				local folder = model:FindFirstChild(folderName)
				if folder then
					for _, obj in pairs(folder:GetChildren()) do
						if legacyhighlights then
							local adornment = obj:FindFirstChild("EspAdornment")							
							if adornment then
								adornment:Destroy()
							end
						else
							local highlight = obj:FindFirstChild("EspHighlight")							
							if highlight then
								highlight:Destroy()
							end
						end

						local billboard = obj:FindFirstChild("EspBillboardGUIName")							
						if billboard then
							billboard:Destroy()
						end
					end
				end
			end

			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				for _, child in pairs(freeArea:GetChildren()) do
					if child.Name == "SproutTendril" then
						if legacyhighlights then
							local adornment = child:FindFirstChild("EspAdornment")
							if adornment then
								adornment:Destroy()
							end
						else
							local highlight = child:FindFirstChild("EspHighlight")
							if highlight then
								highlight:Destroy()
							end
						end

						local billboard = child:FindFirstChild("EspBillboardGUIName")
						if billboard then
							billboard:Destroy()
						end
					end
				end

				local fakeElevatorfolder = freeArea:FindFirstChild("FakeElevator")
				if fakeElevatorfolder then
					local fakeElevator = fakeElevatorfolder:FindFirstChild("ElevatorDoor")
					if fakeElevator and fakeElevator:IsA("Model") then
						if legacyhighlights then
							local adornment = fakeElevator:FindFirstChild("EspAdornment")
							if adornment then
								adornment:Destroy()
							end
						else
							local highlight = fakeElevator:FindFirstChild("EspHighlight")
							if highlight then
								highlight:Destroy()
							end
						end

						local billboard = fakeElevator:FindFirstChild("EspBillboardGUIName")
						if billboard then
							billboard:Destroy()
						end
					end
				end
			end

			for _, child in pairs(model:GetChildren()) do
				if child.Name == "BlotHand" or child.Name == "BlotHandZone_1" or child.Name == "BlotHandZone_2" then
					if legacyhighlights then
						local adornment = child:FindFirstChild("EspAdornment")
						if adornment then
							adornment:Destroy()
						end
					else
						local highlight = child:FindFirstChild("EspHighlight")
						if highlight then
							highlight:Destroy()
						end
					end

					local billboard = child:FindFirstChild("EspBillboardGUIName")
					if billboard then
						billboard:Destroy()
					end
				end
			end
		end
	end

	local elevators = workspace:FindFirstChild("Elevators")
	if elevators then
		local elevator = elevators:FindFirstChild("Elevator")
		local fakeElevator = elevator and elevator:FindFirstChild("ElevatorDoor")
		if fakeElevator and fakeElevator:IsA("Model") then
			if legacyhighlights then
				local adornment = fakeElevator:FindFirstChild("EspAdornment")
				if adornment then
					adornment:Destroy()
				end
			else
				local highlight = fakeElevator:FindFirstChild("EspHighlight")
				if highlight then
					highlight:Destroy()
				end
			end

			local billboard = fakeElevator:FindFirstChild("EspBillboardGUIName")
			if billboard then
				billboard:Destroy()
			end
		end
	end

	for _, player in pairs(noxious["players"]:GetPlayers()) do
		if player.Character then
			if legacyhighlights then
				local adornment = player.Character:FindFirstChild("EspAdornment")				
				if adornment then
					adornment:Destroy()
				end
			else
				local highlight = player.Character:FindFirstChild("EspHighlight")				
				if highlight then
					highlight:Destroy()
				end
			end

			local billboard = player.Character:FindFirstChild("EspBillboardGUIName")				
			if billboard then
				billboard:Destroy()
			end
		end
	end
end

function startesploop()
	if esplooprunning then return end
	esplooprunning = true

	noxious["run service"].Stepped:Connect(function()
		if esplooprunning then
			addesp()
		end
	end)
end

function stopesploop()
	esplooprunning = false
	removeesp()
end

function enableesp(type)
	noxious["esp types"][type] = true
	startesploop()
end

function disableesp(type)
	noxious["esp types"][type] = false

	local allDisabled = true
	for _, isEnabled in pairs(noxious["esp types"]) do
		if isEnabled then
			allDisabled = false
			break
		end
	end

	if allDisabled then
		stopesploop()
	else
		removeesp()
	end
end

addcommand("hideesptext", "hespt", function()
	toggleespbillboardvisibility(false)
	toggleesphighlightvisibility(true)
end)

addcommand("showesptext", "sespt", function()
	toggleespbillboardvisibility(true)
	if toggleesphighlightvisibility(true) then
		toggleespbillboardvisibility(false)
	end
end)

addcommand("hideesphighighlights", "hesph", function()
	toggleesphighlightvisibility(false)
	toggleespbillboardvisibility(true)
end)

addcommand("showesphighighlights", "sesph", function()
	toggleesphighlightvisibility(true)
	if toggleespbillboardvisibility(true) then
		toggleesphighlightvisibility(false)
	end
end)

addcommand("enableallesp", "eaesp", function()
	playeresp = true
	twistedesp = true
	machineesp = true
	itemesp = true
	fakeelevatoresp = true
	elevatoresp = true
	tendrilesp = true
	blothandsesp = true
	for type in pairs(noxious["esp types"]) do
		noxious["esp types"][type] = true
	end
	spawn(removeesp)
	startesploop()
end)

addcommand("disableallesp", "daesp", function()
	playeresp = false
	twistedesp = false
	machineesp = false
	itemesp = false
	fakeelevatoresp = false
	elevatoresp = false
	tendrilesp = false
	blothandsesp = false
	for type in pairs(noxious["esp types"]) do
		noxious["esp types"][type] = false
	end
	spawn(removeesp)
	stopesploop()
end)

addcommand("enableplayeresp", "epesp", function()
	playeresp = true
	enableesp("Players")
end)

addcommand("disableplayeresp", "dpesp", function()
	playeresp = false
	disableesp("Players")
end)

addcommand("enablemachineesp", "emesp", function()
	machineesp = true
	enableesp("Machines")
end)

addcommand("disablemachineesp", "dmesp", function()
	machineesp = false
	disableesp("Machines")
end)

addcommand("enabletwistedesp", "etesp", function()
	twistedesp = true
	enableesp("Monsters")
end)

addcommand("disabletwistedesp", "dtesp", function()
	twistedesp = false
	disableesp("Monsters")
end)

addcommand("enableitemesp", "eiesp", function()
	itemesp = true
	enableesp("Items")
end)

addcommand("disableitemesp", "diesp", function()
	itemesp = false
	disableesp("Items")
end)

addcommand("enableelevatoresp", "eeesp", function()
	elevatoresp = true
	enableesp("Elevator")
end)

addcommand("disableelevatoresp", "deesp", function()
	elevatoresp = false
	disableesp("Elevator")
end)

addcommand("enablefakeelevatoresp", "efeesp", function()
	fakeelevatoresp = true
	enableesp("FakeElevator")
end)

addcommand("disablefakeelevatoresp", "dfeesp", function()
	fakeelevatoresp = false
	disableesp("FakeElevator")
end)

addcommand("enablesproutstendrilesp", "estesp", function()
	tendrilesp = true
	enableesp("Tendrils")
end)

addcommand("disablesproutstendrilesp", "dstesp", function()
	tendrilesp = false
	disableesp("Tendrils")
end)

addcommand("enableblotshandsesp", "ebhesp", function()
	blothandsesp = true
	enableesp("BlotHands")
end)

addcommand("disableblotshandsesp", "dbhesp", function()
	blothandsesp = false
	disableesp("BlotHands")
end)

-------------------------------------------------------------------------------------------------------------------------------

local tracerTypes = {
	Players = true,
	Monsters = true,
	Items = true,
	Machines = true,
	FakeElevator = true,
	Elevator = true,
	Tendrils = true,
	BlotHands = true,
}

local tracerEnabled = true
local tracerGui = nil
local tracerLines = {}
local tracerLastUpdate = 0
local updateInterval = 0.01

function getModelCenter(model)
	if not model or not model:IsA("Model") then return nil end

	local parts = {}
	for _, part in pairs(model:GetDescendants()) do
		if part:IsA("BasePart") then
			table.insert(parts, part)
		end
	end
	if #parts == 0 then return nil end

	local totalPosition = Vector3.new(0, 0, 0)
	for _, part in pairs(parts) do
		totalPosition = totalPosition + part.Position
	end
	return totalPosition / #parts
end

function setupTracerGui()
	if tracerGui then return end
	tracerGui = noxious["screen gui"]
end

function getGeneratorColor(generator)
	if not generator then return getespcolor("machines") end
	local statsFolder = generator:FindFirstChild("Stats")
	if not statsFolder then return getespcolor("machines") end

	local completed = statsFolder:FindFirstChild("Completed")
	local connie = statsFolder:FindFirstChild("Connie")

	if connie and connie.Value == true then
		return getespcolor("posessedmachines")
	elseif completed and completed.Value == true then
		return getespcolor("completedmachines")
	else
		return getespcolor("machines")
	end
end

function updateTracers()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if tick() - tracerLastUpdate < updateInterval then return end
	tracerLastUpdate = tick()

	if not tracerEnabled then return end
	setupTracerGui()

	local targets = {}

	if tracerTypes.Players then
		for _, player in pairs(game.Players:GetPlayers()) do
			if player ~= noxious["local player"] then
				local character = player.Character
				if character then
					local center = getModelCenter(character)
					if center then
						local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
						if onScreen then
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = getespcolor("players")
							})
						end
					end
				end
			end
		end
	end

	if tracerTypes.Monsters and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local monstersFolder = model:FindFirstChild("Monsters")
			if monstersFolder then
				for _, monster in pairs(monstersFolder:GetChildren()) do
					if monster:IsA("Model") then
						local center = getModelCenter(monster)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								local color
								local monsterName = monster.Name

								if table.find({"AstroMonster", "VeeMonster", "SproutMonster", "PebbleMonster", "ShellyMonster", "DandyMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
									color = getespcolor("twisteds"):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)

								elseif table.find({"BassieMonster", "EggsonMonster", "FlyteMonster", "CocoaMonster"}, monsterName) then
									local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
									color = Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)

								else
									color = getespcolor("twisteds")
								end

								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	function getItemColor(item)
		if not item then 
			local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		local tweenItems = {
			"HolidayCollectibleItem",
			"Holiday Collectible Item",
			"Basket",
		}

		if item.Name == "ResearchCapsule" then
			local prompt = item:FindFirstChild("Prompt")
			if prompt then
				local monsterString = prompt:FindFirstChild("Monster")
				if monsterString and monsterString:IsA("StringValue") then
					local monsterName = monsterString.Value
					monsterName = monsterName:gsub("Monster", ""):match("^%s*(.-)%s*$")

					if monsterName == "Eggson" or monsterName == "Cocoa" or monsterName == "Bassie" or monsterName == "Flyte" then
						local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
						return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
					end

					if monsterName == "Dandy" or monsterName == "Sprout" or monsterName == "Astro" or monsterName == "Shelly" or monsterName == "Vee" or monsterName == "Pebble" then
						local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
						return getespcolor("items"):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
					end
				end
			end
		end

		if table.find(tweenItems, item.Name) then
			local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
			return Color3.fromRGB(140, 255, 140):Lerp(Color3.fromRGB(237, 121, 210), tweenProgress)
		end

		local itemColors = {
			FakeCapsule = getespcolor("fakecapsules"),

			JumperCable = getespcolor("rareitems"),
			Bandage = getespcolor("rareitems"),
			AirHorn = getespcolor("rareitems"),
			Jawbreaker = getespcolor("rareitems"),
			BonBon = getespcolor("rareitems"),
			ExtrctionSpeedCandy = getespcolor("rareitems"),

			PopBottle = getespcolor("superrareitems"),
			HealthKit = getespcolor("superrareitems"),
			ChocolateBox = getespcolor("superrareitems"),
			EjectButton = getespcolor("superrareitems"),
			SmokeBomb = getespcolor("superrareitems"),
		}

		return itemColors[item.Name] or getespcolor("items")
	end

	if tracerTypes.Items and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local itemsFolder = model:FindFirstChild("Items")
			if itemsFolder then
				for _, item in pairs(itemsFolder:GetChildren()) do
					if item:IsA("Model") then
						local center = getModelCenter(item)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = getItemColor(item)
								})
							end
						end
					end
				end
			end
		end
	end

	if tracerTypes.Machines and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local generatorsFolder = model:FindFirstChild("Generators")
			if generatorsFolder then
				for _, generator in pairs(generatorsFolder:GetChildren()) do
					if generator:IsA("Model") then
						local center = getModelCenter(generator)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								local color = getGeneratorColor(generator)
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	if tracerTypes.Tendrils then
		if currentRoom then
			for _, model in pairs(currentRoom:GetChildren()) do
				local freeArea = model:FindFirstChild("FreeArea")
				if freeArea then
					local tendril = freeArea:FindFirstChild("SproutTendril")
					if tendril and tendril:IsA("Model") then
						local center = getModelCenter(tendril)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = getespcolor("tendrils")
								})
							end
						end
					end
				end
			end
		end
	end

	if tracerTypes.BlotHands then
		for _, model in pairs(currentRoom:GetChildren()) do
			for _, child in pairs(model:GetChildren()) do
				if child.Name == "BlotHand" or child.Name == "BlotHandZone_1" or child.Name == "BlotHandZone_2" and not child:FindFirstChildOfClass("Highlight") then
					local center = getModelCenter(child)
					if center then
						local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
						if onScreen then
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = getespcolor("blotshands")
							})
						end
					end
				end
			end
		end
	end

	if tracerTypes.FakeElevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local freeArea = model:FindFirstChild("FreeArea")
			if freeArea then
				local fakeElevator = freeArea:FindFirstChild("FakeElevator")
				if fakeElevator and fakeElevator:IsA("Model") then
					local center = getModelCenter(fakeElevator)
					if center then
						local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
						if onScreen then
							local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
							local color = getespcolor("fakeelevator"):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
							table.insert(targets, {
								position = Vector2.new(screenPoint.X, screenPoint.Y),
								color = color
							})
						end
					end
				end
			end
		end
	end

	if tracerTypes.Elevator and currentRoom then
		for _, model in pairs(currentRoom:GetChildren()) do
			local elevatorsfolder = game.Workspace:FindFirstChild("Elevators")
			if elevatorsfolder then
				local elevatormodel = elevatorsfolder:FindFirstChild("Elevator")
				if elevatormodel then
					local elevatordoor = game.Workspace.Elevators.Elevator.ElevatorDoor
					if elevatordoor and elevatordoor:IsA("Model") then
						local center = getModelCenter(elevatordoor)
						if center then
							local screenPoint, onScreen = workspace.CurrentCamera:WorldToScreenPoint(center)
							if onScreen then
								local tweenProgress = math.abs(math.sin(tick() * math.pi / 2))
								local color = getespcolor("elevator"):Lerp(Color3.fromRGB(0, 0, 0), tweenProgress)
								table.insert(targets, {
									position = Vector2.new(screenPoint.X, screenPoint.Y),
									color = color
								})
							end
						end
					end
				end
			end
		end
	end

	if #targets > #tracerLines then
		for i = #tracerLines + 1, #targets do
			local line = Instance.new("Frame")
			line.Name = "TracerLine"
			line.AnchorPoint = Vector2.new(0.5, 0.5)
			line.BackgroundTransparency = 0.3
			line.BackgroundColor3 = Color3.new(1, 1, 1)
			line.BorderSizePixel = 1
			line.BorderColor3 = Color3.new(1, 1, 1)
			line.Parent = tracerGui
			table.insert(tracerLines, line)
		end
	end

	for i, line in pairs(tracerLines) do
		local target = targets[i]
		if not target then
			line:Destroy()
			table.remove(tracerLines, i)
		else
			local origin = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y * 0.9)
			local destination = target.position

			local position = (origin + destination) / 2
			line.Position = UDim2.new(0, position.X, 0, position.Y)

			local length = (origin - destination).Magnitude
			line.Size = UDim2.new(0, length, 0, 2)

			line.Rotation = math.deg(math.atan2(destination.Y - origin.Y, destination.X - origin.X))
			line.BackgroundColor3 = target.color

			line.BackgroundTransparency = 0
		end
	end
end

tracerconnection = nil

function enableTracer(type)
	if not tracerconnection then tracerconnection = noxious["run service"].RenderStepped:Connect(updateTracers) end
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = true
		tracerEnabled = true
	end
end

function disableTracer(type)
	if tracerconnection then
		tracerconnection:Disconnect()
		tracerconnection = nil
	end
	if tracerTypes[type] ~= nil then
		tracerTypes[type] = false
	end
	for _, line in pairs(tracerLines) do
		line:Destroy()
	end
end

function toggleTracers(enabled)
	tracerEnabled = enabled
	if not enabled then
		for _, line in pairs(tracerLines) do
			line:Destroy()
		end
		tracerLines = {}
	end
end

toggleTracers(false)

function disablealltracers()
	toggleTracers(false)
	disableTracer("Monsters")
	disableTracer("FakeElevator")
	disableTracer("Tendrils")
	disableTracer("BlotHands")
	disableTracer("Elevator")
	disableTracer("Machines")
	disableTracer("Items")
end

function enablealltracers()
	if inlobby() then enableTracer("Players") return end
	toggleTracers(true)
	enableTracer("Monsters")
	enableTracer("FakeElevator")
	enableTracer("Tendrils")
	enableTracer("BlotHands")
	enableTracer("Elevator")
	enableTracer("Machines")
	enableTracer("Items")
	enableTracer("Players")
end

disablealltracers()

addcommand("enablealltracers", "eat", function()
	enablealltracers()
end)

addcommand("disablealltracers", "dat", function()
	disablealltracers()
end)

addcommand("enableplayertracers", "ept", function()
	enableTracer("Players")
end)

addcommand("disableplayertracers", "dpt", function()
	disableTracer("Players")
end)

addcommand("enablemachinetracers", "emt", function()
	enableTracer("Machines")
end)

addcommand("disablemachinetracers", "dmt", function()
	disableTracer("Machines")
end)

addcommand("enabletwistedtracers", "ett", function()
	enableTracer("Monsters")
end)

addcommand("disabletwistedtracers", "dtt", function()
	disableTracer("Monsters")
end)

addcommand("enableitemtracers", "eit", function()
	enableTracer("Item")
end)

addcommand("disableitemtracers", "dit", function()
	disableTracer("Item")
end)

addcommand("enablefakeelevatortracers", "efet", function()
	enableTracer("FakeElevator")
end)

addcommand("disablefakeelevatortracers", "dfet", function()
	disableTracer("FakeElevator")
end)

addcommand("enableelevatortracers", "eet", function()
	enableTracer("Elevator")
end)

addcommand("disableelevatortracers", "det", function()
	disableTracer("Elevator")
end)

addcommand("enablesproutstendriltracers", "estt", function()
	enableTracer("Tendrils")
end)

addcommand("disablesproutstendriltracers", "dstt", function()
	disableTracer("Tendrils")
end)

addcommand("enableblotshandstracers", "ebht", function()
	enableTracer("BlotHands")
end)

addcommand("disableblotshandstracers", "dbht", function()
	disableTracer("BlotHands")
end)

-------------------------------------------------------------------------------------------------------------------------------

local sendcooldown = false

addcommand("feedback", "fb", function(...)
	local text = table.concat({...}, " ")
	if sendcooldown == true then return end
	sendcooldown = true

	local DName = noxious["local player"].DisplayName
	local Name = noxious["username"]
	local Userid = noxious["local player"].UserId
	local AccountAge = noxious["local player"].AccountAge
	local Country = game.LocalizationService.RobloxLocaleId
	local ConsoleJobId = game.JobId
	local feedback = text
	if feedback == "" then return end
	if not feedback then return end

	local GAMENAME = noxious["marketplace service"]:GetProductInfo(game.PlaceId).Name

	local function detectExecutor()
		return identifyexecutor()
	end

	local function createWebhookData()
		local webhookcheck = detectExecutor()

		local data = {
			avatar_url="",
			content="**" .. DName .. " (@" .. Name .. ")** Sent script feedback from **Noxious Hub: Dandy's World (Version " .. noxious["version"] .. ")** | [**View Player**](https://www.roblox.com/users/"..Userid..") | [**Join Server**](https://www.roblox.com/games/start?placeId=84414892540434&launchData=".. game.PlaceId .."/" ..ConsoleJobId..")",
			embeds={
				{
					author={
						name="",
						url="https://roblox.com",
					},
					description=tostring(
						"\n\n**[Noxious Info]:**" ..
							"\n**• Version:** `"..noxious["version"].."`" ..

							"\n\n**[[User Info]:](https://www.roblox.com/users/"..Userid..")**" ..
							"\n**• Display Name:** `"..DName.."`" ..
							"\n**• Username:** `"..Name.."`" .. 
							"\n**• Executor:** `"..webhookcheck.."`" ..
							"\n**• Region:** `"..Country.."`" ..

							"\n\n**[Feedback]:**" ..
							"\n`"..feedback.."`"

					),
					type="rich",
					color=tonumber"0xFFFFFF",
					thumbnail={
						url="https://www.roblox.com/headshot-thumbnail/image?userId=" .. noxious["local player"].UserId .. "&width=420&height=420&format=png"
					},
				}
			}
		}
		return noxious["http service"]:JSONEncode(data)
	end

	local function sendWebhook(webhookUrl, data)
		local headers = {
			["content-type"] = "application/json"
		}

		local request = getgenv()._realRequest
		local abcdef = {Url = webhookUrl, Body = data, Method = "POST", Headers = headers}
		request(abcdef)
	end

	local webhookUrl = "https://discord.com/api/webhooks/1396635889219801119/x00cB_nTdw2EoHpWxwdX3NBuxI-zkBO0cNE2sbpej4gWHwQJz4i2LPQOfPxl07t8EPec"
	local webhookData = createWebhookData()

	if feedback == "" then return end
	if not feedback then return end

	task.spawn(function() sendWebhook(webhookUrl, webhookData) die() end)
	task.wait(10)
	sendcooldown = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("getdonorperks", "donorperks", function()
	local everyClipboard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)

	function copytoclipboard(txt)
		if everyClipboard then
			everyClipboard(tostring(txt))
			notify("Copied to clipboard.", 5)
		else
			notify("Unable to access clipboard.", 5, "error")
		end
	end
	copytoclipboard"https://www.roblox.com/game-pass/1085884381/Noxious-Donor"	
end)

-------------------------------------------------------------------------------------------------------------------------------

function changedialoguesound(sound)
	local lp = game:GetService("Players").LocalPlayer

	local function playSound()
		local s = Instance.new("Sound")
		s.Name = "SampleSound"
		s.SoundId = "rbxassetid://" .. sound
		s.Volume = 5
		s.PlayOnRemove = true
		s.Parent = lp:WaitForChild("PlayerGui")
		s:Destroy()
	end

	local function onCharAdded(char)
		local hrp = char:WaitForChild("HumanoidRootPart", 5)
		if not hrp then return end

		for _, child in ipairs(hrp:GetChildren()) do
			if child:IsA("BillboardGui") then
				playSound()
				break
			end
		end

		hrp.ChildAdded:Connect(function(child)
			if child:IsA("BillboardGui") then
				playSound()
			end
		end)
	end

	if lp.Character then
		onCharAdded(lp.Character)
	end

	lp.CharacterAdded:Connect(onCharAdded)
end

-------------------------------------------------------------------------------------------------------------------------------

local eggsonSpeed = 1
local eggsonConnection

addcommand("enablespameggsonabilityaudio", "eseaa", function(speed)
	if not checktoon("Eggson") then return end
	task.spawn(function() execcmd("elaa") end)

	speed = tonumber(speed)
	eggsonSpeed = speed

	local player = game:GetService("Players").LocalPlayer

	if eggsonConnection then
		eggsonConnection:Disconnect()
	end

	eggsonConnection = noxious["run service"].RenderStepped:Connect(function()
		local character = player.Character
		local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")
		if humanoid then
			for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
				if track and track.Speed ~= eggsonSpeed then
					track:AdjustSpeed(eggsonSpeed)
				end
			end
		end
	end)
end)

addcommand("disablespameggsonabilityaudio", "dseaa", function()
	if not checktoon("Eggson") then return end
	task.spawn(function() execcmd("dlaa") end)

	if eggsonConnection then
		eggsonConnection:Disconnect()
		eggsonConnection = nil
	end

	local player = game:GetService("Players").LocalPlayer
	local character = player.Character
	local humanoid = character and character:FindFirstChildWhichIsA("Humanoid")

	if humanoid then
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			track:AdjustSpeed(1)
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("facelessshrimpo", "flshrimpo", function()
	if not checktoon("Shrimpo") then return end
	local head = character:WaitForChild("Head")
	head.TextureID = "rbxassetid://74753871938677"
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("whatsappastro", "whatsastro", function()
	if not checktoon("Astro") then return end
	local textureId = "rbxassetid://106334801105183"

	local character = noxious["character"]

	local partsToTexture = {"Body", "Cap", "Head", "LegL", "LegL2", "LegR", "LegR2"}

	for _, partName in ipairs(partsToTexture) do
		local part = character:FindFirstChild(partName)
		if part and part:IsA("SpecialMesh") or part:IsA("MeshPart") then
			part.TextureID = textureId
		end
	end

	local magicL = character:FindFirstChild("MagicL")
	local magicR = character:FindFirstChild("MagicR")

	if magicL and magicL:IsA("SpecialMesh") or magicL:IsA("MeshPart") then
		magicL.Color = Color3.fromRGB(99, 178, 100)
		local emitter = magicL:FindFirstChildOfClass("ParticleEmitter")
		if emitter then
			emitter.Color = ColorSequence.new(Color3.fromRGB(100, 251, 105))
		end
	end

	if magicR and magicR:IsA("SpecialMesh") or magicR:IsA("MeshPart") then
		magicR.Color = Color3.fromRGB(99, 178, 100)
		local emitter = magicR:FindFirstChildOfClass("ParticleEmitter")
		if emitter then
			emitter.Color = ColorSequence.new(Color3.fromRGB(100, 251, 105))
		end
	end

	local config = character:FindFirstChild("Config")
	if config and config:FindFirstChild("HurtTexture") then
		config.HurtTexture.Texture = "rbxassetid://103271535882802"
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("smilingcosmo", "scosmo", function()
	if not checktoon("Cosmo") then return end
	local head = character:WaitForChild("Head")			
	head.TextureID = "rbxassetid://70657488373630"
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("breakstats", "bstats", function()
	local inGamePlayersFolder = game.Workspace:FindFirstChild("InGamePlayers")

	if inGamePlayersFolder then
		for _, playerFolder in pairs(inGamePlayersFolder:GetChildren()) do
			local statsFolder = playerFolder:FindFirstChild("Stats")

			if statsFolder then
				for _, stat in pairs(statsFolder:GetChildren()) do
					if stat:IsA("NumberValue") then
						stat.Value = "nan"
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("showadminpanel", "sap", function()
	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = noxious["replicated storage"].Admin.DevFrame
		devframe.Frame.Visible = true
		devframe.Frame.Parent = noxious["local player"].PlayerGui.MainGui
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function showgui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA("GuiObject") then
					child.Visible = true
				end
				showgui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild("PlayerGui") then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA("ScreenGui") then
					local devFrame = screenGui:FindFirstChild("DevFrame")						
					if devFrame and devFrame:IsA("Frame") then
						devFrame.Visible = true
						showgui(devFrame)
					end
				end
			end
		end
	end
end)

addcommand("hideadminpanel", "hap", function()
	if game.PlaceId == noxious["dandy's world lobby"] then

		local devframe = noxious["local player"].PlayerGui.MainGui
		devframe.Frame.Visible = false
		devframe.Frame.Parent = noxious["replicated storage"].Admin.DevFrame
	end

	if game.PlaceId == noxious["dandy's world run"] then

		local function hidegui(parent)
			for _, child in ipairs(parent:GetChildren()) do
				if child:IsA("GuiObject") then
					child.Visible = false
				end
				hidegui(child)
			end
		end

		if noxious["local player"] and noxious["local player"]:FindFirstChild("PlayerGui") then
			for _, screenGui in ipairs(noxious["local player"].PlayerGui:GetChildren()) do
				if screenGui:IsA("ScreenGui") then
					local devFrame = screenGui:FindFirstChild("DevFrame")					
					if devFrame and devFrame:IsA("Frame") then
						devFrame.Visible = false
						hidegui(devFrame)
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local visualizervisibilitysettings = {
	KillRadius = true,
	InstantRadius = true,
	VisionRadius = true,
	HearingRadius = true
}

local activeVisualizations = {}

function createsphere(radius, color, name)
	local sphere = Instance.new("Part")
	sphere.Name = name
	sphere.Shape = Enum.PartType.Ball
	sphere.Size = Vector3.new(radius * 2, radius * 2, radius * 2)
	sphere.Transparency = 0
	sphere.Color = color
	sphere.Material = Enum.Material.ForceField
	sphere.CanCollide = false
	sphere.Anchored = true
	sphere.CastShadow = false
	sphere.Parent = workspace
	return sphere
end

function getAnchorPart(monster)
	return monster:FindFirstChild("HumanoidRootPart") 
		or monster.PrimaryPart 
		or monster:FindFirstChildWhichIsA("BasePart")
end

function updsv(monster)
	local visData = activeVisualizations[monster]
	if not visData then return end

	for radiusType, sphere in pairs(visData.spheres) do
		if visualizervisibilitysettings[radiusType] ~= nil then
			sphere.Transparency = visualizervisibilitysettings[radiusType] and 0 or 1
		end
	end
end

function showradius(radiusType)
	task.spawn(initializeVisualizerSystem)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = true
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function hideRadius(radiusType)
	if visualizervisibilitysettings[radiusType] ~= nil then
		visualizervisibilitysettings[radiusType] = false
		for monster, _ in pairs(activeVisualizations) do
			if monster:IsDescendantOf(game) then
				updsv(monster)
			end
		end
		return true
	end
	return false
end

function cleanupVisualization(monster)
	local visData = activeVisualizations[monster]
	if visData then
		for _, conn in ipairs(visData.connections) do
			conn:Disconnect()
		end

		for _, sphere in pairs(visData.spheres) do
			sphere:Destroy()
		end

		activeVisualizations[monster] = nil
	end
end

function visualizemonsterradii(monster)
	cleanupVisualization(monster)

	local chaser = monster:FindFirstChild("Chaser")
	if not chaser then return end

	local killRadius = chaser:FindFirstChild("KillRadius")
	local instantRadius = chaser:FindFirstChild("InstantRadius")
	local visionRadius = chaser:FindFirstChild("VisionRadius")
	local hearingRadius = chaser:FindFirstChild("HearingRadius")

	local anchorPart = getAnchorPart(monster)
	if not anchorPart then return end

	local visData = {
		spheres = {},
		connections = {},
		anchorPart = anchorPart
	}
	activeVisualizations[monster] = visData

	if killRadius then
		visData.spheres.KillRadius = createsphere(killRadius.Value, Color3.new(1, 0, 0), monster.Name.."_KillRadiusSphere")
	end
	if instantRadius then
		visData.spheres.InstantRadius = createsphere(instantRadius.Value, Color3.new(1, 0.5, 0), monster.Name.."_InstantRadiusSphere")
	end
	if visionRadius then
		visData.spheres.VisionRadius = createsphere(visionRadius.Value, Color3.new(1, 1, 0), monster.Name.."_VisionRadiusSphere")
	end
	if hearingRadius then
		visData.spheres.HearingRadius = createsphere(hearingRadius.Value, Color3.new(0, 1, 0), monster.Name.."_HearingRadiusSphere")
	end

	local function updatePositions()
		for _, sphere in pairs(visData.spheres) do
			if sphere and sphere.Parent then
				sphere.Position = anchorPart.Position
			end
		end
	end

	table.insert(visData.connections, noxious["run service"].Heartbeat:Connect(updatePositions))

	table.insert(visData.connections, monster.AncestryChanged:Connect(function(_, parent)
		if not monster:IsDescendantOf(game) then
			cleanupVisualization(monster)
		end
	end))

	updsv(monster)
	updatePositions()
end

visulaizersinitialized = false

function initializeVisualizerSystem()
	if visulaizersinitialized then return end
	visulaizersinitialized = true

	if game.PlaceId == noxious["dandy's world run"] then
		local currentRoom = workspace:FindFirstChild("CurrentRoom")
		if currentRoom then
			for _, model in pairs(currentRoom:GetChildren()) do
				local monstersFolder = model:FindFirstChild("Monsters")
				if monstersFolder then
					for _, monster in pairs(monstersFolder:GetChildren()) do
						if monster:IsA("Model") then
							task.spawn(visualizemonsterradii, monster)
						end
					end
				end
			end
		end

		workspace.DescendantAdded:Connect(function(descendant)
			if descendant.Name == "Monsters" and descendant:IsA("Folder") then
				descendant.ChildAdded:Connect(function(monster)
					if monster:IsA("Model") then
						task.wait(0.2)
						visualizemonsterradii(monster)
					end
				end)
			end
		end)
	end
end

addcommand("showallvisualizers", "sav", function()
	task.spawn(function() showradius("KillRadius") end)
	task.spawn(function() showradius("InstantRadius") end)
	task.spawn(function() showradius("VisionRadius") end)
	task.spawn(function() showradius("HearingRadius") end)
end)

addcommand("hideallvisualizers", "hav", function()
	task.spawn(function() hideRadius("KillRadius") end)
	task.spawn(function() hideRadius("InstantRadius") end)
	task.spawn(function() hideRadius("VisionRadius") end)
	task.spawn(function() hideRadius("HearingRadius") end)
end)

addcommand("showkillvisualizer", "skv", function()
	task.spawn(function() showradius("KillRadius") end)
end)

addcommand("hidekillvisualizer", "hkv", function()
	task.spawn(function() hideRadius("KillRadius") end)
end)

addcommand("shownearvisualizer", "snv", function()
	task.spawn(function() showradius("InstantRadius") end)
end)

addcommand("hidenearvisualizer", "hnv", function()
	task.spawn(function() hideRadius("InstantRadius") end)
end)

addcommand("showvisionvisualizer", "svv", function()
	task.spawn(function() showradius("VisionRadius") end)
end)

addcommand("hidevisionvisualizer", "hvv", function()
	task.spawn(function() hideRadius("VisionRadius") end)
end)

addcommand("showhearingvisualizer", "shv", function()		
	task.spawn(function() showradius("HearingRadius") end)
end)

addcommand("hidehearingvisualizer", "hhv", function()
	task.spawn(function() hideRadius("HearingRadius") end)
end)

task.spawn(function() hideRadius("KillRadius") end)
task.spawn(function() hideRadius("InstantRadius") end)
task.spawn(function() hideRadius("VisionRadius") end)
task.spawn(function() hideRadius("HearingRadius") end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fakefloor", "ffloor", function(value)
	game.Workspace.Info.Floor.Value = value
end)

addcommand("fakerequiredmachines", "frmachines", function(value)
	game.Workspace.Info.RequiredGenerators.Value = value
end)

addcommand("fakemachinescompleted", "fcmachines", function(value)
	game.Workspace.Info.GeneratorsCompleted.Value = value
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fakeblackouts", "fblackouts", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("Blackouts") then
		playerFolder.Blackouts.Value = value
	end
end)

addcommand("fakeichor", "fichor", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("Coin") then
		playerFolder.Coin.Value = value
	end
end)

addcommand("faketapes", "ftapes", function(value)
	local playerStats = game.Workspace.Info.PlayerStats	
	local playerFolder = playerStats:FindFirstChild(noxious["username"])

	if playerFolder and playerFolder:FindFirstChild("SurvivalPoints") then
		playerFolder.SurvivalPoints.Value = value
	end
end)

addcommand("fakedandyitemspurchased", "fdip", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("DandyItemsPurchased") then
		playerFolder.DandyItemsPurchased.Value = value
	end
end)

addcommand("fakefloorstraveled", "fft", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("FloorsTraveled") then
		playerFolder.FloorsTraveled.Value = value
	end
end)

addcommand("fakemachinesfinished", "fmf", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("GeneratorsCompleted") then
		playerFolder.GeneratorsCompleted.Value = value
	end
end)

addcommand("fakefurthestfloor", "fff", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("HighestFloor") then
		playerFolder.HighestFloor.Value = value
	end
end)

addcommand("fakeitemspickedup", "fipu", function(value)
	local playerData = game:GetService("ReplicatedStorage"):WaitForChild"PlayerData"		
	local playerFolder = playerData:FindFirstChild(tostring(noxious["local player"].UserId))

	if playerFolder and playerFolder:FindFirstChild("ItemsPickedUp") then
		playerFolder.ItemsPickedUp.Value = value
	end
end)

addcommand("changeresearch", "cr", function(twisted, value)
	function capname(name)
		if not name or #name == 0 then return name end
		return name:sub(1, 1):upper() .. name:sub(2):lower()
	end
	local replicatedStorage = game:GetService("ReplicatedStorage")
	local formattedMonsterName = capname(twisted) .. "Monster"
	value = tonumber(value)
	local playerDataFolder = replicatedStorage:FindFirstChild("PlayerData")
	local playerFile = playerDataFolder:FindFirstChild(tostring(noxious["local player"].UserId))
	local researchFolder = playerFile:FindFirstChild("Research")
	local monster = researchFolder:FindFirstChild(formattedMonsterName)
	monster.Value = value
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("unlockalltoons", "uato", function()
	for _, a in pairs(noxious["toons"]) do
		local b = Instance.new("StringValue", noxious["replicated storage"].PlayerData:FindFirstChild(noxious["local player"].UserId).Towers)
		b.Name = a
		b.Value = "Default"
	end
	execcmd("re")
end)

addcommand("unlockalltrinkets", "uatr", function()
	local a = { "MimeMakeup", "EggRadar", "WhisperingFlower", "GlazedFondantBag", "Scrapbook", "PartyPopper", "FestiveLights", "Coal", "ToyKit", "PeppermintIcing", "BlushyBat", "Alarm", "Cardboard'Armor'", "CoinPurse", "Megaphone", "PopPack", "PullToy", "SpeedyShoes", "Speedometer", "Thermos", "ThinkingCap", "WaterCooler", "Wrench", " Brick", "BlueBandana", "Bone", "CrayonSet", "DandyPlush", "DogPlush", " FriendshipBracelet", "MachineManual", "Magnifying Glass", "NightCap", "PinkBow", " RibbonSpool", "SpareBulb", "VeeRemote", "ClownHorn", "GhostSnakes"}
	for _, b in pairs(a) do
		local c = Instance.new("StringValue", noxious["replicated storage"].PlayerData:FindFirstChild(noxious["local player"].UserId).Trinkets)
		c.Name = b
		c.Value = "Default"
	end
	execcmd("re")
end)

addcommand("showalltooncards", "satc", function()
	for _, a in pairs(noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("ScreenGui"):WaitForChild("SelectionFrame"):WaitForChild("ScrollingFrame"):GetChildren()) do
		if a:IsA("TextButton") and a.Name ~= "Template" then
			a.Visible = true
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function resetchar()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()

	stoprainbow()
	if not stoprainbow() then
		resetappearance(character)
	end

	local b = noxious["character"]:WaitForChild("Body", 5)
	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
			execcmd("unview")
		end
	end

	b.Anchored = false

	task.spawn(function()
		noxious["character"].ArmL.Transparency = 0
		noxious["character"].ArmL2.Transparency = 0
		noxious["character"].ArmR.Transparency = 0
		noxious["character"].ArmR2.Transparency = 0
		noxious["character"].Hair.Transparency = 0
		noxious["character"].HandL.Transparency = 0
		noxious["character"].HandR.Transparency = 0
		noxious["character"].Head.Transparency = 0
		noxious["character"].LegL.Transparency = 0
		noxious["character"].LegL2.Transparency = 0
		noxious["character"].LegR.Transparency = 0
		noxious["character"].LegR2.Transparency = 0
	end)
end

addcommand("restorecharacter", "rec", function()
	resetchar()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("sproutcutout", "stc", function()
	noxious["character"].Body.MeshId = "rbxassetid://14685582359"
	noxious["character"].Body.TextureID = "rbxassetid://14685585037"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

addcommand("dandycutout", "dyc", function()
	noxious["character"].Body.MeshId = "rbxassetid://14685044008"
	noxious["character"].Body.TextureID = "rbxassetid://14685046783"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

addcommand("shellycutout", "syc", function()
	noxious["character"].Body.MeshId = "rbxassetid://14687965432"
	noxious["character"].Body.TextureID = "rbxassetid://14687967976"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

addcommand("pebblecutout", "pec", function()
	noxious["character"].Body.MeshId = "rbxassetid://14685339427"
	noxious["character"].Body.TextureID = "rbxassetid://14685341892"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

addcommand("astrocutout", "aoc", function()
	noxious["character"].Body.MeshId = "rbxassetid://14688397977"
	noxious["character"].Body.TextureID = "rbxassetid://14688394959"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

addcommand("veecutout", "vec", function()
	noxious["character"].Body.MeshId = "rbxassetid://14687687688"
	noxious["character"].Body.TextureID = "rbxassetid://14687691668"
	noxious["character"].ArmL.Transparency = 1
	noxious["character"].ArmL2.Transparency = 1
	noxious["character"].ArmR.Transparency = 1
	noxious["character"].ArmR2.Transparency = 1
	noxious["character"].Hair.Transparency = 1
	noxious["character"].HandL.Transparency = 1
	noxious["character"].HandR.Transparency = 1
	noxious["character"].Head.Transparency = 1
	noxious["character"].LegL.Transparency = 1
	noxious["character"].LegL2.Transparency = 1
	noxious["character"].LegR.Transparency = 1
	noxious["character"].LegR2.Transparency = 1
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("bodiless", "bl", function()
	task.spawn(function() noxious["character"].ArmL.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmL2.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmR.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmR2.Transparency = 1 end)
	task.spawn(function() noxious["character"].HandL.Transparency = 1 end)
	task.spawn(function() noxious["character"].Body.Transparency = 1 end)
	task.spawn(function() noxious["character"].HandR.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegL.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegL2.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegR.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegR2.Transparency = 1 end)
end)

addcommand("unbodiless", "ubl", function()
	task.spawn(function() noxious["character"].ArmL.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmL2.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmR.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmR2.Transparency = 0 end)
	task.spawn(function() noxious["character"].HandL.Transparency = 0 end)
	task.spawn(function() noxious["character"].Body.Transparency = 0 end)
	task.spawn(function() noxious["character"].HandR.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegL.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegL2.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegR.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegR2.Transparency = 0 end)
end)

addcommand("headless", "hl", function()
	task.spawn(function() noxious["character"].Hair.Transparency = 1 end)
	task.spawn(function() noxious["character"].Head.Transparency = 1 end)
end)

addcommand("unheadless", "uhl", function()
	task.spawn(function() noxious["character"].Hair.Transparency = 0 end)
	task.spawn(function() noxious["character"].Head.Transparency = 0 end)
end)

addcommand("legless", "ll", function()
	task.spawn(function() noxious["character"].LegL.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegL2.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegR.Transparency = 1 end)
	task.spawn(function() noxious["character"].LegR2.Transparency = 1 end)
end)

addcommand("unlegless", "ull", function()
	task.spawn(function() noxious["character"].LegL.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegL2.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegR.Transparency = 0 end)
	task.spawn(function() noxious["character"].LegR2.Transparency = 0 end)
end)

addcommand("armless", "al", function()
	task.spawn(function() noxious["character"].ArmL.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmL2.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmR.Transparency = 1 end)
	task.spawn(function() noxious["character"].ArmR2.Transparency = 1 end)
	task.spawn(function() noxious["character"].HandL.Transparency = 1 end)
	task.spawn(function() noxious["character"].HandR.Transparency = 1 end)
end)

addcommand("unarmless", "ual", function()
	task.spawn(function() noxious["character"].ArmL.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmL2.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmR.Transparency = 0 end)
	task.spawn(function() noxious["character"].ArmR2.Transparency = 0 end)
	task.spawn(function() noxious["character"].HandL.Transparency = 0 end)
	task.spawn(function() noxious["character"].HandR.Transparency = 0 end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local savedtextureid, savedmeshid, savedsize
local legR, legR2

function waitForCharacter()
	local character = noxious["character"]

	repeat task.wait() until character:FindFirstChild("LegR") and character:FindFirstChild("LegR2")

	return character
end

function saveLegProperties()
	local character = waitForCharacter()
	legR = character:FindFirstChild("LegR")
	legR2 = character:FindFirstChild("LegR2")

	if legR and legR2 then
		savedtextureid = legR.TextureID
		savedmeshid = legR.MeshId
		savedsize = legR.Size
	end
end

task.spawn(saveLegProperties)
noxious["local player"].CharacterAdded:Connect(saveLegProperties)

addcommand("korblox", "korblox", function()
	task.spawn(function()
		local character = waitForCharacter()
		legR = character:FindFirstChild("LegR")
		legR2 = character:FindFirstChild("LegR2")

		if legR and legR2 then
			legR.TextureID = "http://www.roblox.com/asset/?id=18615141631"
			legR.MeshId = "rbxassetid://18615136546"
			legR.Size = Vector3.new(0.24, 1.0, 0.232)
			legR2.Transparency = 1
		end
	end)
end)

addcommand("unkorblox", "unkorblox", function()
	task.spawn(function()
		local character = waitForCharacter()
		legR = character:FindFirstChild("LegR")
		legR2 = character:FindFirstChild("LegR2")

		if legR and legR2 then
			legR.TextureID = savedtextureid
			legR.MeshId = savedmeshid
			legR.Size = savedsize
			legR2.Transparency = 0
		end
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local textureSequence = {
	{textureId = "rbxassetid://111525026642180", waitTime = 0.3},
	{textureId = "rbxassetid://131115976292268", waitTime = 0.2},
	{textureId = "rbxassetid://70596614839666", waitTime = 0.3},
	{textureId = "rbxassetid://17230708611", waitTime = 0}
}

local isRunning = false

function changeHeadTextures()
	local head = noxious["character"]:WaitForChild("Head")			
	while isRunning do
		for _, texture in ipairs(textureSequence) do
			head.TextureID = texture.textureId
			task.wait(texture.waitTime)
		end
		local interval = math.random(5, 10)
		task.wait(interval)
	end
end

addcommand("enablegoobfrogblinking", "egfb", function()
	if not checktoon("Goob") then return end
	if not isRunning then
		isRunning = true
		task.spawn(changeHeadTextures)
	end
end)

addcommand("disablegoobfrogblinking", "dgfb", function()
	if not checktoon("Goob") then return end
	isRunning = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("twistedpoppyskin", "tps", function()
	if not checktoon("Poppy") then return end
	loadstring(game:HttpGet("https://raw.githubusercontent.com/REEEPlayz/scripts/refs/heads/main/Protected_8863153958472817.txt"))()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("becomedandy", "bd", function()
	if not checktoon("Boxten") then return end
	local Dandy, DHAir
	if game.PlaceId == noxious["dandy's world run"] then
		Dandy = workspace.Elevators.Elevator.DandyStore.DandyShop
		DHAir = Dandy.Hair
	elseif game.PlaceId == noxious["dandy's world lobby"] then
		Dandy = workspace.DandyStore
		DHAir = workspace.DandyStore.Hair
	end

	local CHAir = character:FindFirstChild("Hair")		
	for _, partA in ipairs(Dandy:GetDescendants()) do
		local partB = character:FindFirstChild(partA.Name, true)
		if partB then
			DHAir.Parent = character
			DHAir.Joint.Part0 = character.Head
			task.wait(0.01)

			character.Animate.idle.Animation1.AnimationId = "rbxassetid://16496520991"
			character.Animate.idle.Animation2.AnimationId = "rbxassetid://16496520991"
			character.Animate.run.RunAnim.AnimationId = "rbxassetid://16496812530"
			character.Config.NormalTexture.Texture = "rbxassetid://16496414911"
			character.Config.HurtTexture.Texture = "rbxassetid://17561468145"

			if CHAir then
				CHAir:Destroy()
			end
			task.wait(0.01)

			if partA:IsA("MeshPart") and partB:IsA("MeshPart") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId

				local tempTextureId = partA.TextureID
				partA.TextureID = partB.TextureID
				partB.TextureID = tempTextureId
			elseif partA:IsA("SpecialMesh") and partB:IsA("SpecialMesh") then
				local tempMeshId = partA.MeshId
				partA.MeshId = partB.MeshId
				partB.MeshId = tempMeshId
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local originalProperties = {}
local currentGhostMode = nil

function storeogappearance(character)
	originalProperties[character] = {}
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			originalProperties[character][part] = {
				Color = part.Color,
				Transparency = part.Transparency,
				Material = part.Material,
				TextureID = part:IsA("MeshPart") and part.TextureID or nil,
			}
		end
	end
end

function resetappearance(character)
	if not character then return end

	local charProps = originalProperties[character]
	if not charProps then return end

	for part, originalProp in pairs(charProps) do
		if part and part.Parent then
			part.Color = originalProp.Color
			part.Transparency = originalProp.Transparency
			part.Material = originalProp.Material

			if part:IsA("MeshPart") then
				part.TextureID = originalProp.TextureID or ""
			end
		end
	end

	originalProperties[character] = nil
end

local rainbowLoopRunning = false
local rainbowLoopConnection = nil

function stoprainbow()
	if rainbowLoopConnection then
		rainbowLoopConnection:Disconnect()
		rainbowLoopConnection = nil
	end
	rainbowLoopRunning = false
end

function createRainbowLoop(character)
	stoprainbow()
	rainbowLoopRunning = true

	rainbowLoopConnection = noxious["run service"].Heartbeat:Connect(function()
		if not character or not character.Parent then
			stoprainbow()
			return
		end

		local time = tick()
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") then
				local hue = (time % 10) / 10
				part.Color = Color3.fromHSV(hue, 1, 1)
			end
		end
	end)
end

function removeTexturesAndChangeAppearance(character, color)
	for _, part in pairs(character:GetDescendants()) do
		if part:IsA("BasePart") then
			for _, descendant in pairs(part:GetDescendants()) do
				if descendant:IsA("Decal") or descendant:IsA("Texture") then
					descendant:Destroy()
				end
			end

			if part:IsA("MeshPart") then
				part.TextureID = ""
			end

			part.Material = Enum.Material.ForceField
			part.Transparency = (part.Name == "HumanoidRootPart") and 1 or 0

			if color then
				part.Color = color
			end
		end
	end
end

function rainbowghostchar()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()

	if currentGhostMode then
		resetappearance(character)
	end

	storeogappearance(character)

	removeTexturesAndChangeAppearance(character)

	createRainbowLoop(character)
	currentGhostMode = "rainbow"
end

function solidghostchar(color)
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()

	if currentGhostMode then
		resetappearance(character)
	end

	storeogappearance(character)

	removeTexturesAndChangeAppearance(character, color)
	currentGhostMode = "solid"
end

colorMap = {
	red = Color3.fromRGB(255, 0, 0), r = Color3.fromRGB(255, 0, 0),
	orange = Color3.fromRGB(255, 100, 0), o = Color3.fromRGB(255, 100, 0),
	yellow = Color3.fromRGB(255, 255, 0), y = Color3.fromRGB(255, 255, 0),
	green = Color3.fromRGB(0, 255, 0), gn = Color3.fromRGB(0, 255, 0),
	cyan = Color3.fromRGB(0, 255, 255), c = Color3.fromRGB(0, 255, 255),
	blue = Color3.fromRGB(0, 0, 255), be = Color3.fromRGB(0, 0, 255),
	purple = Color3.fromRGB(176, 38, 255), pe = Color3.fromRGB(176, 38, 255),
	pink = Color3.fromRGB(255, 0, 255), pk = Color3.fromRGB(255, 0, 255),
	brown = Color3.fromRGB(137,81,41), bn = Color3.fromRGB(137,81,41),
	white = Color3.fromRGB(255, 255, 255), w = Color3.fromRGB(255, 255, 255),
	gray = Color3.fromRGB(110, 110, 110), gy = Color3.fromRGB(110, 110, 110),
	black = Color3.new(0, 0, 0), bk = Color3.new(0, 0, 0),
}

addcommand("ghostcharacter", "gc", function(args)
	local colorName = args and args:lower() or nil

	if not colorName or colorName == "" then
		local character = noxious["character"]
		if character then
			resetappearance(character)
			currentGhostMode = nil
			stoprainbow()
		end
		return
	end

	if colorName == "rainbow" or colorName == "rb" then
		rainbowghostchar()
		return
	end

	local color = colorMap[colorName]
	if color then
		solidghostchar(color)
	end
end)

addcommand("ghostcharacter rainbow", "gc rainbow", function()
	rainbowghostchar()
end)

addcommand("ghostcharacter rb", "gc rb", function()
	rainbowghostchar()
end)

-------------------------------------------------------------------------------------------------------------------------------

isfullbrightlooping = false
fullbrightloopconnection = nil
originallightingsetting = {}

function saveOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	originallightingsetting.Brightness = Lighting.Brightness
	originallightingsetting.ClockTime = Lighting.ClockTime
	originallightingsetting.FogEnd = Lighting.FogEnd
	originallightingsetting.GlobalShadows = Lighting.GlobalShadows
	originallightingsetting.OutdoorAmbient = Lighting.OutdoorAmbient
end

function restoreOriginalSettings()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = originallightingsetting.Brightness
	Lighting.ClockTime = originallightingsetting.ClockTime
	Lighting.FogEnd = originallightingsetting.FogEnd
	Lighting.GlobalShadows = originallightingsetting.GlobalShadows
	Lighting.OutdoorAmbient = originallightingsetting.OutdoorAmbient
end

function fullBright()
	local Lighting = game:GetService"Lighting"		
	Lighting.Brightness = 2
	Lighting.ClockTime = 14
	Lighting.FogEnd = 100000
	Lighting.GlobalShadows = false
	Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
end

addcommand("enablefullbright", "efb", function()
	if not isfullbrightlooping then
		isfullbrightlooping = true
		saveOriginalSettings()
		fullbrightloopconnection = noxious["run service"].RenderStepped:Connect(function()
			fullBright()
		end)
	end
end)

addcommand("disablefullbright", "dfb", function()
	if isfullbrightlooping then
		isfullbrightlooping = false
		if fullbrightloopconnection then
			fullbrightloopconnection:Disconnect()
			fullbrightloopconnection = nil
		end
		restoreOriginalSettings()
	end
end)

altfullbrightenabled = false
altfullbrightconnection = nil

addcommand("enablealternativefullbright", "eafb", function()
	if altfullbrightenabled then return end
	altfullbrightenabled = true

	task.spawn(function() execcmd("dfb") end)
	task.spawn(function() saveOriginalSettings() end)

	altfullbrightconnection = noxious["run service"].RenderStepped:Connect(function()
		if altfullbrightenabled then
			game.Lighting.Brightness = 2
			game.Lighting.FogEnd = 100000
			game.Lighting.GlobalShadows = false
			game.Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
		end
	end)
end)

addcommand("disablealternativefullbright", "dafb", function()
	if not altfullbrightenabled then return end
	altfullbrightenabled = false

	task.spawn(function() execcmd("dfb") end)
	task.spawn(function() restoreOriginalSettings() end)

	if altfullbrightconnection then
		altfullbrightconnection:Disconnect()
		altfullbrightconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("removefog", "nofog", function()
	game:GetService("Lighting").FogEnd = 100000
	for i,v in pairs(game:GetService("Lighting"):GetDescendants()) do
		if v:IsA("Atmosphere") then
			v:Destroy()
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

origsettings = {abt = game:GetService("Lighting").Ambient, oabt = game:GetService("Lighting").OutdoorAmbient, brt = game:GetService("Lighting").Brightness, time = game:GetService("Lighting").ClockTime, fe = game:GetService("Lighting").FogEnd, fs = game:GetService("Lighting").FogStart, gs = game:GetService("Lighting").GlobalShadows}

addcommand("restorelighting", "rlighting", function()
	game:GetService("Lighting").Ambient = origsettings.abt
	game:GetService("Lighting").OutdoorAmbient = origsettings.oabt
	game:GetService("Lighting").Brightness = origsettings.brt
	game:GetService("Lighting").ClockTime = origsettings.time
	game:GetService("Lighting").FogEnd = origsettings.fe
	game:GetService("Lighting").FogStart = origsettings.fs
	game:GetService("Lighting").GlobalShadows = origsettings.gs
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("deletedeveloperdoors", "ddd", function()
	workspace.DevDoor:Destroy()
	workspace.DevDoor2:Destroy()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("openelevator", "oe", function()
	local elevatorfolder = game.Workspace:FindFirstChild("Elevators")
	if elevatorfolder then
		local elevatormodel = elevatorfolder:FindFirstChild("Elevator")
		if elevatormodel then
			local opened = elevatormodel:FindFirstChild("Opened")
			local doorvisible = elevatormodel:FindFirstChild("DoorVisible")
			if opened and opened:IsA("BoolValue") then
				opened.Value = true
				doorvisible.Parent = game:GetService("ReplicatedStorage")
			end
		end
	end
end)

addcommand("closeelevator", "ce", function()
	local elevatorfolder = game.Workspace:FindFirstChild("Elevators")
	if elevatorfolder then
		local elevatormodel = elevatorfolder:FindFirstChild("Elevator")
		if elevatormodel then
			local opened = elevatormodel:FindFirstChild("Opened")
			local doorvisible = game:GetService("ReplicatedStorage"):FindFirstChild("DoorVisible")
			if opened and opened:IsA("BoolValue") then
				opened.Value = false
				task.wait(2)
				doorvisible.Parent = elevatormodel
			end
		end
	end
end)

addcommand("opentrapdoors", "otd", function()
	local elevatorfolder = game.Workspace:FindFirstChild("Elevators")
	if elevatorfolder then
		local elevatormodel = elevatorfolder:FindFirstChild("Elevator")
		if elevatormodel then
			local opened = elevatormodel:FindFirstChild("OpenTrapDoors")
			if opened and opened:IsA("BoolValue") then
				opened.Value = true
			end
		end
	end
end)

addcommand("closetrapdoors", "ctd", function()
	local elevatorfolder = game.Workspace:FindFirstChild("Elevators")
	if elevatorfolder then
		local elevatormodel = elevatorfolder:FindFirstChild("Elevator")
		if elevatormodel then
			local opened = elevatormodel:FindFirstChild("OpenTrapDoors")
			if opened and opened:IsA("BoolValue") then
				opened.Value = false
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablepanicmode", "epm", function()
	game.Workspace.Info.Panic.Value = true
end)

addcommand("disablepanicmode", "dpm", function()
	game.Workspace.Info.Panic.Value = false
end)

addcommand("enableblackout", "ebo", function()
	game.Workspace.Info.BlackOut.Value = true
end)

addcommand("enableblackout", "dbo", function()
	game.Workspace.Info.BlackOut.Value = false
end)

-------------------------------------------------------------------------------------------------------------------------------

dibloop = false
dibfloorConnection = nil

function dib()
	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if not currentRoom then return end

	local model = currentRoom:FindFirstChildOfClass("Model")
	if not model then return end

	local freeArea = model:FindFirstChild("FreeArea")
	if freeArea then
		for _, child in ipairs(freeArea:GetChildren()) do
			if child:IsA("Part") and (child.Name == "InvisBorder" or child.Name == "InvisibleWall" or child.Name == "InvisWall") then
				child:Destroy()
			end
		end
	end

	for _, name in {"GeneratedBorders", "Borders"} do
		local toDestroy = model:FindFirstChild(name)
		if toDestroy then
			toDestroy:Destroy()
		end
	end

	local walls = model:FindFirstChild("Walls")
	if walls then
		for _, child in ipairs(walls:GetChildren()) do
			if child:IsA("Part") and (child.Name == "InvisibleWall" or child.Name == "InvisWall") then
				child:Destroy()
			end
		end
	end
end

addcommand("deleteinvisibleborders", "dib", function()
	task.spawn(dib)
	if dibfloorConnection then return end
	dibfloorConnection = true

	local floorActiveValue = workspace:WaitForChild("Info"):WaitForChild("FloorActive")

	if not dibfloorConnection then
		dibfloorConnection = floorActiveValue.Changed:Connect(dib)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

autofloorcmdconfig = {
	enableautopickupallitems = "puai",
	enableautopickupallheals = "puah",
	enableautopickupresearchcapsules = "puarc",
	enableautopickupalltapes = "puat",
	enableautopickupallextractionitems = "puaei",
	enableautoencountertwisteds = "et",
	eapuai = "puai",
	epuah = "puah",
	eapurc = "puarc",
	eapuat = "puat",
	eapuaei = "puaei",
	eaet = "et"
}

autofloorcmds = {}
autofloorcmdqueue = {}
autofloorcmdqueuerunning = false

function processQueue()
	if autofloorcmdqueuerunning or #autofloorcmdqueue == 0 then return end
	autofloorcmdqueuerunning = true

	while #autofloorcmdqueue > 0 do
		local cmd = table.remove(autofloorcmdqueue, 1)
		if typeof(cmd) == "string" then
			execcmd(cmd)
			task.wait(0.5)
		end
	end

	autofloorcmdqueuerunning = false
end

function onFloorActiveChanged(newValue)
	if newValue ~= true then return end

	for execCmd, data in pairs(autofloorcmds) do
		if data.enabled then
			table.insert(autofloorcmdqueue, execCmd)
		end
	end

	processQueue()
end

task.spawn(function()
	if game.PlaceId ~= noxious["dandy's world run"] then return end
	local floorValue = workspace:WaitForChild("Info"):WaitForChild("FloorActive")
	floorValue:GetPropertyChangedSignal("Value"):Connect(function()
		onFloorActiveChanged(floorValue.Value)
	end)
end)

for alias, execCmd in pairs(autofloorcmdconfig) do
	if not autofloorcmds[execCmd] then
		autofloorcmds[execCmd] = { enabled = false }
	end

	local disableAlias = alias:gsub("^enable", "disable")

	local shortEnable = "ea" .. execCmd
	local shortDisable = "da" .. execCmd

	local function enableHandler()
		autofloorcmds[execCmd].enabled = true
		if workspace:WaitForChild("Info"):WaitForChild("FloorActive").Value == true then
			table.insert(autofloorcmdqueue, execCmd)
			processQueue()
		end
	end

	local function disableHandler()
		autofloorcmds[execCmd].enabled = false
	end

	addcommand(alias, alias, enableHandler)
	addcommand(disableAlias, disableAlias, disableHandler)
	addcommand(shortEnable, shortEnable, enableHandler)
	addcommand(shortDisable, shortDisable, disableHandler)
end

-------------------------------------------------------------------------------------------------------------------------------

panicautofloorcmdconfig = {
	enablepanicautopickupallitems = "puai",
	enablepanicautopickupallheals = "puah",
	enablepanicautopickupresearchcapsules = "puarc",
	enablepanicautopickupalltapes = "puat",
	enablepanicautopickupallextractionitems = "puaei",
	enablepanicautoencountertwisteds = "et",
	epapuai = "puai",
	eppuah = "puah",
	epapurc = "puarc",
	epapuat = "puat",
	epapuaei = "puaei",
	epaet = "et"
}

panicautofloorcmds = {}
panicautofloorcmdqueue = {}
panicautofloorcmdqueuerunning = false

function panicprocessQueue()
	if panicautofloorcmdqueuerunning or #panicautofloorcmdqueue == 0 then return end
	panicautofloorcmdqueuerunning = true

	while #panicautofloorcmdqueue > 0 do
		local cmd = table.remove(panicautofloorcmdqueue, 1)
		if typeof(cmd) == "string" then
			execcmd(cmd)
			task.wait(0.5)
		end
	end

	panicautofloorcmdqueuerunning = false
end

function onpanicChanged(newValue)
	if newValue ~= true then return end

	for execCmd, data in pairs(panicautofloorcmds) do
		if data.enabled then
			table.insert(panicautofloorcmdqueue, execCmd)
		end
	end

	panicprocessQueue()
end

task.spawn(function()
	if game.PlaceId ~= noxious["dandy's world run"] then return end
	local floorValue = workspace:WaitForChild("Info"):WaitForChild("Panic")
	floorValue:GetPropertyChangedSignal("Value"):Connect(function()
		onpanicChanged(floorValue.Value)
	end)
end)

for alias, execCmd in pairs(panicautofloorcmdconfig) do
	if not panicautofloorcmds[execCmd] then
		panicautofloorcmds[execCmd] = { enabled = false }
	end

	local disableAlias = alias:gsub("^enable", "disable")

	local shortEnable = "epa" .. execCmd
	local shortDisable = "dpa" .. execCmd

	local function enableHandler()
		panicautofloorcmds[execCmd].enabled = true
		if workspace:WaitForChild("Info"):WaitForChild("FloorActive").Value == true then
			table.insert(panicautofloorcmdqueue, execCmd)
			panicprocessQueue()
		end
	end

	local function disableHandler()
		panicautofloorcmds[execCmd].enabled = false
	end

	addcommand(alias, alias, enableHandler)
	addcommand(disableAlias, disableAlias, disableHandler)
	addcommand(shortEnable, shortEnable, enableHandler)
	addcommand(shortDisable, shortDisable, disableHandler)
end

-------------------------------------------------------------------------------------------------------------------------------

local maxDistanceEnabled = false

function updmaxdist(player, distance)
	local function onchar(character)
		local HRP = character:WaitForChild("HumanoidRootPart", 5)
		if HRP then
			local nameTag = HRP:FindFirstChild("NameTag")			
			if nameTag and nameTag:IsA("BillboardGui") then
				nameTag.MaxDistance = distance
			end
		end
	end

	if player.Character then
		onchar(player.Character)
	end
	player.CharacterAdded:Connect(onchar)
end

function applymaxdist(distance)
	for _, player in ipairs(game.Players:GetPlayers()) do
		updmaxdist(player, distance)
	end

	game.Players.PlayerAdded:Connect(function(player)
		updmaxdist(player, distance)
	end)
end

addcommand("enableinfinitenametagmaxdistance", "einmd", function()
	if not maxDistanceEnabled then
		maxDistanceEnabled = true
		applymaxdist(math.huge)
	end
end)

addcommand("disableinfinitenametagmaxdistance", "dinmd", function()
	if maxDistanceEnabled then
		maxDistanceEnabled = false
		applymaxdist(30)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local healthFrameVisibilityEnabled = false
local connection

function updhealthframes(visibility, maxDistance)
	local playersFolder = workspace:FindFirstChild("InGamePlayers")		
	if not playersFolder then
		return false
	end

	for _, playerModel in ipairs(playersFolder:GetChildren()) do
		if playerModel:IsA("Model")then
			local loadoutFrame = playerModel:FindFirstChild("LoadoutFrame")				
			if loadoutFrame then
				if loadoutFrame:IsA("BillboardGui") then
					loadoutFrame.MaxDistance = maxDistance
				end

				local frame = loadoutFrame:FindFirstChild("Frame")					
				if frame then
					local healthFrame = frame:FindFirstChild("HealthFrame")						
					if healthFrame then
						healthFrame.Visible = visibility
					end
				end
			end
		end
	end

	return true
end

addcommand("showplayerhealth", "sph", function()	
	if not healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = true
		connection = noxious["run service"].RenderStepped:Connect(function()
			local playersFolderExists = updhealthframes(true, math.huge)
			if not playersFolderExists then
				execcmd("hideplayerhealth")
			end
		end)
	end
end)

addcommand("hideplayerhealth", "hph", function()
	if healthFrameVisibilityEnabled then
		healthFrameVisibilityEnabled = false
		updhealthframes(false, 30)
		if connection then
			connection:Disconnect()
			connection = nil
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local loadoutSlotVisibilityEnabled = false
local slotUpdateConnection

function updateLoadoutSlotFrames(visibility, maxDistance)
	local playersFolder = workspace:FindFirstChild("InGamePlayers")		
	if not playersFolder then
		return false
	end

	for _, playerModel in ipairs(playersFolder:GetChildren()) do
		if playerModel:IsA("Model") then
			local loadoutGui = playerModel:FindFirstChild("LoadoutFrame")				
			if loadoutGui and loadoutGui:IsA("BillboardGui") then
				loadoutGui.MaxDistance = maxDistance

				local frame = loadoutGui:FindFirstChild("Frame")
				if frame then
					for _, slotName in ipairs({"Slot1", "Slot2"}) do
						local slotFrame = frame:FindFirstChild(slotName)
						if slotFrame then
							slotFrame.Visible = visibility
						end
					end
				end
			end
		end
	end

	return true
end

addcommand("showplayertrinkets", "spt", function()	
	if not loadoutSlotVisibilityEnabled then
		loadoutSlotVisibilityEnabled = true
		slotUpdateConnection = noxious["run service"].Heartbeat:Connect(function()
			local folderExists = updateLoadoutSlotFrames(true, math.huge)
			if not folderExists then
				execcmd("hideloadoutslots")
			end
		end)
	end
end)

addcommand("hideplayertrinkets", "hpt", function()
	if loadoutSlotVisibilityEnabled then
		loadoutSlotVisibilityEnabled = false
		updateLoadoutSlotFrames(false, 30)
		if slotUpdateConnection then
			slotUpdateConnection:Disconnect()
			slotUpdateConnection = nil
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("hide", "hide", function(target)
	local players = noxious["players"]

	local function settransparency(player, visible)
		local character = player.Character
		if not character then return end
		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
				part.Transparency = visible and 0 or 1
			elseif part:IsA("Decal") then
				part.Transparency = visible and 0 or 1
			end
		end
	end

	local function resolveplayers(target)
		if not target then target = "me" end
		local resolved = {}
		if target == "me" then
			table.insert(resolved, players.LocalPlayer)
		elseif target == "others" then
			for _, p in ipairs(players:GetPlayers()) do
				if p ~= players.LocalPlayer then
					table.insert(resolved, p)
				end
			end
		elseif target == "all" then
			resolved = players:GetPlayers()
		elseif target == "random" then
			local allPlayers = players:GetPlayers()
			if #allPlayers > 0 then
				local randomPlayer = allPlayers[math.random(1, #allPlayers)]
				table.insert(resolved, randomPlayer)
			end
		else
			for _, p in ipairs(players:GetPlayers()) do
				if p.Name:lower():find(target:lower(), 1, true) then
					table.insert(resolved, p)
					break
				end
			end
		end
		return resolved
	end

	for _, p in ipairs(resolveplayers(target)) do
		settransparency(p, false)
	end
end)

addcommand("show", "show", function(target)
	local players = noxious["players"]

	local function settransparency(player, visible)
		local character = player.Character
		if not character then return end
		for _, part in ipairs(character:GetDescendants()) do
			if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" then
				part.Transparency = visible and 0 or 1
			elseif part:IsA("Decal") then
				part.Transparency = visible and 0 or 1
			end
		end
	end

	local function resolveplayers(target)
		if not target then target = "me" end
		local resolved = {}
		if target == "me" then
			table.insert(resolved, players.LocalPlayer)
		elseif target == "others" then
			for _, p in ipairs(players:GetPlayers()) do
				if p ~= players.LocalPlayer then
					table.insert(resolved, p)
				end
			end
		elseif target == "all" then
			resolved = players:GetPlayers()
		elseif target == "random" then
			local allPlayers = players:GetPlayers()
			if #allPlayers > 0 then
				local randomPlayer = allPlayers[math.random(1, #allPlayers)]
				table.insert(resolved, randomPlayer)
			end
		else
			for _, p in ipairs(players:GetPlayers()) do
				if p.Name:lower():find(target:lower(), 1, true) then
					table.insert(resolved, p)
					break
				end
			end
		end
		return resolved
	end

	for _, p in ipairs(resolveplayers(target)) do
		settransparency(p, true)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local rainbowLights = {}

function stopRainbowLight(player)
	local conn = rainbowLights[player]
	if conn then
		conn:Disconnect()
		rainbowLights[player] = nil
	end
end

function startRainbowLight(player, light)
	stopRainbowLight(player)
	rainbowLights[player] = noxious["run service"].Heartbeat:Connect(function()
		if not player.Character or not light or not light.Parent then
			stopRainbowLight(player)
			return
		end
		local hue = (tick() % 10) / 10
		light.Color = Color3.fromHSV(hue, 1, 1)
	end)
end

addcommand("pointlight", "light", function(trg, rng, clr)
	local target = trg or "me"
	local range = tonumber(rng) or 15
	local colorName = clr and clr:lower() or "white"

	local playersList = {}

	if target == "me" then
		table.insert(playersList, noxious["players"].LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["players"].LocalPlayer then
				table.insert(playersList, player)
			end
		end
	elseif target == "all" then
		playersList = noxious["players"]:GetPlayers()
	elseif target == "random" then
		local allPlayers = noxious["players"]:GetPlayers()
		if #allPlayers > 0 then
			local randomPlayer = allPlayers[math.random(1, #allPlayers)]
			table.insert(playersList, randomPlayer)
		end
	else
		for _, player in ipairs(noxious["players"]:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(playersList, player)
				break
			end
		end
	end

	if #playersList == 0 then return end

	local isRainbow = colorName == "rainbow" or colorName == "rb"
	local staticColor = colorMap[colorName] or colorMap["white"]

	for _, player in ipairs(playersList) do
		local char = player.Character
		local hrp = char and char:FindFirstChild("HumanoidRootPart")
		if hrp then
			local light = hrp:FindFirstChild("CustomPointLight")
			if not light then
				light = Instance.new("PointLight")
				light.Name = "CustomPointLight"
				light.Parent = hrp
			end
			light.Brightness = 2
			light.Range = range

			if isRainbow then
				startRainbowLight(player, light)
			else
				stopRainbowLight(player)
				light.Color = staticColor
			end
		end
	end
end)

addcommand("unpointlight", "unlight", function(args)
	local target = args or "me"

	local playersList = {}

	if target == "me" then
		table.insert(playersList, noxious["players"].LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(noxious["players"]:GetPlayers()) do
			if player ~= noxious["players"].LocalPlayer then
				table.insert(playersList, player)
			end
		end
	elseif target == "all" then
		playersList = noxious["players"]:GetPlayers()
	elseif target == "random" then
		local allPlayers = noxious["players"]:GetPlayers()
		if #allPlayers > 0 then
			local randomPlayer = allPlayers[math.random(1, #allPlayers)]
			table.insert(playersList, randomPlayer)
		end
	else
		for _, player in ipairs(noxious["players"]:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(playersList, player)
				break
			end
		end
	end

	if #playersList == 0 then return end

	for _, player in ipairs(playersList) do
		local char = player.Character
		local hrp = char and char:FindFirstChild("HumanoidRootPart")
		if hrp then
			local light = hrp:FindFirstChild("CustomPointLight")
			if light then
				stopRainbowLight(player)
				light:Destroy()
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("joinrandomnoxioususer", "jrnu", function()
	local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
	if not httprequest then
		return notify("Your executor does not support this command.", 5, "error")
	end

	local endpoint = "https://script.google.com/macros/s/AKfycbynIRHAi8mc73glzkOGCcw2Wzkkyds5u2pxxZPe2IIKVlnYiizTG4kF7-PezKf26LEn/exec?action=get"

	local response = httprequest({Url = endpoint, Method = "GET"})
	if not response or not response.Body then
		return notify("Failed to fetch data.", 5, "error")
	end

	local data = noxious["http service"]:JSONDecode(response.Body)
	if not data or #data == 0 then
		return notify("No logged players found.", 5, "error")
	end

	local filtered = {}
	for _, entry in ipairs(data) do
		if tonumber(entry.placeId) ~= 16552821455 then
			table.insert(filtered, entry)
		end
	end

	if #filtered == 0 then
		return notify("No eligible players found.", 5, "warning")
	end

	local picked = filtered[math.random(1, #filtered)]
	if picked and picked.jobId and picked.placeId then
		noxious["teleport service"]:TeleportToPlaceInstance(picked.placeId, picked.jobId, noxious["players"].LocalPlayer)
	else
		notify("Invalid data received.", 5, "error")
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spawnshrimpo", "sps", function()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new("MeshPart")		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://78124401415554"
	meshPart.TextureID = "rbxassetid://88850093113717"

	meshPart.Parent = workspace
end)

addcommand("spawndandy", "spd", function()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new("MeshPart")		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://107019721797906"
	meshPart.TextureID = "rbxassetid://109038384710517"

	meshPart.Parent = workspace
end)

addcommand("spawntwisteddandy", "sptd", function()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new("MeshPart")		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://131467007179018"
	meshPart.TextureID = "rbxassetid://104745646981650"

	meshPart.Parent = workspace
end)

addcommand("spawntv", "sptv", function()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local meshPart = Instance.new("MeshPart")		
	meshPart.Size = Vector3.new(1, 1, 1)
	meshPart.Anchored = false
	meshPart.CanCollide = true
	meshPart.Position = humanoidRootPart.Position + Vector3.new(0, 5, 0)
	meshPart.MeshId = "rbxassetid://105769252421064"
	meshPart.TextureID = "rbxassetid://132807616662124"

	meshPart.Parent = workspace
end)

addcommand("spawnplushies", "sp", function()
	local Players = game:GetService("Players")
	local Debris = game:GetService("Debris")

	local player = Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local hrp = character:WaitForChild("HumanoidRootPart")

	local meshOptions = {
		{MeshId = "rbxassetid://71244913752294", TextureId = "rbxassetid://114525084724930"}, -- dandy
		{MeshId = "rbxassetid://73153098331930", TextureId = "rbxassetid://117170402608886"}, -- shelly
		{MeshId = "rbxassetid://118914329656696", TextureId = "rbxassetid://95235468518759"}, -- vee
		{MeshId = "rbxassetid://104535249097941", TextureId = "rbxassetid://95032986581190"}, -- sprout
		{MeshId = "rbxassetid://104736978854503", TextureId = "rbxassetid://140426113289874"}, -- astro
		{MeshId = "rbxassetid://112318762302461", TextureId = "rbxassetid://71341185794189"}, -- bassie
		{MeshId = "rbxassetid://96132186668349", TextureId = "rbxassetid://102583177496235"}, -- cocoa
	}

	local spreadForce = 40
	local partSize = Vector3.new(2, 4, 2)

	for _, meshData in ipairs(meshOptions) do
		local part = Instance.new("Part")
		part.Size = partSize
		part.Anchored = false
		part.CanCollide = true
		part.Massless = false
		part.Position = hrp.Position + Vector3.new(0, 2, 0)
		part.Velocity = Vector3.new(
			math.random(-spreadForce, spreadForce),
			math.random(10, spreadForce),
			math.random(-spreadForce, spreadForce)
		)
		part.Material = Enum.Material.Neon
		part.Color = Color3.fromRGB(255, 255, 255)
		part.Parent = workspace

		local mesh = Instance.new("SpecialMesh", part)
		mesh.MeshType = Enum.MeshType.FileMesh
		mesh.MeshId = meshData.MeshId
		mesh.TextureId = meshData.TextureId or ""
		mesh.Scale = Vector3.new(2, 2, 2)

		Debris:AddItem(part, 500)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttoelevator", "tpte", function()
	local a = workspace:FindFirstChild("Elevators")
	if a then
		local b = a:FindFirstChildWhichIsA("Model")
		if b then
			local c = b:FindFirstChild("MonsterBlocker")
			if c and c:IsA("Part")then
				local d = noxious["character"]
				if d and d:FindFirstChild("HumanoidRootPart")then
					local e = c.CFrame * CFrame.new(0, -10.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
					if noxiousautofarmrunning or dekaautofarmrunning and autobuyitems then e = c.CFrame * CFrame.new(10, -10.5, 0) * CFrame.Angles(0, math.rad(-90), 0) end
					local wasbypassinganticheat = bypassinganticheat
					task.spawn(function() execcmd("eacb") end)
					tpbypass(e)
					task.wait(0.5) if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
				end
			end
		end
	end
end)

teleportingtofakeelevator = false

addcommand("teleporttofakeelevator", "tptfe", function()
	if teleportingtofakeelevator then return end
	teleportingtofakeelevator = true

	local a = workspace:FindFirstChild("CurrentRoom")
	if a then
		local b = a:FindFirstChildWhichIsA("Model")
		if b then
			local c = b:FindFirstChild("FreeArea")
			local d = c:FindFirstChild("FakeElevator")
			local e = d:FindFirstChild("Base")
			if e and e:IsA("Part") then
				local f = noxious["character"]
				if f and f:FindFirstChild("HumanoidRootPart")then
					local g = e.CFrame * CFrame.new(0, 2.7, 0) * CFrame.Angles(0, math.rad(-90), 0)
					local wasbypassinganticheat = bypassinganticheat
					task.spawn(function() execcmd("eacb") end)
					tpbypass(g)
					tpbypass(g)
					if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
					teleportingtofakeelevator = false
				end
			end
		end
	end
end)

function avoidsproutstendrils()
	if teleportingtofakeelevator then return end
	teleportingtofakeelevator = true

	local a = workspace:FindFirstChild("CurrentRoom")
	if a then
		local b = a:FindFirstChildWhichIsA("Model")
		if b then
			local c = b:FindFirstChild("FreeArea")
			local d = c:FindFirstChild("FakeElevator")
			local e = d:FindFirstChild("Base")
			if e and e:IsA("Part") then
				local f = noxious["character"]
				if f and f:FindFirstChild("HumanoidRootPart")then
					local g = e.CFrame * CFrame.new(10, 2.7, 10) * CFrame.Angles(0, math.rad(-90), 0)
					local wasbypassinganticheat = bypassinganticheat
					task.spawn(function() execcmd("eacb") end)
					tpbypass(g)
					tpbypass(g)
					if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
					teleportingtofakeelevator = false
				end
			end
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableantitendrils", "eait", function()
	game:GetService("ReplicatedStorage").Events.GetCharacterPosition.OnClientInvoke = function()
		return game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end;
end)

addcommand("disableantitendrils", "dait", function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Events = ReplicatedStorage:WaitForChild("Events")
	Events.GetCharacterPosition.OnClientInvoke = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

autoteleporttoelevatorenabled = true
autoteleporttoelevatorteleported = false
autoteleporttoelevatorconnection = nil
autoteleporttoelevatorlastpanicstate = false

addcommand("enableautoteleporttoelevator", "eatpte", function()
	local workspace = game:GetService("Workspace")        
	local infoFolder = workspace:FindFirstChild("Info")

	if infoFolder then
		local panicBool = infoFolder:FindFirstChild("Panic")            
		if panicBool and panicBool:IsA("BoolValue") then
			if not autoteleporttoelevatorconnection or not autoteleporttoelevatorconnection.Connected then
				autoteleporttoelevatorconnection = noxious["run service"].Heartbeat:Connect(function()
					if autoteleporttoelevatorlastpanicstate ~= panicBool.Value then
						autoteleporttoelevatorlastpanicstate = panicBool.Value
						if not panicBool.Value then
							autoteleporttoelevatorteleported = false
						end
					end

					if autoteleporttoelevatorenabled and panicBool.Value == true and not autoteleporttoelevatorteleported then
						task.spawn(function() execcmd("tpte") end)
						autoteleporttoelevatorteleported = true
					end
				end)
			end
		end
	end
end)

addcommand("disableautoteleporttoelevator", "datpte", function()
	autoteleporttoelevatorenabled = false
	autoteleporttoelevatorteleported = false
	if autoteleporttoelevatorconnection then
		autoteleporttoelevatorconnection:Disconnect()
		autoteleporttoelevatorconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

autojoinrunconnection = nil

addcommand("enableautojoinrun", "eajr", function()
	if autojoinrunconnection then return end

	local function gog(lal)
		local character = noxious["character"]
		local root = character:WaitForChild("HumanoidRootPart")

		local savedCFrame = root.CFrame

		firetouchinterest(root, lal, 0)
		task.wait()
		firetouchinterest(root, lal, 1)

		task.wait()
		root.CFrame = savedCFrame
	end

	autojoinrunconnection = task.spawn(function()
		while autojoinrunconnection do
			task.wait(0)
			for _, model in ipairs(workspace["Elevators"]:GetChildren()) do
				if model:IsA("Model") and model.Name == "Gate" then
					local gate = model:FindFirstChild("Gate")
					local guiPart = model:FindFirstChild("GuiPart")
					local surfaceGui = guiPart and guiPart:FindFirstChildOfClass("SurfaceGui")
					local frame = surfaceGui and surfaceGui:FindFirstChild("Frame")
					local playersLabel = frame and frame:FindFirstChild("players")
					if gate and gate:IsA("BasePart")
						and playersLabel and playersLabel:IsA("TextLabel")
						or playersLabel.Text == "3/8"
						or playersLabel.Text == "4/8"
						or playersLabel.Text == "5/8"
						or playersLabel.Text == "6/8"
						or playersLabel.Text == "7/8" then
						gog(gate)
						break
					end
				end
			end
		end
	end)
end)

addcommand("disableautojoinrun", "dajr", function()
	autojoinrunconnection = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("joinelevator1", "je1", function()
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local function findgate()
		for _, model in ipairs(workspace["Elevators"]:GetChildren()) do
			if model:IsA("Model") and model.Name == "Gate" then
				local gate = model:FindFirstChild("Gate")
				local partOne = model:FindFirstChild("1")
				if gate and gate:IsA("BasePart") and partOne and partOne:IsA("BasePart") then
					return gate
				end
			end
		end
		return nil
	end

	local function gog(lal)
		local character = player.Character or player.CharacterAdded:Wait()
		local root = character:WaitForChild("HumanoidRootPart")

		local savedCFrame = root.CFrame

		firetouchinterest(root, lal, 0)
		task.wait()
		firetouchinterest(root, lal, 1)

		task.wait()
		root.CFrame = savedCFrame
	end

	local gate = findgate()
	if gate then
		gog(gate)
	end
end)

addcommand("joinelevator2", "je2", function()
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local function findgate()
		for _, model in ipairs(workspace["Elevators"]:GetChildren()) do
			if model:IsA("Model") and model.Name == "Gate" then
				local gate = model:FindFirstChild("Gate")
				local partOne = model:FindFirstChild("2")
				if gate and gate:IsA("BasePart") and partOne and partOne:IsA("BasePart") then
					return gate
				end
			end
		end
		return nil
	end

	local function gog(lal)
		local character = player.Character or player.CharacterAdded:Wait()
		local root = character:WaitForChild("HumanoidRootPart")

		local savedCFrame = root.CFrame

		firetouchinterest(root, lal, 0)
		task.wait(0.1)
		firetouchinterest(root, lal, 1)

		task.wait(0.1)
		root.CFrame = savedCFrame
	end

	local gate = findgate()
	if gate then
		gog(gate)
	end
end)

addcommand("joinelevator3", "je3", function()
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local function findgate()
		for _, model in ipairs(workspace["Elevators"]:GetChildren()) do
			if model:IsA("Model") and model.Name == "Gate" then
				local gate = model:FindFirstChild("Gate")
				local partOne = model:FindFirstChild("3")
				if gate and gate:IsA("BasePart") and partOne and partOne:IsA("BasePart") then
					return gate
				end
			end
		end
		return nil
	end

	local function gog(lal)
		local character = player.Character or player.CharacterAdded:Wait()
		local root = character:WaitForChild("HumanoidRootPart")

		local savedCFrame = root.CFrame

		firetouchinterest(root, lal, 0)
		task.wait(0.1)
		firetouchinterest(root, lal, 1)

		task.wait(0.1)
		root.CFrame = savedCFrame
	end

	local gate = findgate()
	if gate then
		gog(gate)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local atptg_monitoring = false
local atptg_connections = {}

local function disconnectAll()
	for _, conn in pairs(atptg_connections) do
		if conn then conn:Disconnect() end
	end
	table.clear(atptg_connections)
end

local function teleportToGen()
	task.spawn(function() execcmd("tptg") end)
	task.wait(0.5)
	task.spawn(function() execcmd("eatptg") end)
	task.wait(0.5)
	task.spawn(function() execcmd("eatptg") end)
end

addcommand("enableautoteleporttogenerator", "eatptg", function()
	if atptg_monitoring then return end
	atptg_monitoring = true

	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild("HumanoidRootPart")

	local info = workspace:WaitForChild("Info")
	local floorActive = info:WaitForChild("FloorActive")
	local panic = info:WaitForChild("Panic")
	local inGamePlayer = workspace:WaitForChild("InGamePlayers"):WaitForChild(game.Players.LocalPlayer.Name)
	local decoding = inGamePlayer:WaitForChild("Decoding")

	local floorTriggered = false

	-- Handle FloorActive
	local function checkFloorActive()
		if floorActive.Value and not floorTriggered then
			floorTriggered = true
			teleportToGen()
		end
	end

	checkFloorActive()

	table.insert(atptg_connections, floorActive.Changed:Connect(function()
		checkFloorActive()
	end))

	-- Handle Decoding repeatedly
	table.insert(atptg_connections, decoding.Changed:Connect(function(newValue)
		if newValue ~= nil and atptg_monitoring then
			task.delay(1, function()
				if decoding.Value ~= nil and atptg_monitoring then
					teleportToGen()
				end
			end)
		end
	end))

	-- Handle Panic reset logic
	table.insert(atptg_connections, panic.Changed:Connect(function(newVal)
		if newVal == false then
			floorTriggered = false -- Reset so FloorActive can trigger again
			checkFloorActive()     -- Immediately recheck in case it's still true
		end
	end))
end)

addcommand("disableautoteleporttogenerator", "datptg", function()
	if not atptg_monitoring then return end
	atptg_monitoring = false
	disconnectAll()
end)

-------------------------------------------------------------------------------------------------------------------------------

extractingtpwalkconnection = nil
extractingtpwalkdecodingconnection = nil
extractingtpwalkismonitoring = false

addcommand("enableextractingtpwalk", "eetpwalk", function(speed)
	execcmd("detpwalk")
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	character:WaitForChild("HumanoidRootPart")
	local inGamePlayerModel = workspace:FindFirstChild("InGamePlayers"):FindFirstChild(player.Name)

	local decodingObject = inGamePlayerModel:FindFirstChild("Decoding")
	if extractingtpwalkismonitoring then return end

	extractingtpwalkismonitoring = true

	local function atptg2decodstat(isDecoding)
		if isDecoding then
			if speed and tonumber(speed) then
				execcmd("tpwalk " .. tonumber(speed))
			end
		else
			execcmd("untpwalk")
		end
	end

	extractingtpwalkdecodingconnection = decodingObject.Changed:Connect(function(newValue)
		atptg2tpdelay = 1
		atptg2decodstat(newValue ~= nil)
	end)

	atptg2decodstat(decodingObject.Value ~= nil)
end)

addcommand("disableextractingtpwalk", "detpwalk", function()
	if not extractingtpwalkismonitoring then return end

	extractingtpwalkismonitoring = false

	if extractingtpwalkdecodingconnection then
		extractingtpwalkdecodingconnection:Disconnect()
		extractingtpwalkdecodingconnection = nil
	end

	if extractingtpwalkconnection then
		extractingtpwalkconnection:Disconnect()
		extractingtpwalkconnection = nil
	end

	execcmd("untpwalk")
end)

-------------------------------------------------------------------------------------------------------------------------------

function isConnieActive(generator)
	local statsFolder = generator:FindFirstChild("Stats")
	local connie = statsFolder and statsFolder:FindFirstChild("Connie")
	if connie and connie:IsA("BoolValue") and connie.Value then
		return true
	end
	return false
end

teleportingtogenerator = false

addcommand("teleporttogenerator", "tptg", function()
	if teleportingtogenerator then return end
	teleportingtogenerator = true

	local wasnoclipping = noclipping
	local wasbypassinganticheat = bypassingantichea

	task.wait(0.5)

	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eacb") end)

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local currentRoom = workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		for _, item in pairs(currentRoom:GetChildren()) do
			if item:IsA("Model") then
				local generatorsFolder = item:FindFirstChild("Generators")
				if generatorsFolder then
					local generators = {}
					for _, generator in pairs(generatorsFolder:GetChildren()) do
						if generator:IsA("Model") and generator.PrimaryPart then
							local statsFolder = generator:FindFirstChild("Stats")
							if statsFolder then
								local completedValue = statsFolder:FindFirstChild("Completed")
								local activeplayer = statsFolder:FindFirstChild("ActivePlayer")
								if completedValue and completedValue:IsA("BoolValue") and not completedValue.Value and not activeplayer.Value then
									if not isConnieActive(generator) then
										table.insert(generators, generator)
									end
								end
							end
						end
					end

					if not wasnoclipping then task.spawn(function() task.wait(0.8) execcmd("clip") end) end
					if not wasbypassinganticheat then task.spawn(function() task.wait(0.8) execcmd("dacb") teleportingtogenerator = false end) end

					if #generators > 0 then
						local randomGenerator = generators[math.random(1, #generators)]
						local generatorCFrame = randomGenerator:GetPrimaryPartCFrame()
						local forwardPosition = generatorCFrame.Position + generatorCFrame.LookVector * 4
						local targetCFrame = CFrame.new(forwardPosition, generatorCFrame.Position) * CFrame.new(0, 2.3, 0)

						tpbypass(targetCFrame)
					end
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function findplr(partialName)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Name:lower():sub(1, #partialName) == partialName:lower() then
			return player
		end
	end
	return nil
end

teleporttingtolayer = false

addcommand("teleportto", "to", function(args)
	if teleporttingtolayer then return end
	teleporttingtolayer = true

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"

	local targetPlayer
	if args:lower() == "random" then
		local players = game.Players:GetPlayers()
		if #players > 0 then
			targetPlayer = players[math.random(1, #players)]
		end
	else
		targetPlayer = findplr(args)
	end

	if targetPlayer then
		local targetCharacter = targetPlayer.Character
		local targetRootPart = targetCharacter.HumanoidRootPart
		local behindPosition = targetRootPart.CFrame * CFrame.new(0, 0, 3)
		if not inrun() then
			if targetCharacter and targetCharacter:FindFirstChild("HumanoidRootPart")then
				humanoidRootPart.CFrame = behindPosition
			end
		else
			local wasbypassinganticheat = bypassinganticheat
			task.spawn(function() execcmd("eacb") end)
			tpbypass(behindPosition)
			if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
			teleporttingtolayer = false
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttoadminroom", "tptar", function()
	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-43, 21, 24)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttobedroom", "tptbr", function()
	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-130, 40, 26)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttodandysshop", "tptds", function()
	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-19, 21, 17)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttoboxofdoom", "tptbod", function()
	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-215, 3, -215)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

addcommand("teleporttostage", "tpts", function()
	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild"HumanoidRootPart"		
	local targetPosition = Vector3.new(-3, 33, 492)
	humanoidRootPart.CFrame = CFrame.new(targetPosition)
end)

-------------------------------------------------------------------------------------------------------------------------------

autovotebestcardenabled = false
autovotebestcardthread = nil

function voteBestCard()
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("DandyDiscount")

		if heal then
			event:FireServer(heal)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("Elevator")
		local heal2 = cardVote:FindFirstChild("Elevator2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("SurvivalPoint")
		local heal2 = cardVote:FindFirstChild("SurvivalPoint2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("RandomItem")
		local heal2 = cardVote:FindFirstChild("RandomItem2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("ItemRarity")
		local heal2 = cardVote:FindFirstChild("ItemRarity2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("AbilityCooldown")
		local heal2 = cardVote:FindFirstChild("AbilityCooldown2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("GlowLight")

		if heal then
			event:FireServer(heal)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("MonsterPanicReduction")

		if heal then
			event:FireServer(heal)
		end
	end)
	task.spawn(function()
		local heal = cardVote:FindFirstChild("ItemRarity")
		local heal2 = cardVote:FindFirstChild("ItemRarity2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("Stamina")
		local heal2 = cardVote:FindFirstChild("Stamina2")

		if heal then
			event:FireServer(heal)
		end

		if heal2 then
			event:FireServer(heal2)
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")
		local players = game:GetService("Players"):GetPlayers()

		local shouldVote = true

		for _, player in ipairs(players) do
			local inGamePlayer = workspace:FindFirstChild("InGamePlayers")
			local playerModel = inGamePlayer and inGamePlayer:FindFirstChild(player.Name)
			local healthValue = playerModel and playerModel:FindFirstChild("Health")

			if healthValue and healthValue:IsA("IntValue") and healthValue.Value >= 3 then
				shouldVote = false
				break
			end
		end

		if shouldVote then
			local heal = cardVote:FindFirstChild("Heal")
			local heal2 = cardVote:FindFirstChild("Heal2")

			if heal then
				event:FireServer(heal)
			end

			if heal2 then
				event:FireServer(heal2)
			end
		end
	end)
	task.spawn(function()
		local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
		local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

		local heal = cardVote:FindFirstChild("Machine")

		if heal then
			event:FireServer(heal)
		end
	end)
end

function monitorCardVoteFolder()
	local cardVoteFolder = workspace:WaitForChild("Info"):WaitForChild("CardVote")

	local function tryVote()
		if not autovotebestcardenabled or alreadyVoted then return end

		task.delay(1, function()
			if not autovotebestcardenabled or alreadyVoted then return end
			if #cardVoteFolder:GetChildren() > 0 then
				voteBestCard()
				alreadyVoted = true
			end
		end)
	end

	cardVoteFolder.ChildAdded:Connect(function()
		tryVote()
	end)

	cardVoteFolder.ChildRemoved:Connect(function()
		if #cardVoteFolder:GetChildren() == 0 then
			alreadyVoted = false
		end
	end)

	if #cardVoteFolder:GetChildren() > 0 then
		tryVote()
	end
end

addcommand("enableautovotebestcard", "eavbc", function()
	if autovotebestcardenabled then return end
	autovotebestcardenabled = true
	alreadyVoted = false
	task.spawn(monitorCardVoteFolder)
end)

addcommand("disableautovotebestcard", "davbc", function()
	autovotebestcardenabled = false
	alreadyVoted = false
end)

-------------------------------------------------------------------------------------------------------------------------------

autovotehealrunning = false
autovotehealthread = nil

addcommand("enableautovotehealcard", "eavhc", function()
	autovotehealrunning = true

	if autovotehealrunning then
		autovotehealthread = task.spawn(function()
			while autovotehealrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("Heal")
				local heal2 = cardVote:FindFirstChild("Heal2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotehealcard", "davhc", function()
	autovotehealrunning = false
end)

autovotetechsavvyrunning = false
autovotetechsavvythread = nil

addcommand("enableautovotetechsavvycard", "eavtsc", function()
	autovotetechsavvyrunning = true

	if autovotetechsavvyrunning then
		autovotetechsavvythread = task.spawn(function()
			while autovotetechsavvyrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("Machine")

				if heal then
					event:FireServer(heal)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotetechsavvycard", "davtsc", function()
	autovotetechsavvyrunning = false
end)

autovoteblindgrabrunning = false
autovoteblindgrabthread = nil

addcommand("enableautovoteblindgrabcard", "eavbgc", function()
	autovoteblindgrabrunning = true

	if autovoteblindgrabrunning then
		autovoteblindgrabthread = task.spawn(function()
			while autovoteblindgrabrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("RandomItem")
				local heal2 = cardVote:FindFirstChild("RandomItem2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovoteblindgrabcard", "davbgc", function()
	autovoteblindgrabrunning = false
end)

autovotetapesrunning = false
autovotetapesthread = nil

addcommand("enableautovotetapescard", "eavtc", function()
	autovotetapesrunning = true

	if autovotetapesrunning then
		autovotetapesthread = task.spawn(function()
			while autovotetapesrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("SurvivalPoint")
				local heal2 = cardVote:FindFirstChild("SurvivalPoint2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotetapescard", "davtc", function()
	autovotetapesrunning = false
end)

autovotefrugalrunning = false
autovotefrugalthread = nil

addcommand("enableautovotefrugalcard", "eavfc", function()
	autovotefrugalrunning = true

	if autovotefrugalrunning then
		autovotefrugalthread = task.spawn(function()
			while autovotefrugalrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("DandyDiscount")

				if heal then
					event:FireServer(heal)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotefrugalcard", "davfc", function()
	autovotefrugalrunning = false
end)

autovoteelevatortimerunning = false
autovoteelevatortimethread = nil

addcommand("enableautovoteelevatortimecard", "eavetc", function()
	autovoteelevatortimerunning = true

	if autovoteelevatortimerunning then
		autovoteelevatortimethread = task.spawn(function()
			while autovoteelevatortimerunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("Elevator")
				local heal2 = cardVote:FindFirstChild("Elevator2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovoteelevatortimecard", "davetc", function()
	autovoteelevatortimerunning = false
end)

autovotemaxstaminarunning = false
autovotemaxstaminathread = nil

addcommand("enableautovotemaxstaminacard", "eavmsc", function()
	autovotemaxstaminarunning = true

	if autovotemaxstaminarunning then
		autovotemaxstaminathread = task.spawn(function()
			while autovotemaxstaminarunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("Stamina")
				local heal2 = cardVote:FindFirstChild("Stamina2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotemaxstaminacard", "davmsc", function()
	autovotemaxstaminarunning = false
end)

autovotesparkplugrunning = false
autovotesparkplugthread = nil

addcommand("enableautovotesparkplugcard", "eavsgc", function()
	autovotesparkplugrunning = true

	if autovotesparkplugrunning then
		autovotesparkplugthread = task.spawn(function()
			while autovotesparkplugrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("GlowLight")

				if heal then
					event:FireServer(heal)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotesparkplugcard", "davsgc", function()
	autovotesparkplugrunning = false
end)

autovoteelectricianrunning = false
autovoteelectricianthread = nil

addcommand("enableautovoteelectriciancard", "eavec", function()
	autovoteelectricianrunning = true

	if autovoteelectricianrunning then
		autovoteelectricianthread = task.spawn(function()
			while autovoteelectricianrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("BlackOut")

				if heal then
					event:FireServer(heal)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovoteelectriciancard", "davec", function()
	autovoteelectricianrunning = false
end)

autovotecovetousrunning = false
autovotecovetousthread = nil

addcommand("enableautovotecovetouscard", "eavcc", function()
	autovotecovetousrunning = true

	if autovotecovetousrunning then
		autovotecovetousthread = task.spawn(function()
			while autovotecovetousrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("ItemRarity")
				local heal2 = cardVote:FindFirstChild("ItemRarity2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotecovetouscard", "davcc", function()
	autovotecovetousrunning = false
end)

autovotesuppressionrunning = false
autovotesuppressionthread = nil

addcommand("enableautovotesuppressioncard", "eavsnc", function()
	autovotesuppressionrunning = true

	if autovotesuppressionrunning then
		autovotesuppressionthread = task.spawn(function()
			while autovotesuppressionrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("MonsterPanicReduction")

				if heal then
					event:FireServer(heal)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovotesuppressioncard", "davsnc", function()
	autovotesuppressionrunning = false
end)

autovoteabilityrunning = false
autovoteabilitythread = nil

addcommand("enableautovoteabilitycard", "eavac", function()
	autovoteabilityrunning = true

	if autovoteabilityrunning then
		autovoteabilitythread = task.spawn(function()
			while autovoteabilityrunning do
				local cardVote = workspace:WaitForChild("Info"):WaitForChild("CardVote")
				local event = game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("CardVoteEvent")

				local heal = cardVote:FindFirstChild("AbilityCooldown")
				local heal2 = cardVote:FindFirstChild("AbilityCooldown2")

				if heal then
					event:FireServer(heal)
				end

				if heal2 then
					event:FireServer(heal2)
				end

				task.wait(1)
			end
		end)
	end
end)

addcommand("disableautovoteabilitycard", "davac", function()
	autovoteabilityrunning = false
end)

-------------------------------------------------------------------------------------------------------------------------------

autovoterandomcardenabled = false
lastcardvoted = nil
autovoterandomcardthread = nil

cardvotes = {
	"Heal",
	"Heal2",
	"RandomItem",
	"RandomItem2",
	"SurvivalPoint",
	"SurvivalPoint2",
	"DandyDiscount",
	"Elevator",
	"Elevator2",
	"Stamina",
	"Stamina2",
	"GlowLight",
	"BlackOut",
	"ItemRarity",
	"ItemRarity2",
	"MonsterPanicReduction",
	"Machine",
	"Machine2",
	"AbilityCooldown",
	"AbilityCooldown2",
}

addcommand("enableautovoterandomcard", "eavrc", function()
	if autovoterandomcardenabled then
		return
	end

	autovoterandomcardenabled = true
	autovoterandomcardthread = task.spawn(function()
		local ReplicatedStorage = game:GetService("ReplicatedStorage")
		local Events = ReplicatedStorage:WaitForChild("Events")
		local voteEvent = Events:WaitForChild("CardVoteEvent")
		local Info = workspace:WaitForChild("Info")
		local CardVote = Info:WaitForChild("CardVote")

		while autovoterandomcardenabled do
			local availableCards = {}

			for _, name in ipairs(cardvotes) do
				local card = CardVote:FindFirstChild(name)
				if card and card ~= lastcardvoted then
					table.insert(availableCards, card)
				end
			end

			if #availableCards > 0 then
				local pick = availableCards[math.random(1, #availableCards)]
				lastcardvoted = pick
				voteEvent:FireServer(pick)
			end

			task.wait()
		end
	end)
end)

addcommand("disableautovoterandomcard", "davrc", function()
	if not autovoterandomcardenabled then
		return
	end

	autovoterandomcardenabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableavoidtwisteds", "eadt", function()
	game:GetService("ReplicatedStorage").Events.GetCharacterPosition.OnClientInvoke = function()
		return Vector3.one * 9e9
	end;
end)

addcommand("disableavoidtwisteds", "dadt", function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local Events = ReplicatedStorage:WaitForChild("Events")
	Events.GetCharacterPosition.OnClientInvoke = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("removeanticheat", "rac", function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")		
	local eventsFolder = ReplicatedStorage:FindFirstChild("Events")

	if eventsFolder then
		local antiCheatTrigger = eventsFolder:FindFirstChild("AntiCheatTrigger")			
		if antiCheatTrigger then
			antiCheatTrigger:Destroy()
		end
	end
	notify("The anticheat isnt fully removed.", 5, "warning")
end)

allownexttp = false
bypassinganticheat = false

function allowteleport() allownexttp = true end

addcommand("enableanticheatbypasser", "eacb", function()
	if bypassinganticheat then return end
	bypassinganticheat = true
	local oldCF
	local settingCF = false

	getgenv().allowteleport = allowteleport

	local hrp = noxious["character"]:WaitForChild("HumanoidRootPart")

	hrp:GetPropertyChangedSignal("CFrame"):Connect(function()
		if settingCF then return end
		if allownexttp then
			allownexttp = false
			oldCF = hrp.CFrame
			return
		end

		settingCF = true
		hrp.CFrame = oldCF or hrp.CFrame
		settingCF = false

		if not noxious["local player"]:GetAttribute("isBeingTeleported") then
			if not inrun() then return end
			firetouchinterest(workspace.BaseplateTrigger, hrp, 1)
			firetouchinterest(workspace.BaseplateTrigger, hrp, 0)
		end
	end)

	while task.wait() do
		oldCF = hrp.CFrame
	end
end)

addcommand("disableanticheatbypasser", "dacb", function()
	if not bypassinganticheat then return end
	bypassinganticheat = false
	local hrp = noxious["character"]:WaitForChild("HumanoidRootPart")

	getgenv().allowteleport = nil
	getfenv().oldCF = nil
	getfenv().settingCF = nil

	for _, conn in ipairs(getconnections(hrp:GetPropertyChangedSignal("CFrame"))) do
		conn:Disable()
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changeskin", "cs", function()
	local players = game:GetService("Players")
	local replicatedStorage = game:GetService("ReplicatedStorage")
	local workspacePlayers = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")

	local IndexSkin = 1

	local function GetActualToon()
		local localPlayer = players.LocalPlayer
		local playerConfig = workspacePlayers:FindFirstChild(localPlayer.Name) and workspacePlayers[localPlayer.Name]:FindFirstChild("Config")
		if playerConfig and playerConfig:FindFirstChild("CharacterName") then
			return playerConfig.CharacterName.Value
		else
			return nil
		end
	end

	local function GetCharacter()
		local localPlayer = workspacePlayers:FindFirstChild(noxious["local player"].Name)
		if localPlayer  then
			return localPlayer
		else
			return nil
		end
	end

	local function GetSkins(characterName)
		if characterName and replicatedStorage:FindFirstChild("Skins") then
			return replicatedStorage.Skins:FindFirstChild(characterName)
		else
			return nil
		end
	end

	local function ApplySkin(module)
		local character = GetCharacter()
		if not character then return end

		local requiredModule = require(module)
		if requiredModule.ApplySkin then
			requiredModule.ApplySkin(character)
		end
	end

	local function Reset()
		IndexSkin = 0
	end

	local characterName = GetActualToon()
	local skinsFolder = GetSkins(characterName)

	if not skinsFolder then
		notify("Your Toon doesn't seem to have any skins.", 5, "error")
		return
	end

	local skins = skinsFolder:GetChildren()
	if #skins == 0 then
		return
	end

	IndexSkin = IndexSkin + 1
	if IndexSkin > #skins then
		Reset()return
	end

	local selectedSkin = skins[IndexSkin]
	if selectedSkin then
		ApplySkin(selectedSkin)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("floatlay", "flay", function()
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.CFrame = CFrame.Angles(math.rad(90), 0, 0)
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b
end)

addcommand("unfloatlay", "unflay", function()
	local b = noxious["character"]:WaitForChild("Body", 5)
	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
			execcmd("unview")
		end
	end
end)

addcommand("upsidedown", "dinnerbone", function()
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.CFrame = CFrame.Angles(math.rad(180), 0, 0)
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b
end)

addcommand("rightsideup", "undinnerbone", function()
	local b = noxious["character"]:WaitForChild("Body", 5)
	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
			execcmd("unview")
		end
	end
end)

addcommand("rotate", "rotate", function(x, y, z)
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local rx = tonumber(x) or 0
	local ry = tonumber(y) or 0
	local rz = tonumber(z) or 0

	for _, child in pairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") then
			child:Destroy()
		end
	end
	for _, child in pairs(b:GetChildren()) do
		if child:IsA("Attachment") then
			child:Destroy()
		end
	end

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.CFrame = CFrame.Angles(math.rad(rx), math.rad(ry), math.rad(rz))
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b
end)

function switchcamerasubject(bodypart)
	local player = game:GetService("Players").LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local bodyPart = character:FindFirstChild(bodypart)

	if bodyPart and bodyPart:IsA("BasePart") then
		workspace.CurrentCamera.CameraSubject = bodyPart
	end
end

addcommand("convulse", "convulse", function()
	switchcamerasubject("Body")
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b

	task.spawn(function()
		while true do
			local rx = math.rad(math.random(-360, 360))
			local ry = math.rad(math.random(-360, 360))
			local rz = math.rad(math.random(-360, 360))
			ao.CFrame = CFrame.Angles(rx, ry, rz)
			task.wait(0)
		end
	end)
end)

addcommand("unconvulse", "unconvulse", function()
	execcmd("rec")
end)

addcommand("xspin", "xspin", function(speed)
	speed = tonumber(speed) or 10

	switchcamerasubject("Body")
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b

	local angle = 0
	task.spawn(function()
		while true do
			angle += math.rad(speed)
			ao.CFrame = CFrame.Angles(angle, 0, 0)
			task.wait()
		end
	end)
end)

addcommand("zspin", "zspin", function(speed)
	speed = tonumber(speed) or 10

	switchcamerasubject("Body")
	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
		end
	end

	b.Anchored = false

	local a = Instance.new("Attachment", b)
	local ao = Instance.new("AlignOrientation")
	ao.Attachment0 = a
	ao.Mode = Enum.OrientationAlignmentMode.OneAttachment
	ao.RigidityEnabled = true
	ao.Responsiveness = math.huge
	ao.Parent = b

	local angle = 0
	task.spawn(function()
		while true do
			angle += math.rad(speed)
			ao.CFrame = CFrame.Angles(0, 0, angle)
			task.wait()
		end
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local autocalibration = false

function handleSkillCheck()
	local VIM = game:GetService'VirtualInputManager'		
	local tl = 5
	local screengui = noxious["local player"].PlayerGui:FindFirstChild("ScreenGui")		
	if not screengui then
		return
	end

	local menu = screengui:FindFirstChild("Menu")	
	if not menu then
		return
	end

	local skillcheckframe = menu:FindFirstChild("SkillCheckFrame")		
	if not skillcheckframe then
		return
	end

	local function visibledisrupt()
		if autocalibration and skillcheckframe.Visible then
			local marker = skillcheckframe:FindFirstChild("Marker")				
			local goldarea = skillcheckframe:FindFirstChild("GoldArea")

			if marker and goldarea then
				local markerPosition = marker.AbsolutePosition
				local goldAreaPosition = goldarea.AbsolutePosition
				local goldAreaSize = goldarea.AbsoluteSize

				if markerPosition.X >= goldAreaPosition.X and markerPosition.X <= (goldAreaPosition.X + goldAreaSize.X) + tl then
					VIM:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
				end
			end
		end
	end

	skillcheckframe.Changed:Connect(function(property)
		if property == "Visible" then
			visibledisrupt()
		end
	end)

	local marker = skillcheckframe:FindFirstChild("Marker")		
	local goldarea = skillcheckframe:FindFirstChild("GoldArea")

	if marker then
		marker.Changed:Connect(function(property)
			if property == "AbsolutePosition" then
				visibledisrupt()
			end
		end)
	end

	if goldarea then
		goldarea.Changed:Connect(function(property)
			if property == "AbsolutePosition" or property == "AbsoluteSize" then
				visibledisrupt()
			end
		end)
	end
end

addcommand("enableautocalibration", "eac", function()
	task.spawn(handleSkillCheck)
	autocalibration = true
end)

addcommand("disableautocalibration", "dac", function()
	autocalibration = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableautocalibration2", "eac2", function()
	noxious["replicated storage"].Events.SkillcheckUpdate.OnClientInvoke = function() return "supercomplete" end
end)

addcommand("disableautocalibration2", "dac2", function()
	local skillcheckEvent = game.ReplicatedStorage:WaitForChild("Events"):WaitForChild("SkillcheckUpdate")
	skillcheckEvent.OnClientInvoke = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fov", "fov", function(value)
	local playerCamera = game.Workspace.CurrentCamera
	if playerCamera then
		playerCamera.FieldOfView = value
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

stretchcamconn = nil

addcommand("stretchcamera", "scam", function(x, y)
	local stretchcamerax = tonumber(x) or 1
	local stretchcameray = tonumber(y) or 1
	if stretchcamconn then
		stretchcamconn:Disconnect()
		stretchcamconn = nil
	end
	stretchcamconn = noxious["run service"].RenderStepped:Connect(function()
		local MAGIC_FORMULA = CFrame.new(0, 0, 0, stretchcameray, 0, 0, 0, stretchcamerax, 0, 0, 0, 1)
		game.workspace.Camera.CFrame = game.workspace.Camera.CFrame * MAGIC_FORMULA
	end)
end)

addcommand("unstretchcamera", "unscam", function(value)
	if stretchcamconn then
		stretchcamconn:Disconnect()
		stretchcamconn = nil
	end
	local MAGIC_FORMULA = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	game.workspace.Camera.CFrame = game.workspace.Camera.CFrame * MAGIC_FORMULA
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("maxzoom", "maxzoom", function(value)
	noxious["local player"].CameraMaxZoomDistance = value
end)

addcommand("minzoom", "minzoom", function(value)
	noxious["local player"].CameraMinZoomDistance = value
end)

-------------------------------------------------------------------------------------------------------------------------------

tpwalking = false
tpwalkcurrentspeed = 10

addcommand("teleportwalk", "tpwalk", function(speed)
	tpwalking = false
	tpwalking = true
	local chr = noxious["character"]
	local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")		
	local hb = noxious["run service"].Heartbeat

	while tpwalking and chr and hum and hum.Parent do
		local delta = hb:Wait()
		if hum.MoveDirection.Magnitude > 0 then
			if speed and tonumber(speed) then
				tpwalkcurrentspeed = tonumber(speed)
			end
			chr:TranslateBy(hum.MoveDirection * tpwalkcurrentspeed * delta * 10)
		end
	end
end)

addcommand("unteleportwalk", "untpwalk", function()
	tpwalking = false
end)

-------------------------------------------------------------------------------------------------------------------------------

local CFloop

addcommand("clipframefly", "cffly", function(speed)
	if not speed then speed = 70 end
	local character = noxious["character"]
	if not character then return end

	local humanoid = character:FindFirstChildOfClass("Humanoid")		
	local head = character:WaitForChild("Head")	

	if humanoid and head then
		humanoid.PlatformStand = true
		head.Anchored = true

		if CFloop then CFloop:Disconnect() end

		CFloop = noxious["run service"].Heartbeat:Connect(function(deltaTime)
			local moveDirection = humanoid.MoveDirection * (speed * deltaTime)
			local headCFrame = head.CFrame
			local cameraCFrame = workspace.CurrentCamera.CFrame
			local cameraOffset = headCFrame:ToObjectSpace(cameraCFrame).Position

			cameraCFrame = cameraCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
			local cameraPosition = cameraCFrame.Position
			local headPosition = headCFrame.Position

			local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
			head.CFrame = CFrame.new(headPosition) * (cameraCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
		end)
	end
end)

addcommand("unclipframefly", "uncffly", function()
	local character = noxious["character"]
	if not character then return end

	local humanoid = character:FindFirstChildOfClass("Humanoid")		
	local head = character:FindFirstChild("Head")

	if CFloop then CFloop:Disconnect() end
	if humanoid then humanoid.PlatformStand = false end
	if head then head.Anchored = false end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("teleporttool", "tptool", function()
	local function hi()
		local maus = noxious["local player"]:GetMouse()
		local tool = Instance.new("Tool")
		tool.Name = "teleport tool"
		tool.RequiresHandle = false
		tool.Parent = noxious["local player"].Backpack
		tool.Activated:Connect(function()
			task.spawn(allowteleport)
			noxious["humanoid root part"].CFrame = CFrame.new(maus.Hit.X, maus.Hit.Y + 3, maus.Hit.Z, select(4, noxious["humanoid root part"].CFrame:components()))
		end)
		game:GetService"StarterGui":SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
	end
	hi()
	noxious["local player"].CharacterAdded:Connect(hi)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("reset", "re", function()
	local sp
	local so

	local function scs(character)
		local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart then
			sp = humanoidRootPart.Position
			so = humanoidRootPart.Orientation
		end
	end

	local function kc(character)
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid.Health = 0
		end
	end

	local function oca(character)
		task.delay(0.2, function()
			if sp and so then
				character:WaitForChild("HumanoidRootPart")
				character:SetPrimaryPartCFrame(CFrame.new(sp) * CFrame.Angles(0, math.rad(so.Y), 0))
			end

			sp = nil
			so = nil
		end)
	end

	local function sktp(player)
		local character = player.Character or player.CharacterAdded:Wait()
		scs(character)
		kc(character)
		player.CharacterAdded:Connect(oca)
	end

	sktp(noxious["local player"])
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("die", "die", function()
	local humanoid = noxious["character"]:FindFirstChild("Humanoid")

	if humanoid then
		humanoid.Health = 0
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function createNoclip()
	local connections = {}
	local touchedObjects = {}

	local function shouldIgnorePart(part)
		if string.match(part.Name, "Sphere$") then
			return true
		end

		if part.Name == "MonsterBlocker" then
			return true
		end

		if part:IsDescendantOf(noxious["character"]) then
			return true
		end

		return false
	end

	local function disableCollision(part)
		if part and part:IsA("BasePart") and not shouldIgnorePart(part) then
			if part.CanCollide then
				part.CanCollide = false
				touchedObjects[part] = true
			end
		end
	end

	local function enableCollision(part)
		if part and part:IsA("BasePart") and touchedObjects[part] then
			part.CanCollide = true
			touchedObjects[part] = nil
		end
	end

	local function onTouched(otherPart)
		if not otherPart or not otherPart:IsA("BasePart") then return end

		if shouldIgnorePart(otherPart) then return end

		if otherPart.Name == "Baseplate" then
			local elevatorsFolder = workspace:FindFirstChild("Elevators")                
			if elevatorsFolder then
				local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")                    
				if elevatorModel then
					local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")                        
					if monsterBlocker and monsterBlocker:IsA("Part") then
						noxious["character"]:SetPrimaryPartCFrame(monsterBlocker.CFrame)
					end
				end
			end
			return
		end

		if not touchedObjects[otherPart] then
			disableCollision(otherPart)
		end
	end

	local function onTouchEnded(otherPart)
		if otherPart and otherPart:IsA("BasePart") then
			enableCollision(otherPart)
		end
	end

	local function enableNoclip()
		local character = noxious["character"]
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

		if not connections.touched then
			connections.touched = humanoidRootPart.Touched:Connect(onTouched)
		end
		if not connections.touchEnded then
			connections.touchEnded = humanoidRootPart.TouchEnded:Connect(onTouchEnded)
		end
	end

	local function disableNoclip()
		for _, conn in pairs(connections) do
			conn:Disconnect()
		end
		connections = {}

		for part in pairs(touchedObjects) do
			enableCollision(part)
		end
		touchedObjects = {}
	end

	return enableNoclip, disableNoclip
end

local enableNoclip, disableNoclip = createNoclip()

noclipping = false

addcommand("noclip", "noclip", function()
	noclipping = true
	enableNoclip()
end)

addcommand("unnoclip", "clip", function()
	noclipping = false
	disableNoclip()
end)

-------------------------------------------------------------------------------------------------------------------------------

looprunspeedenabled = true
looprunspeedupdateloop = nil
looprunspeedlastmoving = false

function looprunspeed()
	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:WaitForChild("Humanoid")
	local rootPart = character:WaitForChild("HumanoidRootPart")
	local statsFolder = character:WaitForChild("Stats")
	local runSpeed = statsFolder:WaitForChild("RunSpeed")
	local modifier = statsFolder:FindFirstChild("RunSpeedModifier")

	looprunspeedlastmoving = false

	local playerModel = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
	local toonNameValue = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("ToonName")

	local characterName
	if not toonNameValue then
		local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("Config")
		local charNameValue = config and config:FindFirstChild("CharacterName")
		if charNameValue and charNameValue:IsA("StringValue") then
			characterName = charNameValue.Value
		end
	end

	local toon = (toonNameValue and toonNameValue.Value) or characterName or ""
	local isOldRig = table.find(noxious["toons with old animation rigs"], toon)

	if not looprunspeedupdateloop then
		looprunspeedenabled = true
		looprunspeedupdateloop = coroutine.create(function()
			while looprunspeedenabled do
				local finalSpeed = runSpeed.Value
				if modifylooprunspeed and modifier and modifier:IsA("NumberValue") then
					finalSpeed *= modifier.Value
				end
				humanoid.WalkSpeed = finalSpeed

				local velocity = rootPart.Velocity
				local isMoving = velocity.Magnitude > 1

				if not isOldRig then
					if isMoving and not looprunspeedlastmoving then
						enableAnimationLoop("Run")
					elseif not isMoving and looprunspeedlastmoving then
						disableAnimationLoop("Run")
					end
				end

				looprunspeedlastmoving = isMoving
				task.wait(0)
			end
		end)
		coroutine.resume(looprunspeedupdateloop)
	end
end

addcommand("enablelooprunspeed", "elrs", function()
	if not looprunspeedupdateloop then
		looprunspeedenabled = true
		looprunspeed()
	end
end)

addcommand("disablelooprunspeed", "dlrs", function()
	game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(false)

	if looprunspeedupdateloop then
		looprunspeedenabled = false
		looprunspeedupdateloop = nil
		looprunspeedlastmoving = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

autosprintconnection = nil

addcommand("enableautosprint", "eas", function()
	if not autosprintconnection then
		autosprintconnection = noxious["replicated storage"].StoryEvents.Spotted.OnClientEvent:Connect(function()
			game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(true)
		end)
	end
end)

addcommand("disableautosprint", "das", function()
	if autosprintconnection then
		autosprintconnection:Disconnect()
		autosprintconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["character modification connections"] = {}

loopspeedlastwalkspeed = nil

addcommand("loopspeed", "ls", function(s)
	local speed = tonumber(s) or 16
	if tonumber(s) then
		speed = tonumber(s) or 16
	end
	local function isNumber(str)
		if tonumber(str) ~= nil or str == 'inf' then
			return true
		end
	end
	if isNumber(speed) then
		loopspeedlastwalkspeed = noxious["humanoid"]["WalkSpeed"]
		local Char = noxious["character"] or workspace:FindFirstChild(noxious["username"])
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function WalkSpeedChange()
			if Char and Human then
				Human.WalkSpeed = speed
			end
		end
		WalkSpeedChange()
		noxious["character modification connections"].wsLoop = (noxious["character modification connections"].wsLoop and noxious["character modification connections"].wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		noxious["character modification connections"].wsCA = (noxious["character modification connections"].wsCA and noxious["character modification connections"].wsCA:Disconnect() and false) or noxious["local player"].CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			WalkSpeedChange()
			noxious["character modification connections"].wsLoop = (noxious["character modification connections"].wsLoop and noxious["character modification connections"].wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		end)
	end
end)

addcommand("unloopspeed", "unls", function()
	noxious["character modification connections"].wsLoop = (noxious["character modification connections"].wsLoop and noxious["character modification connections"].wsLoop:Disconnect() and false) or nil
	noxious["character modification connections"].wsCA = (noxious["character modification connections"].wsCA and noxious["character modification connections"].wsCA:Disconnect() and false) or nil
	noxious["humanoid"]["WalkSpeed"] = loopspeedlastwalkspeed
	loopspeedlastwalkspeed = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

pulsespeedingenabled = false
pulsespeedingthread = nil
pulsespeedlastwalkspeed = nil

addcommand("pulsespeed", "pspeed", function(speed)
	task.spawn(function() execcmd("dis") end)
	task.spawn(function() execcmd("dlms") end)
	task.spawn(function() execcmd("dlrs") end)
	task.spawn(function() execcmd("unls") end)

	speed = tonumber(speed)
	if not speed then return end

	local character = noxious["character"]
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if not humanoid then return end

	pulsespeedlastwalkspeed = humanoid.WalkSpeed
	pulsespeedingenabled = true

	if pulsespeedingthread then
		coroutine.close(pulsespeedingthread)
	end

	pulsespeedingthread = coroutine.create(function()
		while pulsespeedingenabled do
			local char = noxious["character"]
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.WalkSpeed = speed
				task.wait(0.5)
				if not pulsespeedingenabled then break end
				hum.WalkSpeed = pulsespeedlastwalkspeed
				task.wait(0.7)
			else
				break
			end
		end
	end)

	coroutine.resume(pulsespeedingthread)
end)

addcommand("unpulsespeed", "unpspeed", function()
	pulsespeedingenabled = false

	local character = noxious["character"]
	local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	if humanoid and pulsespeedlastwalkspeed then
		humanoid.WalkSpeed = pulsespeedlastwalkspeed
	end

	pulsespeedlastwalkspeed = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

maxspeedlastwalkspeed = nil
maxspeedfinalwalkspeed = nil
maxspeedconnection = nil

function calculateFinalWalkSpeed()
	local char = noxious["character"]
	local humanoid = noxious["character"]:FindFirstChild("Humanoid")
	local config = char and char:FindFirstChild("Config")
	if config then
		local name = config:FindFirstChild("ModuleName")
		if name and name.Value then
			local elVal = require(noxious["replicated storage"].TowerData:WaitForChild(name.Value))
			return elVal.RunSpeed + 6.5
		end
	end
	return humanoid and humanoid.WalkSpeed or 16
end

function onWalkSpeedChanged(property)
	local char = noxious["character"]
	local humanoid = noxious["character"]:FindFirstChild("Humanoid")
	if property ~= "WalkSpeed" then return end
	if humanoid and maxspeedfinalwalkspeed then
		humanoid.WalkSpeed = maxspeedfinalwalkspeed
	end
end

addcommand("enableloopmaxspeed", "elms", function()
	local char = noxious["character"]
	local humanoid = noxious["character"]:FindFirstChild("Humanoid")
	if not humanoid then return end
	maxspeedlastwalkspeed = humanoid.WalkSpeed

	maxspeedfinalwalkspeed = calculateFinalWalkSpeed()
	humanoid.WalkSpeed = maxspeedfinalwalkspeed

	maxspeedconnection = humanoid.Changed:Connect(onWalkSpeedChanged)
end)

addcommand("disableloopmaxspeed", "dlms", function()
	local char = noxious["character"]
	local humanoid = noxious["character"]:FindFirstChild("Humanoid")
	if maxspeedconnection then
		maxspeedconnection:Disconnect()
		maxspeedconnection = nil
	end

	if humanoid and maxspeedlastwalkspeed then
		humanoid.WalkSpeed = maxspeedlastwalkspeed
	end
	maxspeedlastwalkspeed = nil
	maxspeedfinalwalkspeed = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

infinitestaminaenabled = false
sprintbuttonalreadyreplaced = false

addcommand("enableinfinitestamina", "eis", function()
	infinitestaminaenabled = true

	if not sprintbuttonalreadyreplaced then
		sprintbuttonalreadyreplaced = true
		local UserInputService = game:GetService("UserInputService")
		local Players = game:GetService("Players")
		local player = Players.LocalPlayer
		local playerGui = player:WaitForChild("PlayerGui")
		local screenGui = playerGui:WaitForChild("ScreenGui")

		local originalButton = screenGui:WaitForChild("MobileRun")
		local newButton = originalButton:Clone()
		newButton.Name = "MobileRun"
		newButton.Parent = screenGui
		originalButton:Destroy()

		local image1 = "rbxassetid://11866517702"
		local image2 = "rbxassetid://11866539249"
		newButton.Image = image1
		local toggled = false

		local looprunspeedenabled = false
		local looprunspeedupdateloop = nil
		local looprunspeedlastmoving = false

		local function stoprunspeed()
			looprunspeedenabled = false
			looprunspeedupdateloop = nil
			looprunspeedlastmoving = false

			local character = player.Character
			if character then
				local humanoid = character:FindFirstChild("Humanoid")
				local statsFolder = character:FindFirstChild("Stats")
				local runSpeed = statsFolder and statsFolder:FindFirstChild("WalkSpeed")
				if humanoid and runSpeed then
					humanoid.WalkSpeed = runSpeed.Value
				end
			end
		end

		local function looprunspeed()
			local character = player.Character or player.CharacterAdded:Wait()
			local humanoid = character:WaitForChild("Humanoid")
			local rootPart = character:WaitForChild("HumanoidRootPart")
			local statsFolder = character:WaitForChild("Stats")
			local runSpeed = statsFolder:WaitForChild("RunSpeed")
			local modifier = statsFolder:FindFirstChild("RunSpeedModifier")

			local playerModel = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
			local toonNameValue = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("ToonName")

			local characterName
			if not toonNameValue then
				local config = playerModel and playerModel:FindFirstChild(player.Name) and playerModel[player.Name]:FindFirstChild("Config")
				local charNameValue = config and config:FindFirstChild("CharacterName")
				if charNameValue and charNameValue:IsA("StringValue") then
					characterName = charNameValue.Value
				end
			end

			local toon = (toonNameValue and toonNameValue.Value) or characterName or ""
			local isOldRig = table.find(noxious["toons with old animation rigs"], toon)

			if looprunspeedupdateloop then return end

			looprunspeedenabled = true
			looprunspeedupdateloop = coroutine.create(function()
				while looprunspeedenabled do
					local finalSpeed = runSpeed.Value
					if modifier and modifier:IsA("NumberValue") then
						finalSpeed *= modifier.Value
					end
					if istoon("Looey") and humanoid.Health == 2 then finalSpeed = finalSpeed + 5 end
					if istoon("Looey") and humanoid.Health == 1 then finalSpeed = finalSpeed + 10 end
					humanoid.WalkSpeed = finalSpeed

					local velocity = rootPart.Velocity
					local isMoving = velocity.Magnitude > 1

					if not isOldRig then
						if isMoving and not looprunspeedlastmoving then
							enableAnimationLoop("Run")
						elseif not isMoving and looprunspeedlastmoving then
							disableAnimationLoop("Run")
						end
					end

					looprunspeedlastmoving = isMoving
					task.wait()
				end
			end)
			coroutine.resume(looprunspeedupdateloop)
		end

		newButton.MouseButton1Click:Connect(function()
			toggled = not toggled
			newButton.Image = toggled and image2 or image1

			if toggled then
				if infinitestaminaenabled then
					looprunspeed()
				else
					game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(true)
				end
			else
				if infinitestaminaenabled then
					stoprunspeed()
				else
					game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(false)
				end
			end
		end)

		if not UserInputService.TouchEnabled then
			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if input.KeyCode == Enum.KeyCode.LeftShift and not gameProcessed then
					if infinitestaminaenabled then
						looprunspeed()
					else
						game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(true)
					end
				end
			end)

			UserInputService.InputEnded:Connect(function(input)
				if input.KeyCode == Enum.KeyCode.LeftShift then
					if infinitestaminaenabled then
						stoprunspeed()
					else
						game:GetService("ReplicatedStorage").Events.SprintEvent:FireServer(false)
					end
				end
			end)
		end
	end
end)

addcommand("disableinfinitestamina", "dis", function()
	execcmd("dlrs")
	infinitestaminaenabled = false
	execcmd("dlrs")
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["twisted name mappings"] = {
	["razzle & dazzle"] = {"razzledazzle", "razzleanddazzle", "razzledazzlemonster"},
	["blot"] = {"blottmonster", "blot"},
	["rodger"] = {"rodgermonster", "rodger"},
}

function isblacklistedtwisted(monsterName, blacklistedTwisteds)
	monsterName = monsterName:gsub("Monster", ""):gsub("[%s&]", ""):lower()

	if blacklistedTwisteds[monsterName] then
		return true
	end

	for twistedName, patterns in pairs(noxious["twisted name mappings"]) do
		if blacklistedTwisteds[twistedName] then
			for _, pattern in ipairs(patterns) do
				if monsterName:find(pattern) then
					return true
				end
			end
		end
	end

	return false
end

encounteringtwisteds = false

addcommand("encountertwisteds", "et", function()
	if encounteringtwisteds then return end
	encounteringtwisteds = true

	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat
	task.spawn(function() execcmd("eacb") end)

	local blacklistedTwisteds = {}
	local checkedBoxes = fetchchecked("Twisted Research Blacklist") or {}

	for _, twistedName in ipairs(checkedBoxes) do
		blacklistedTwisteds[twistedName:lower()] = true
	end

	local character = noxious["character"]
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")        
	local originalPosition = humanoidRootPart.CFrame
	task.wait(0)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")        
	if currentRoom then
		workspace.Gravity = 0

		local visitedRazzleDazzle = false

		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local monstersFolder = model:FindFirstChild("Monsters")                    
				if monstersFolder then
					for _, monster in ipairs(monstersFolder:GetChildren()) do
						if monster:IsA("Model") then
							if not isblacklistedtwisted(monster.Name, blacklistedTwisteds) then
								local yOffset = 2.5
								if monster.Name:lower():find("rodger") then
									yOffset = 5
									execcmd("eia") task.wait(0.5)
									if not haditemaura then execcmd("dia") end
								elseif monster.Name:lower():find("razzle") and not visitedRazzleDazzle then
									visitedRazzleDazzle = true
									yOffset = 2.5
									tpbypass(monster:GetModelCFrame() + Vector3.new(0, yOffset, 3))
									workspace.Gravity = 196.2
									noxious["replicated storage"].Events.SprintEvent:FireServer(true)
									noxious["virtual input manager"]:SendKeyEvent(true, Enum.KeyCode.W, false, noxious["user input service"])
									task.wait(0.5)
									noxious["virtual input manager"]:SendKeyEvent(false, Enum.KeyCode.W, false, noxious["user input service"])
									noxious["replicated storage"].Events.SprintEvent:FireServer(false)
									workspace.Gravity = 0
								end

								if not monster.Name:lower():find("razzle") or not visitedRazzleDazzle then
									tpbypass(monster:GetModelCFrame() + Vector3.new(0, yOffset, 10))
									task.wait()
								end
							end
						end
					end
				end
			end
		end

		tpbypass(originalPosition)
		if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
		encounteringtwisteds = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

autouseabilityrunning = false
autouseabilityconnection = nil

function doabil()
	local args = {
		[1] = game:GetService("Players").LocalPlayer.Character,
		[2] = CFrame.new(-65.78115844726563, 145.7693634033203, 86.53424072265625) * CFrame.Angles(4.413669e-9, 2.9576959e-16, 5.3380848e-8),
		[3] = false
	}
	game:GetService("ReplicatedStorage").Events.AbilityEvent:InvokeServer(unpack(args))
end

addcommand("enableautouseability", "eaua", function()
	autouseabilityrunning = true
	if autouseabilityrunning then
		autouseabilityconnection = noxious["run service"].Heartbeat:Connect(function()
			doabil()
		end)
	end
end)

addcommand("disableautouseability", "daua", function()
	autouseabilityrunning = false
	if autouseabilityconnection then
		autouseabilityconnection:Disconnect()
		autouseabilityconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["item name mappings"] = {
	["research capsule"] = {"researchcapsule"},
	["health kit"] = {"healthkit"},
	["tape"] = {"tapes", "tape"},
	["stamina candy"] = {"staminacandy"},
	["stealth candy"] = {"stealthcandy"},
	["speed candy"] = {"speedcandy"},
	["protein bar"] = {"proteinbar"},
	["ext. speed candy"] = {"extractionspeedcandy"},
	["skill check candy"] = {"skillcheckcandy"},
	["jumper cable"] = {"jumpercable"},
	["air horn"] = {"airhorn"},
	["bottle of pop"] = {"popbottle"},
	["box of chocolates"] = {"chocolatebox"},
	["eject button"] = {"ejectbutton"},
	["smoke bomb"] = {"smokebomb"},
}

itemaurablacklist = {}
itemauraenabled = false
itemaurapprange = 30

function updateitemaurablacklist()
	itemaurablacklist = {}
	local checkedBoxes = fetchchecked("Item Aura Blacklist") or {}

	for _, itemName in ipairs(checkedBoxes) do
		local lowerName = itemName:lower()
		itemaurablacklist[lowerName] = true

		if noxious["item name mappings"][lowerName] then
			for _, pattern in ipairs(noxious["item name mappings"][lowerName]) do
				itemaurablacklist[pattern] = true
			end
		end
	end
end

function interac(prompt)
	if prompt.HoldDuration == 0 then
		prompt:InputHoldBegin()
		prompt:InputHoldEnd()
	else
		prompt:InputHoldBegin()
		task.wait(prompt.HoldDuration)
		prompt:InputHoldEnd()
	end
end

function itemaura()
	if itemauraenabled then
		updateitemaurablacklist()

		local player = noxious["local player"]
		local character = player.Character
		if character then
			local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")                
			if humanoidRootPart then
				local currentRoomFolder = workspace:FindFirstChild("CurrentRoom")                    
				if currentRoomFolder then
					for _, model in pairs(currentRoomFolder:GetChildren()) do
						local itemsFolder = model:FindFirstChild("Items")                        
						if itemsFolder then
							for _, item in pairs(itemsFolder:GetChildren()) do
								local itemName = item.Name:lower():gsub("[%s_]", "")
								local displayName = (item:GetAttribute("DisplayName") or ""):lower():gsub("[%s_]", "")
								if not (itemaurablacklist[itemName] or itemaurablacklist[displayName]) then
									local promptPart = item:FindFirstChild("Prompt")                                
									if promptPart then
										local proximityPrompt = promptPart:FindFirstChild("ProximityPrompt")                                        
										if proximityPrompt and proximityPrompt.Enabled then
											local distance = (promptPart.Position - humanoidRootPart.Position).Magnitude
											if distance <= itemaurapprange then
												interac(proximityPrompt)
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
end

addcommand("enableitemaura", "eia", function()
	if not itemauraenabled then
		itemauraenabled = true
		updateitemaurablacklist()
		while itemauraenabled do
			itemaura()
			task.wait(0)
		end
	end
end)

addcommand("disableitemaura", "dia", function()
	if itemauraenabled then
		itemauraenabled = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

buyAuraBlacklist = {}
buyAuraEnabled = false
buyAuraRange = 30

function updateBuyAuraBlacklist()
	buyAuraBlacklist = {}
	local selected = fetchchecked("Buy Aura Blacklist") or {}

	for _, itemName in ipairs(selected) do
		local lowerName = itemName:lower()
		buyAuraBlacklist[lowerName] = true

		if noxious["item name mappings"][lowerName] then
			for _, pattern in ipairs(noxious["item name mappings"][lowerName]) do
				buyAuraBlacklist[pattern] = true
			end
		end
	end
end

function runBuyAura()
	if not buyAuraEnabled then return end

	local localPlayer = noxious["local player"]
	local character = localPlayer.Character
	if not character then return end

	local root = character:FindFirstChild("HumanoidRootPart")
	if not root then return end

	local elevators = workspace:FindFirstChild("Elevators")
	if not elevators then return end

	local elevator = elevators:FindFirstChild("Elevator")
	if not elevator then return end

	local dandyStore = elevator:FindFirstChild("DandyStore")
	if not dandyStore then return end

	for _, slot in ipairs(dandyStore:GetChildren()) do
		if slot.Name:lower():match("^slot") then
			local itemModel = slot:FindFirstChildWhichIsA("Model")
			if itemModel then
				local rawName = itemModel.Name:lower():gsub("[%s_]", "")
				local displayName = (itemModel:GetAttribute("DisplayName") or ""):lower():gsub("[%s_]", "")

				if not (buyAuraBlacklist[rawName] or buyAuraBlacklist[displayName]) then
					local promptPart = itemModel:FindFirstChild("Prompt")
					if promptPart then
						local prompt = promptPart:FindFirstChildOfClass("ProximityPrompt")
						if prompt and prompt.Enabled then
							local dist = (promptPart.Position - root.Position).Magnitude
							if dist <= buyAuraRange then
								interac(prompt)
							end
						end
					end
				end
			end
		end
	end
end

addcommand("enablebuyaura", "eba", function()
	if not buyAuraEnabled then
		buyAuraEnabled = true
		updateBuyAuraBlacklist()
		while buyAuraEnabled do
			runBuyAura()
			task.wait(0)
		end
	end
end)

addcommand("disablebuyaura", "dba", function()
	buyAuraEnabled = false
end)

-------------------------------------------------------------------------------------------------------------------------------

gatogglestate = false

function isingeneratorsfolder(prompt)
	local Workspace = game:GetService("Workspace")
	local currentroom = Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = currentroom:FindFirstChildWhichIsA("Model")
	local itemsFolder = modelInRoom:WaitForChild("Generators")
	local parent = prompt.Parent
	while parent do
		if parent.Parent == itemsFolder then
			return true
		end
		parent = parent.Parent
	end
	return false
end

function con(generator)
	local statsFolder = generator:FindFirstChild("Stats")
	local connie = statsFolder and statsFolder:FindFirstChild("Connie")
	return connie and connie:IsA("BoolValue") and connie.Value == true
end

function checkforgenpps()
	local Workspace = game:GetService("Workspace")
	local currentroom = Workspace:WaitForChild("CurrentRoom")
	local modelInRoom = currentroom:FindFirstChildWhichIsA("Model")
	if not modelInRoom then return end

	local itemsFolder = modelInRoom:FindFirstChild("Generators")
	if not itemsFolder then return end

	for _, v in ipairs(itemsFolder:GetDescendants()) do
		if v:IsA("ProximityPrompt") and isingeneratorsfolder(v) then
			local generator = v:FindFirstAncestorWhichIsA("Model")
			if generator and not con(generator) then
				interac(v)
			end
		end
	end
end

genauraenabled = false
genauraconnection = nil
genauracooldownactive = false
rangeneratoraura = false
pauseAuraThread = nil
decodingMonitorConnection = nil

local function resumeGeneratorAura()
	if genauraenabled and not genauracooldownactive and not genauraconnection then
		genauraconnection = noxious["run service"].Heartbeat:Connect(function()
			checkforgenpps()
			task.wait(0.1)
		end)
	end
end

function enablegeneratoraura()
	rangeneratoraura = true
	if genauraenabled then return end
	genauraenabled = true
	resumeGeneratorAura()

	local player = game.Players.LocalPlayer
	local inGamePlayer = workspace:WaitForChild("InGamePlayers"):WaitForChild(player.Name)
	local decoding = inGamePlayer:WaitForChild("Decoding")

	if decodingMonitorConnection then
		decodingMonitorConnection:Disconnect()
	end

	decodingMonitorConnection = decoding.Changed:Connect(function(newVal)
		if newVal == nil and not genauracooldownactive then
			genauracooldownactive = true

			if genauraconnection then
				genauraconnection:Disconnect()
				genauraconnection = nil
			end

			pauseAuraThread = task.spawn(function()
				task.wait(2)
				pauseAuraThread = nil
				genauracooldownactive = false
				if genauraenabled then
					resumeGeneratorAura()
				end
			end)
		end
	end)
end

function disablegeneratoraura()
	if not genauraenabled then return end
	genauraenabled = false

	if genauraconnection then
		genauraconnection:Disconnect()
		genauraconnection = nil
	end

	if decodingMonitorConnection then
		decodingMonitorConnection:Disconnect()
		decodingMonitorConnection = nil
	end

	if pauseAuraThread then
		task.cancel(pauseAuraThread)
		pauseAuraThread = nil
		genauracooldownactive = false
	end
end

addcommand("enablegeneratoraura", "ega", function()
	enablegeneratoraura()
end)

addcommand("disablegeneratoraura", "dga", function()
	disablegeneratoraura()
end)

-------------------------------------------------------------------------------------------------------------------------------

isautouseitemslooprunning = true
autouseitemsvalveused = false
wasSpotted = false

noxious["aua item categories"] = {
	["extracting / stealth / other"] = {
		"ExtractionSpeedCandy",
		"Valve",
		"JumperCable",
		"SkillCheckCandy",
		"StealthCandy",
		"Jawbreaker",
		"Gumballs",
		"Instructions",
	},

	["healing"] = {
		"Bandage",
		"HealthKit",
	},

	["speed / escaping"] = {
		"SpeedCandy",
		"EjectButton",
		"Chocolate",
		"ChocolateBox",
		"SmokeBomb",
	},

	["stamina"] = {
		"StaminaCandy",
		"Pop",
		"PopBottle",
		"ProteinBar",
	}
}

function canuseitem(category, itemName)
	local health = noxious["character"].Humanoid.Health

	if category == "healing" then
		if itemName == "HealthKit" then
			return health == 1
		elseif itemName == "Bandage" then
			return health < 3 and health > 1
		end

	elseif category == "extracting / stealth / other" then
		local decoding = noxious["character"]:FindFirstChild("Decoding")
		if decoding and decoding.Value ~= nil then
			return not autouseitemsvalveused
		else
			autouseitemsvalveused = false
		end

	elseif category == "stamina" then
		local stats = noxious["character"]:FindFirstChild("Stats")
		if stats then
			local stamina = stats:FindFirstChild("CurrentStamina")
			if stamina and stamina.Value < 20 then
				return true
			end
		end

	elseif category == "speed / escaping" then
		return wasSpotted
	end

	return false
end

function getitemcat(itemName)
	for category, itemList in pairs(noxious["aua item categories"]) do
		for _, validName in pairs(itemList) do
			if validName:lower() == itemName:lower() then
				return category
			end
		end
	end
	return nil
end

function invokeitem(slot)
	local itemSlot = noxious["character"]:WaitForChild("Inventory"):FindFirstChild(slot)
	if not itemSlot then return end

	local itemName = itemSlot.Value
	if not itemName or itemName == "" then return end

	if advancedautouseitems then
		local category = getitemcat(itemName)
		if category and canuseitem(category, itemName) then
			noxious["replicated storage"].Events.ItemEvent:InvokeServer(noxious["character"], itemSlot)

			if category == "extracting / stealth / other" and itemName == "Valve" then
				autouseitemsvalveused = true
			end
		end
	else
		noxious["replicated storage"].Events.ItemEvent:InvokeServer(noxious["character"], itemSlot)
	end
end

if inrun() then
	task.spawn(function()
		noxious["character"]:WaitForChild("Decoding"):GetPropertyChangedSignal("Value"):Connect(function()
			if noxious["character"].Decoding.Value == nil or noxious["character"].Decoding.Value == "" or not noxious["character"].Decoding.Value then
				autouseitemsvalveused = false
			end
		end)

		noxious["replicated storage"].StoryEvents.Spotted.OnClientEvent:Connect(function()
			wasSpotted = true
			task.delay(0.5, function()
				wasSpotted = false
			end)
		end)
	end)
end

function startautouseitemsloop()
	while isautouseitemslooprunning do
		task.spawn(function() invokeitem("Slot1") end)
		task.spawn(function() invokeitem("Slot2") end)
		task.spawn(function() invokeitem("Slot3") end)
		task.wait()
	end
end

addcommand("enableautouseitems", "eaui", function()
	isautouseitemslooprunning = true
	startautouseitemsloop()
end)

addcommand("disableautouseitems", "daui", function()
	isautouseitemslooprunning = false
end)

-------------------------------------------------------------------------------------------------------------------------------

--function antigrab()
--	local wasbypassinganticheat = bypassinganticheat
--	local hi = nil

--	task.spawn(function() execcmd("eacb") end)

--	local a = noxious["humanoid root part"].Velocity
--	local b = noxious["humanoid root part"].AssemblyLinearVelocity

--	noxious["humanoid root part"].Velocity = Vector3.new(0, 0, 0)
--	noxious["humanoid root part"].AssemblyLinearVelocity = Vector3.new(0, 0, 0)

--	hi = noxious["run service"].RenderStepped:Connect(function()
--		noxious["humanoid root part"].Anchored = true
--	end)

--	task.wait(1.8)
--	noxious["humanoid root part"].Velocity = a
--	noxious["humanoid root part"].AssemblyLinearVelocity = b
--	hi:Disconnect()
--	hi = nil
--	noxious["humanoid root part"].Anchored = false
--	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
--end

function antigrab()
	local wasbypassinganticheat = bypassinganticheat
	task.spawn(function() execcmd("eacb") end)
	local wasnoclipping = noclipping
	task.spawn(function() execcmd("noclip") end)

	game["Workspace"]["Gravity"] = 0
	local a = noxious["humanoid root part"].CFrame

	noxious["humanoid root part"].CFrame = a + CFrame.new(0, -6, 0)

	task.wait(0.5)
	noxious["humanoid root part"].CFrame = a
	game["Workspace"]["Gravity"] = 196.2
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end
	if not wasnoclipping then task.spawn(function() execcmd("clip") end) end
end

local goobMonitorConnection
local goobChaseConnections = {}
local goobMonitoringEnabled = false

function disconnectChaseConnections()
	for _, conn in pairs(goobChaseConnections) do
		if typeof(conn) == "RBXScriptConnection" then
			conn:Disconnect()
		end
	end
	goobChaseConnections = {}
end

function disconnectAllMonitoring()
	if goobMonitorConnection then
		goobMonitorConnection:Disconnect()
		goobMonitorConnection = nil
	end
	disconnectChaseConnections()
end

function startGoobMonitoring()
	local Players = game:GetService("Players")
	local localPlayer = Players.LocalPlayer

	if goobMonitoringEnabled then return end
	goobMonitoringEnabled = true

	task.spawn(function()
		while goobMonitoringEnabled do
			task.wait(0)

			local currentRoom = workspace:FindFirstChild("CurrentRoom")
			if not currentRoom then continue end

			local model = currentRoom:FindFirstChildWhichIsA("Model")
			if not model then continue end

			local monsters = model:FindFirstChild("Monsters")
			if not monsters then continue end

			goobMonitorConnection = monsters.ChildAdded:Connect(function(child)
				if child.Name == "GoobMonster" then
					local chasingVal = child:FindFirstChild("ChasingValue")
					if chasingVal and chasingVal:IsA("ObjectValue") then
						local conn = chasingVal:GetPropertyChangedSignal("Value"):Connect(function()
							if chasingVal.Value == localPlayer.Name then
								antigrab()
							end
						end)
						table.insert(goobChaseConnections, conn)

						if chasingVal.Value == localPlayer.Name then
							antigrab()
						end
					end
				end
			end)

			for _, child in ipairs(monsters:GetChildren()) do
				if child.Name == "GoobMonster" then
					local chasingVal = child:FindFirstChild("ChasingValue")
					if chasingVal and chasingVal:IsA("ObjectValue") then
						local conn = chasingVal:GetPropertyChangedSignal("Value"):Connect(function()
							if chasingVal.Value == localPlayer.Name then
								antigrab()
							end
						end)
						table.insert(goobChaseConnections, conn)
						if chasingVal.Value == localPlayer.Name then
							antigrab()
						end
					end
				end
			end
			break
		end
	end)
end

function stopGoobMonitoring()
	if not goobMonitoringEnabled then return end
	goobMonitoringEnabled = false
	disconnectAllMonitoring()
end

addcommand("enableantigrab", "eag", function()
	startGoobMonitoring()
end)

addcommand("disableantigrab", "dag", function()
	stopGoobMonitoring()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("pathfindtogenerator", "pftg", function()
	local pathf = game:GetService("PathfindingService")

	local agent = {
		AgentRadius = 2,
		AgentHeight = 5,
		AgentCanJump = false,
	}

	local function getMap()
		return workspace.CurrentRoom:FindFirstChildWhichIsA("Model")
	end

	local map = getMap()
	if not map then return end

	local char = noxious["character"]
	if not char or not char.PrimaryPart then return end

	local generatorsFolder = map:FindFirstChild("Generators")
	if not generatorsFolder then return end

	local validGenerators = {}
	for _, gen in pairs(generatorsFolder:GetChildren()) do
		if gen:IsA("Model") then
			local stats = gen:FindFirstChild("Stats")
			local fakeValve = gen:FindFirstChild("Model") and gen.Model:FindFirstChild("FakeValve")

			if stats and fakeValve then
				local activePlayer = stats:FindFirstChild("ActivePlayer")
				local completed = stats:FindFirstChild("Completed")

				if completed and not completed.Value and (not activePlayer or activePlayer.Value == nil) then
					table.insert(validGenerators, fakeValve.Position)
				end
			end
		end
	end

	if #validGenerators == 0 then return end

	local destination = validGenerators[math.random(1, #validGenerators)]

	local path = pathf:CreatePath(agent)
	local success = pcall(function()
		path:ComputeAsync(char.PrimaryPart.Position, destination)
	end)

	if success and path.Status == Enum.PathStatus.Success then
		local waypoints = path:GetWaypoints()
		for _, waypoint in pairs(waypoints) do
			repeat
				task.wait()
				local distance = (char.PrimaryPart.Position - waypoint.Position).Magnitude
				char.Humanoid.WalkToPoint = waypoint.Position + Vector3.new(0.1, 0.1, 0.1) * math.random()
			until distance < 5 or char.Decoding.Value ~= nil
		end
	end
end)

addcommand("pathfindtoelevator", "pfte", function()
	local pathf = game:GetService("PathfindingService")

	local agent = {
		AgentRadius = 2,
		AgentHeight = 5,
		AgentCanJump = false,
	}

	local char = noxious["character"]
	if not char or not char.PrimaryPart then return end

	local elevatorsFolder = workspace:FindFirstChild("Elevators")
	local elevatorModel = elevatorsFolder and elevatorsFolder:FindFirstChildWhichIsA("Model")
	if not elevatorModel then return end

	local blocker = elevatorModel:FindFirstChild("MonsterBlocker")
	if not blocker then return end

	local offsetCFrame = blocker.CFrame * (workspace.Info.Panic.Value and CFrame.new(0, -10.5, 0) or CFrame.new(30, -10.5, 0))
	local destination = offsetCFrame.Position

	local path = pathf:CreatePath(agent)
	local success = pcall(function()
		path:ComputeAsync(char.PrimaryPart.Position, destination)
	end)

	if success and path.Status == Enum.PathStatus.Success then
		local waypoints = path:GetWaypoints()
		for _, waypoint in pairs(waypoints) do
			repeat
				task.wait()
				local distance = (char.PrimaryPart.Position - waypoint.Position).Magnitude
				char.Humanoid.WalkToPoint = waypoint.Position + Vector3.new(0.1, 0.1, 0.1) * math.random()
			until distance < 5 or char.Decoding.Value ~= nil
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function tpbypass(cf)
	game.Workspace.Gravity = 0
	local a = noxious["humanoid root part"].Velocity
	local b = noxious["humanoid root part"].AssemblyLinearVelocity

	noxious["humanoid root part"].Velocity = Vector3.new(0, 0, 0)
	noxious["humanoid root part"].AssemblyLinearVelocity = Vector3.new(0, 0, 0)

	task.spawn(allowteleport)
	noxious["humanoid root part"].CFrame = cf * CFrame.new(0, 3000, 0)

	local function lol(r) local release = 1 if r then release = 0 end firetouchinterest(noxious["humanoid root part"], workspace.BaseplateTrigger, release) end
	task.spawn(function() if not noxious["in studio"] then lol(true) lol(false) end end)
	task.wait()

	task.spawn(allowteleport)
	noxious["humanoid root part"].CFrame = cf

	task.wait(0.5)
	noxious["humanoid root part"].Velocity = a
	noxious["humanoid root part"].AssemblyLinearVelocity = b
	game.Workspace.Gravity = 196.2
end

-------------------------------------------------------------------------------------------------------------------------------

pickingupallitems = false

addcommand("pickupallitems", "puai", function()
	if pickingupallitems then return end
	pickingupallitems = true

	local wasnoclipping = noclipping
	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat

	task.spawn(function() execcmd("eacb") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eia") end)

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") then
							table.insert(itemPositions, item:GetModelCFrame())
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			tpbypass(itemCFrame)
		end
	end

	tpbypass(originalPosition)

	if not wasnoclipping then task.spawn(function() task.wait(0.5) execcmd("clip") end) end
	if not haditemaura then task.spawn(function() task.wait(0.5) execcmd("dia") end) end
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end

	pickingupallitems = false
end)

pickingupallresearchcapsules = false

addcommand("pickupallresearchcapsules", "puarc", function()
	if pickingupallresearchcapsules then return end
	pickingupallresearchcapsules = true

	local wasnoclipping = noclipping
	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat

	task.spawn(function() execcmd("eacb") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eia") end)

	local blacklistedTwisteds = {}
	local checkedBoxes = fetchchecked("Twisted Research Blacklist") or {}
	for _, twistedName in ipairs(checkedBoxes) do
		blacklistedTwisteds[twistedName:lower()] = true
	end

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpbypass(originalPosition)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "ResearchCapsule" then
							local shouldCollect = true

							local prompt = item:FindFirstChild("Prompt")
							if prompt then
								local monsterString = prompt:FindFirstChild("Monster")
								if monsterString and monsterString:IsA("StringValue") then
									local monsterName = monsterString.Value
									if isblacklistedtwisted(monsterName, blacklistedTwisteds) then
										shouldCollect = false
									end
								end
							end

							if shouldCollect then
								table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, 0, 0))
							end
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			tpbypass(itemCFrame)
		end
	end

	tpbypass(originalPosition)

	if not wasnoclipping then task.spawn(function() task.wait(0.5) execcmd("clip") end) end
	if not haditemaura then task.spawn(function() task.wait(0.5) execcmd("dia") end) end
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end

	pickingupallresearchcapsules = false
end)

pickingupalltapes = false

addcommand("pickupalltapes", "puat", function()
	if pickingupalltapes then return end
	pickingupalltapes = true

	local wasnoclipping = noclipping
	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat

	task.spawn(function() execcmd("eacb") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eia") end)

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpbypass(originalPosition)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "Tape" then
							-- table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, 0, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			tpbypass(itemCFrame)
		end
	end

	tpbypass(originalPosition)

	if not wasnoclipping then task.spawn(function() task.wait(0.5) execcmd("clip") end) end
	if not haditemaura then task.spawn(function() task.wait(0.5) execcmd("dia") end) end
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end

	pickingupalltapes = false
end)

pickingupallheals = false

addcommand("pickupallheals", "puah", function()
	if pickingupallheals then return end
	pickingupallheals = true

	local wasnoclipping = noclipping
	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat

	task.spawn(function() execcmd("eacb") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eia") end)

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpbypass(originalPosition)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "HealthKit" or item.Name == "Bandage" then
							-- table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, 0, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			tpbypass(itemCFrame)
		end
	end

	tpbypass(originalPosition)

	if not wasnoclipping then task.spawn(function() task.wait(0.5) execcmd("clip") end) end
	if not haditemaura then task.spawn(function() task.wait(0.5) execcmd("dia") end) end
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end

	pickingupallheals = false
end)

pickingupallextractionitems = false

addcommand("pickupallextractionitems", "puaei", function()
	if pickingupallextractionitems then return end
	pickingupallextractionitems = true

	local wasnoclipping = noclipping
	local haditemaura = itemauraenabled
	local wasbypassinganticheat = bypassinganticheat

	task.spawn(function() execcmd("eacb") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("eia") end)

	local player = noxious["local player"]
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
	local originalPosition = humanoidRootPart.CFrame

	tpbypass(originalPosition)

	local currentRoom = game.Workspace:FindFirstChild("CurrentRoom")
	if currentRoom then
		local itemPositions = {}
		for _, model in ipairs(currentRoom:GetChildren()) do
			if model:IsA("Model") then
				local itemsFolder = model:FindFirstChild("Items")
				if itemsFolder then
					for _, item in ipairs(itemsFolder:GetChildren()) do
						if item:IsA("Model") and item.Name == "JumperCable" or item.Name == "ExtractionSpeedCandy" or item.Name == "ExtractionCandy" then
							-- table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, -3.3, 0))
							table.insert(itemPositions, item:GetModelCFrame() * CFrame.new(0, 0, 0))
						end
					end
				end
			end
		end

		for _, itemCFrame in ipairs(itemPositions) do
			tpbypass(itemCFrame)
		end
	end

	tpbypass(originalPosition)

	if not wasnoclipping then task.spawn(function() task.wait(0.5) execcmd("clip") end) end
	if not haditemaura then task.spawn(function() task.wait(0.5) execcmd("dia") end) end
	if not wasbypassinganticheat then task.spawn(function() execcmd("dacb") end) end

	pickingupallextractionitems = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changeusername", "cuser", function(target, newName)
	for _, player in ipairs(resolveplayers(target)) do
		task.spawn(function()
			local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
			local playerModel = playersFolder:FindFirstChild(player.Name)
			if not playerModel then return end

			local humanoidRootPart = playerModel:FindFirstChild("HumanoidRootPart")
			local nameTag = humanoidRootPart and humanoidRootPart:FindFirstChild("NameTag")
			local frame = nameTag and nameTag:FindFirstChild("Frame")
			local usernamelabel = frame and frame:FindFirstChild("UserName")

			if usernamelabel then
				usernamelabel.Text = "(@" .. newName .. ")"
			end
		end)

		if player == noxious["local player"] then
			local topFrame = noxious["in studio"]
				and player.PlayerGui:FindFirstChild(noxious["screen gui"].Name).mainframe:WaitForChild("TopFrame")
				or game:GetService("CoreGui").Noxious.mainframe:WaitForChild("TopFrame")

			local welcome2 = topFrame:FindFirstChild("welcome2")
			local welcome3 = noxious["top frame 2"]:FindFirstChild("welcome3")
			if welcome2 then welcome2.Text = "(@" .. newName .. ")" end
			if welcome3 then welcome3.Text = "(@" .. newName .. ")" end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changedisplayname", "cdisplay", function(target, newName)
	for _, player in ipairs(resolveplayers(target)) do
		task.spawn(function()
			local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
			local playerModel = playersFolder:FindFirstChild(player.Name)
			if not playerModel then return end

			local humanoidRootPart = playerModel:FindFirstChild("HumanoidRootPart")
			local nameTag = humanoidRootPart and humanoidRootPart:FindFirstChild("NameTag")
			local frame = nameTag and nameTag:FindFirstChild("Frame")
			local displaynamelabel = frame and frame:FindFirstChild("DisplayName")

			if displaynamelabel then
				displaynamelabel.Text = newName
			end
		end)

		if player == noxious["local player"] then
			local topFrame = noxious["in studio"]
				and player.PlayerGui:FindFirstChild(noxious["screen gui"].Name).mainframe:WaitForChild("TopFrame")
				or game:GetService("CoreGui").Noxious.mainframe:WaitForChild("TopFrame")

			local welcome = topFrame:FindFirstChild("welcome")
			local welcome4 = noxious["top frame 2"]:FindFirstChild("welcome4")
			if welcome then welcome.Text = "Welcome, " .. newName .. "!" end
			if welcome4 then welcome4.Text = "Welcome, " .. newName .. "!" end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("changeownertagtext", "cotagt", function(target, newName)
	for _, player in ipairs(resolveplayers(target)) do
		local playersFolder = workspace:FindFirstChild("Players") or workspace:WaitForChild("InGamePlayers")
		local playerModel = playersFolder:FindFirstChild(player.Name)
		if not playerModel then continue end

		local humanoidRootPart = playerModel:FindFirstChild("HumanoidRootPart")
		local nameTag = humanoidRootPart and humanoidRootPart:FindFirstChild("NameTag")
		local frame = nameTag and nameTag:FindFirstChild("Frame")
		local ownerlabel = frame and frame:FindFirstChild("GroupRank")

		if ownerlabel then
			ownerlabel.Text = "[" .. newName .. "]"
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local scriptEnabled = false
local savedDisplayNames = {}
local savedUserNames = {}

function resolveplayers(target)
	if not target then target = "me" end
	local resolved = {}
	if target == "me" then
		table.insert(resolved, noxious["players"].LocalPlayer)
	elseif target == "others" then
		for _, p in ipairs(noxious["players"]:GetPlayers()) do
			if p ~= noxious["players"].LocalPlayer then
				table.insert(resolved, p)
			end
		end
	elseif target == "all" then
		resolved = noxious["players"]:GetPlayers()
	elseif target == "random" then
		local allPlayers = noxious["players"]:GetPlayers()
		if #allPlayers > 0 then
			local randomPlayer = allPlayers[math.random(1, #allPlayers)]
			table.insert(resolved, randomPlayer)
		end
	else
		for _, p in ipairs(noxious["players"]:GetPlayers()) do
			if p.Name:lower():find(target:lower(), 1, true) then
				table.insert(resolved, p)
				break
			end
		end
	end
	return resolved
end

addcommand("enableglitchednametag", "egnt", function(target)
	local resolved = resolveplayers(target)
	if #resolved == 0 then return end

	local welcome, welcome2
	if noxious["in studio"] then
		local gui = noxious["local player"]:WaitForChild("PlayerGui"):FindFirstChild(noxious["screen gui"].Name)
		if gui then
			welcome = gui.mainframe:WaitForChild("TopFrame"):WaitForChild("welcome")
			welcome2 = gui.mainframe.TopFrame:WaitForChild("welcome2")
		end
	else
		local core = game:GetService("CoreGui"):FindFirstChild("Noxious")
		if core then
			welcome = core.mainframe:WaitForChild("TopFrame"):WaitForChild("welcome")
			welcome2 = core.mainframe.TopFrame:WaitForChild("welcome2")
		end
	end

	scriptEnabled = true
	task.spawn(function()
		while scriptEnabled do
			local randomText = randomstring(16)

			if welcome and welcome2 then
				welcometxt = welcome.Text
				welcome2txt = welcome2.Text
				welcome.Text = "Welcome, " .. randomText .. "!"
				welcome2.Text = "(@" .. randomText .. ")"
			end

			for _, p in ipairs(resolved) do
				local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
				local playerModel = playersFolder and playersFolder:FindFirstChild(p.Name)
				if playerModel then
					local hrp = playerModel:FindFirstChild("HumanoidRootPart")
					local tag = hrp and hrp:FindFirstChild("NameTag")
					local frame = tag and tag:FindFirstChild("Frame")
					local disp = frame and frame:FindFirstChild("DisplayName")
					local user = frame and frame:FindFirstChild("UserName")
					if disp and user then
						if not savedDisplayNames[p] then
							savedDisplayNames[p] = disp.Text
							savedUserNames[p] = user.Text
						end
						disp.Text = randomText
						user.Text = "(@" .. randomText .. ")"
					end
				end
			end

			task.wait(0)
		end
	end)
end)

addcommand("disableglitchednametag", "dgnt", function(target)
	scriptEnabled = false

	local resolved = resolveplayers(target)
	if #resolved == 0 then return end

	local welcome = noxious["top frame text"]
	local welcome2 = noxious["top frame subtext"]

	if welcome and welcome2 and welcometxt and welcome2txt then
		welcome.Text = welcometxt
		welcome2.Text = welcome2txt
	end

	for _, p in ipairs(resolved) do
		local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
		local playerModel = playersFolder and playersFolder:FindFirstChild(p.Name)
		if playerModel then
			local hrp = playerModel:FindFirstChild("HumanoidRootPart")
			local tag = hrp and hrp:FindFirstChild("NameTag")
			local frame = tag and tag:FindFirstChild("Frame")
			local disp = frame and frame:FindFirstChild("DisplayName")
			local user = frame and frame:FindFirstChild("UserName")
			if disp and user and savedDisplayNames[p] and savedUserNames[p] then
				disp.Text = savedDisplayNames[p]
				user.Text = savedUserNames[p]
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local isrunofs30znametagenabled = {}
local runTasks = {}

local messages = {
	{display = "Sempiterna", user = "(@Sempiterna)", welcome = "Welcome, Sempiterna!", welcome2 = "(@Sempiterna)", delay = 0.55},
	{display = "Sempiterna sit", user = "(@Sempiterna sit)", welcome = "Welcome, Sempiterna sit!", welcome2 = "(@Sempiterna sit)", delay = 0.15},
	{display = "Sempiterna sit beatae,", user = "(@Sempiterna sit beatae,)", welcome = "Welcome, Sempiterna sit beatae!", welcome2 = "(@Sempiterna sit beatae,)", delay = 0.7},
	{display = "Sempiterna sit beatae, trinitati", user = "(@Sempiterna sit beatae, trinitati)", welcome = "Welcome, Sempiterna sit beatae, trinitati!", welcome2 = "(@Sempiterna sit beatae, trinitati)", delay = 0.7},
	{display = "Sempiterna sit beatae, trinitati gloria.", user = "(@Sempiterna sit beatae, trinitati gloria.)", welcome = "Welcome, Sempiterna sit beatae, trinitati gloria!", welcome2 = "(@Sempiterna sit beatae, trinitati gloria.)", delay = 0.7},
	{display = "Aequa", user = "(@Aequa)", welcome = "Welcome, Aequa!", welcome2 = "(@Aequa)", delay = 0.2},
	{display = "Aequa patri", user = "(@Aequa patri)", welcome = "Welcome, Aequa patri!", welcome2 = "(@Aequa patri)", delay = 0.4},
	{display = "Aequa patri filioque,", user = "(@Aequa patri filioque,)", welcome = "Welcome, Aequa patri filioque!", welcome2 = "(@Aequa patri filioque,)", delay = 0.7},
	{display = "Aequa patri filioque, par", user = "(@Aequa patri filioque, par)", welcome = "Welcome, Aequa patri filioque, par!", welcome2 = "(@Aequa patri filioque, par)", delay = 0.2},
	{display = "Aequa patri filioque, par decus", user = "(@Aequa patri filioque, par decus)", welcome = "Welcome, Aequa patri filioque, par decus!", welcome2 = "(@Aequa patri filioque, par decus)", delay = 0.3},
	{display = "Aequa patri filioque, par decus paraclito.", user = "(@Aequa patri filioque, par decus paraclito.)", welcome = "Welcome, Aequa patri filioque, par decus paraclito!", welcome2 = "(@Aequa patri filioque, par decus paraclito.)", delay = 0.77}
}

function runofs30znametag(player)
	isrunofs30znametagenabled[player] = true
	task.spawn(function()
		local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
		local model = playersFolder and playersFolder:FindFirstChild(player.Name)
		local hrp = model and model:FindFirstChild("HumanoidRootPart")
		local nameTag = hrp and hrp:FindFirstChild("NameTag")
		local frame = nameTag and nameTag:FindFirstChild("Frame")
		local displayNameLabel = frame and frame:FindFirstChild("DisplayName")
		local userNameLabel = frame and frame:FindFirstChild("UserName")

		local welcome, welcome2
		if player == game:GetService("Players").LocalPlayer then
			if noxious["in studio"] then
				local gui = player:FindFirstChild("PlayerGui"):FindFirstChild(noxious["screen gui"].Name)
				welcome = gui and gui.mainframe:FindFirstChild("TopFrame"):FindFirstChild("welcome")
				welcome2 = gui and gui.mainframe.TopFrame:FindFirstChild("welcome2")
			else
				local top = game:GetService("CoreGui"):FindFirstChild("Noxious")
				welcome = top and top.mainframe:FindFirstChild("TopFrame"):FindFirstChild("welcome")
				welcome2 = top and top.mainframe.TopFrame:FindFirstChild("welcome2")
			end
		end

		while isrunofs30znametagenabled[player] do
			for _, msg in ipairs(messages) do
				if not isrunofs30znametagenabled[player] then return end

				if displayNameLabel and userNameLabel then
					displayNameLabel.Text = msg.display
					userNameLabel.Text = msg.user
				end

				if welcome then welcome.Text = msg.welcome end
				if welcome2 then welcome2.Text = msg.welcome2 end

				task.wait(msg.delay)
			end
		end
	end)
end

addcommand("enablerunofs30znametag", "erosnt", function(target)
	for _, player in ipairs(resolveplayers(target)) do
		if not isrunofs30znametagenabled[player] then
			runofs30znametag(player)
		end
	end
end)

addcommand("disablerunofs30znametag", "drosnt", function(target)
	for _, player in ipairs(resolveplayers(target)) do
		isrunofs30znametagenabled[player] = false

		local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
		local model = playersFolder and playersFolder:FindFirstChild(player.Name)
		local hrp = model and model:FindFirstChild("HumanoidRootPart")
		local nameTag = hrp and hrp:FindFirstChild("NameTag")
		local frame = nameTag and nameTag:FindFirstChild("Frame")
		local displayNameLabel = frame and frame:FindFirstChild("DisplayName")
		local userNameLabel = frame and frame:FindFirstChild("UserName")

		if displayNameLabel and userNameLabel then
			displayNameLabel.Text = player.DisplayName
			userNameLabel.Text = "(@" .. player.Name .. ")"
		end

		if player == game:GetService("Players").LocalPlayer then
			local welcome, welcome2
			if noxious["in studio"] then
				local gui = player:FindFirstChild("PlayerGui"):FindFirstChild(noxious["screen gui"].Name)
				welcome = gui and gui.mainframe:FindFirstChild("TopFrame"):FindFirstChild("welcome")
				welcome2 = gui and gui.mainframe.TopFrame:FindFirstChild("welcome2")
			else
				local top = game:GetService("CoreGui"):FindFirstChild("Noxious")
				welcome = top and top.mainframe:FindFirstChild("TopFrame"):FindFirstChild("welcome")
				welcome2 = top and top.mainframe.TopFrame:FindFirstChild("welcome2")
			end

			if welcome then welcome.Text = "Welcome, " .. player.DisplayName .. "!" end
			if welcome2 then welcome2.Text = "(@" .. player.Name .. ")" end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("showownertag", "sot", function(target)
	for _, player in ipairs(resolveplayers(target)) do
		local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
		local model = playersFolder and playersFolder:FindFirstChild(player.Name)
		if not model then continue end

		local tag = model:FindFirstChild("HumanoidRootPart")
		if tag then
			tag = tag:FindFirstChild("NameTag")
		end
		if tag then
			tag = tag:FindFirstChild("Frame")
		end
		local groupRankLabel = tag and tag:FindFirstChild("GroupRank")

		if groupRankLabel then
			groupRankLabel.Visible = true
		end
	end
end)

addcommand("hideownertag", "hot", function(target)
	for _, player in ipairs(resolveplayers(target)) do
		local playersFolder = workspace:FindFirstChild("Players") or workspace:FindFirstChild("InGamePlayers")
		local model = playersFolder and playersFolder:FindFirstChild(player.Name)
		if not model then continue end

		local tag = model:FindFirstChild("HumanoidRootPart")
		if tag then
			tag = tag:FindFirstChild("NameTag")
		end
		if tag then
			tag = tag:FindFirstChild("Frame")
		end
		local groupRankLabel = tag and tag:FindFirstChild("GroupRank")

		if groupRankLabel then
			groupRankLabel.Visible = false
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("antiskillcheck", "ask", function()
	local player = game:GetService("Players").LocalPlayer
	local skillCheckFrame = player.PlayerGui.ScreenGui.Menu:FindFirstChild("SkillCheckFrame")

	if skillCheckFrame then
		skillCheckFrame.Parent = game:GetService("ReplicatedStorage")
	end
end)

addcommand("unantiskillcheck", "uask", function()
	local player = game:GetService("Players").LocalPlayer
	local skillCheckFrame = game:GetService("ReplicatedStorage"):FindFirstChild("SkillCheckFrame")

	if skillCheckFrame then
		skillCheckFrame.Parent = player.PlayerGui.ScreenGui.Menu
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("antipopups", "apu", function()
	local popup = noxious["local player"].PlayerGui.ScreenGui:FindFirstChild("PopUp")

	if popup then
		popup.Parent = game:GetService"ReplicatedStorage"
	end
end)

addcommand("unantipopups", "uapu", function()
	local popup = game:GetService("ReplicatedStorage"):FindFirstChild("PopUp")

	if popup then
		popup.Parent = noxious["local player"].PlayerGui.ScreenGui
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spectate", "view", function(target)
	execcmd("unview")
	local players = noxious["players"]
	local localPlayer = players.LocalPlayer
	local camera = workspace.CurrentCamera

	local function getTargetPlayer(target)
		if target == "me" then
			return localPlayer
		elseif target == "random" then
			local allPlayers = players:GetPlayers()
			if #allPlayers > 0 then
				return allPlayers[math.random(1, #allPlayers)]
			end
		elseif target == "others" then
			return nil
		elseif target == "all" then
			return nil
		else
			for _, player in ipairs(players:GetPlayers()) do
				if player.Name:lower():find(target:lower(), 1, true) then
					return player
				end
			end
		end
		return nil
	end

	local targetPlayer = getTargetPlayer(target)

	if not targetPlayer or targetPlayer == localPlayer then
		return
	end

	local targetCharacter = targetPlayer.Character
	if targetCharacter and targetCharacter:FindFirstChild("Head") then
		camera.CameraSubject = targetCharacter.Head
	end
end)

addcommand("unspectate", "unview", function()
	workspace.CurrentCamera:remove()
	task.wait(.1)
	repeat task.wait() until noxious["character"] ~= nil
	workspace.CurrentCamera.CameraSubject = noxious["character"]:FindFirstChildWhichIsA('Humanoid')
	workspace.CurrentCamera.CameraType = "Custom"
	noxious["local player"].CameraMinZoomDistance = 0.5
	noxious["local player"].CameraMaxZoomDistance = 400
	noxious["local player"].CameraMode = "Classic"
	noxious["character"].Head.Anchored = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablechatguider", "ecg", function()
	task.spawn(function() execcmd("etcg") end)
	task.spawn(function() execcmd("elhcg") end)
	task.spawn(function() execcmd("edpcg") end)
	task.spawn(function() execcmd("ericg") end)
	task.spawn(function() execcmd("eipucg") end)
	task.spawn(function() execcmd("egtecg") end)
end)

addcommand("disablechatguider", "dcg", function()
	task.spawn(function() execcmd("dtcg") end)
	task.spawn(function() execcmd("dlhcg") end)
	task.spawn(function() execcmd("ddpcg") end)
	task.spawn(function() execcmd("dricg") end)
	task.spawn(function() execcmd("dipucg") end)
	task.spawn(function() execcmd("dgtecg") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

function nocaps(text)
	return text:lower()
end

local trackedtwisteds = {}
local enabletwistedchat = false
local messagetwistedsent = false
local lastmodeltick = tick()

function cleanmonstername(name)
	if name == "RazzleDazzleMonster" then
		return "Razzle & Dazzle"
	end
	return name:gsub("Monster", "")
end

function formatMonsterList(names)
	if #names == 1 then
		return names[1]
	elseif #names == 2 then
		return names[1] .. " and " .. names[2]
	else
		local allButLast = table.concat(names, ", ", 1, #names - 1)
		return allButLast .. ", and " .. names[#names]
	end
end

function runtwistedchatloop()
	local currentroom = game.Workspace:FindFirstChild("CurrentRoom")
	if not currentroom then return end

	while enabletwistedchat do
		local newtwisteds = {}
		local monsteramount = 0
		local anynew = false

		if #currentroom:GetChildren() == 0 then
			trackedtwisteds = {}
			messagetwistedsent = false
		else
			for _, model in ipairs(currentroom:GetChildren()) do
				if model:IsA("Model") then
					local monsters = model:FindFirstChild("Monsters")
					if monsters then
						for _, monster in ipairs(monsters:GetChildren()) do
							monsteramount += 1
							local name = cleanmonstername(monster.Name)

							if not trackedtwisteds[name] then
								table.insert(newtwisteds, name)
								trackedtwisteds[name] = true
								anynew = true
								lastmodeltick = tick()
							end
						end
					end
				end
			end
		end

		if monsteramount > 1 and #newtwisteds > 0 and not messagetwistedsent then
			local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
			if channel then
				local formattedList = formatMonsterList(newtwisteds)
				task.wait(2)
				if botlikemessages == true then
					channel:SendAsync("Twisteds: " .. formattedList)
				else
					task.wait(2)
					channel:SendAsync(nocaps(formattedList))
				end
				task.wait(0.5)
				messagetwistedsent = true
			end
		end

		if monsteramount == 0 then
			messagetwistedsent = false
		end

		for name, _ in pairs(trackedtwisteds) do
			local found = false
			for _, model in ipairs(currentroom:GetChildren()) do
				local monsters = model:FindFirstChild("Monsters")
				if monsters and monsters:FindFirstChild(name) then
					found = true
					break
				end
			end
			if not found then
				trackedtwisteds[name] = nil
			end
		end

		task.wait(0.1)
	end
end

addcommand("enabletwistedschatguider", "etcg", function()
	if enabletwistedchat then return end
	enabletwistedchat = true
	messagetwistedsent = false
	task.spawn(runtwistedchatloop)
end)

addcommand("disabletwistedschatguider", "dtcg", function()
	enabletwistedchat = false
end)

-------------------------------------------------------------------------------------------------------------------------------

local healthChatConnection
local chattedLowHealth = {}

addcommand("enablelowhealthchatguider", "elhcg", function()
	local inGamePlayers = workspace:FindFirstChild("InGamePlayers")
	if healthChatConnection or not inGamePlayers then return end

	healthChatConnection = noxious["run service"].RenderStepped:Connect(function()
		local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
		if not channel then return end

		for _, model in ipairs(inGamePlayers:GetChildren()) do
			if model:IsA("Model") then
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local charname = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid then
					local playerName = model.Name

					if humanoid.Health == 1 and not chattedLowHealth[playerName] then
						local message = charname .. " is at 1"
						if botlikemessages == true then
							channel:SendAsync(playerName .. " (" .. charname .. ") is at 1 heart.")
						else
							task.delay(1, function()
								channel:SendAsync(message:lower())
							end)
						end
						chattedLowHealth[playerName] = true
					elseif humanoid.Health > 1 then
						chattedLowHealth[playerName] = nil
					end
				end
			end
		end
	end)
end)

addcommand("disablelowhealthchatguider", "dlhcg", function()
	if healthChatConnection then
		healthChatConnection:Disconnect()
		healthChatConnection = nil
	end
	chattedLowHealth = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

local deadchatconnection
local chatteddeadplayers = {}

addcommand("enabledeadplayerchatguider", "edpcg", function()
	local ingameplayers = workspace:FindFirstChild("InGamePlayers")
	if deadchatconnection or not ingameplayers then return end

	deadchatconnection = noxious["run service"].RenderStepped:Connect(function()
		local currentplayers = {}

		for _, model in ipairs(ingameplayers:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local charname = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				currentplayers[model.Name] = charname

				if not chatteddeadplayers[model.Name] then
					chatteddeadplayers[model.Name] = charname
				end
			end
		end

		for playername, charname in pairs(chatteddeadplayers) do
			if not currentplayers[playername] then
				local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
				if channel then
					if botlikemessages == true then
						channel:SendAsync(playername .. " (" .. charname .. ") died or left the game.")
					else
						task.delay(1, function()
							local message = charname .. " died or left"
							channel:SendAsync(message:lower())
						end)
					end
				end
				chatteddeadplayers[playername] = nil
			end
		end
	end)
end)

addcommand("disabledeadplayerchatguider", "ddpcg", function()
	if deadchatconnection then
		deadchatconnection:Disconnect()
		deadchatconnection = nil
		chatteddeadplayers = {}
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local chatteditems = {}
local rareitems = {
	"Bandage",
	"HealthKit",
	"SmokeBomb",
	"EjectButton",
	"Valve",
	"Box chocolates",
	"AirHorn",
	"EnigmaCandy",
	"JumperCable",
	"PopBottle"
}

local itemnamemapping = {
	["HealthKit"] = "Medkit",
	["SmokeBomb"] = "Smoke bomb",
	["EjectButton"] = "Eject button",
	["ChocolateBox"] = "Box of chocolates",
	["AirHorn"] = "Air horn",
	["EnigmaCandy"] = "Enigma candy",
	["JumperCable"] = "Jumper cable",
	["PopBottle"] = "Bottle of pop",
}

local chatloopactive = false

function formatItemList(items)
	if #items == 1 then
		return items[1]
	elseif #items == 2 then
		return items[1] .. " and " .. items[2]
	else
		local allButLast = table.concat(items, ", ", 1, #items - 1)
		return allButLast .. ", and " .. items[#items]
	end
end

function startrareitemschat()
	local room = workspace:FindFirstChild("CurrentRoom")
	if not room then return end

	while chatloopactive do
		for _, model in ipairs(room:GetChildren()) do
			if model:IsA("Model") then
				local items = model:FindFirstChild("Items")
				if items then
					local found = {}
					for _, item in ipairs(items:GetChildren()) do
						if table.find(rareitems, item.Name) and not chatteditems[item.Name] then
							table.insert(found, item.Name)
							chatteditems[item.Name] = true
						end
					end

					if #found > 0 then
						for i, name in ipairs(found) do
							if itemnamemapping[name] then
								found[i] = itemnamemapping[name]
							end
						end

						local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
						if channel then
							local formattedList = formatItemList(found)
							task.wait(2)
							if botlikemessages == true then
								channel:SendAsync(formattedList .. " has been detected.")
							else
								task.wait(2)
								channel:SendAsync(nocaps(formattedList))
							end
						end
					end
				end
			end
		end

		for name in pairs(chatteditems) do
			local exists = false
			for _, model in ipairs(room:GetChildren()) do
				local items = model:FindFirstChild("Items")
				if items and items:FindFirstChild(name) then
					exists = true
					break
				end
			end
			if not exists then
				chatteditems[name] = nil
			end
		end

		task.wait(0.1)
	end
end

addcommand("enablerareitemschatguider", "ericg", function()
	if chatloopactive then return end
	chatloopactive = true
	chatteditems = {}
	task.spawn(startrareitemschat)
end)

addcommand("disablerareitemschatguider", "dricg", function()
	chatloopactive = false
	chatteditems = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

gettoelevatorenabled = false
requiredtotal = 0
effectiveTotal = 0
gtesent = false
previousGeneratorValues = {}
dogte = false

function updateamounts()
	local room = workspace:FindFirstChild("CurrentRoom")
	if not room then return end

	requiredtotal = 0
	effectiveTotal = 0

	for _, model in pairs(room:GetChildren()) do
		local gens = model:FindFirstChild("Generators")
		if gens then
			for _, gen in pairs(gens:GetChildren()) do
				if gen:IsA("Model") then
					local stats = gen:FindFirstChild("Stats")
					local cur = stats and stats:FindFirstChild("CurrentAmount")
					local req = stats and stats:FindFirstChild("RequiredAmount")
					if cur and req then
						requiredtotal += req.Value

						local id = gen:GetDebugId(1)
						local lastValue = previousGeneratorValues[id] or 0
						local delta = cur.Value - lastValue

						if delta >= 700 or cur.Value > 800 then
							effectiveTotal += 45
						else
							effectiveTotal += cur.Value
						end

						previousGeneratorValues[id] = cur.Value
					end
				end
			end
		end
	end
end

function resetifempty()
	local room = workspace:FindFirstChild("CurrentRoom")
	if not room or #room:GetChildren() == 0 then
		requiredtotal = 0
		effectiveTotal = 0
		gtesent = false
		previousGeneratorValues = {}
	end
end

task.spawn(function()
	while dogte do
		updateamounts()

		if gettoelevatorenabled and not gtesent and requiredtotal > 0 and effectiveTotal >= (requiredtotal - 20) then
			local chan = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")
			if chan then
				if botlikemessages == true then
					chan:SendAsync("Get to the elevator.")
				else
					task.delay(1, function()
						chan:SendAsync("gte")
					end)
				end
				gtesent = true
			end
		end

		resetifempty()
		task.wait(1)
	end
end)

addcommand("enablegettoelevatorchatguider", "egtecg", function()
	gettoelevatorenabled = true
	dogte = true
end)

addcommand("disablegettoelevatorchatguider", "dgtecg", function()
	gettoelevatorenabled = false
	dogte = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablenotifier", "en", function()
	task.spawn(function() execcmd("etn") end)
	task.spawn(function() execcmd("elhn") end)
	task.spawn(function() execcmd("edpn") end)
	task.spawn(function() execcmd("erin") end)
	task.spawn(function() execcmd("eripun") end)
end)

addcommand("disablenotifier", "dn", function()
	task.spawn(function() execcmd("dtn") end)
	task.spawn(function() execcmd("dlhn") end)
	task.spawn(function() execcmd("ddpn") end)
	task.spawn(function() execcmd("drin") end)
	task.spawn(function() execcmd("dripun") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

function getIndefiniteArticle(word)
	local vowels = { A = true, E = true, I = true, O = true, U = true }
	local firstChar = word:sub(1,1):upper()
	return vowels[firstChar] and "an" or "a"
end

local trackingEnabled = false
local trackedItems = {}
local pickupWatchlist = {}
local nameAliases = {
	HealthKit = "Medkit",
	SmokeBomb = "Smoke bomb",
	EjectButton = "Eject button",
	ChocolateBox = "Box of chocolates",
	AirHorn = "Air horn",
	EnigmaCandy = "Enigma candy",
	JumperCable = "Jumper cable",
	PopBottle = "Bottle of pop"
}

local validItemNames = {}
for name in pairs(nameAliases) do
	validItemNames[name] = true
end

function simplifyName(name)
	return nameAliases[name] or name
end

function getModelPosition(model)
	if model:IsA("BasePart") then
		return model.Position
	elseif model:IsA("Model") then
		local primary = model.PrimaryPart
		if not primary then
			primary = model:FindFirstChildWhichIsA("BasePart")
		end
		return primary and primary.Position or nil
	end
	return nil
end

function getCharacterName(player)
	local char = workspace:FindFirstChild("InGamePlayers"):FindFirstChild(player.Name)
	if char and char:IsA("Model") then
		local config = char:FindFirstChild("Config")
		local charName = config and config:FindFirstChild("CharacterName")
		return charName and charName.Value or "Unknown"
	end
	return "Unknown"
end

function monitorPickups()
	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	local function isValidItem(item)
		return item and item:IsA("Model") and item:IsDescendantOf(workspace) and validItemNames[item.Name]
	end

	while trackingEnabled do
		local room = workspace:FindFirstChild("CurrentRoom")
		local inGamePlayers = workspace:FindFirstChild("InGamePlayers")

		if room and inGamePlayers then
			for _, area in ipairs(room:GetChildren()) do
				local items = area:FindFirstChild("Items")
				if items then
					for _, item in ipairs(items:GetChildren()) do
						if isValidItem(item) and not pickupWatchlist[item] then
							local pos = getModelPosition(item)
							local closest = nil
							local minDist = 12

							if pos then
								for _, player in ipairs(game.Players:GetPlayers()) do
									local char = inGamePlayers:FindFirstChild(player.Name)
									local head = char and char:FindFirstChild("Head")
									if head then
										local dist = (head.Position - pos).Magnitude
										if dist < minDist then
											minDist = dist
											closest = player
										end
									end
								end
							end

							if closest then
								pickupWatchlist[item] = {
									item = item,
									name = item.Name,
									lastPosition = pos,
									nearestPlayer = closest
								}
							end
						end
					end
				end
			end
		end

		local itemsToRemove = {}
		for item, info in pairs(pickupWatchlist) do
			if not isValidItem(item) or not item:IsDescendantOf(workspace) then
				local player = info.nearestPlayer
				if player and channel then
					local itemName = simplifyName(info.name)
					local charName = getCharacterName(player)
					local article = getIndefiniteArticle(itemName)
					local msg = notify(player.Name .. " (" .. charName .. ") picked up " .. article .. " " .. itemName .. ".", 5)
					task.spawn(function() channel:SendAsync(msg) end)
					task.spawn(function() execcmd("dripun") end)
					task.spawn(function() task.wait(0.1) execcmd("eripun") end)
				end
				table.insert(itemsToRemove, item)
			end
		end

		for _, item in ipairs(itemsToRemove) do
			pickupWatchlist[item] = nil
		end

		task.wait(0.2)
	end
end

addcommand("enablerareitemspickedupnotifier", "eripun", function()
	if trackingEnabled then return end
	trackingEnabled = true
	trackedItems = {}
	pickupWatchlist = {}
	task.spawn(monitorPickups)
end)

addcommand("disablerareitemspickedupnotifier", "dripun", function()
	trackingEnabled = false
	trackedItems = {}
	pickupWatchlist = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("reversemessages", "blottalk", function()
	local Players = game:GetService("Players")
	local TextChatService = game:GetService("TextChatService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")

	local LocalPlayer = Players.LocalPlayer
	local CoreGui = game:GetService("CoreGui")

	-- GUI presence check
	if CoreGui:FindFirstChild("ReverseChatGui") then return end

	-- Reversal utility
	local function reverseString(str)
		return string.reverse(str)
	end

	-- Get target recipient (for whisper)
	local function getTargetName(targetChip)
		if targetChip and targetChip:IsA("TextButton") then
			local displayName = string.match(targetChip.Text or "", "^%[To%s+(.-)%]$")
			if displayName and displayName ~= "" then
				for _, plr in ipairs(Players:GetPlayers()) do
					if plr.DisplayName:lower() == displayName:lower() then
						return plr.Name
					end
				end
			end
		end
		return "All"
	end

	-- Message sender (reversed)
	local function sendReversedMessage(message, recipient)
		local reversed = reverseString(message)
		local channel = nil

		if recipient and recipient ~= "All" then
			for _, ch in pairs(TextChatService.TextChannels:GetChildren()) do
				if ch.Name:find("RBXWhisper:") and ch:FindFirstChild(recipient) then
					channel = ch
					break
				end
			end
		end

		if not channel then
			channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
				or TextChatService.TextChannels:FindFirstChild("General")
		end

		if channel then
			channel:SendAsync(reversed)
		else
			-- Fallback to legacy system
			local ev = ReplicatedStorage:FindFirstChild("DefaultChatSystemChatEvents")
			if ev then
				local say = ev:FindFirstChild("SayMessageRequest")
				if say then
					say:FireServer(reversed, "All")
				end
			end
		end
	end

	-- Hook chat bar
	task.spawn(function()
		repeat task.wait() until CoreGui:FindFirstChild("ExperienceChat")

		local experienceChat = CoreGui:WaitForChild("ExperienceChat")
		local chatInputBar = experienceChat:WaitForChild("appLayout"):WaitForChild("chatInputBar")
		local background = chatInputBar:WaitForChild("Background")
		local container = background:WaitForChild("Container")
		local textContainer = container:WaitForChild("TextContainer")
		local textBoxContainer = textContainer:WaitForChild("TextBoxContainer")
		local chatBox = textBoxContainer:WaitForChild("TextBox")
		local targetChip = textContainer:FindFirstChild("TargetChannelChip")

		if chatBox then
			chatBox.FocusLost:Connect(function(enterPressed)
				if enterPressed and chatBox.Text ~= "" then
					local msg = chatBox.Text
					local recipient = getTargetName(targetChip)
					chatBox.Text = ""
					task.defer(function()
						sendReversedMessage(msg, recipient)
					end)
				end
			end)
		end
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

local twistedlist = {}
local twistedactive = false
local twistedsent = false
local twistedlast = tick()

function formatMonsterNames(names)
	if #names == 1 then
		return names[1]
	elseif #names == 2 then
		return names[1] .. " and " .. names[2]
	else
		local allButLast = table.concat(names, ", ", 1, #names - 1)
		return allButLast .. ", and " .. names[#names]
	end
end

function cleanname(name)
	if name == "RazzleDazzleMonster" then
		return "Razzle & Dazzle"
	end
	return name:gsub("Monster", "")
end

function twistedloop()
	local room = workspace:FindFirstChild("CurrentRoom")
	if not room then return end

	while twistedactive do
		local newlist = {}
		local total = 0
		local newadded = false

		if #room:GetChildren() == 0 then
			twistedlist = {}
			twistedsent = false
		else
			for _, model in ipairs(room:GetChildren()) do
				if model:IsA("Model") then
					local folder = model:FindFirstChild("Monsters")
					if folder then
						for _, monster in ipairs(folder:GetChildren()) do
							total += 1
							local name = cleanname(monster.Name)
							if not twistedlist[name] then
								table.insert(newlist, name)
								twistedlist[name] = true
								newadded = true
								twistedlast = tick()
							end
						end
					end
				end
			end
		end

		if total > 1 and #newlist > 0 and not twistedsent then
			local formattedNames = formatMonsterNames(newlist)
			task.wait(1)
			notify("Twisteds: " .. formattedNames, 5)
			task.wait(0.5)
			twistedsent = true
		end

		if total == 0 then
			twistedsent = false
		end

		for name in pairs(twistedlist) do
			local exists = false
			for _, model in ipairs(room:GetChildren()) do
				local folder = model:FindFirstChild("Monsters")
				if folder and folder:FindFirstChild(name .. "Monster") then
					exists = true
					break
				end
			end
			if not exists then
				twistedlist[name] = nil
			end
		end

		task.wait(0.1)
	end
end

addcommand("enabletwistedsnotifier", "etn", function()
	if twistedactive then return end
	twistedactive = true
	twistedsent = false
	twistedlist = {}
	task.spawn(twistedloop)
end)

addcommand("disabletwistedsnotifier", "dtn", function()
	twistedactive = false
	twistedlist = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

local healthconnection
local notifiedplayers = {}

function lowhealthnotifier(name, charname)
	notify(name .. " (" .. charname .. ") is at 1 heart.", 5)
end

addcommand("enablelowhealthnotifier", "elhn", function()
	local players = workspace:FindFirstChild("InGamePlayers")
	if healthconnection or not players then return end

	healthconnection = noxious["run service"].RenderStepped:Connect(function()
		for _, model in ipairs(players:GetChildren()) do
			if model:IsA("Model") then
				local humanoid = model:FindFirstChildOfClass("Humanoid")
				local config = model:FindFirstChild("Config")
				local charname = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"

				if humanoid and humanoid.Health == 1 and not notifiedplayers[model.Name] then
					lowhealthnotifier(model.Name, charname)
					notifiedplayers[model.Name] = true
				elseif humanoid and humanoid.Health > 1 then
					notifiedplayers[model.Name] = nil
				end
			end
		end
	end)
end)

addcommand("disablelowhealthnotifier", "dlhn", function()
	if healthconnection then
		healthconnection:Disconnect()
		healthconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local deadconnection
local savednames = {}

function deadnotifier(name, charname)
	notify(name .. " (" .. charname .. ") died or left the game.", 5)
end

addcommand("enabledeadplayernotifier", "edpn", function()
	local players = workspace:FindFirstChild("InGamePlayers")
	if deadconnection or not players then return end

	deadconnection = noxious["run service"].RenderStepped:Connect(function()
		local current = {}

		for _, model in ipairs(players:GetChildren()) do
			if model:IsA("Model") then
				local config = model:FindFirstChild("Config")
				local charname = config and config:FindFirstChild("CharacterName") and config.CharacterName.Value or "Unknown"
				current[model.Name] = charname

				if not savednames[model.Name] then
					savednames[model.Name] = charname
				end
			end
		end

		for name, charname in pairs(savednames) do
			if not current[name] then
				task.delay(0.5, function()
					deadnotifier(name, charname)
				end)
				savednames[name] = nil
			end
		end
	end)
end)

addcommand("disabledeadplayernotifier", "ddpn", function()
	if deadconnection then
		deadconnection:Disconnect()
		deadconnection = nil
		savednames = {}
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local notifieditems = {}
local notifyitemsloopenabled = false

function formatItemNames(names)
	if #names == 1 then
		return names[1]
	elseif #names == 2 then
		return names[1] .. " and " .. names[2]
	else
		local allButLast = table.concat(names, ", ", 1, #names - 1)
		return allButLast .. ", and " .. names[#names]
	end
end

function startnotifyitemsloop()
	local room = game.Workspace:FindFirstChild("CurrentRoom")
	if not room then return end

	while notifyitemsloopenabled do
		for _, model in ipairs(room:GetChildren()) do
			if model:IsA("Model") then
				local folder = model:FindFirstChild("Items")
				if folder then
					local found = {}
					for _, item in ipairs(folder:GetChildren()) do
						if table.find(rareitems, item.Name) and not notifieditems[item.Name] then
							table.insert(found, item.Name)
							notifieditems[item.Name] = true
						end
					end

					if #found > 0 then
						for i, itemname in ipairs(found) do
							if itemnamemapping[itemname] then
								found[i] = itemnamemapping[itemname]
							end
						end
						local formattedNames = formatItemNames(found)
						task.wait(1)
						notify(formattedNames .. " has been detected.", 5)
					end
				end
			end
		end

		for itemname, _ in pairs(notifieditems) do
			local stillexists = false
			for _, model in ipairs(room:GetChildren()) do
				local folder = model:FindFirstChild("Items")
				if folder and folder:FindFirstChild(itemname) then
					stillexists = true
					break
				end
			end
			if not stillexists then
				notifieditems[itemname] = nil
			end
		end

		task.wait(0.1)
	end
end

addcommand("enablerareitemsnotifier", "erin", function()
	if notifyitemsloopenabled then return end
	notifyitemsloopenabled = true
	notifieditems = {}
	task.spawn(startnotifyitemsloop)
end)

addcommand("disablerareitemsnotifier", "drin", function()
	notifyitemsloopenabled = false
	notifieditems = {}
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("opendandysshop", "ods", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local dandyframe = mainGui:WaitForChild"DandyFrame"
	dandyframe.Visible = true
end)

addcommand("opentoonlicenseshop", "otls", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local storeFrame = mainGui:WaitForChild"StoreFrame"
	storeFrame.Visible = true
end)

addcommand("opentrinketsshop", "ots", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local trinketstoreframe = mainGui:WaitForChild"TrinketStoreFrame"
	trinketstoreframe.Visible = true
end)

addcommand("openskinsstore", "oss", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinstoreframe = mainGui:WaitForChild"SkinStoreFrame"
	skinstoreframe.Visible = true
end)

addcommand("openskinchanger", "osc", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skinframe = mainGui:WaitForChild"SkinFrame"
	skinframe.Visible = true
end)

addcommand("openmerchshop", "oms", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local merchframe = mainGui:WaitForChild"MerchFrame"
	merchframe.Visible = true
end)

addcommand("openoldskinunlocker", "oosu", function()
	game:GetService("Players")		
	local mainGui = noxious["local player"]:WaitForChild"PlayerGui":WaitForChild"MainGui"
	local skincollectionframe = mainGui:WaitForChild"SkinCollectionFrame"
	skincollectionframe.Visible = true
end)

-------------------------------------------------------------------------------------------------------------------------------

local teleportConnections = {}
local currentAnimationTracks = {}

function playAnimation(character, animationId, connectionKey)
	local Anim = Instance.new("Animation")		
	Anim.AnimationId = "rbxassetid://" .. animationId

	local humanoid = character:FindFirstChild("Humanoid")	
	if humanoid then
		currentAnimationTracks[connectionKey] = humanoid:LoadAnimation(Anim)
		currentAnimationTracks[connectionKey]:Play()
		currentAnimationTracks[connectionKey]:AdjustWeight(999)
		currentAnimationTracks[connectionKey].Looped = true
		currentAnimationTracks[connectionKey]:AdjustWeight(999)
		task.wait()
		currentAnimationTracks[connectionKey]:AdjustWeight(999)
	end
end

function isAnimationPlaying(character, animationId)
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
			if track.Animation.AnimationId == "rbxassetid://" .. animationId then
				return true
			end
		end
	end
	return false
end

function teleportBehindTarget(player, targetPlayer, baseOffset, connectionKey)
	local character = player.Character
	local targetCharacter = targetPlayer.Character
	if character and targetCharacter then
		local targetRoot = targetCharacter:FindFirstChild("HumanoidRootPart")			
		local playerRoot = character:FindFirstChild("HumanoidRootPart")			
		if targetRoot and playerRoot then
			local offset = baseOffset

			if (connectionKey == "hsit" or connectionKey == "hjump") and isAnimationPlaying(targetCharacter, "16873659196") then
				local yOffset = 3.7
				offset = CFrame.new(baseOffset.X, yOffset, baseOffset.Z)
			end

			playerRoot.CFrame = targetRoot.CFrame * offset
		end
	end
end

function findPlayerByPartialName(partialName)
	for _, player in ipairs(game.Players:GetPlayers()) do
		if player.Name:lower():sub(1, #partialName) == partialName:lower() then
			return player
		end
	end
	return nil
end

function handleTeleportCommand(command, player, animationId, offset, connectionKey)
	game.Workspace.Gravity = 0
	local targetName = command:match("^" .. connectionKey .. "%s+(%S+)$")
	local targetPlayer

	if targetName then
		if targetName:lower() == "random" then
			local players = game.Players:GetPlayers()
			if #players > 0 then
				targetPlayer = players[math.random(1, #players)]
			end
		else
			targetPlayer = findPlayerByPartialName(targetName)
		end
	end

	if targetPlayer then
		playAnimation(player.Character, animationId, connectionKey)

		if teleportConnections[connectionKey] then
			teleportConnections[connectionKey]:Disconnect()
		end
		teleportConnections[connectionKey] = noxious["run service"].Heartbeat:Connect(function()
			if not targetPlayer.Character or not player.Character then
				teleportConnections[connectionKey]:Disconnect()
				teleportConnections[connectionKey] = nil
				return
			end
			teleportBehindTarget(player, targetPlayer, offset, connectionKey)
		end)
	end
end

function handleStopCommand(connectionKey)
	game.Workspace.Gravity = 196.2
	if teleportConnections[connectionKey] then
		teleportConnections[connectionKey]:Disconnect()
		teleportConnections[connectionKey] = nil
	end

	if currentAnimationTracks[connectionKey] then
		currentAnimationTracks[connectionKey]:Stop()
		currentAnimationTracks[connectionKey] = nil
	end

	local animate = noxious["character"]:FindFirstChild("Animate")		
	if animate then
		animate.Disabled = true
		for _, track in ipairs(noxious["humanoid"]:GetPlayingAnimationTracks()) do
			track:Stop()
		end
		animate.Disabled = false
	end
end

function dwbang(command, player)
	handleTeleportCommand(command, player, "18213671382", CFrame.new(0, 0, 0.8), "bang")
end

function dwunbang()
	handleStopCommand"bang"	
end

function dwhead(command, player)
	handleTeleportCommand(command, player, "17098030743", CFrame.new(0, -0.35, -1.75) * CFrame.Angles(0, math.pi, 0), "head")
end

function dwunhead()
	handleStopCommand"head"	
end

function dwhsit(command, player)
	handleTeleportCommand(command, player, "16873659196", CFrame.new(0, 4.65, -0.3), "hsit")
end

function dwunhsit()
	handleStopCommand"hsit"	
end

function dwhsit2(command, player)
	handleTeleportCommand(command, player, "75597599641198", CFrame.new(0, 3.25, -0.8), "hsit2")
end

function dwunhsit2()
	handleStopCommand"hsit2"	
end

function dwhjump(command, player)
	handleTeleportCommand(command, player, "16909854575", CFrame.new(0, 4.65, -0.3), "hjump")
end

function dwunhjsit()
	handleStopCommand"hjump"	
end

function bottombang(command, player)
	handleTeleportCommand(command, player, "91029796934547", CFrame.new(0, -0.2, -0.9), "bbang")
end

function unbottombang()
	handleStopCommand"bbang"	
end

addcommand("bang", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	dwbang("bang " .. (target or ""), noxious["local player"])
end)
addcommand("unbang", "", dwunbang)

addcommand("head", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	dwhead("head " .. (target or ""), noxious["local player"])
end)
addcommand("unhead", "", dwunhead)

addcommand("hsit", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	dwhsit("hsit " .. (target or ""), noxious["local player"])
end)
addcommand("unhsit", "", dwunhsit)

addcommand("hsit2", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	dwhsit2("hsit2 " .. (target or ""), noxious["local player"])
end)
addcommand("unhsit2", "", dwunhsit2)

addcommand("hjump", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	dwhjump("hjump " .. (target or ""), noxious["local player"])
end)
addcommand("unhjump", "", dwunhjsit)

addcommand("peg", "", function(target)
	task.spawn(unbottombang)
	task.spawn(dwunbang)
	task.spawn(dwunhead)
	task.spawn(dwunhsit)
	task.spawn(dwunhsit2)
	task.spawn(dwunhjsit) task.wait(0.2)
	bottombang("bbang " .. (target or ""), noxious["local player"])
end)
addcommand("unpeg", "", unbottombang)

-------------------------------------------------------------------------------------------------------------------------------

noxflying = false
noxflyspeed = 1
noxflycontrol = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
noxflyinputbeganconnection, noxflyinputendedconnection, noxflystepconnection = nil, nil, nil

addcommand("fly", "fly", function(flySpeed)
	execcmd("unfly")
	if noxflying then return end

	game["Workspace"]["Gravity"] = 0
	noxflying = true
	noxflyspeed = flySpeed or 1

	local ctrl
	if noxious["is mobile?"] then
		ctrl = require(noxious["local player"]:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
	end

	noxflyinputbeganconnection = noxious["user input service"].InputBegan:Connect(function(input, gpe)
		if gpe then return end
		local key = input.KeyCode
		if key == Enum.KeyCode.W then noxflycontrol.F = 1 end
		if key == Enum.KeyCode.S then noxflycontrol.B = -1 end
		if key == Enum.KeyCode.A then noxflycontrol.L = -1 end
		if key == Enum.KeyCode.D then noxflycontrol.R = 1 end
		if key == Enum.KeyCode.E then noxflycontrol.Q = 1 end
		if key == Enum.KeyCode.Q then noxflycontrol.E = -1 end
	end)

	noxflyinputendedconnection = noxious["user input service"].InputEnded:Connect(function(input)
		local key = input.KeyCode
		if key == Enum.KeyCode.W then noxflycontrol.F = 0 end
		if key == Enum.KeyCode.S then noxflycontrol.B = 0 end
		if key == Enum.KeyCode.A then noxflycontrol.L = 0 end
		if key == Enum.KeyCode.D then noxflycontrol.R = 0 end
		if key == Enum.KeyCode.E then noxflycontrol.Q = 0 end
		if key == Enum.KeyCode.Q then noxflycontrol.E = 0 end
	end)

	noxflystepconnection = noxious["run service"].RenderStepped:Connect(function()
		local camCF = workspace.CurrentCamera.CFrame
		local direction

		if noxious["is mobile?"] and ctrl then
			direction = ctrl:GetMoveVector()
			local moveVec = (
				-camCF.LookVector * direction.Z +
					camCF.RightVector * direction.X +
					Vector3.new(0, noxflycontrol.Q + noxflycontrol.E, 0)
			) * noxflyspeed * 50

			noxious["humanoid root part"].CFrame = CFrame.new(noxious["humanoid root part"].Position, noxious["humanoid root part"].Position + Vector3.new(camCF.LookVector.X, 0, camCF.LookVector.Z))
			noxious["humanoid root part"].Velocity = moveVec.Magnitude > 0 and moveVec or Vector3.zero

		else
			local flatLookVector = Vector3.new(camCF.LookVector.X, 0, camCF.LookVector.Z).Unit
			local moveVec = (
				camCF.LookVector * (noxflycontrol.F + noxflycontrol.B) +
					camCF.RightVector * (noxflycontrol.R + noxflycontrol.L) +
					Vector3.new(0, noxflycontrol.Q + noxflycontrol.E, 0)
			) * noxflyspeed * 50

			if flatLookVector.Magnitude > 0 then
				noxious["humanoid root part"].CFrame = CFrame.new(noxious["humanoid root part"].Position, noxious["humanoid root part"].Position + flatLookVector)
			end

			noxious["humanoid root part"].Velocity = moveVec.Magnitude > 0 and moveVec or Vector3.zero
		end
	end)
end)

addcommand("unfly", "unfly", function()
	if not noxflying then return end

	noxflying = false
	game["Workspace"]["Gravity"] = 196.2

	noxious["humanoid root part"].Velocity = Vector3.zero

	if noxflyinputbeganconnection then noxflyinputbeganconnection:Disconnect() end
	if noxflyinputendedconnection then noxflyinputendedconnection:Disconnect() end
	if noxflystepconnection then noxflystepconnection:Disconnect() end

	noxflycontrol = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("spin", "spin", function(speed)
	local character = noxious["character"]
	if character then
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end

		local spin = Instance.new("BodyAngularVelocity")			
		spin.Name = "Spinning"
		spin.Parent = character:WaitForChild"HumanoidRootPart"			
		spin.MaxTorque = Vector3.new(0, math.huge, 0)
		spin.AngularVelocity = Vector3.new(0, speed, 0)
	end
end)

addcommand("unspin", "unspin", function()
	local character = noxious["character"]
	if character then
		for _, v in pairs(character:WaitForChild"HumanoidRootPart":GetChildren()) do
			if v.Name == "Spinning" then
				v:Destroy()
			end
		end
	end

	local b = noxious["character"]:WaitForChild("Body", 5)
	if not b or not b:IsA("BasePart") then
		return
	end

	for _, child in ipairs(b:GetChildren()) do
		if child:IsA("AlignOrientation") or child:IsA("Attachment") then
			child:Destroy()
			execcmd("unview")
		end
	end

	b.Anchored = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enablejumping", "ejump", function()
	task.spawn(function()
		local touchGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("TouchGui")	
		local touchControlFrame = touchGui:FindFirstChild("TouchControlFrame")		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild("JumpButton")

		local touchGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("TouchGui")
		touchGui:WaitForChild"TouchControlFrame"

		local mainGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("MainGui")			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = true
		inviteButton.Visible = false
		infoButton.Visible = false
		settingsButton.Visible = false
	end)

	task.spawn(function()
		noxious["humanoid"].JumpPower = 50.145
		noxious["humanoid"].JumpHeight = 7.2

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"			
			newHumanoid.JumpPower = 50.145
			newHumanoid.JumpHeight = 7.2
		end)
	end)

	notify("Spam jumping can trigger anticheat.", 5, "warning")
end)

addcommand("disablejumping", "djump", function()
	task.spawn(function()
		local touchGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("TouchGui")	
		local touchControlFrame = touchGui:FindFirstChild("TouchControlFrame")		
		local jumpButton = touchControlFrame and touchControlFrame:FindFirstChild("JumpButton")

		local touchGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("TouchGui")
		touchGui:WaitForChild"TouchControlFrame"
		local mainGui = noxious["local player"]:WaitForChild("PlayerGui"):WaitForChild("MainGui")			
		local menu = mainGui:WaitForChild"Menu"			
		local inviteButton = menu:WaitForChild"InviteButton"			
		local infoButton = menu:WaitForChild"InfoButton"			
		local settingsButton = menu:WaitForChild"SettingsButton"

		jumpButton.Visible = false
		inviteButton.Visible = true
		infoButton.Visible = true
		settingsButton.Visible = true
	end)

	task.spawn(function()
		if not noxious["in studio"] then noxious["humanoid"].JumpHeight = 0 end

		noxious["local player"].CharacterAdded:Connect(function(newCharacter)
			local newHumanoid = newCharacter:WaitForChild"Humanoid"
			if not noxious["in studio"] then newHumanoid.JumpHeight = 0 end
		end)
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("forceuseitems", "fui", function(target)
	local players = noxious["players"]
	local replicatedStorage = game:GetService("ReplicatedStorage")
	local itemEvent = replicatedStorage:FindFirstChild("Events") and replicatedStorage.Events:FindFirstChild("ItemEvent")

	if not itemEvent then
		return
	end

	local function invokeItem(targetPlayer, slot)
		if not targetPlayer or not targetPlayer.Character then
			return
		end

		local character = targetPlayer.Character
		local inventory = character:FindFirstChild("Inventory")
		local item = inventory and inventory:FindFirstChild(slot)

		if item then
			local args = {
				[1] = character,
				[2] = item
			}
			itemEvent:InvokeServer(unpack(args))
		end
	end

	local playersList = {}
	if target == "me" then
		table.insert(playersList, players.LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(players:GetPlayers()) do
			if player ~= players.LocalPlayer then
				table.insert(playersList, player)
			end
		end
	elseif target == "all" then
		playersList = players:GetPlayers()
	elseif target == "random" then
		local allPlayers = players:GetPlayers()
		if #allPlayers > 0 then
			local randomPlayer = allPlayers[math.random(1, #allPlayers)]
			table.insert(playersList, randomPlayer)
		end
	else
		for _, player in ipairs(players:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(playersList, player)
				break
			end
		end
	end

	if #playersList == 0 then
		return
	end

	for _, targetPlayer in ipairs(playersList) do
		for _, slot in ipairs({ "Slot1", "Slot2", "Slot3" }) do
			invokeItem(targetPlayer, slot)
		end
	end
end)

local loopForceUseItemsTasks = {}

function resolveTargets(target)
	local players = noxious["players"]
	local targets = {}

	if target == "me" then
		table.insert(targets, players.LocalPlayer)
	elseif target == "others" then
		for _, player in ipairs(players:GetPlayers()) do
			if player ~= players.LocalPlayer then
				table.insert(targets, player)
			end
		end
	elseif target == "all" then
		targets = players:GetPlayers()
	elseif target == "random" then
		local allPlayers = players:GetPlayers()
		if #allPlayers > 0 then
			local randomPlayer = allPlayers[math.random(1, #allPlayers)]
			table.insert(targets, randomPlayer)
		end
	else
		for _, player in ipairs(players:GetPlayers()) do
			if player.Name:lower():find(target:lower(), 1, true) then
				table.insert(targets, player)
				break
			end
		end
	end

	return targets
end

addcommand("enableloopforceuseitems", "elfui", function(target, delay)
	local function forceUseItems(target)
		local players = noxious["players"]
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local itemEvent = replicatedStorage:FindFirstChild("Events") and replicatedStorage.Events:FindFirstChild("ItemEvent")

		if not itemEvent then
			return
		end

		local function invokeItem(targetPlayer, slot)
			if not targetPlayer or not targetPlayer.Character then
				return
			end

			local character = targetPlayer.Character
			local inventory = character:FindFirstChild("Inventory")
			local item = inventory and inventory:FindFirstChild(slot)

			if item then
				local args = {
					[1] = character,
					[2] = item
				}
				itemEvent:InvokeServer(unpack(args))
			end
		end

		local playersList = {}
		if target == "me" then
			table.insert(playersList, players.LocalPlayer)
		elseif target == "others" then
			for _, player in ipairs(players:GetPlayers()) do
				if player ~= players.LocalPlayer then
					table.insert(playersList, player)
				end
			end
		elseif target == "all" then
			playersList = players:GetPlayers()
		elseif target == "random" then
			local allPlayers = players:GetPlayers()
			if #allPlayers > 0 then
				local randomPlayer = allPlayers[math.random(1, #allPlayers)]
				table.insert(playersList, randomPlayer)
			end
		else
			for _, player in ipairs(players:GetPlayers()) do
				if player.Name:lower():find(target:lower(), 1, true) then
					table.insert(playersList, player)
					break
				end
			end
		end

		if #playersList == 0 then
			return
		end

		for _, targetPlayer in ipairs(playersList) do
			for _, slot in ipairs({ "Slot1", "Slot2", "Slot3" }) do
				invokeItem(targetPlayer, slot)
			end
		end
	end

	local function loopForceUse(targetPlayer)
		while loopForceUseItemsTasks[targetPlayer] do
			forceUseItems(targetPlayer.Name)
			task.wait(delay)
		end
	end

	local targets = resolveTargets(target)

	if #targets == 0 then
		return
	end

	for _, targetPlayer in ipairs(targets) do
		if not loopForceUseItemsTasks[targetPlayer] then
			loopForceUseItemsTasks[targetPlayer] = true
			task.spawn(function()
				loopForceUse(targetPlayer)
			end)
		end
	end
end)

addcommand("disableloopforceuseitems", "dlfui", function(target)
	local targets = resolveTargets(target)

	if #targets == 0 then
		return
	end

	for _, targetPlayer in ipairs(targets) do
		loopForceUseItemsTasks[targetPlayer] = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("predictserverposition", "psp", function()
	if not Game:IsLoaded() then Game.Loaded:Wait() end

	--// Game - Services \\--
	local Players = Game:GetService("Players")
	local RunService = Game:GetService("RunService")
	local Stats = Game:GetService("Stats")

	--// Stats - Items \\--
	local NetworkStats = Stats:FindFirstChild("Network", false) or Stats:WaitForChild("Network", 60)
	local ServerStatsItem = NetworkStats:FindFirstChild("ServerStatsItem", false) or NetworkStats:WaitForChild("ServerStatsItem", 60)
	local DataPing = ServerStatsItem:FindFirstChild("Data Ping", false) or ServerStatsItem:WaitForChild("Data Ping", 60)

	--// Players - LocalPlayer \\-- 
	local LocalPlayer = Players.LocalPlayer
	local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
	local LocalHumanoid = LocalCharacter:FindFirstChildWhichIsA("Humanoid", false) or LocalCharacter:WaitForChild("Humanoid", 60)
	local LocalRootPart = LocalHumanoid and (LocalHumanoid.RootPart or LocalCharacter:WaitForChild("HumanoidRootPart", 60))
	local LocalCharacterClone = nil

	local PingDivisionFactor = 500 -- 500 for the server and 1000 for the client
	local Connections = {}
	local PoseHistory = {}

	--// Creates A LocalCharacter Clone | CreateCharacterClone - Function \\--
	local function CreateCharacterClone()
		if LocalCharacterClone then
			LocalCharacterClone:Destroy()
		end

		task.wait(1)

		LocalCharacter.Archivable = true
		LocalCharacterClone = LocalCharacter:Clone()
		LocalCharacterClone.Name = LocalCharacter.Name
		LocalCharacterClone.Parent = LocalCharacter.Parent
		LocalCharacter.Archivable = false

		-- Disable Motor6Ds
		for _, descendant in LocalCharacterClone:GetDescendants() do
			if descendant:IsA("Motor6D") then
				descendant.Enabled = false
			end
		end

		-- Remove any BillboardGuis
		for _, descendant in LocalCharacterClone:GetDescendants() do
			if descendant:IsA("BillboardGui") then
				descendant:Destroy()
			end
		end
	end

	--// Records LocalCharacter Body Part Positions | RecordPose - Function \\--
	local function RecordPose(DeltaTime)
		if not LocalCharacter or not LocalRootPart then return end
		local CurrentTime = tick()
		local BodyPartsCFrames = {}

		for _, Descendant in LocalCharacter:GetDescendants() do
			if not Descendant:IsA("BasePart") or Descendant == LocalRootPart then continue end
			BodyPartsCFrames[Descendant.Name] = LocalRootPart.CFrame:ToObjectSpace(Descendant.CFrame)
		end

		table.insert(PoseHistory, {
			Time = CurrentTime,
			Pivot = LocalCharacter:GetPivot(),
			BodyPartsCFrames = BodyPartsCFrames
		})

		while #PoseHistory > 0 and (CurrentTime - PoseHistory[1].Time) > (1 / DeltaTime) do
			table.remove(PoseHistory, 1)
		end
	end

	--// Updates LocalCharacter Clone Position And Body Parts | UpdateClonePose - Function \\--
	local function UpdateClonePose()
		if not (LocalCharacterClone and LocalCharacter) then return end

		local CurrentTime = tick()
		local PingDelay = math.clamp(DataPing:GetValue() / PingDivisionFactor, 0, math.huge)
		local TargetTime = CurrentTime - PingDelay
		local TargetPose = nil

		for Index = #PoseHistory, 1, -1 do
			if PoseHistory[Index].Time <= TargetTime then
				TargetPose = PoseHistory[Index]
				break
			end
		end

		if TargetPose then
			LocalCharacterClone:PivotTo(TargetPose.Pivot)

			for _, Child in LocalCharacterClone:GetChildren() do
				if not Child:IsA("BasePart") or Child == LocalCharacterClone.Humanoid.RootPart then continue end
				local RelativeCFrame = TargetPose.BodyPartsCFrames[Child.Name]
				if not RelativeCFrame then continue end
				Child.CFrame = LocalCharacterClone.Humanoid.RootPart.CFrame * RelativeCFrame
			end
		end
	end

	--// Predicts LocalPlayer Character Server Position | RunService - BindToRenderStep \\--
	RunService:BindToRenderStep("Server Position Predictor", 1, function(DeltaTime)
		RecordPose(DeltaTime)
		UpdateClonePose()

		if LocalCharacterClone then
			LocalCharacterClone.Humanoid.DisplayDistanceType = "None"
			LocalCharacterClone.Humanoid.PlatformStand = true

			for _, Animation in LocalCharacterClone.Humanoid:GetPlayingAnimationTracks() do
				Animation:Stop()
			end

			for _, Descendant in LocalCharacterClone:GetDescendants() do
				if Descendant:IsA("BasePart") then
					Descendant.CanCollide = false
					Descendant.CanTouch = false
					Descendant.CanQuery = false
					Descendant.Anchored = false
					if Descendant.Transparency ~= 1 then Descendant.Transparency = 0.5 end
				elseif Descendant:IsA("Script") or Descendant:IsA("LocalScript") or Descendant:IsA("ForceField") then
					Descendant:Destroy()
				end
			end
		end
	end)

	--// LocalPlayer Respawn Handler | LocalPlayer - CharacterAdded \\--
	LocalPlayer.CharacterAdded:Connect(function(Character)
		LocalCharacter = Character
		LocalHumanoid = LocalCharacter:FindFirstChildWhichIsA("Humanoid", false) or LocalCharacter:WaitForChild("Humanoid", 60)
		LocalRootPart = LocalHumanoid.RootPart or LocalCharacter:WaitForChild("HumanoidRootPart", 60)
		CreateCharacterClone()
	end)

	--// LocalPlayer Character Remover Handler | LocalPlayer - CharacterRemoving \\--
	LocalPlayer.CharacterRemoving:Connect(function()
		LocalCharacter = nil
		LocalHumanoid = nil
		LocalRootPart = nil
		if LocalCharacterClone then
			LocalCharacterClone:Destroy()
			LocalCharacterClone = nil
		end
		PoseHistory = {}
	end)

	CreateCharacterClone()
end)

-------------------------------------------------------------------------------------------------------------------------------

local clonedModels = {}
local animationCache = {}

addcommand("clonestack", "cstack", function(clones)
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")

	local localPlayer = Players.LocalPlayer

	local stepOffset = CFrame.new(0, 2.9, -0.2)
	local extraYOffset = 0.8
	local extraZOffset = -0.2

	local clonesPerModel = tonumber(clones)
	local animationId = "rbxassetid://16873659196"

	local function getLocalHead()
		local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
		return character:WaitForChild("Head", 5)
	end

	local function playAnimation(model)
		if animationCache[model] then return end
		animationCache[model] = true

		local humanoid = model:FindFirstChildOfClass("Humanoid")
		if humanoid then
			local anim = Instance.new("Animation")
			anim.AnimationId = animationId
			local track = humanoid:LoadAnimation(anim)
			track:Play()
		end
	end

	local function removeBillboards(model)
		for _, descendant in ipairs(model:GetDescendants()) do
			if descendant:IsA("BillboardGui") then
				descendant:Destroy()
			end
		end
	end


	local function cloneCharacters()
		local sourceCharacter = localPlayer.Character or localPlayer.CharacterAdded:Wait()
		for i = 1, clonesPerModel do
			local clone = sourceCharacter:Clone()
			removeBillboards(clone)
			clone.Parent = workspace
			table.insert(clonedModels, clone)
		end
	end

	task.spawn(cloneCharacters)

	RunService.RenderStepped:Connect(function()
		local head = getLocalHead()
		if not head then return end

		for i, model in ipairs(clonedModels) do
			local root = model:FindFirstChild("HumanoidRootPart")
			if root then
				local totalOffset = CFrame.new()
				for j = 1, i do
					totalOffset = totalOffset * stepOffset
				end

				local ySpacing = (i > 1) and CFrame.new(0, (i - 1) * extraYOffset, (i - 1) * extraZOffset) or CFrame.new()

				root.CFrame = head.CFrame * totalOffset * ySpacing
				playAnimation(model)
			end
		end
	end)
end)

addcommand("unclonestack", "uncstack", function()
	for _, model in ipairs(clonedModels) do
		if model and model.Parent then
			model:Destroy()
		end
	end
	table.clear(clonedModels)
	table.clear(animationCache)
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("fling", "fling", function(user)
	if cannotruninlobby() then return end
	if cannotruninrun() then return end

	local Players = noxious["players"]
	local Player = Players.LocalPlayer
	local Targets = {user}

	local AllBool = false

	local GetPlayer = function(Name)
		Name = Name:lower()
		if Name == "all" or Name == "others" then
			AllBool = true
			return
		elseif Name == "random" then
			local GetPlayers = Players:GetPlayers()
			if table.find(GetPlayers, Player) then table.remove(GetPlayers, table.find(GetPlayers, Player)) end
			return GetPlayers[math.random(#GetPlayers)]
		elseif Name ~= "random" and Name ~= "all" and Name ~= "others" then
			for _, x in next, Players:GetPlayers() do
				if x ~= Player then
					if x.Name:lower():match("^" .. Name) then
						return x
					elseif x.DisplayName:lower():match("^" .. Name) then
						return x
					end
				end
			end
		else
			return
		end
	end

	local SkidFling = function(TargetPlayer)
		local Character = Player.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")
		local RootPart = Humanoid and Humanoid.RootPart

		local TCharacter = TargetPlayer.Character
		local THumanoid
		local TRootPart
		local THead
		local Accessory
		local Handle

		if TCharacter:FindFirstChildOfClass("Humanoid") then
			THumanoid = TCharacter:FindFirstChildOfClass("Humanoid")
		end
		if THumanoid and THumanoid.RootPart then
			TRootPart = THumanoid.RootPart
		end
		if TCharacter:FindFirstChild("Head") then
			THead = TCharacter.Head
		end
		if TCharacter:FindFirstChildOfClass("Accessory") then
			Accessory = TCharacter:FindFirstChildOfClass("Accessory")
		end
		if Accessory and Accessory:FindFirstChild("Handle") then
			Handle = Accessory.Handle
		end

		if Character and Humanoid and RootPart then
			if RootPart.Velocity.Magnitude < 50 then
				getgenv().OldPos = RootPart.CFrame
			end
			if THumanoid and THumanoid.Sit and not AllBool then
			end
			if THead then
				workspace.CurrentCamera.CameraSubject = THead
			elseif not THead and Handle then
				workspace.CurrentCamera.CameraSubject = Handle
			elseif THumanoid and TRootPart then
				workspace.CurrentCamera.CameraSubject = THumanoid
			end
			if not TCharacter:FindFirstChildWhichIsA("BasePart") then
				return
			end

			local FPos = function(BasePart, Pos, Ang)
				RootPart.CFrame = CFrame.new(BasePart.Position) * Pos * Ang
				Character:SetPrimaryPartCFrame(CFrame.new(BasePart.Position) * Pos * Ang)
				RootPart.Velocity = Vector3.new(9e7, 9e7 * 10, 9e7)
				RootPart.RotVelocity = Vector3.new(9e8, 9e8, 9e8)
			end

			local SFBasePart = function(BasePart)
				local TimeToWait = 2
				local Time = tick()
				local Angle = 0

				repeat
					if RootPart and THumanoid then
						if BasePart.Velocity.Magnitude < 50 then
							Angle = Angle + 100

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(2.25, 1.5, -2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(-2.25, -1.5, 2.25) + THumanoid.MoveDirection * BasePart.Velocity.Magnitude / 1.25, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0) + THumanoid.MoveDirection, CFrame.Angles(math.rad(Angle), 0, 0))
							task.wait()
						else
							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -THumanoid.WalkSpeed), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, THumanoid.WalkSpeed), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, -TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, 1.5, TRootPart.Velocity.Magnitude / 1.25), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(math.rad(-90), 0, 0))
							task.wait()

							FPos(BasePart, CFrame.new(0, -1.5, 0), CFrame.Angles(0, 0, 0))
							task.wait()
						end
					else
						break
					end
				until BasePart.Velocity.Magnitude > 500 or BasePart.Parent ~= TargetPlayer.Character or TargetPlayer.Parent ~= Players or TargetPlayer.Character ~= TCharacter or THumanoid.Sit or Humanoid.Health <= 0 or tick() > Time + TimeToWait
			end

			workspace.FallenPartsDestroyHeight = 0 / 0

			local BV = Instance.new("BodyVelocity")
			BV.Name = "EpixVel"
			BV.Parent = RootPart
			BV.Velocity = Vector3.new(9e8, 9e8, 9e8)
			BV.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)

			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)

			if TRootPart then
				SFBasePart(TRootPart)
			elseif THead then
				SFBasePart(THead)
			elseif Accessory and Handle then
				SFBasePart(Handle)
			end

			BV:Destroy()
			Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
			workspace.CurrentCamera.CameraSubject = Humanoid

			repeat
				RootPart.CFrame = getgenv().OldPos * CFrame.new(0, .5, 0)
				Character:SetPrimaryPartCFrame(getgenv().OldPos * CFrame.new(0, .5, 0))
				Humanoid:ChangeState("GettingUp")
				table.foreach(Character:GetChildren(), function(_, x)
					if x:IsA("BasePart") then
						x.Velocity, x.RotVelocity = Vector3.new(), Vector3.new()
					end
				end)
				task.wait()
			until (RootPart.Position - getgenv().OldPos.p).Magnitude < 25
			workspace.FallenPartsDestroyHeight = getgenv().FPDH
		end
	end

	getgenv().Welcome = true
	if Targets[1] then
		for _, x in next, Targets do
			GetPlayer(x)
		end
	else
		return
	end

	if AllBool then
		for _, x in next, Players:GetPlayers() do
			SkidFling(x)
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("exitdeath", "ed", function()
	if noxious["humanoid"] then
		noxious["humanoid"].Died:Connect(function()
			game:Shutdown()
		end)
	end
end)

addcommand("rejoindeath", "rjd", function()
	if noxious["humanoid"] then
		noxious["humanoid"].Died:Connect(function()
			if noxiousautofarmrunning or dekaautofarmrunning then execcmd("sshop") else execcmd("jl") end
		end)
	end
end)

addcommand("rerundeath", "rrund", function()
	if noxious["humanoid"] then
		noxious["humanoid"].Died:Connect(function()
			execcmd("rerun")
		end)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

walkflinging = false

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

addcommand("enablewalkfling", "ewf", function()
	local humanoid = noxious["character"]:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		humanoid.Died:Connect(function()
			execcmd("disablewalkfling")
		end)
	end

	local walkflinging = true
	repeat noxious["run service"].Heartbeat:Wait()
		local character = noxious["character"]
		local root = getRoot(character)
		local vel, movel = nil, 0.1

		while not (character and character.Parent and root and root.Parent) do
			noxious["run service"].Heartbeat:Wait()
			character = noxious["character"]
			root = getRoot(character)
		end

		vel = root.Velocity
		root.Velocity = vel * 1000000 + Vector3.new(0, 1000000, 0)

		noxious["run service"].RenderStepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel
		end

		noxious["run service"].Stepped:Wait()
		if character and character.Parent and root and root.Parent then
			root.Velocity = vel + Vector3.new(0, movel, 0)
			movel = movel * -1
		end
	until walkflinging == false
end)

addcommand("disablewalkfling", "dwf", function()
	walkflinging = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("becomecharacter", "bchar", function()
	if inrun() then return end
	local Players = game:GetService("Players")		
	local ReplicatedStorage = game:GetService("ReplicatedStorage")		
	local speaker = Players.LocalPlayer

	local args = {
		[1] = false
	}
	ReplicatedStorage.Events.UpdateSpawnedIn:FireServer(unpack(args))

	local character = speaker.Character
	local savedCFrame

	if character then
		local rootPart = character:FindFirstChild("HumanoidRootPart")			
		if rootPart then
			savedCFrame = rootPart.CFrame
		end
	end

	if character then
		local humanoid = character:FindFirstChildWhichIsA("Humanoid")			
		if humanoid then
			humanoid.Health = 0
		end
	end

	speaker.CharacterAdded:Wait()
	local newCharacter = speaker.Character

	if not newCharacter then return end

	local function setupHumanoid()
		local Cam = workspace.CurrentCamera
		local Pos = Cam.CFrame
		local Char = newCharacter
		local Human = Char:FindFirstChildWhichIsA("Humanoid")

		if not Human then return end

		local nHuman = Human:Clone()
		nHuman.Parent = Char
		speaker.Character = nil

		nHuman.BreakJointsOnDeath = true
		nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None

		Human:Destroy()
		speaker.Character = Char
		Cam.CameraSubject = nHuman
		Cam.CFrame = Pos

		local rootPart = Char:FindFirstChild("HumanoidRootPart")			
		if rootPart and savedCFrame then
			rootPart.CFrame = savedCFrame
		end

		local animateScript = Char:FindFirstChild("Animate")			
		if animateScript then
			animateScript.Disabled = true
			task.wait()
			animateScript.Disabled = false
		end

		nHuman.Health = nHuman.MaxHealth
	end

	newCharacter:WaitForChild("Humanoid", 5)
	setupHumanoid()

	task.wait(0)

	local Cam = workspace.CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, task.wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		task.wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth

	task.wait(1)

	savedCFrame = nil
end)

-------------------------------------------------------------------------------------------------------------------------------

local Players = noxious["players"]
local player = Players.LocalPlayer
local humanoid
local animationTracks = {}
local loopStates = {}
local config
local character

function setupAnimations(char)
	character = char
	animationTracks = {}
	loopStates = {}
	humanoid = character:WaitForChild("Humanoid")

	if not noxious["in studio"] then
		while true do
			config = character:FindFirstChild("Animations")
			if config then
				for _, anim in ipairs(config:GetChildren()) do
					if anim:IsA("Animation") then
						local track = humanoid:LoadAnimation(anim)
						animationTracks[anim.Name] = track
						loopStates[anim.Name] = false
						track:AdjustWeight(10)
					end
				end
				break
			end
			task.wait(0.25)
		end
	end
end

function monitorCharacter()
	while true do
		local inGameFolder = workspace:FindFirstChild("InGamePlayers")
		if inGameFolder then
			local inGameChar = inGameFolder:FindFirstChild(player.Name)
			if inGameChar then
				setupAnimations(inGameChar)
				break
			end
		end

		if player.Character then
			setupAnimations(player.Character)
			break
		end

		task.wait(0.5)
	end
end

task.spawn(monitorCharacter)

player.CharacterAdded:Connect(function(char)
	task.spawn(function()
		task.wait(0.1)
		monitorCharacter()
	end)
end)

function enableAnimationLoop(animName)
	resetanims()
	local track = animationTracks[animName]
	if track and not loopStates[animName] then
		track.Looped = true
		track:Play()
		loopStates[animName] = true
	end
end

function disableAnimationLoop(animName)
	local track = animationTracks[animName]
	if track and loopStates[animName] then
		track.Looped = false
		track:Stop()
		loopStates[animName] = false
	end
end

function disableAllAnimationLoops()
	for animName, track in pairs(animationTracks) do
		if loopStates[animName] then
			track.Looped = false
			track:Stop()
			loopStates[animName] = false
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local movementcheck
local animpacktracking = {}
local lastmovementstate = {
	moving = false,
	sprinting = false,
	decoding = false
}

local basews = 16
local sprintmultiplier = 1.3

function cleananim(name)
	if animpacktracking[name] then
		if animpacktracking[name].IsPlaying then
			animpacktracking[name]:Stop(0.1)
		end
		animpacktracking[name]:Destroy()
		animpacktracking[name] = nil
	end
end

function changeanim(name, id)
	if not config or not character then return end

	pauseanims()

	local animation = config:FindFirstChild(name)
	if animation and animation:IsA("Animation") then
		cleananim(name)

		local newId = "rbxassetid://" .. tostring(id)
		animation.AnimationId = newId

		local newTrack = humanoid:LoadAnimation(animation)
		newTrack:AdjustWeight(999)
		animpacktracking[name] = newTrack
		loopStates[name] = false

		checkthenapplyanims(true)

		if movementcheck then 
			movementcheck:Disconnect() 
		end

		movementcheck = noxious["run service"].Heartbeat:Connect(function()
			checkthenapplyanims()
		end)
	end
end

function calcspeed()
	if not humanoid then return 2 end

	local speedRatio = humanoid.WalkSpeed / basews

	return math.max(1.1, speedRatio * sprintmultiplier)
end

function checkthenapplyanims(forceupd)
	if not character or not humanoid or not humanoid.RootPart then return end

	local velocity = humanoid.RootPart.Velocity
	local isMoving = velocity.Magnitude > 1
	local decoding = character:FindFirstChild("Decoding")
	local stats = character:FindFirstChild("Stats")
	local sprinting = stats and stats:FindFirstChild("Sprinting") and stats.Sprinting.Value

	local stateChanged = forceupd or
		(isMoving ~= lastmovementstate.moving) or
		(sprinting ~= lastmovementstate.sprinting) or
		(decoding and decoding.Value ~= lastmovementstate.decoding)

	if not stateChanged then return end

	local previousState = {
		moving = lastmovementstate.moving,
		sprinting = lastmovementstate.sprinting,
		decoding = lastmovementstate.decoding
	}

	lastmovementstate.moving = isMoving
	lastmovementstate.sprinting = sprinting
	lastmovementstate.decoding = decoding and decoding.Value

	local function transitionanim(oldAnim, newAnim, speed)
		if oldAnim ~= newAnim and animpacktracking[oldAnim] then
			if animpacktracking[oldAnim].IsPlaying then
				animpacktracking[oldAnim]:Stop(0.1)
			end
		end

		if newAnim and animpacktracking[newAnim] then
			if not animpacktracking[newAnim].IsPlaying then
				animpacktracking[newAnim]:Play(0.1)
				if speed then 
					local finalSpeed = (newAnim == "Walk" and sprinting) and calcspeed() or speed
					animpacktracking[newAnim]:AdjustSpeed(finalSpeed)
				end
			elseif speed then
				local finalSpeed = (newAnim == "Walk" and sprinting) and calcspeed() or speed
				animpacktracking[newAnim]:AdjustSpeed(finalSpeed)
			end
		end
	end

	if animpacktracking["Decode"] then
		if decoding and decoding.Value then
			transitionanim(nil, "Decode", 1)
			return
		else
			transitionanim("Decode", nil)
		end
	end

	if isMoving then
		if sprinting then
			transitionanim("Idle", nil)
			transitionanim("Walk", "Walk", calcspeed())
			transitionanim(nil, "Run", 1)
		else
			transitionanim("Idle", nil)
			transitionanim("Run", nil)
			transitionanim(nil, "Walk", 1)
		end
	else
		transitionanim("Walk", nil)
		transitionanim("Run", nil)
		transitionanim(nil, "Idle", 1)
	end
end

function applyanimpack(toon)
	if not toon then return end
	resetanimpack()
	toon = string.lower(toon)

	if toon == "therian" then
		if cannotruninlobby() then return end
		notify("Therian animations equipped.", 5)
		changeanim("Run", 17649190982)

	elseif toon == "boxten" then
		notify("Boxten's animations equipped.", 5)
		changeanim("Walk", 16987891441)
		changeanim("Decode", 16987946868)
		changeanim("Idle", 16987798588)
	elseif toon == "blot" then
		notify("Blot's animations equipped.", 5)
		changeanim("Run", 105628011122110)
		changeanim("Walk", 76703698283994)
		changeanim("Decode", 116500889072011)
		changeanim("Idle", 73993990162132)
	elseif toon == "brightney" then
		notify("Brightney's animations equipped.", 5)
		changeanim("Walk", 17267881920)
		changeanim("Decode", 17268071696)
		changeanim("Idle", 17266012992)
	elseif toon == "connie" then
		notify("Connie's animations equipped.", 5)
		changeanim("Walk", 71819089910283)
		changeanim("Decode", 133500601575506)
		changeanim("Idle", 96412679901902)
	elseif toon == "cosmo" then
		notify("Cosmo's animations equipped.", 5)
		changeanim("Walk", 18608782689)
		changeanim("Decode", 18609287742)
		changeanim("Idle", 18608700264)
	elseif toon == "dandy" then
		notify("Dandy's animations equipped.", 5)
		changeanim("Walk", 16496812530)
		changeanim("Decode", 16496852675)
		changeanim("Idle", 16496520991)
	elseif toon == "finn" then
		notify("Finn's animations equipped.", 5)
		changeanim("Walk", 18717500470)
		changeanim("Decode", 18718380478)
		changeanim("Idle", 18717443931)
	elseif toon == "flutter" then
		notify("Flutter's animations equipped.", 5)
		changeanim("Walk", 18226261062)
		changeanim("Decode", 18226338406)
		changeanim("Idle", 18226198149)
	elseif toon == "gigi" then
		notify("Gigi's animations equipped.", 5)
		changeanim("Walk", 79372488497037)
		changeanim("Decode", 88765331625241)
		changeanim("Idle", 131680997351874)
	elseif toon == "glisten" then
		notify("Glisten's animations equipped.", 5)
		changeanim("Walk", 18789278688)
		changeanim("Decode", 18789412964)
		changeanim("Idle", 18789173875)
	elseif toon == "goob" then
		notify("Goob's animations equipped.", 5)
		changeanim("Walk", 17231273641)
		changeanim("Decode", 16987946868)
		changeanim("Idle", 17231779680)
	elseif toon == "looey" then
		notify("Looey's animations equipped.", 5)
		changeanim("Walk", 124245470232056)
		changeanim("Decode", 124702329627784)
		changeanim("Run", 131545440842534)
		changeanim("Idle", 78197156369403)
	elseif toon == "poppy" then
		notify("Poppy's animations equipped.", 5)
		changeanim("Walk", 16409449646)
		changeanim("Decode", 16205888741)
		changeanim("Idle", 16205089554)
	elseif toon == "razzleanddazzle" or toon == "rnd" or toon == "razzledazzle" then
		notify("Razzle & Dazzle's animations equipped.", 5)
		changeanim("Walk", 17451039864)
		changeanim("Decode", 17452101828)
		changeanim("Idle", 17450844457)
	elseif toon == "rodger" then
		notify("Rodger's animations equipped.", 5)
		changeanim("Walk", 17097949440)
		changeanim("Decode", 17098030743)
		changeanim("Idle", 17097874814)
	elseif toon == "scraps" then
		notify("Scraps' animations equipped.", 5)
		changeanim("Walk", 17554165839)
		changeanim("Decode", 17559713038)
		changeanim("Idle", 17553394893)
	elseif toon == "shrimpo" then
		notify("Shrimpo's animations equipped.", 5)
		changeanim("Walk", 17561196171)
		changeanim("Decode", 17561277632)
		changeanim("Idle", 17561045485)
	elseif toon == "teagan" then
		notify("Teagan's animations equipped.", 5)
		changeanim("Walk", 18183710195)
		changeanim("Decode", 18184069793)
		changeanim("Idle", 18183602038)
	elseif toon == "tisha" then
		notify("Tisha's animations equipped.", 5)
		changeanim("Walk", 18152903980)
		changeanim("Decode", 18153373004)
		changeanim("Idle", 18152665882)
	elseif toon == "toodles" then
		notify("Toodles' animations equipped.", 5)
		changeanim("Walk", 17504345651)
		changeanim("Decode", 17506059864)
		changeanim("Idle", 17504197216)
	elseif toon == "yatta" then
		notify("Yatta's animations equipped.", 5)
		changeanim("Walk", 113493276030799)
		changeanim("Decode", 81195350931735)
		changeanim("Run", 121887597056169)
		changeanim("Idle", 94672939370149)
	elseif toon == "astro" then
		notify("Astro's animations equipped.", 5)
		changeanim("Walk", 17477562502)
		changeanim("Decode", 17485172105)
		changeanim("Idle", 17477484184)
	elseif toon == "bassie" then
		notify("Bassie's animations equipped.", 5)
		changeanim("Walk", 132205223700091)
		changeanim("Decode", 119621623204298)
		changeanim("Run", 10108152024909)
		changeanim("Idle", 113260830809862)
	elseif toon == "bobette" then
		notify("Bobette's animations equipped.", 5)
		changeanim("Walk", 108971895466704)
		changeanim("Decode", 72425276030716)
		changeanim("Run", 98111731270842)
		changeanim("Idle", 121960921916341)
	elseif toon == "pebble" or toon == "pebbles" then
		notify("Pebble's animations equipped.", 5)
		changeanim("Walk", 108621188713265)
		changeanim("Decode", 130124125865280)
		changeanim("Idle", 94925084807494)
	elseif toon == "shelly" then
		notify("Shelly's animations equipped.", 5)
		changeanim("Walk", 18199493442)
		changeanim("Decode", 18199567889)
		changeanim("Idle", 18199284470)
	elseif toon == "sprout" then
		notify("Sprout's animations equipped.", 5)
		changeanim("Walk", 18578948869)
		changeanim("Decode", 18579081668)
		changeanim("Idle", 18555568169)
	elseif toon == "vee" then
		notify("Vee's animations equipped.", 5)
		changeanim("Walk", 97897738117999)
		changeanim("Run", 72678141337718)
		changeanim("Decode", 106108686337103)
		changeanim("Idle", 87154718270671)
	elseif toon == "ovee" then
		notify("Vee's old animations equipped.", 5)
		changeanim("Walk", 17294160873)
		changeanim("Decode", 17308901433)
		changeanim("Idle", 17293962722)
	elseif toon == "eggson" then
		notify("Eggson's animations equipped.", 5)
		changeanim("Walk", 74613594041941)
		changeanim("Decode", 71945598652324)
		changeanim("Run", 140018826183412)
		changeanim("Idle", 129628437580538)
	elseif toon == "flyte" then
		notify("Flyte's animations equipped.", 5)
		changeanim("Walk", 132121208809384)
		changeanim("Decode", 80233910746374)
		changeanim("Run", 98768698423249)
		changeanim("Idle", 71907669576411)
	elseif toon == "cocoa" then
		notify("Cocoa's animations equipped.", 5)
		changeanim("Walk", 113856775888112)
		changeanim("Decode", 1157632328364)
		changeanim("Run", 112748305182855)
		changeanim("Idle", 128300795612869)
	elseif toon == "coal" then
		notify("Coal's animations equipped.", 5)
		changeanim("Walk", 116657137600663)
		changeanim("Decode", 128454844417288)
		changeanim("Run", 75018575525754)
		changeanim("Idle", 131700177149552)
	elseif toon == "ginger" then
		notify("Ginger's animations equipped.", 5)
		changeanim("Walk", 79443874564334)
		changeanim("Decode", 76382478901588)
		changeanim("Run", 73716601731008)
		changeanim("Idle", 85220873784968)
	elseif toon == "rudie" then
		notify("Rudie's animations equipped.", 5)
		changeanim("Walk", 89752421989409)
		changeanim("Decode", 95207747046768)
		changeanim("Run", 139414767968411)
		changeanim("Idle", 80667484406688)

	elseif toon == "tboxten" then
		notify("Twisted Boxten's animations equipped.", 5)
		changeanim("Walk", 17173980406)
		changeanim("Run", 17174260770)
		changeanim("Idle", 17173910857)
	elseif toon == "tblot" then
		notify("Twisted Blot's animations equipped.", 5)
		changeanim("Walk", 136494123759902)
		changeanim("Run", 102718775893345)
		changeanim("Idle", 111801801891099)
	elseif toon == "tbrightney" then
		notify("Twisted Brightney's animations equipped.", 5)
		changeanim("Walk", 17638574879)
		changeanim("Run", 17638734882)
		changeanim("Idle", 17638507046)
	elseif toon == "tconnie" then
		notify("Twisted Connie's animations equipped.", 5)
		changeanim("Walk", 73609609622544)
		changeanim("Run", 81505996760447)
		changeanim("Idle", 140696695675999)
	elseif toon == "tosmo" then
		notify("Twisted Cosmo's animations equipped.", 5)
		changeanim("Walk", 18682136751)
		changeanim("Run", 18682530957)
		changeanim("Idle", 18682187542)
	elseif toon == "tdandy" then
		notify("Twisted Dandy's animations equipped.", 5)
		changeanim("Walk", 17515542297)
		changeanim("Run", 17516071317)
		changeanim("Idle", 17515694121)
	elseif toon == "tfinn" then
		notify("Twisted Finn's animations equipped.", 5)
		changeanim("Walk", 18740834988)
		changeanim("Run", 18741061111)
		changeanim("Idle", 18740791780)
	elseif toon == "tflutter" then
		notify("Twisted Flutter's animations equipped.", 5)
		changeanim("Walk", 18226261062)
		changeanim("Run", 18239928544)
		changeanim("Idle", 18226198149)
	elseif toon == "tgigi" then
		notify("Twisted Gigi's animations equipped.", 5)
		changeanim("Walk", 112750898606111)
		changeanim("Run", 124691439016513)
		changeanim("Idle", 138817858272409)
	elseif toon == "tglisten" then
		notify("Twisted Glisten's animations equipped.", 5)
		changeanim("Walk", 18821107251)
		changeanim("Run", 18833020404)		
		changeanim("Idle", 18820870445)
	elseif toon == "tgoob" then
		notify("Twisted Goob's animations equipped.", 5)
		changeanim("Walk", 17231273641)
		changeanim("Run", 140018826183412)
		changeanim("Idle", 17231779680)
	elseif toon == "tlooey" then
		notify("Twisted Looey's animations equipped.", 5)
		changeanim("Walk", 100370803921306)
		changeanim("Run", 131136472849981)
		changeanim("Idle", 112606771950932)
	elseif toon == "tpoppy" then
		notify("Twisted Poppy's animations equipped.", 5)
		changeanim("Walk", 17000195059)
		changeanim("Run", 17000654428)
		changeanim("Idle", 17000127805)
	elseif toon == "trazzleanddazzle" or toon == "trnd" or toon == "trazzledazzle" then
		notify("Twisted azzle & Dazzle's animations equipped.", 5)
		changeanim("Walk", 18987891015)
		changeanim("Run", 18987897664)
		changeanim("Idle", 18987852729)
	elseif toon == "trodger" then
		notify("Twisted Rodger's animations equipped.", 5)
		changeanim("Walk", 18988824994)
		changeanim("Run", 18988830155)
		changeanim("Idle", 17108594427)
	elseif toon == "tscraps" then
		notify("Twisted Scraps' animations equipped.", 5)
		changeanim("Walk", 17573173656)
		changeanim("Run", 17574064271)
		changeanim("Idle", 17573097161)
	elseif toon == "tshrimpo" then
		notify("Twisted Shrimpo's animations equipped.", 5)
		changeanim("Walk", 17592227490)
		changeanim("Run", 17592396609)
		changeanim("Idle", 17592191827)
	elseif toon == "tteagan" then
		notify("Twisted Teagan's animations equipped.", 5)
		changeanim("Walk", 18196889227)
		changeanim("Run", 18197017631)
		changeanim("Idle", 18196187882)
	elseif toon == "ttisha" then
		notify("Twisted Tisha's animations equipped.", 5)
		changeanim("Walk", 18167280146)
		changeanim("Run", 18167378530)
		changeanim("Idle", 18167087346)
	elseif toon == "ottoodles" then
		notify("Twisted Toodles' old animations equipped.", 5)
		changeanim("Walk", 17649028343)
		changeanim("Run", 17649190982)
		changeanim("Idle", 17648960939)
	elseif toon == "ttoodles" then
		notify("Twisted Toodles' animations equipped.", 5)
		changeanim("Walk", 17649028343)
		changeanim("Run", 91029796934547)
		changeanim("Idle", 17648960939)
	elseif toon == "tyatta" then
		notify("Twisted Yatta's animations equipped.", 5)
		changeanim("Walk", 130346494434784)
		changeanim("Run", 104220653814120)
		changeanim("Idle", 118127032092109)
	elseif toon == "tastro" then
		notify("Twisted Astro's animations equipped.", 5)
		changeanim("Walk", 17617109508)
		changeanim("Run", 17617489384)
		changeanim("Idle", 17616899088)
	elseif toon == "tbassie" then
		notify("Twisted Bassie's animations equipped.", 5)
		changeanim("Walk", 130316854498842)
		changeanim("Run", 80250651929564)
		changeanim("Idle", 72811631558470)
	elseif toon == "tbobette" then
		notify("Twisted Bobette's animations equipped.", 5)
		changeanim("Walk", 112758791648621)
		changeanim("Run", 124902427828033)
		changeanim("Idle", 92649757944698)
	elseif toon == "tpebble" or toon == "tpebbles" then
		notify("Twisted Pebble's animations equipped.", 5)
		changeanim("Walk", 16468055582)
		changeanim("Run", 14640401802)
		changeanim("Idle", 14544956730)
	elseif toon == "tshelly" then
		notify("Twisted Shelly's animations equipped.", 5)
		changeanim("Walk", 18213481024)
		changeanim("Run", 18213671382)
		changeanim("Idle", 18212982332)
	elseif toon == "tsprout" then
		notify("Twisted Sprout's animations equipped.", 5)
		changeanim("Walk", 18698688472)
		changeanim("Run", 18699674490)
		changeanim("Idle", 18698546825)
	elseif toon == "otvee" then
		notify("Twisted Vee's old animations equipped.", 5)
		changeanim("Walk", 17320859447)
		changeanim("Run", 17322657144)		
		changeanim("Idle", 17320732816)
	elseif toon == "tvee" then
		notify("Twisted Vee's animations equipped.", 5)
		changeanim("Walk", 140422342173966)
		changeanim("Run", 73725947198210)		
		changeanim("Idle", 121275292923999)
	elseif toon == "teggson" then
		notify("Twisted Eggson's animations equipped.", 5)
		changeanim("Walk", 70943522849975)
		changeanim("Run", 134803511177431)
		changeanim("Idle", 94997531878151)
	elseif toon == "tflyte" then
		notify("Twisted Flyte's animations equipped.", 5)
		changeanim("Walk", 102707652492072)
		changeanim("Run", 105764212938666)
		changeanim("Idle", 101910614628814)
	elseif toon == "tcocoa" then
		notify("Twisted Cocoa's animations equipped.", 5)
		changeanim("Walk", 124995985864941)
		changeanim("Run", 77242325839730)
		changeanim("Idle", 89407029329628)
	elseif toon == "tcoal" then
		notify("Twisted Coal's animations equipped.", 5)
		changeanim("Walk", 132967583757528)
		changeanim("Run", 88133391461421)
		changeanim("Idle", 101231527013004)
	elseif toon == "tginger" then
		notify("Twisted Ginger's animations equipped.", 5)
		changeanim("Walk", 87274628660556)
		changeanim("Run", 75137556095690)
		changeanim("Idle", 82455189191938)
	elseif toon == "trudie" then
		notify("Twisted Rudie's animations equipped.", 5)
		changeanim("Walk", 94861044577621)
		changeanim("Run", 137822127469681)
		changeanim("Idle", 122501058377674)
	end
end

function resetanimpack()
	if movementcheck then
		movementcheck:Disconnect()
		movementcheck = nil
	end

	for name, track in pairs(animpacktracking) do
		if track and track:IsA("AnimationTrack") then
			if track.IsPlaying then
				track:Stop(0.1)
			end
			track:Destroy()
		end
		animpacktracking[name] = nil
	end

	lastmovementstate = {
		moving = false,
		sprinting = false,
		decoding = false
	}

	local character = noxious["local player"] and noxious["local player"].Character
	if character then
		local animate = character:FindFirstChild("Animate")
		if animate and not animate.Enabled then
			animate.Enabled = true
		end
	end
end

-------------------------------------------------------------------------------------------------------------------------------

local istposeloopenabled = false
local tposeloopconnection

function pauseanims()
	local animator = humanoid:WaitForChild"Animator"		
	for _, track in pairs(animator:GetPlayingAnimationTracks()) do
		track:Stop()
	end
end

addcommand("tpose", "tpose", function()
	if istposeloopenabled then return end
	istposeloopenabled = true

	tposeloopconnection = noxious["run service"].Heartbeat:Connect(function()
		if istposeloopenabled then
			pauseanims()
		end
	end)
end)

addcommand("untpose", "untpose", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end

	if not istposeloopenabled then return end
	istposeloopenabled = false

	if tposeloopconnection then
		tposeloopconnection:Disconnect()
		tposeloopconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

local currentAnimationTrack 	
local inputConnection

barrelrollanim = Instance.new("Animation")	
barrelrollanim.AnimationId = "rbxassetid://18226927388"

waveanim = Instance.new("Animation")	
waveanim.AnimationId = "rbxassetid://17059625743"

twirlanim = Instance.new("Animation")	
twirlanim.AnimationId = "rbxassetid://17630950280"

twirl2anim = Instance.new("Animation")	
twirl2anim.AnimationId = "rbxassetid://18998583113"

cheeranim = Instance.new("Animation")	
cheeranim.AnimationId = "rbxassetid://18199893624"

shimmyanim = Instance.new("Animation")	
shimmyanim.AnimationId = "rbxassetid://18155419600"

jumpanim = Instance.new("Animation")	
jumpanim.AnimationId = "rbxassetid://17295478127"

facepalmanim = Instance.new("Animation")	
facepalmanim.AnimationId = "rbxassetid://73742913578970"

pounceanim = Instance.new("Animation")	
pounceanim.AnimationId = "rbxassetid://17617839395"

diveanim = Instance.new("Animation")	
diveanim.AnimationId = "rbxassetid://17175061517"

kickanim = Instance.new("Animation")	
kickanim.AnimationId = "rbxassetid://18683187890"

stompanim = Instance.new("Animation")	
stompanim.AnimationId = "rbxassetid://17593325631"

shakeheadanim = Instance.new("Animation")	
shakeheadanim.AnimationId = "rbxassetid://17010929179"

function playEmote(animation)
	if currentAnimationTrack then
		currentAnimationTrack:Stop()
	end
	currentAnimationTrack = humanoid:LoadAnimation(animation)
	currentAnimationTrack:Play()
	currentAnimationTrack:AdjustWeight(999)
end

function dwbarrelroll() playEmote(barrelrollanim) end
function dwwave() playEmote(waveanim) end
function dwtwirl() playEmote(twirlanim) end
function dwtwirl2() playEmote(twirl2anim) end
function dwcheer() playEmote(cheeranim) end
function dwshimmy() playEmote(shimmyanim) end
function dwjump() playEmote(jumpanim) end
function dwfacepalm() playEmote(facepalmanim) end
function dwdive() playEmote(diveanim) end
function dwpounce() playEmote(pounceanim) end

function disableAnimation()
	if inputConnection then
		inputConnection:Disconnect()
		inputConnection = nil
	end
end

function enableAnimation(animationFunction)
	disableAnimation()
	inputConnection = noxious["user input service"].InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			animationFunction()
		end
	end)
end

noxious["local player"].CharacterAdded:Connect(updateCharacterReferences)

noxious["local player"].CharacterAdded:Connect(function(character)
	character:WaitForChild"Humanoid"	
end)

addcommand("headbang", "hbang", function()
	local HeadbangAnim = Instance.new("Animation")		
	HeadbangAnim.AnimationId = "rbxassetid://17561277632"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(HeadbangAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("dance", "dance", function()

	local DanceAnim = Instance.new("Animation")		
	DanceAnim.AnimationId = "rbxassetid://17516071317"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(DanceAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("crawl", "crawl", function()
	if cannotruninlobby() then return end

	local TherianAnim = Instance.new("Animation")		
	TherianAnim.AnimationId = "rbxassetid://91029796934547"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("therian", "therian", function()
	if cannotruninlobby() then return end
	local TherianAnim = Instance.new("Animation")		
	TherianAnim.AnimationId = "rbxassetid://17649190982"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(TherianAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("cradle", "cradle", function()
	local SitAnim = Instance.new("Animation")		
	SitAnim.AnimationId = "rbxassetid://18989418012"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(SitAnim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("sit", "sit", function()
	local Sit2Anim = Instance.new("Animation")		
	Sit2Anim.AnimationId = "rbxassetid://16873659196"

	local humanoid = noxious["character"] and noxious["character"]:FindFirstChildOfClass("Humanoid")		
	if humanoid then
		if currentAnimationTrack then
			currentAnimationTrack:Stop()
		end

		currentAnimationTrack = humanoid:LoadAnimation(Sit2Anim)
		currentAnimationTrack:Play()

		currentAnimationTrack:AdjustWeight(999)
	end
end)

addcommand("unheadbang", "unhbang", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("unsit", "unsit", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("undance", "undance", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("uncrawl", "uncrawl", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("untherian", "untheiran", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

addcommand("uncradle", "uncradle", function()
	local Char = noxious["character"]
	local Human = Char and Char:WaitForChild("Humanoid", 15)
	local Animate = Char and Char:WaitForChild("Animate", 15)

	if Animate then
		Animate.Disabled = true
		for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
			v:Stop()
		end
		Animate.Disabled = false
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("wave", "wave", function()
	playEmote(waveanim)
end)

addcommand("enableclickwave", "ecwave", function()
	enableAnimation(dwwave)
end)

addcommand("disableclickwave", "dcwave", function()
	disableAnimation(dwwave)
end)

addcommand("doabarrelroll", "dabr", function()
	playEmote(barrelrollanim)
end)

addcommand("enableclickdoabarrelroll", "ecdabr", function()
	enableAnimation(dwbarrelroll)
end)

addcommand("disableclickdoabarrelroll", "dcdabr", function()
	disableAnimation(dwbarrelroll)
end)

addcommand("pounce", "pounce", function()
	playEmote(pounceanim)
end)

addcommand("enableclickpounce", "ecpounce", function()
	enableAnimation(dwpounce)
end)

addcommand("disableclickpounce", "dcpounce", function()
	disableAnimation(dwpounce)
end)

addcommand("twirl", "twirl", function()
	playEmote(twirlanim)
end)

addcommand("enableclicktwirl", "ectwirl", function()
	enableAnimation(dwtwirl)
end)

addcommand("disableclicktwirl", "dctwirl", function()
	disableAnimation(dwtwirl)
end)

addcommand("twirl2", "twirl2", function()
	playEmote(twirl2anim)
end)

addcommand("enableclicktwirl2", "ectwirl2", function()
	enableAnimation(dwtwirl2)
end)

addcommand("disableclicktwirl2", "dctwirl2", function()
	disableAnimation(dwtwirl2)
end)

addcommand("shimmy", "shimmy", function()
	playEmote(shimmyanim)
end)

addcommand("enableclickshimmy", "ecshimmy", function()
	enableAnimation(dwshimmy)
end)

addcommand("disableclickshimmy", "dcshimmy", function()
	disableAnimation(dwshimmy)
end)

addcommand("facepalm", "facepalm", function()
	playEmote(facepalmanim)
end)

addcommand("enableclickfacepalm", "ecfacepalm", function()
	enableAnimation(dwfacepalm)
end)

addcommand("disableclickfacepalm", "dcfacepalm", function()
	disableAnimation(dwfacepalm)
end)

addcommand("jump", "jump", function()
	playEmote(jumpanim)
end)

addcommand("enableclickjump", "ecjump", function()
	enableAnimation(dwjump)
end)

addcommand("disableclickjump", "dcjump", function()
	disableAnimation(dwjump)
end)

addcommand("cheer", "cheer", function()
	playEmote(cheeranim)
end)

addcommand("enableclickcheer", "eccheer", function()
	enableAnimation(dwcheer)
end)

addcommand("disableclickcheer", "dccheer", function()
	disableAnimation(dwcheer)
end)

addcommand("dive", "dive", function()
	playEmote(diveanim)
end)

addcommand("enableclickdive", "ecdive", function()
	enableAnimation(dwdive)
end)

addcommand("disableclickdive", "dcdive", function()
	disableAnimation(dwdive)
end)

addcommand("kick", "kick", function()
	playEmote(kickanim)
end)

addcommand("enableclickkick", "eckick", function()
	enableAnimation(kickanim)
end)

addcommand("disableclickkick", "dckick", function()
	disableAnimation(kickanim)
end)

addcommand("stomp", "stomp", function()
	playEmote(stompanim)
end)

addcommand("enableclickstomp", "ecstomp", function()
	enableAnimation(stompanim)
end)

addcommand("disableclickstomp", "dcstomp", function()
	disableAnimation(stompanim)
end)

addcommand("shakehead", "shakehead", function()
	playEmote(shakeheadanim)
end)

addcommand("enableclickshakehead", "ecshakehead", function()
	enableAnimation(shakeheadanim)
end)

addcommand("disableclickshakehead", "dcshakehead", function()
	disableAnimation(shakeheadanim)
end)

-------------------------------------------------------------------------------------------------------------------------------

spasmanims = {
	"rbxassetid://17174260770",
	"rbxassetid://17516071317",
	"rbxassetid://17638507046",
	"rbxassetid://17592396609",
	"rbxassetid://133500601575506",
	"rbxassetid://18213671382",
	"rbxassetid://18833020404",
	"rbxassetid://17231779680",
}

spasming = false
spasmconnection = nil
spasmtrack = nil

addcommand("spasm", "spasm", function()
	if spasming then return end
	spasming = true

	local lastIndex = nil

	spasmconnection = noxious["run service"].RenderStepped:Connect(function()
		if spasmtrack then
			spasmtrack:Stop()
			spasmtrack:Destroy()
		end

		local index
		repeat index = math.random(1, #spasmanims) until index ~= lastIndex
		lastIndex = index

		local animation = Instance.new("Animation")
		animation.AnimationId = spasmanims[index]
		spasmtrack = humanoid:LoadAnimation(animation)
		spasmtrack:Play()
		spasmtrack:AdjustWeight(999)
		spasmtrack:AdjustSpeed(999)
	end)
end)

addcommand("unspasm", "unspasm", function()
	if not spasming then return end
	spasming = false

	if spasmconnection then
		spasmconnection:Disconnect()
		spasmconnection = nil
	end

	if spasmtrack then
		spasmtrack:Stop()
		spasmtrack:Destroy()
		spasmtrack = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

glitchanims = {
	"rbxassetid://17174260770",
	"rbxassetid://17516071317",
	"rbxassetid://17638507046",
	"rbxassetid://17592396609",
	"rbxassetid://133500601575506",
	"rbxassetid://18213671382",
	"rbxassetid://18833020404",
	"rbxassetid://17231779680",
}

glitching = false
glitchtrack = nil
glitchconnection = nil
glitchcontroller = nil

function getRandomDelay(isSpamming)
	local r = math.random()
	if isSpamming then
		if r < 0.9 then
			return math.random(10, 30) / 100
		else
			return math.random(30, 90) / 100
		end
	else
		if r < 0.2 then
			return math.random(30, 70) / 100
		else
			return math.random(80, 300) / 100
		end
	end
end

function startGlitchLoop()
	local lastIndex = nil

	glitchconnection = noxious["run service"].RenderStepped:Connect(function()
		if glitchtrack then
			glitchtrack:Stop()
			glitchtrack:Destroy()
		end

		local index
		repeat index = math.random(1, #glitchanims) until index ~= lastIndex
		lastIndex = index

		local animation = Instance.new("Animation")
		animation.AnimationId = glitchanims[index]
		glitchtrack = humanoid:LoadAnimation(animation)
		glitchtrack:Play()
		glitchtrack:AdjustWeight(999)
		glitchtrack:AdjustSpeed(999)
	end)
end

function stopGlitchLoop()
	if glitchconnection then
		glitchconnection:Disconnect()
		glitchconnection = nil
	end

	if glitchtrack then
		glitchtrack:Stop()
		glitchtrack:Destroy()
		glitchtrack = nil
	end
end

addcommand("glitch", "glitch", function()
	if glitching then return end
	glitching = true

	glitchcontroller = coroutine.create(function()
		while glitching do
			task.wait(getRandomDelay(false))
			if not glitching then break end
			startGlitchLoop()

			task.wait(getRandomDelay(true))
			if not glitching then break end
			stopGlitchLoop()
		end
	end)

	coroutine.resume(glitchcontroller)
end)

addcommand("unglitch", "unglitch", function()
	if not glitching then return end
	glitching = false

	stopGlitchLoop()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("riddance", "scarlet", function()
	loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/02e4cd078ceb658b20c4074e697bc549.lua"))()
end)

addcommand("bacondwscript", "bacon", function()
	pcall(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bac0nHck/Scripts/main/Dandy's%20World"))("t.me/arceusxscripts")		
	end)
end)

addcommand("gobbydwscript", "gobby", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/FBRnb7S7"))()
end)

addcommand("spooksdwscript", "spooks", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/dandysworldspookshub/refs/heads/main/obfuscated%20spooks%20hub%20dandys%20world.lua'))()
end)

addcommand("moxdwscript", "spooks", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/ApparentlySpooks/moxhubV3/refs/heads/main/dandys%20world.txt'))()
end)

addcommand("hexdwscript", "hex", function()
	loadstring(game:HttpGet"https://pastefy.app/lY7xd0Ks/raw")();
end)

addcommand("yiwdwscript", "yiw", function()
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\83\53\101\70\69\52\55\104\34\41\41\40\41")()
end)

addcommand("bobbydwscript", "bobby", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/BobJunior1/Sup/refs/heads/main/Bobhub"))()
end)

addcommand("otvajnidwscript", "otvajni", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Amo1224gus/iriska/refs/heads/main/egashub.lua"))();
end)

addcommand("thedandyhelper", "rodestriker", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/RodeStriker/TheDandyHelper/refs/heads/main/MainScript", true))()
end)

addcommand("soupdwscript", "soup", function()
	loadstring(game:HttpGet("https://pastebin.com/raw/jjTq76Sp"))()
end)

addcommand("ffjdwscript", "ffj", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/scripts/Loader.lua"))()
end)

addcommand("poltergeist", "jaonoobao", function()
	loadstring(game:HttpGet('https://pastebin.com/raw/VQnHXGLC'))()
end)

addcommand("otvajniflyscript", "otvajnifly", function()
	loadstring(game:HttpGet"https://pastebin.com/raw/PDdkDsgy")()
end)

addcommand("mobilekeyboard", "mk", function()
	loadstring(game:HttpGet"https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr")()
end)

addcommand("infiniteyield", "iy", function()
	loadstring(game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source")()
end)

addcommand("explorer", "dex", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

-------------------------------------------------------------------------------------------------------------------------------

local macroEnabled = false
local macroDelay = 0.1
local macroConnection = nil

function isInItemsFolder(prompt)
	local currentroom = workspace:WaitForChild("CurrentRoom")
	local modelInRoom = currentroom:FindFirstChildWhichIsA("Model")
	local itemsFolder = modelInRoom:WaitForChild("Items")
	local parent = prompt.Parent
	while parent do
		if parent.Parent == itemsFolder then
			return true
		end
		parent = parent.Parent
	end
	return false
end

function fireItemProximityPrompts()
	local currentroom = workspace:WaitForChild("CurrentRoom")
	local modelInRoom = currentroom:FindFirstChildWhichIsA("Model")
	local itemsFolder = modelInRoom:WaitForChild("Items")
	for _, v in ipairs(itemsFolder:GetDescendants()) do
		if v:IsA("ProximityPrompt") and isInItemsFolder(v) then
			fireproximityprompt(v)
		end
	end
end

function onItemAdded()
	fireItemProximityPrompts()
end

function runMacro()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local inGamePlayers = workspace:WaitForChild("InGamePlayers")

	while macroEnabled do
		local plrName = noxious["username"]
		local character = noxious["character"]

		if not character or not character:FindFirstChild("Inventory") then break end

		local abilityArgs = {
			inGamePlayers:WaitForChild(plrName),
			CFrame.new(-98.01789, 145.92488, 137.47554, -0.91248, 0, 0.40912, 0, 1, 0, -0.40912, 0, -0.91248),
			false
		}
		ReplicatedStorage:WaitForChild("Events"):WaitForChild("AbilityEvent"):InvokeServer(unpack(abilityArgs))

		local itemArgs = {
			inGamePlayers:WaitForChild(plrName),
			character:WaitForChild("Inventory"):WaitForChild("Slot1")
		}
		ReplicatedStorage:WaitForChild("Events"):WaitForChild("ItemEvent"):InvokeServer(unpack(itemArgs))

		task.wait(macroDelay)
	end
end

addcommand("enablebassiemacro", "ebm", function(delay)
	if not checktoon("Bassie") then return end
	execcmd("nccam")

	local currentroom = workspace:WaitForChild("CurrentRoom")
	local modelInRoom = currentroom:FindFirstChildWhichIsA("Model")
	local itemsFolder = modelInRoom:WaitForChild("Items")
	if macroConnection then macroConnection:Disconnect() end
	macroConnection = itemsFolder.ChildAdded:Connect(onItemAdded)

	delay = tonumber(delay)
	if delay then
		macroDelay = delay
	end
	macroEnabled = true
	task.spawn(runMacro)
end)

addcommand("disablebassiemacro", "dbm", function()
	if not checktoon("Bassie") then return end
	macroEnabled = false
	if macroConnection then
		macroConnection:Disconnect()
		macroConnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("noclipcamera", "nccam", function()
	local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		return notify("Your executor does not support this command.", 5, "error")
	end
	local pop = noxious["local player"].PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
	for _, v in pairs(getgc()) do
		if type(v) == 'function' and getfenv(v).script == pop then
			for i, v1 in pairs(gc(v)) do
				if tonumber(v1) == .25 then
					sc(v, i, 0)
				elseif tonumber(v1) == 0 then
					sc(v, i, .25)
				end
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("enableshiftlock", "esl", function()
	if noxious["is mobile?"] then loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))() return end
	noxious["local player"].DevEnableMouseLock = true
	game:GetService("Players").LocalPlayer.PlayerScripts.PlayerModule.CameraModule.MouseLockController.BoundKeys.Value = "LeftControl"
end)

addcommand("disableshiftlock", "dsl", function()
	noxious["local player"].DevEnableMouseLock = false
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("chat", "talk", function(target, ...)
	local text = table.concat({...}, " ")
	local Players = noxious["players"]

	local function bubl(player)
		if player.Character and player.Character:FindFirstChild("Head") then
			noxious["text chat service"]:Chat(player.Character.Head, text, Enum.ChatColor.White)
		end
	end

	local targets = {}

	if not target or target == "" or target == "me" then
		table.insert(targets, Players.LocalPlayer)
	elseif target == "random" then
		local all = Players:GetPlayers()
		if #all > 0 then
			table.insert(targets, all[math.random(1, #all)])
		end
	elseif target == "others" then
		for _, p in ipairs(Players:GetPlayers()) do
			if p ~= Players.LocalPlayer then
				table.insert(targets, p)
			end
		end
	elseif target == "all" then
		targets = Players:GetPlayers()
	else
		for _, p in ipairs(Players:GetPlayers()) do
			if string.find(string.lower(p.Name), string.lower(target)) then
				table.insert(targets, p)
			end
		end
	end

	for _, p in ipairs(targets) do
		bubl(p)
	end
end)

function fiyah(player)
	if player and player.Character then
		local character = player.Character
		local humanoid = character:FindFirstChildOfClass("Humanoid")

		if humanoid then
			for _, part in pairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					for _, existingFire in ipairs(part:GetChildren()) do
						if existingFire:IsA("Fire") then
							existingFire:Destroy()
						end
					end
				end
			end

			for _, part in pairs(character:GetChildren()) do
				if part:IsA("BasePart") then
					local fire = Instance.new("Fire")
					fire.Size = 10
					fire.Heat = 1
					fire.Parent = part
				end
			end
		end
	end
end

function unfiyah(player)
	if player and player.Character then
		local character = player.Character

		for _, part in pairs(character:GetChildren()) do
			if part:IsA("BasePart") then
				for _, existingFire in ipairs(part:GetChildren()) do
					if existingFire:IsA("Fire") then
						existingFire:Destroy()
					end
				end
			end
		end
	end
end

addcommand("fire", "fire", function(target)
	local players = noxious["players"]:GetPlayers()
	local localPlayer = noxious["local player"]

	if not target or target == "" or target == "me" then
		fiyah(localPlayer)
	elseif target == "random" then
		if #players > 0 then
			local randomPlayer = players[math.random(1, #players)]
			fiyah(randomPlayer)
		end
	elseif target == "others" then
		for _, player in ipairs(players) do
			if player ~= localPlayer then
				task.spawn(function() fiyah(player) end)
			end
		end
	elseif target == "all" then
		for _, player in ipairs(players) do
			task.spawn(function() fiyah(player) end)
		end
	else
		for _, player in ipairs(players) do
			if string.find(string.lower(player.Name), string.lower(target)) then
				fiyah(player)
				break
			end
		end
	end
end)

addcommand("unfire", "unfire", function(target)
	local players = noxious["players"]:GetPlayers()
	local localPlayer = noxious["local player"]

	if not target or target == "" or target == "me" then
		unfiyah(localPlayer)
	elseif target == "random" then
		if #players > 0 then
			local randomPlayer = players[math.random(1, #players)]
			unfiyah(randomPlayer)
		end
	elseif target == "others" then
		for _, player in ipairs(players) do
			if player ~= localPlayer then
				task.spawn(function() unfiyah(player) end)
			end
		end
	elseif target == "all" then
		for _, player in ipairs(players) do
			task.spawn(function() unfiyah(player) end)
		end
	else
		for _, player in ipairs(players) do
			if string.find(string.lower(player.Name), string.lower(target)) then
				unfiyah(player)
				break
			end
		end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("usepublicloadout", "upl", function()
	notify("Public loadout applied.", 5)
	task.spawn(function() execcmd("eafb") end)
	task.spawn(function() execcmd("eaesp") end)
	task.spawn(function() execcmd("eac2") end)
	task.spawn(function() execcmd("erin") end)
	task.spawn(function() execcmd("edpn") end)
end)

addcommand("usesololoadout", "usl", function()
	notify("Solo loadout applied.", 5)
	task.spawn(function() execcmd("eafb") end)
	task.spawn(function() execcmd("eaesp") end)
	task.spawn(function() execcmd("eac2") end)
	task.spawn(function() execcmd("eia") end)
	task.spawn(function() execcmd("eatpte") end)
	task.spawn(function() execcmd("ega") end)
end)

addcommand("useesplaodout", "uespl", function()
	notify("ESP loadout applied.", 5)
	task.spawn(function() execcmd("eafb") end)
	task.spawn(function() execcmd("eaesp") end)
	task.spawn(function() execcmd("eat") end)
end)

addcommand("usehealerloadout", "uhrl", function()
	notify("Healer loadout applied.", 5)
	task.spawn(function() execcmd("epesp") end)
	task.spawn(function() execcmd("etesp") end)
	task.spawn(function() execcmd("sph") end)
	task.spawn(function() execcmd("etn") end)
	task.spawn(function() execcmd("elhn") end)
	task.spawn(function() execcmd("edpn") end)
	task.spawn(function() execcmd("maxzoom inf") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("eiesp") end)
end)

addcommand("usedistractorloadout", "udl", function()
	notify("Distractor loadout applied.", 5)
	task.spawn(function() execcmd("efeesp") end)
	task.spawn(function() execcmd("etesp") end)
	task.spawn(function() execcmd("epesp") end)
	task.spawn(function() execcmd("sph") end)
	task.spawn(function() execcmd("etn") end)
	task.spawn(function() execcmd("elhn") end)
	task.spawn(function() execcmd("edpn") end)
	task.spawn(function() execcmd("maxzoom inf") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("eiesp") end)
end)

addcommand("useblatantloadout", "ubl", function()
	notify("Blatant loadout applied.", 5)
	task.spawn(function() execcmd("eaesp") end)
	task.spawn(function() execcmd("ecg") end)
	task.spawn(function() execcmd("eatpte") end)
	task.spawn(function() execcmd("eac2") end)
	task.spawn(function() execcmd("elrs") end)
	task.spawn(function() execcmd("tpwalk 0.2") end)
	task.spawn(function() execcmd("noclip") end)
	task.spawn(function() execcmd("maxzoom inf") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("eia") end)
	task.spawn(function() execcmd("ega") end)
end)

addcommand("usenonblatantloadout", "unbl", function()
	notify("Non-blatant loadout applied.", 5)
	task.spawn(function() execcmd("eaesp") end)
	task.spawn(function() execcmd("eac2") end)
	task.spawn(function() execcmd("eis") end)
	task.spawn(function() execcmd("eafb") end)
	task.spawn(function() execcmd("maxzoom inf") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("minzoom 0") end)
	task.spawn(function() execcmd("apu") end)
	task.spawn(function() execcmd("tptool") end)
	task.spawn(function() execcmd("spt") end)
	task.spawn(function() execcmd("sph") end)
	task.spawn(function() execcmd("deesp") end)
	task.spawn(function() execcmd("dfeesp") end)
end)

-------------------------------------------------------------------------------------------------------------------------------

dodgetwistedconnection = nil
isdodgingtwisted = false

function dodgetwisteds()
	if not inrun() then return end

	if isdodgingtwisted then return end
	isdodgingtwisted = true

	if not noxious["humanoid root part"] or not noxious["humanoid root part"].Parent then 
		isdodgingtwisted = false
		return 
	end

	local originalCFrame = noxious["humanoid root part"].CFrame

	task.spawn(function() 
		execcmd("tptfe") 
	end)

	task.wait(0.5)

	task.spawn(function() 
		avoidsproutstendrils()
	end)

	task.wait(4.5)

	if noxious["humanoid root part"] and noxious["humanoid root part"].Parent then
		if not noxiousautofarmrunning then
			local wasbypassinganticheat = bypassinganticheat
			task.spawn(function() 
				execcmd("eacb") 
			end)

			tpbypass(originalCFrame)

			if not wasbypassinganticheat then 
				task.spawn(function() 
					execcmd("dacb") 
				end) 
			end
		else
			execcmd("tptg")
		end
	end

	isdodgingtwisted = false
end

addcommand("enabledodgetwisteds", "edt", function()
	if not inrun() then return end

	if dodgetwistedconnection then return end
	local spottedEvent = noxious["replicated storage"]:WaitForChild("StoryEvents"):WaitForChild("Spotted")
	dodgetwistedconnection = spottedEvent.OnClientEvent:Connect(dodgetwisteds)
end)

addcommand("disaledodgetwisteds", "ddt", function()
	if not inrun() then return end

	if dodgetwistedconnection then
		dodgetwistedconnection:Disconnect()
		dodgetwistedconnection = nil
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function dwshrimpdecal()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "rbxassetid://97212326743600" then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://97212326743600"
				Two.Texture = "rbxassetid://97212326743600"
				Three.Texture = "rbxassetid://97212326743600"
				Four.Texture = "rbxassetid://97212326743600"
				Five.Texture = "rbxassetid://97212326743600"
				Six.Texture = "rbxassetid://97212326743600"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")

	sky.SkyboxBk = "rbxassetid://97212326743600"
	sky.SkyboxDn = "rbxassetid://97212326743600"
	sky.SkyboxFt = "rbxassetid://97212326743600"
	sky.SkyboxLf = "rbxassetid://97212326743600"
	sky.SkyboxRt = "rbxassetid://97212326743600"
	sky.SkyboxUp = "rbxassetid://97212326743600"
end

addcommand("scriptshrimpodecalspam", "ssods", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end       
	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync("/e shrimpspam")        
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function veryscarydecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "rbxassetid://15848332855" then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://15848332855"
				Two.Texture = "rbxassetid://15848332855"
				Three.Texture = "rbxassetid://15848332855"
				Four.Texture = "rbxassetid://15848332855"
				Five.Texture = "rbxassetid://15848332855"
				Six.Texture = "rbxassetid://15848332855"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")

	sky.SkyboxBk = "rbxassetid://15848332855"
	sky.SkyboxDn = "rbxassetid://15848332855"
	sky.SkyboxFt = "rbxassetid://15848332855"
	sky.SkyboxLf = "rbxassetid://15848332855"
	sky.SkyboxRt = "rbxassetid://15848332855"
	sky.SkyboxUp = "rbxassetid://15848332855"
end

addcommand("scriptveryscarydecalspam", "svsyds", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e superscaryspam"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function scarydecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "rbxassetid://112289855511517" then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://112289855511517"
				Two.Texture = "rbxassetid://112289855511517"
				Three.Texture = "rbxassetid://112289855511517"
				Four.Texture = "rbxassetid://112289855511517"
				Five.Texture = "rbxassetid://112289855511517"
				Six.Texture = "rbxassetid://112289855511517"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")

	sky.SkyboxBk = "rbxassetid://112289855511517"
	sky.SkyboxDn = "rbxassetid://112289855511517"
	sky.SkyboxFt = "rbxassetid://112289855511517"
	sky.SkyboxLf = "rbxassetid://112289855511517"
	sky.SkyboxRt = "rbxassetid://112289855511517"
	sky.SkyboxUp = "rbxassetid://112289855511517"
end

addcommand("scriptscarydecalspam", "ssyds", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e scaryspam"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function noxiousdecalspam()
	local function replacealltextures(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "rbxassetid://129909577310669" then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://129909577310669"
				Two.Texture = "rbxassetid://129909577310669"
				Three.Texture = "rbxassetid://129909577310669"
				Four.Texture = "rbxassetid://129909577310669"
				Five.Texture = "rbxassetid://129909577310669"
				Six.Texture = "rbxassetid://129909577310669"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			replacealltextures(v)
		end
	end
	local function applytextures(root)
		for _, v in pairs(root:GetChildren()) do
			applytextures(v)
		end
	end
	replacealltextures(game.Workspace)
	applytextures(game.Workspace)

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")

	sky.SkyboxBk = "rbxassetid://129909577310669"
	sky.SkyboxDn = "rbxassetid://129909577310669"
	sky.SkyboxFt = "rbxassetid://129909577310669"
	sky.SkyboxLf = "rbxassetid://129909577310669"
	sky.SkyboxRt = "rbxassetid://129909577310669"
	sky.SkyboxUp = "rbxassetid://129909577310669"
end

addcommand("scriptnoxiousdecalspam", "snds", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e noxiousspam"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function test()
	local function test2(root)
		for _, v in pairs(root:GetChildren()) do
			if v:IsA("Decal") and v.Texture ~= "rbxassetid://117458353677051" then
				v.Parent = nil
			elseif v:IsA("BasePart") then
				v.Material = "Plastic"
				local One = Instance.new("Decal", v)
				local Two = Instance.new("Decal", v)
				local Three = Instance.new("Decal", v)
				local Four = Instance.new("Decal", v)
				local Five = Instance.new("Decal", v)
				local Six = Instance.new("Decal", v)
				One.Texture = "rbxassetid://117458353677051"
				Two.Texture = "rbxassetid://117458353677051"
				Three.Texture = "rbxassetid://117458353677051"
				Four.Texture = "rbxassetid://117458353677051"
				Five.Texture = "rbxassetid://117458353677051"
				Six.Texture = "rbxassetid://117458353677051"
				One.Face = "Front"
				Two.Face = "Back"
				Three.Face = "Right"
				Four.Face = "Left"
				Five.Face = "Top"
				Six.Face = "Bottom"
			end
			test2(v)
		end
	end
	local function test3(root)
		for _, v in pairs(root:GetChildren()) do
			test3(v)
		end
	end
	test2(game.Workspace)
	test3(game.Workspace)

	local function replaceTextInGui(guiObject)
		if guiObject:IsA("TextLabel") or guiObject:IsA("TextButton") then
			guiObject.Text = "unable says hi :3"
		end
	end

	local function replaceTextInWorkspace()
		for _, obj in pairs(workspace:GetDescendants()) do
			if obj:IsA("BillboardGui") or obj:IsA("SurfaceGui") then
				for _, child in pairs(obj:GetDescendants()) do
					replaceTextInGui(child)
				end
			end
		end
	end

	replaceTextInWorkspace()

	for _, gui in pairs(noxious["local player"].PlayerGui:GetDescendants()) do
		replaceTextInGui(gui)
	end

	local imageId = "rbxassetid://117458353677051"

	local function makeespbillboard(part)
		if part:FindFirstChildOfClass("BillboardGui") then return end

		local billboardGui = Instance.new("BillboardGui")			
		billboardGui.Size = UDim2.new(3, 0, 3, 0)
		billboardGui.AlwaysOnTop = true
		billboardGui.Parent = part
		billboardGui.Adornee = part

		local imageLabel = Instance.new("ImageLabel")			
		imageLabel.Size = UDim2.new(1, 0, 1, 0)
		imageLabel.Image = imageId
		imageLabel.BackgroundTransparency = 1
		imageLabel.Parent = billboardGui
	end

	local function addBillboardGuis()
		for _, descendant in pairs(workspace:GetDescendants()) do
			if descendant:IsA("BasePart") then
				makeespbillboard(descendant)
			end
		end

		workspace.DescendantAdded:Connect(function(newDescendant)
			if newDescendant:IsA("BasePart") then
				makeespbillboard(newDescendant)
			end
		end)
	end

	addBillboardGuis()

	local lighting = game:GetService"Lighting"

	local sky = lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")

	sky.SkyboxBk = "rbxassetid://117458353677051"
	sky.SkyboxDn = "rbxassetid://117458353677051"
	sky.SkyboxFt = "rbxassetid://117458353677051"
	sky.SkyboxLf = "rbxassetid://117458353677051"
	sky.SkyboxRt = "rbxassetid://117458353677051"
	sky.SkyboxUp = "rbxassetid://117458353677051"

	sky.Parent = lighting
end

--addcommand("scriptunabledecalspam", "suds", function()
--	if not donor(noxious["username"]) then
--		notify("You need to be a Donor in order to execute this command.", 5, "error")
--		return
--	end
--	
--	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

--	if channel then
--		channel:SendAsync"/e unable"		
--	end
--end)

-------------------------------------------------------------------------------------------------------------------------------

videojumpscaring = false

task.spawn(function()
	if not noxious["in studio"] then
		noxious["base folder"] = "Noxious Hub"
		noxious["sub folder"] = noxious["base folder"] .. "/Dandy's World/Video Jumpscares"

		if not isfolder(noxious["base folder"]) then makefolder(noxious["base folder"]) end
		if not isfolder(noxious["sub folder"]) then makefolder(noxious["sub folder"]) end

		noxious["olvia.webm"] = noxious["sub folder"] .. "/olvia.webm"
		noxious["stripperblot.webm"] = noxious["sub folder"] .. "/stripperblot.webm"
		noxious["palemachine.webm"] = noxious["sub folder"] .. "/palemachine.webm"
		noxious["patrickbatemanscreaming.webm"] = noxious["sub folder"] .. "/patrickbatemanscreaming.webm"

		if not isfile(noxious["olvia.webm"]) then writefile(noxious["olvia.webm"], game:HttpGet("https://files.catbox.moe/ip8g68.webm")) end
		if not isfile(noxious["stripperblot.webm"]) then writefile(noxious["stripperblot.webm"], game:HttpGet("https://files.catbox.moe/24t8hz.webm")) end
		if not isfile(noxious["palemachine.webm"]) then writefile(noxious["palemachine.webm"], game:HttpGet("https://files.catbox.moe/55t67o.webm")) end
		if not isfile(noxious["patrickbatemanscreaming.webm"]) then writefile(noxious["patrickbatemanscreaming.webm"], game:HttpGet("https://files.catbox.moe/oj3n29.webm")) end
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function stripperblot()
	if videojumpscaring then return end videojumpscaring = true
	task.spawn(function()
		local screenGui = Instance.new("ScreenGui")
		screenGui.ResetOnSpawn = false
		screenGui.Parent = noxious["player gui"]

		local videoFrame = Instance.new("VideoFrame")
		videoFrame.Visible = false
		videoFrame.Looped = false	
		videoFrame.Video = getcustomasset(noxious["stripperblot.webm"])
		videoFrame.Volume = 1
		videoFrame.BackgroundTransparency = 1
		videoFrame.Size = UDim2.new(1, 0, 1, 60)
		videoFrame.Position = UDim2.new(0, 0, 0, -60)
		videoFrame.ZIndex = 6969
		videoFrame.Parent = screenGui

		while not videoFrame.IsLoaded do
			task.wait()
		end

		videoFrame.Visible = true
		videoFrame:Play()

		videoFrame.Ended:Wait()
		screenGui:Destroy()
		videojumpscaring = false
	end)
end

addcommand("scriptstripperblotjumpscare", "ssbjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(stripperblot)
		channel:SendAsync"/e inkblotscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function patrickbatemanscreaming()
	if videojumpscaring then return end videojumpscaring = true
	task.spawn(function()
		local screenGui = Instance.new("ScreenGui")
		screenGui.ResetOnSpawn = false
		screenGui.Parent = noxious["player gui"]

		local videoFrame = Instance.new("VideoFrame")
		videoFrame.Visible = false
		videoFrame.Looped = false	
		videoFrame.Video = getcustomasset(noxious["patrickbatemanscreaming.webm"])
		videoFrame.Volume = 1
		videoFrame.BackgroundTransparency = 1
		videoFrame.Size = UDim2.new(1, 0, 1, 60)
		videoFrame.Position = UDim2.new(0, 0, 0, -60)
		videoFrame.ZIndex = 6969
		videoFrame.Parent = screenGui

		while not videoFrame.IsLoaded do
			task.wait()
		end

		videoFrame.Visible = true
		videoFrame:Play()

		videoFrame.Ended:Wait()
		screenGui:Destroy()
		videojumpscaring = false
	end)
end

addcommand("scriptpatrickbatemanscreamingjumpscare", "spbsjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(patrickbatemanscreaming)
		channel:SendAsync"/e patrickscare"
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function olvia()
	task.spawn(function()
		if videojumpscaring then return end videojumpscaring = true
		local screenGui = Instance.new("ScreenGui")
		screenGui.ResetOnSpawn = false
		screenGui.Parent = noxious["player gui"]

		local videoFrame = Instance.new("VideoFrame")
		videoFrame.Visible = false
		videoFrame.Looped = false	
		videoFrame.Video = getcustomasset(noxious["olvia.webm"])
		videoFrame.Volume = 1
		videoFrame.BackgroundTransparency = 1
		videoFrame.Size = UDim2.new(1, 0, 1, 60)
		videoFrame.Position = UDim2.new(0, 0, 0, -60)
		videoFrame.ZIndex = 6969
		videoFrame.Parent = screenGui

		while not videoFrame.IsLoaded do
			task.wait()
		end

		task.spawn(function()
			task.wait(6.2)
			crash()
		end)

		videoFrame.Visible = true
		videoFrame:Play()
		videojumpscaring = false
	end)
end

addcommand("scriptolviajumpscare", "sojs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(olvia)
		channel:SendAsync"/e olviascare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function palemachine()
	task.spawn(function()
		if videojumpscaring then return end videojumpscaring = true
		local screenGui = Instance.new("ScreenGui")
		screenGui.Parent = noxious["player gui"]

		local videoFrame = Instance.new("VideoFrame")
		videoFrame.Visible = false
		videoFrame.Looped = false
		videoFrame.Video = getcustomasset(noxious["stripperblot.webm"])
		videoFrame.Volume = 1
		videoFrame.BackgroundTransparency = 1
		videoFrame.Size = UDim2.new(1, 0, 1, 60)
		videoFrame.Position = UDim2.new(0, 0, 0, -60)
		videoFrame.ZIndex = 6969
		videoFrame.Parent = screenGui

		while not videoFrame.IsLoaded do
			task.wait()
		end

		videoFrame.Visible = true
		videoFrame:Play()

		videoFrame.Ended:Wait()
		screenGui:Destroy()
		videojumpscaring = false
	end)
end

addcommand("scriptpalemachinejumpscare", "spmjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(palemachine)
		channel:SendAsync"/e palemachinescare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function jobapplicationjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://97159344626718"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptjobapplicationjumpscare", "sjajs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(jobapplicationjumpscare)
		channel:SendAsync"/e jobscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function conniejumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://122883746467598"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptconniejumpscare", "scjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(conniejumpscare)
		channel:SendAsync"/e conniescare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function kendricklamarjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://99856131070481"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://74120482730232"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound.TimePosition = 0.3

	local sound2 = Instance.new("Sound")		
	sound2.SoundId = "rbxassetid://7188420724"
	sound2.Volume = 10
	sound2.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()
	task.spawn(function()
		for i = 0, 1000 do
			sound.Volume = sound.Volume - 0.08
			task.wait(0)
		end
		imageLabel:Destroy()
	end)
	sound2:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptkendricklamarjumpscare", "skljs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(kendricklamarjumpscare)
		channel:SendAsync"/e mustard"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function toodlesjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://126828075913555"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scripttoodlesjumpscare", "stjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(toodlesjumpscare)
		channel:SendAsync"/e eightballscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function buffpebblejumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://114310119148038"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptbuffpebblejumpscare", "sbpjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(buffpebblejumpscare)
		channel:SendAsync"/e rockscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function fruitcakejumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://129904337606298"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptfruitcakejumpscare", "sfcjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(fruitcakejumpscare)
		channel:SendAsync"/e fruitcakescare"
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function sharingandandyjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://80342360027781"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptsharingandandyjumpscare", "ssdjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(sharingandandyjumpscare)
		channel:SendAsync"/e menacingflowerscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function jewelryboxjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://106865200462382"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptjewelryboxjumpscare", "sjbjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(jewelryboxjumpscare)
		channel:SendAsync"/e jewelryboxscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function albertjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://14351044816"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptalbertjumpscare", "sajs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(albertjumpscare)
		channel:SendAsync"/e albertscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function dandyjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://119960958639124"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptdandyjumpscare", "sdjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(dandyjumpscare)
		channel:SendAsync"/e flowerscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shellyjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://83275402274555"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptshellyjumpscare", "ssyjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(shellyjumpscare)
		channel:SendAsync"/e shellscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shrimpo2jumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://128772487557106"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptshrimpo2jumpscare", "sso2js", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(shrimpo2jumpscare)
		channel:SendAsync"/e shrimpscare2"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function sproutjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://138852543835011"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptsproutjumpscare", "sstjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(sproutjumpscare)
		channel:SendAsync"/e strawberryscare"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function shrimpojumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://97212326743600"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7188420724"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptshrimpojumpscare", "ssojs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(shrimpojumpscare)
		channel:SendAsync"/e shrimpscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function flashbang()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://12540062127"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://9069161602"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound.Pitch = 1

	local sound2 = Instance.new("Sound")		
	sound2.SoundId = "rbxassetid://8754837104"
	sound2.Volume = 2
	sound2.Parent = noxious["player gui"]
	sound2.TimePosition = 0.2
	sound2.Pitch = 0.8

	local sound3 = Instance.new("Sound")		
	sound3.SoundId = "rbxassetid://9125402735"
	sound3.Volume = 2
	sound3.Parent = noxious["player gui"]
	sound3.TimePosition = 0.2
	sound3.Pitch = 0.8

	local function fadeOutImage()
		for i = 0, 1, 0.002 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound2:Play()
	sound3:Play()
	task.wait(0.1)
	sound:Play()

	task.wait(0.5)

	fadeOutImage()
end

addcommand("scriptflashbang", "sfb", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(flashbang)
		channel:SendAsync"/e flashbang"	
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function scaryjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://10879079287"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://6600188325"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.025 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(1.8)

	fadeOutImage()
end

addcommand("scriptscaryfacejumpscare", "ssfjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(scaryjumpscare)
		channel:SendAsync"/e jumpscare"
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function lucyjumpscare()
	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://94229574138300"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://1091083826"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]

	local function fadeOutImage()
		for i = 0, 1, 0.01 do
			imageLabel.ImageTransparency = i
			task.wait(0)
		end
		imageLabel:Destroy()
	end

	sound:Play()

	task.wait(0)

	fadeOutImage()
end

addcommand("scriptlucyjumpscare", "sljs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		task.spawn(lucyjumpscare)
		channel:SendAsync"/e catscare"
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function ps4glitchjumpscare()
	task.spawn(function()
		while true do
			for _, sound in ipairs(game:GetDescendants()) do
				if sound:IsA("Sound") then
					sound:Destroy()
				end
			end
			task.wait()
		end
	end)

	local screenGui = Instance.new("ScreenGui")		
	screenGui.Parent = noxious["player gui"]

	local blackout = Instance.new("Frame")		
	blackout.Parent = screenGui
	blackout.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	blackout.Visible = true
	blackout.Size = UDim2.new(1, 0, 1, 60)
	blackout.Position = UDim2.new(0, 0, 0, -60)
	blackout.ZIndex = 6968

	task.wait(3)

	local imageLabel = Instance.new("ImageLabel")		
	imageLabel.Parent = screenGui
	imageLabel.Image = "rbxassetid://75974474881110"
	imageLabel.BackgroundTransparency = 1
	imageLabel.Visible = true
	imageLabel.ImageTransparency = 0
	imageLabel.Size = UDim2.new(1, 0, 1, 60)
	imageLabel.Position = UDim2.new(0, 0, 0, -60)
	imageLabel.ZIndex = 6969

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://5710016194"
	sound.Volume = 10
	sound.PlaybackSpeed = 0.3
	sound.TimePosition = 0.1
	sound.Parent = noxious["player gui"]

	task.spawn(function()
		task.wait(3)
		sound.TimePosition = 1
		task.delay(2, function()
			sound:Destroy()
			crash()
		end)
		while true do
			sound:Play()
			task.wait(0.2)
		end
	end)

	sound:Play()
end

function ps4glitchjumpscareconfirmation()
	popup(function(result)
		if result == "yes" then
			local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

			if channel then
				task.spawn(ps4glitchjumpscare)
				channel:SendAsync"/e dogscare"		
			end
		end
	end, "Hey!", "This jumpscare may be discomforting for some audiences, Are you sure you want to run this?", "Yes.", "Nevermind.", true)
end

addcommand("scriptps4glitchjumpscare", "sps4gjs", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end
	ps4glitchjumpscareconfirmation()
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptforcestopplayerinteractions", "sfspi", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e stopinteracting"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptnotify", "sn", function(...)
	local text = table.concat({...}, " ")
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync("/e sn " .. text)
		notify(text, 5)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptforceruncommand", "sfrc", function(...)
	local text = table.concat({...}, " ")
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync("/e do " .. text)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function teleportToPlayer(player)
	local char = player.Character
	if char and char:FindFirstChild("HumanoidRootPart") then
		local localChar = noxious["character"]
		if localChar and localChar:FindFirstChild("HumanoidRootPart") then
			localChar.HumanoidRootPart.CFrame = char.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
		end
	end
end

addcommand("scriptteleport", "stp", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e tosender"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptkill", "skill", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e dies"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function crash()
	while true do
		while true do
			while true do
				while true do
					while true do
					end
				end
			end
		end
	end
end

addcommand("scriptcrash", "scrash", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end


	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e crashes"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function creepygirlvoice()

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://6723965243"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptcreepygirlvoice", "scgv", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e voicesscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function mancrying()

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://688596285"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptmancrying", "smc", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e malecryscare"		
	end
end)

function womancrying()

	local sound = Instance.new("Sound")		
	sound.SoundId = "rbxassetid://7014161416"
	sound.Volume = 10
	sound.Parent = noxious["player gui"]
	sound:Play()
end

addcommand("scriptwomancrying", "swc", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e femalecryscare"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeunablenotify", "sfun", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e fakeunablejoined"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakehypnicnotify", "sfhn", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e fakehypnicjoined"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeacenotify", "sfan", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e aj"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfakeqwelvernotify", "sfqn", function()

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e fakeqwelverjoined"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

addcommand("scriptfaketeammembernotify", "sftmn", function()

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e faketeammemberjoined"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function reloadnoxious()
	_G.dswdnoxiousloaded = false
	closeallnotifs()
	stoprunningconnections()
	execcmd("hdl")

	task.spawn(function()
		noxious["toggle interface visibility button"].Visible = false
		noxious["mainframe"].Visible = false
		task.wait(6)
		noxious["toggle interface visibility button"]:Destroy()
		mainframe:Destroy()
	end)

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Team-Noxious/Noxious-Hub/refs/heads/main/Dandy's%20World/Noxious%20Hub"))()
end

local reloadcommandcallcount = 0

function reloadnoxiouscommand()
	reloadcommandcallcount += 1

	if reloadcommandcallcount == 1 then
		notify("Type command again to confirm.", 5)
	end
	if reloadcommandcallcount == 2 then
		reloadnoxious()
	end
end

local reloadcallcount = 0

noxious["reload noxious button"].MouseButton1Click:Connect(function()
	playclicksound()

	reloadcallcount += 1

	if reloadcallcount == 1 then
		notify("Click button again to confirm.", 5)
	end

	if reloadcallcount == 2 then
		task.spawn(function()
			reloadnoxious()
		end)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function addBillboardGui(player)
	local function onchar(character)
		local HRP = character:WaitForChild("HumanoidRootPart", 5)

		if HRP and not HRP:FindFirstChild("UserImageBillboard") then
			local billboardGui = Instance.new("BillboardGui")				
			billboardGui.Name = "UserImageBillboard"
			billboardGui.Size = UDim2.new(2.5, 0, 2.5, 0)
			billboardGui.AlwaysOnTop = true
			billboardGui.MaxDistance = math.huge

			local imageLabel = Instance.new("ImageLabel")				
			imageLabel.Size = UDim2.new(1, 0, 1, 0)
			imageLabel.BackgroundTransparency = 1
			imageLabel.Image = "rbxassetid://100574547642033"
			imageLabel.ZIndex = 10
			imageLabel.ImageColor3 = Color3.new(1,1,1)

			local uiCorner = Instance.new("UICorner")				
			uiCorner.CornerRadius = UDim.new(0.2, 0)
			uiCorner.Parent = imageLabel

			imageLabel.Parent = billboardGui
			billboardGui.Parent = HRP
		end
	end

	if player.Character then
		onchar(player.Character)
	end
	player.CharacterAdded:Connect(onchar)
end

for _, player in pairs(noxious["players"]:GetPlayers()) do
	if table.find(noxious["admins"], player.Name) then
		addBillboardGui(player)
	end
end

noxious["players"].PlayerAdded:Connect(function(player)
	if table.find(noxious["admins"], player.Name) then
		addBillboardGui(player)
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function usercheck()
	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e im using noxious"		
	end
end

addcommand("noxioususercheck", "nxsuc", function()
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local TextChatService = noxious["text chat service"]
	local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
	if not channel then
		notify("RBXGeneral channel not found.", 5, "error")
		return
	end

	local responders = {}

	local connection
	connection = channel.MessageReceived:Connect(function(message)
		if typeof(message) == "Instance" and message:IsA("TextChatMessage") then
			if message.Text:lower():match("^/e%s+im using noxious$") then
				local author = message.TextSource
				if author and not responders[author] then
					responders[author] = true
				end
			end
		end
	end)

	channel:SendAsync("/e check")

	task.delay(5, function()
		if connection then
			connection:Disconnect()
		end

		local count = 0
		for _ in pairs(responders) do
			count += 1
		end

		notify("There are " .. count .. " players using Noxious Hub: Dandy's World.", 5)
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

function donorwhatsappastro(character)
	if not character then return end

	local partsToTexture = {"Body", "Cap", "Head", "LegL", "LegL2", "LegR", "LegR2"}

	for _, partName in ipairs(partsToTexture) do
		local part = character:FindFirstChild(partName)
		if part and (part:IsA("SpecialMesh") or part:IsA("MeshPart")) then
			part.TextureID = "rbxassetid://106334801105183"
		end
	end

	local magicL = character:FindFirstChild("MagicL")
	local magicR = character:FindFirstChild("MagicR")

	if magicL and (magicL:IsA("SpecialMesh") or magicL:IsA("MeshPart")) then
		magicL.Color = Color3.fromRGB(99, 178, 100)
		local emitter = magicL:FindFirstChildOfClass("ParticleEmitter")
		if emitter then
			emitter.Color = ColorSequence.new(Color3.fromRGB(100, 251, 105))
		end
	end

	if magicR and (magicR:IsA("SpecialMesh") or magicR:IsA("MeshPart")) then
		magicR.Color = Color3.fromRGB(99, 178, 100)
		local emitter = magicR:FindFirstChildOfClass("ParticleEmitter")
		if emitter then
			emitter.Color = ColorSequence.new(Color3.fromRGB(100, 251, 105))
		end
	end

	local config = character:FindFirstChild("Config")
	if config and config:FindFirstChild("HurtTexture") then
		config.HurtTexture.Texture = "rbxassetid://103271535882802"
	end
end

addcommand("scriptwhatsappastro", "swhatsappastro", function()
	if not checktoon("Astro") then return end
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e greenmoon"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

function donorfacelessshrimpo(character)
	if not character then return end
	local head = character:WaitForChild("Head")
	head.TextureID = "rbxassetid://74753871938677"
end

addcommand("scriptfacelessshrimpo", "sflshrimpo", function()
	if not checktoon("Shrimpo") then return end
	if not donor(noxious["username"]) then
		notify("You need to be a Donor in order to execute this command.", 5, "error")
		return
	end

	local channel = noxious["text chat service"].TextChannels:FindFirstChild("RBXGeneral")

	if channel then
		channel:SendAsync"/e facelessshrimp"		
	end
end)

-------------------------------------------------------------------------------------------------------------------------------

if not noxious["in studio"] then
	local Players = game:GetService("Players")
	task.wait(1)

	local orbitConfigs = {
		boxten = {
			key = "boxten orbiter",
			meshId = "rbxassetid://16987636120",
			textureId = "rbxassetid://16987597868",
			size = Vector3.new(1, 1, 1),
		},
		shrimpo = {
			key = "shrimpo orbiter",
			meshId = "rbxassetid://127944646395421",
			textureId = "rbxassetid://111384176423148",
			size = Vector3.new(0.4, 0.4, 0.4),
		},
		cosmo = {
			key = "cosmo orbiter",
			meshId = "rbxassetid://18594830201",
			textureId = "rbxassetid://130874271887611",
			size = Vector3.new(0.5, 0.5, 0.5),
		},
	}

	for label, config in pairs(orbitConfigs) do
		local orbitData = {}

		local function isTargetPlayer(name)
			for _, n in ipairs(noxious[config.key]) do
				if name:lower() == n:lower() then
					return true
				end
			end
			return false
		end

		local function cleanParts(player)
			local data = orbitData[player]
			if data then
				for _, part in ipairs(data.parts) do
					part:Destroy()
				end
				if data.connection then data.connection:Disconnect() end
				if data.sound then
					data.sound:Stop()
					data.sound:Destroy()
				end
				orbitData[player] = nil
			end
		end

		local function createParts(player)
			local char = player.Character
			if not char then return end
			local hrp = char:FindFirstChild("HumanoidRootPart")
			if not hrp then return end

			local parts, axes, rots = {}, {}, {}
			local function mesh()
				local p = Instance.new("MeshPart")
				p.MeshId = config.meshId
				p.TextureID = config.textureId
				p.Size = config.size
				p.Color = Color3.new(0, 0, 0)
				p.Material = Enum.Material.Neon
				p.Anchored = true
				p.CanCollide = false
				p.Parent = workspace
				return p
			end

			local function axis()
				local x, y, z
				repeat
					x, y, z = math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)
				until x ~= 0 or y ~= 0 or z ~= 0
				return Vector3.new(x, y, z).Unit
			end

			for i = 1, 9 do
				table.insert(parts, mesh())
				table.insert(axes, axis())
				table.insert(rots, CFrame.new())
			end

			local function update(dt)
				for i, p in ipairs(parts) do
					local angle = tick() * 0.8 + (math.pi * 2 / 9) * (i - 1)
					local x, z = math.cos(angle) * 7, math.sin(angle) * 7
					local pos = Vector3.new(hrp.Position.X + x, hrp.Position.Y + 0.5, hrp.Position.Z + z)
					local delta = CFrame.fromAxisAngle(axes[i], dt * math.rad(72))
					rots[i] *= delta
					p.CFrame = CFrame.new(pos) * rots[i]
				end
			end

			local conn = noxious["run service"].RenderStepped:Connect(function(dt)
				if not player.Parent or not player.Character or not hrp.Parent then
					cleanParts(player)
					return
				end
				update(dt)
			end)

			orbitData[player] = { parts = parts, connection = conn }
		end

		local function applyTo(player)
			if isTargetPlayer(player.Name) then
				player.CharacterAdded:Connect(function()
					task.wait(0.1)
					cleanParts(player)
					createParts(player)
				end)
				if player.Character then
					cleanParts(player)
					createParts(player)
				end
			end
		end

		for _, p in ipairs(Players:GetPlayers()) do
			applyTo(p)
		end

		Players.PlayerAdded:Connect(applyTo)
		Players.PlayerRemoving:Connect(cleanParts)
	end
end

-------------------------------------------------------------------------------------------------------------------------------

function log()
	local function sendToGoogleAppsScript(data)
		local url = "https://script.google.com/macros/s/your-script-id/exec"
		local request = getgenv()._realRequest
		local headers = { ["Content-Type"] = "application/json" }
		local payload = { Body = data, Method = "POST", Url = url, Headers = headers }

		request(payload)
	end

	local function createData()
		local DName = noxious["local player"].DisplayName
		local Name = noxious["local player"].Name
		local Userid = noxious["local player"].UserId
		local JobId = game.JobId
		local GameId = game.PlaceId
		local Country = game.LocalizationService.RobloxLocaleId

		local data = {
			username = Name,
			displayName = DName,
			userId = Userid,
			jobId = JobId,
			placeId = GameId,
			region = Country
		}
		return noxious["http service"]:JSONEncode(data)
	end

	sendToGoogleAppsScript(createData())
end

-------------------------------------------------------------------------------------------------------------------------------

task.wait(1)

-------------------------------------------------------------------------------------------------------------------------------

function ondonorchatted(player, message)
	local cmd, args = message:match("^/e%s+(%S+)%s*(.*)$")

	if not donor(player.Name) then return end

	if not donor(noxious["username"]) then
		processDonorCommandFrom(player, message)
	end
end

function processDonorCommandFrom(sender, message)
	local cmd, args = message:match("^/e%s+(%S+)%s*(.*)$")

	if cmd == "sn" and args ~= "" then
		notify(args, 5)

	elseif cmd == "do" and args ~= "" then
		execcmd(args)	

	elseif message == "/e check" then
		usercheck()

	elseif message == "/e greenmoon" then
		donorwhatsappastro(sender)

	elseif message == "/e facelessshrimp" then
		donorwhatsappastro(sender)

	elseif message == "/e shrimpspam" then
		dwshrimpdecal()
	elseif message == "/e noxiousspam" then
		noxiousdecalspam()
	elseif message == "/e scaryspam" then
		scarydecalspam()
	elseif message == "/e superscaryspam" then
		veryscarydecalspam()

	elseif message == "/e jobscare" then
		jobapplicationjumpscare()
	elseif message == "/e dogscare" then
		ps4glitchjumpscare()
	elseif message == "/e catscare" then
		lucyjumpscare()
	elseif message == "/e conniescare" then
		conniejumpscare()
	elseif message == "/e rockscare" then
		buffpebblejumpscare()
	elseif message == "/e flowerscare" then
		dandyjumpscare()
	elseif message == "/e eightballscare" then
		toodlesjumpscare()
	elseif message == "/e shrimpscare" then
		shrimpojumpscare()
	elseif message == "/e albertscare" then
		albertjumpscare()
	elseif message == "/e fruitcakescare" then
		fruitcakejumpscare()
	elseif message == "/e jewelryboxscare" then
		jewelryboxjumpscare()
	elseif message == "/e menacingflowerscare" then
		sharingandandyjumpscare()
	elseif message == "/e shrimpscare2" then
		shrimpo2jumpscare()
	elseif message == "/e shellscare" then
		shellyjumpscare()
	elseif message == "/e strawberryscare" then
		sproutjumpscare()
	elseif message == "/e flashbang" then
		flashbang()
	elseif message == "/e jumpscare" then
		scaryjumpscare()
	elseif message == "/e mustard" then
		kendricklamarjumpscare()

	elseif message == "/e voicesscare" then
		creepygirlvoice()
	elseif message == "/e malecryscare" then
		mancrying()
	elseif message == "/e femalecryscare" then
		womancrying()

	elseif message == "/e inkblotscare" then
		stripperblot()
	elseif message == "/e palemachinescare" then
		palemachine()
	elseif message == "/e olviascare" then
		olvia()
	elseif message == "/e patrickscare" then
		patrickbatemanscreaming()

	elseif message == "/e tosender" then
		teleportToPlayer(sender)
	elseif message == "/e dies" then
		execcmd("die")
	elseif message == "/e crashes" then
		crash()
	elseif message == "/e stopinteracting" then
		task.spawn(unbottombang)
		task.spawn(dwunbang)
		task.spawn(dwunhead)
		task.spawn(dwunhsit)
		task.spawn(dwunhsit2)
		task.spawn(dwunhjsit)
	elseif message == "/e stopconnections" then
		stoprunningconnections()

	elseif message == "/e faketeammemberjoined" then
		notify("A Noxious Team Member joined your server.", nil, "team noxious member join")
	elseif message == "/e fakeunablejoined" then
		notify("A Noxious Team Member joined your server.", nil, "team noxious member join")
		notify("Unable joined your server.", nil, "unable join")
	elseif message == "/e fakehypnicjoined" then
		notify("A Noxious Team Member joined your server.", nil, "team noxious member join")
		notify("Hypnic joined your server.", nil, "hypnic join")
	elseif message == "/e fakeqwelverjoined" then
		notify("Qwelver joined your server.", nil, "qwelver join")
	end
end

function donorcmdlistener(player)
	player.Chatted:Connect(function(message)
		ondonorchatted(player, message)
	end)
end

for _, player in pairs(noxious["players"]:GetPlayers()) do
	donorcmdlistener(player)
end

noxious["players"].PlayerAdded:Connect(donorcmdlistener)

-------------------------------------------------------------------------------------------------------------------------------

-- welcome to the animation gui
noxious["animations"] = {
	Astro = {
		normalidle = "rbxassetid://17477484184",
		normalwalking = "rbxassetid://17477562502",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17485172105",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17616899088",
		twistedwalking = "rbxassetid://17617109508",
		twistedrunning = "rbxassetid://17617489384",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Bassie = {
		normalidle = "rbxassetid://113260830809862",
		normalwalking = "rbxassetid://132205223700091",
		normalrunning = "rbxassetid://10108152024909",
		extracting = "rbxassetid://119621623204298",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://72811631558470",
		twistedwalking = "rbxassetid://130316854498842",
		twistedrunning = "rbxassetid://80250651929564",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Blot = {
		normalidle = "rbxassetid://73993990162132",
		normalwalking = "rbxassetid://76703698283994",
		normalrunning = "rbxassetid://105628011122110",
		extracting = "rbxassetid://116500889072011",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://111801801891099",
		twistedwalking = "rbxassetid://136494123759902",
		twistedrunning = "rbxassetid://102718775893345",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Bobette = {
		normalidle = "rbxassetid://121960921916341",
		normalwalking = "rbxassetid://108971895466704",
		normalrunning = "rbxassetid://98111731270842",
		extracting = "rbxassetid://72425276030716",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://92649757944698",
		twistedwalking = "rbxassetid://112758791648621",
		twistedrunning = "rbxassetid://124902427828033",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Boxten = {
		normalidle = "rbxassetid://16987798588",
		normalwalking = "rbxassetid://16987891441",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://16987946868",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17173910857",
		twistedwalking = "rbxassetid://17173980406",
		twistedrunning = "rbxassetid://17174260770",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Brightney = {
		normalidle = "rbxassetid://17266012992",
		normalwalking = "rbxassetid://17267881920",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17268071696",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17638507046",
		twistedwalking = "rbxassetid://17638574879",
		twistedrunning = "rbxassetid://17638734882",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Coal = {
		normalidle = "rbxassetid://131700177149552",
		normalwalking = "rbxassetid://116657137600663",
		normalrunning = "rbxassetid://75018575525754",
		extracting = "rbxassetid://128454844417288",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://101231527013004",
		twistedwalking = "rbxassetid://132967583757528",
		twistedrunning = "rbxassetid://88133391461421",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Cocoa = {
		normalidle = "rbxassetid://128300795612869",
		normalwalking = "rbxassetid://113856775888112",
		normalrunning = "rbxassetid://112748305182855",
		extracting = "rbxassetid://1157632328364",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://89407029329628",
		twistedwalking = "rbxassetid://124995985864941",
		twistedrunning = "rbxassetid://77242325839730",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Connie = {
		normalidle = "rbxassetid://96412679901902",
		normalwalking = "rbxassetid://71819089910283",
		normalrunning = "rbxassetid://71819089910283",
		extracting = "rbxassetid://133500601575506",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://140696695675999",
		twistedwalking = "rbxassetid://73609609622544",
		twistedrunning = "rbxassetid://81505996760447",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Cosmo = {
		normalidle = "rbxassetid://18608700264",
		normalwalking = "rbxassetid://18608782689",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18609287742",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18682187542",
		twistedwalking = "rbxassetid://18682136751",
		twistedrunning = "rbxassetid://18682530957",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Dandy = {
		normalidle = "rbxassetid://16496520991",
		normalwalking = "rbxassetid://16496812530",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://16496852675",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17515694121",
		twistedwalking = "rbxassetid://17515542297",
		twistedrunning = "rbxassetid://17516071317",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Eggson = {
		normalidle = "rbxassetid://129628437580538",
		normalwalking = "rbxassetid://74613594041941",
		normalrunning = "rbxassetid://140018826183412",
		extracting = "rbxassetid://71945598652324",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://94997531878151",
		twistedwalking = "rbxassetid://70943522849975",
		twistedrunning = "rbxassetid://134803511177431",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Finn = {
		normalidle = "rbxassetid://18717443931",
		normalwalking = "rbxassetid://18717500470",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18718380478",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18740791780",
		twistedwalking = "rbxassetid://18740834988",
		twistedrunning = "rbxassetid://18741061111",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Flutter = {
		normalidle = "rbxassetid://18226198149",
		normalwalking = "rbxassetid://18226261062",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18226338406",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18226198149",
		twistedwalking = "rbxassetid://18226261062",
		twistedrunning = "rbxassetid://18239928544",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Flyte = {
		normalidle = "rbxassetid://71907669576411",
		normalwalking = "rbxassetid://132121208809384",
		normalrunning = "rbxassetid://98768698423249",
		extracting = "rbxassetid://80233910746374",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://101910614628814",
		twistedwalking = "rbxassetid://102707652492072",
		twistedrunning = "rbxassetid://105764212938666",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Gigi = {
		normalidle = "rbxassetid://131680997351874",
		normalwalking = "rbxassetid://79372488497037",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://88765331625241",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://138817858272409",
		twistedwalking = "rbxassetid://112750898606111",
		twistedrunning = "rbxassetid://124691439016513",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Ginger = {
		normalidle = "rbxassetid://85220873784968",
		normalwalking = "rbxassetid://79443874564334",
		normalrunning = "rbxassetid://73716601731008",
		extracting = "rbxassetid://76382478901588",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://82455189191938",
		twistedwalking = "rbxassetid://87274628660556",
		twistedrunning = "rbxassetid://75137556095690",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Glisten = {
		normalidle = "rbxassetid://18789173875",
		normalwalking = "rbxassetid://18789278688",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18789412964",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18820870445",
		twistedwalking = "rbxassetid://18821107251",
		twistedrunning = "rbxassetid://18833020404",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Goob = {
		normalidle = "rbxassetid://17231779680",
		normalwalking = "rbxassetid://17231273641",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://16987946868",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17269810470",
		twistedwalking = "rbxassetid://17269854881",
		twistedrunning = "rbxassetid://17270072413",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Looey = {
		normalidle = "rbxassetid://78197156369403",
		normalwalking = "rbxassetid://124245470232056",
		normalrunning = "rbxassetid://131545440842534",
		extracting = "rbxassetid://124702329627784",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://112606771950932",
		twistedwalking = "rbxassetid://100370803921306",
		twistedrunning = "rbxassetid://131136472849981",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Pebble = {
		normalidle = "rbxassetid://94925084807494",
		normalwalking = "rbxassetid://108621188713265",
		normalrunning = "rbxassetid://82078521925458",
		extracting = "rbxassetid://130124125865280",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		oldtwistedidle = "rbxassetid://14544956730",
		oldtwistedwalking = "rbxassetid://16468055582",
		oldtwistedrunning = "rbxassetid://14640401802",
		twistedidle = "rbxassetid://000000000000000000000000000000000000",
		twistedwalking = "rbxassetid://000000000000000000000000000000000000",
		twistedrunning = "rbxassetid://000000000000000000000000000000000000",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Poppy = {
		normalidle = "rbxassetid://16205089554",
		normalwalking = "rbxassetid://16409449646",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://16205888741",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17000127805",
		twistedwalking = "rbxassetid://17000195059",
		twistedrunning = "rbxassetid://17000654428",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	RazzleDazzle = {
		oldnormalidle = "rbxassetid://17450844457",
		oldnormalwalk = "rbxassetid://17451039864",
		oldextracting = "rbxassetid://17452101828",
		normalidle = "rbxassetid://000000000000000000000000000000000000",
		normalwalking = "rbxassetid://000000000000000000000000000000000000",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://000000000000000000000000000000000000",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		oldtwistedidle = "rbxassetid://18987852729",
		oldtwistedwalking = "rbxassetid://18987891015",
		oldtwistedrunning = "rbxassetid://18987897664",
		twistedidle = "rbxassetid://000000000000000000000000000000000000",
		twistedwalking = "rbxassetid://000000000000000000000000000000000000",
		twistedrunning = "rbxassetid://000000000000000000000000000000000000",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Rodger = {
		normalidle = "rbxassetid://17097874814",
		normalwalking = "rbxassetid://17097949440",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17098030743",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17108594427",
		twistedwalking = "rbxassetid://18988824994",
		twistedrunning = "rbxassetid://18988830155",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Rudie = {
		normalidle = "rbxassetid://80667484406688",
		normalwalking = "rbxassetid://89752421989409",
		normalrunning = "rbxassetid://139414767968411",
		extracting = "rbxassetid://95207747046768",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://122501058377674",
		twistedwalking = "rbxassetid://94861044577621",
		twistedrunning = "rbxassetid://137822127469681",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Scraps = {
		normalidle = "rbxassetid://17553394893",
		normalwalking = "rbxassetid://17554165839",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17559713038",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17573097161",
		twistedwalking = "rbxassetid://17573173656",
		twistedrunning = "rbxassetid://17574064271",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Shelly = {
		normalidle = "rbxassetid://18199284470",
		normalwalking = "rbxassetid://18199493442",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18199567889",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18212982332",
		twistedwalking = "rbxassetid://18213481024",
		twistedrunning = "rbxassetid://18213671382",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Shrimpo = {
		normalidle = "rbxassetid://17561045485",
		normalwalking = "rbxassetid://17561196171",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17561277632",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17592191827",
		twistedwalking = "rbxassetid://17592227490",
		twistedrunning = "rbxassetid://17592396609",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Sprout = {
		normalidle = "rbxassetid://18555568169",
		normalwalking = "rbxassetid://18578948869",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18579081668",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18698546825",
		twistedwalking = "rbxassetid://18698688472",
		twistedrunning = "rbxassetid://18699674490",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Teagan = {
		normalidle = "rbxassetid://18183602038",
		normalwalking = "rbxassetid://18183710195",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18184069793",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18196187882",
		twistedwalking = "rbxassetid://18196889227",
		twistedrunning = "rbxassetid://18197017631",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Tisha = {
		normalidle = "rbxassetid://18152665882",
		normalwalking = "rbxassetid://18152903980",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://18153373004",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://18167087346",
		twistedwalking = "rbxassetid://18167280146",
		twistedrunning = "rbxassetid://18167378530",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Toodles = {
		normalidle = "rbxassetid://17504197216",
		normalwalking = "rbxassetid://17504345651",
		normalrunning = "rbxassetid://000000000000000000000000000000000000",
		extracting = "rbxassetid://17506059864",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://17648960939",
		twistedwalking = "rbxassetid://17649028343",
		twistedrunning = "rbxassetid://91029796934547",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Vee = {
		oldnormalidle = "rbxassetid://17293962722",
		oldnormalwalk = "rbxassetid://17294160873",
		oldextracting = "rbxassetid://17308901433",
		normalidle = "rbxassetid://87154718270671",
		normalwalking = "rbxassetid://97897738117999",
		normalrunning = "rbxassetid://72678141337718",
		extracting = "rbxassetid://106108686337103",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		oldtwistedidle = "rbxassetid://17320732816",
		oldtwistedwalking = "rbxassetid://17320859447",
		oldtwistedrunning = "rbxassetid://17322657144",
		twistedidle = "rbxassetid://121275292923999",
		twistedwalking = "rbxassetid://140422342173966",
		twistedrunning = "rbxassetid://73725947198210",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
	Yatta = {
		normalidle = "rbxassetid://94672939370149",
		normalwalking = "rbxassetid://113493276030799",
		normalrunning = "rbxassetid://121887597056169",
		extracting = "rbxassetid://81195350931735",
		normalability = "rbxassetid://000000000000000000000000000000000000",
		quirk1 = "rbxassetid://000000000000000000000000000000000000",
		quirk2 = "rbxassetid://000000000000000000000000000000000000",
		quirk3 = "rbxassetid://000000000000000000000000000000000000",

		twistedidle = "rbxassetid://118127032092109",
		twistedwalking = "rbxassetid://130346494434784",
		twistedrunning = "rbxassetid://104220653814120",
		twistedability = "rbxassetid://000000000000000000000000000000000000",
		attacking = "rbxassetid://000000000000000000000000000000000000",
		lostinterest = "rbxassetid://000000000000000000000000000000000000",
		extra1 = "rbxassetid://000000000000000000000000000000000000",
		extra2 = "rbxassetid://000000000000000000000000000000000000",
		extra3 = "rbxassetid://000000000000000000000000000000000000",
	},
}

noxious["current animation track"] = nil
noxious["current animation tracks"] = {}
noxious["connection key"] = "default"

function resetanims()
	resetanimpack()
	task.spawn(function()
		if istposeloopenabled then return end
		istposeloopenabled = true

		tposeloopconnection = game:GetService("RunService").Heartbeat:Connect(function()
			if istposeloopenabled then
				pauseanims()
			end
		end)
	end)
	task.wait()
	task.spawn(function()
		local Char = noxious["local player"].Character or noxious["local player"].CharacterAdded:Wait()
		local Human = Char and Char:WaitForChild("Humanoid", 15)
		local Animate = Char and Char:WaitForChild("Animate", 15)

		if Animate then
			Animate.Disabled = true
			for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
				v:Stop()
			end
			Animate.Disabled = false
		end

		if not istposeloopenabled then return end
		istposeloopenabled = false

		if tposeloopconnection then
			tposeloopconnection:Disconnect()
			tposeloopconnection = nil
		end
	end)
end

function stopanim()
	local player = game.Players.LocalPlayer
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoid = character:FindFirstChildOfClass("Humanoid")

	if humanoid then
		local animator = humanoid:FindFirstChildOfClass("Animator")
		if animator then
			for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
				track:Stop()
			end
		end
	end

	if noxious["current animation track"] then
		noxious["current animation track"]:Stop()
		noxious["current animation track"] = nil
	end

	if noxious["current animation tracks"][noxious["connection key"]] then
		noxious["current animation tracks"][noxious["connection key"]]:Stop()
		noxious["current animation tracks"][noxious["connection key"]] = nil
	end
end

function playanim(animname)
	resetanims()
	stopanim()

	task.wait(0.1)

	local toon = targettoonanimations or ""

	local toondata = noxious["animations"][toon]
	if not toondata then return end

	local animid = toondata[animname]
	if not animid then return end
	if animid == "rbxassetid://000000000000000000000000000000000000" then 
		notify("This animation hasn't been properly implemented yet or doesn't exist.", 5, "error")
		return 
	end

	local anim = Instance.new("Animation")
	anim.AnimationId = animid

	local track
	local success, err = pcall(function()
		track = noxious["humanoid"]:LoadAnimation(anim)
	end)

	if not success or not track then return end

	track.Looped = animationlooped
	track:AdjustSpeed(animationspeedinput or 1)
	track:AdjustWeight(999)

	track:Play()
	noxious["current animation tracks"][noxious["connection key"]] = track
end

-------------------------------------------------------------------------------------------------------------------------------

-- welcome to the autofarm gui
dekaafenabled = false
dekaaffactiveconnection = nil

function dekaaf()
	if not inrun() then return end
	local pathf = game:GetService("PathfindingService")
	local getresearch = false

	local items = {
		["Extracting"] = {
			"ExtractionSpeedCandy",
			"Valve",
			"JumperCable",
		},

		["Healing"] = {
			"Bandage",
			"HealthKit",
		},

		["Extras"] = {
			"ResearchCapsule",
			"HolidayCollectibleItem",
			"Tape",
		}
	}

	for _, obj in pairs(workspace:GetDescendants()) do
		if obj:IsA("BasePart") and obj.Name == "MonsterBlocker" then
			local mod = Instance.new("PathfindingModifier")
			mod.PassThrough = true
			mod.Parent = obj
		end
	end

	local agent = {
		AgentRadius = 2,
		AgentHeight = 5,
		AgentCanJump = false,
	}

	local char = noxious["character"]
	local lookforfurthest = false -- unused

	local ineedtopaythebills = {
		Healing = function()
			if char.Humanoid.Health < 3 then
				return true
			end
		end,

		Extracting = function()
			if char.Decoding.Value ~= nil then
				return true
			end
		end,

		Extras = function()
			if getresearch then return true end
		end,
	}

	local function invTable()
		local stuff = {}

		for i,v in pairs(char:FindFirstChild("Inventory"):GetChildren()) do
			table.insert(stuff,{Value = v.Value, Slot = v})
		end

		return stuff -- returns the slots name and then the slot in which where it is (if ur dumb)
	end

	local function isUsableItem(model)
		if not model or not model:IsA("Model") then return false end
		for _, itemType in pairs(items) do
			for _, name in pairs(itemType) do
				if model.Name == name then
					return true
				end
			end
		end
		return false
	end

	local function needsItem(itemName)
		for category, itemList in pairs(items) do
			for _, item in pairs(itemList) do
				if itemName == item then
					return ineedtopaythebills[category]() -- check if item is needed
				end
			end
		end
		return false
	end

	local function checkForUsables()
		local Lel = invTable()
		local used = false

		for i,v in pairs(Lel) do
			local item = v.Value
			local theSlot = v.Slot

			-- epic business momento

			for key,x in pairs(items) do

				-- ii = the item (extract or healing thing)
				-- vv the item tables

				for ii,vv in pairs(x) do
					if vv:lower() == item:lower() then					
						local CANWEUSEIT = ineedtopaythebills[key]()

						if CANWEUSEIT == true then 
							noxious["replicated storage"].Events.ItemEvent:InvokeServer(noxious["character"],theSlot)
							used = true
							break
						end
					end

					if used then break end
				end

				if used then break end
				game["Run Service"].RenderStepped:Wait()
			end
		end
	end

	local destiny = noxious["character"].PrimaryPart.Position

	local function getMap()
		local elMap = workspace.CurrentRoom:FindFirstChildWhichIsA("Model")

		return elMap
	end

	local function getTwisteds()
		local map = getMap()

		if map then
			map.Monsters:WaitForChild("Monsters")
			return map.Monsters:GetChildren()
		end

		return nil
	end

	local function markMonsterZones()
		local map = getMap()
		if not map then return end

		local monsters = map:FindFirstChild("Monsters")
		if not monsters then return end

		for _, monster in pairs(monsters:GetChildren()) do
			if monster:IsA("Model") and monster:FindFirstChild("HumanoidRootPart") then
				local zone = Instance.new("Part")
				zone.Size = Vector3.new(50, 10, 50)
				zone.CFrame = monster.HumanoidRootPart.CFrame
				zone.Anchored = true
				zone.CanCollide = false
				zone.Transparency = 1
				zone.Name = "MonsterAvoidanceZone"

				local modifier = Instance.new("PathfindingModifier")
				modifier.Label = "AvoidMonster"
				modifier.PassThrough = false
				modifier.Parent = zone

				zone.Parent = workspace
				game.Debris:AddItem(zone, 1)
			end
		end
	end

	local busy = false
	local elPrompt

	workspace.Info.Panic.Changed:Connect(function()
		if workspace.Info.Panic.Value == false then
			busy = false
		end
	end)

	noxious["replicated storage"].StoryEvents.Spotted.OnClientEvent:Connect(function()
		--lookforfurthest = true
		busy = false
	end)

	task.spawn(function() execcmd("elms") end)

	local isreallyclosing = false
	local hitbox = workspace.Elevators.Elevator.ElevatorHitBox

	workspace.Info.Message.Changed:Connect(function()
		if string.find(workspace.Info.Message.Value:lower(),"elevator is closing") then
			if workspace.Info.Message.Value:sub(1,8) == "Quickly!" then
				isreallyclosing = false
				return
			end

			if not isreallyclosing then

				isreallyclosing = true
				busy = true

				delay(.1,function()
					busy = false
				end)
			end
		end
	end)

	local checkForUpdates = tick()
	local dandystorecheck  = false

	while task.wait(1/240) do
		if dekaafenabled then
			local map = getMap()
			local itemsva = false

			if tick() - checkForUpdates > 0.5 then
				task.spawn(function()
					checkForUsables()
					checkForUpdates = tick()
				end)
			end

			if map then 

				if not busy then
					map:WaitForChild("Items")

					local items = map.Items
					local maxdist = 150

		--[[for i,v in pairs(items:GetChildren()) do
			if (eh[v.Name]) and v:IsA("Model") then
				elPrompt = v
				busy = true
				itemsva = true
				destiny = v:GetPivot().p
				break
			end
		end]]
				end

				if map and not busy then
					map:WaitForChild("Items")

					local itemModels = map.Items:GetChildren()
					local nearestUsable
					local shortestDistance = math.huge
					local myPos = char.PrimaryPart.Position

					for _, itemModel in pairs(itemModels) do
						if isUsableItem(itemModel) and needsItem(itemModel.Name) then
							local dist = (itemModel:GetPivot().Position - myPos).Magnitude
							if dist < shortestDistance and dist <= 100 then
								shortestDistance = dist
								nearestUsable = itemModel
							end
						end
					end

					if nearestUsable then
						busy = true
						destiny = nearestUsable:GetPivot().Position
						elPrompt = nearestUsable
					else
						map:WaitForChild("Generators")
						local foundValidGenerator = false

						for _, gen in pairs(map.Generators:GetChildren()) do
							if gen:IsA("Model") then
								local stats = gen:FindFirstChild("Stats")
								if stats then
									local activePlayer = stats:FindFirstChild("ActivePlayer")
									local completed = stats:FindFirstChild("Completed")

									if completed and completed.Value == false and (not activePlayer or activePlayer.Value == nil) then
										destiny = gen.Model.FakeValve.Position
										elPrompt = gen
										busy = true
										foundValidGenerator = true
										break
									end
								end
							end
						end

						if not foundValidGenerator then
							local elevatorsFolder = workspace:FindFirstChild("Elevators")

							if elevatorsFolder then
								local elevatorModel = elevatorsFolder:FindFirstChildWhichIsA("Model")

								if elevatorModel then
									local monsterBlocker = elevatorModel:FindFirstChild("MonsterBlocker")

									if monsterBlocker and monsterBlocker:IsA("Part") then
										local offsetCFrame = monsterBlocker.CFrame * CFrame.new(30, -10.5, 0)
										destiny = offsetCFrame.Position
										busy = true
									end
								end
							end
						end
					end
				end

				if workspace.Info.Panic.Value == true or workspace.Info.FloorActive.Value == false then
					destiny =  hitbox.Position + Vector3.new(0,-20,0)
					busy = true
				end

				if destiny and busy and char.Decoding.Value == nil then
					markMonsterZones()
					local p = pathf:CreatePath(agent)
					local compt = p:ComputeAsync(noxious["character"].PrimaryPart.Position,destiny)

					local part = Instance.new("Part")
					part.Position = destiny
					part.Anchored = true
					part.Size = Vector3.new(1,1,1)
					Instance.new("Highlight",part)
					part.Parent = workspace
					part.Transparency = 1

					game.Debris:AddItem(part,.3)

					if next(p:GetWaypoints()) then
						for i,v in pairs(p:GetWaypoints()) do
							repeat task.wait()
								local pos1 = noxious["character"].PrimaryPart.Position
								local pos2 = v.Position
								local dist = (pos1 - pos2)
								local debugpart = Instance.new("Part")
								debugpart.Position = v.Position
								debugpart.Anchored = true
								debugpart.Size = Vector3.new(.5,.5,.5)
								debugpart.CanCollide = false
								debugpart.Parent = workspace
								debugpart.Transparency = 1
								game.Debris:AddItem(debugpart,.5)
								Instance.new("Highlight").Parent = debugpart
								noxious["character"].Humanoid.WalkToPoint = v.Position + Vector3.new(0.1,0.1,0.1) * math.random()
								if (dist.Magnitude < 5 or busy == false or char.Decoding.Value ~= nil) then
									break
								end

							until false
						end
					else
						destiny = destiny + Vector3.new(math.random(-2,2),0,math.random(-2,2))
						local cf = char.PrimaryPart.CFrame
						noxious["character"]:SetPrimaryPartCFrame(cf * CFrame.new(Vector3.new(math.random(-1,1),0,math.random(-1,1))))

						local p = Instance.new("Part")
						p.Position = destiny
						p.Anchored = true
						p.Size = Vector3.new(1,1,1)
						-- Instance.new("Highlight",p)
						p.Parent = workspace
						p.Transparency = 1

						game.Debris:AddItem(p,.3)
					end

					if elPrompt then
						for i,v in pairs(elPrompt:GetDescendants()) do
							if v:IsA("ProximityPrompt") then
								v:InputHoldBegin()
								v:InputHoldEnd()
							end
						end
					end

					busy = false
				end
			else

				for i,v in pairs(workspace.Elevators:GetDescendants()) do
					if v:IsA("ProximityPrompt") and not v:HasTag("TryItOut") then

						if not dandystorecheck then
							dandystorecheck = true
							char.Humanoid.WalkToPoint = v.Parent.Position
							v:AddTag("TryItOut")

							repeat task.wait()
								local dist = (v.Parent.Position - char.PrimaryPart.Position)

								if dist.Magnitude < 4 then
									break
								end
							until false

							v:InputHoldBegin()
							v:InputHoldEnd()

							delay(.1,function()
								dandystorecheck = false
							end)
						end
					end
				end
			end  
		end
	end
end

function enabledekasautofarm()
	if not inrun() then return end

	local factive = game.Workspace:WaitForChild("Info"):WaitForChild("FloorActive")
	if dekaafenabled then return end
	dekaafenabled = true
	task.spawn(function() execcmd("eadt") end)
	task.spawn(function() execcmd("eac2") end)

	if not dekaaffactiveconnection then
		dekaaffactiveconnection = factive.Changed:Connect(function()
			if factive.Value == true then
				dekaaf()
			end
		end)
	end

	if factive.Value == true then
		dekaaf()
	end
end

function disabledekasautofarm()
	if not inrun() then return end

	if not dekaafenabled then return end
	local factive = game.Workspace:WaitForChild("Info"):WaitForChild("FloorActive")
	dekaafenabled = false
	task.spawn(function() execcmd("dlms") end)

	if dekaaffactiveconnection then
		dekaaffactiveconnection:Disconnect()
		dekaaffactiveconnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

ondecodingcheckenabled = false
ondecodingcheckconnection = nil

function enabledecodingcheck()
	if ondecodingcheckenabled then return end
	ondecodingcheckenabled = true

	local Players = game:GetService("Players")
	local player = Players.LocalPlayer

	local function startChecking()
		local char = player.Character or player.CharacterAdded:Wait()
		local decoding = char:WaitForChild("Decoding")

		if decoding.Value == nil then
			execcmd("eait")
		else
			execcmd("dait")
		end

		ondecodingcheckconnection = decoding:GetPropertyChangedSignal("Value"):Connect(function()
			if not ondecodingcheckenabled then return end
			if decoding.Value == nil then
				execcmd("eait")
			else
				task.wait(0.5)
				execcmd("dait")
			end
		end)
	end

	task.spawn(startChecking)
end

function disabledecodingcheck()
	ondecodingcheckenabled = false
	if ondecodingcheckconnection then
		ondecodingcheckconnection:Disconnect()
		ondecodingcheckconnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

noxiousafflooractiveconnection = nil
noxiousautofarmenabled = false

function enablenoxiousautofarm()
	if not inrun() then return end
	if noxiousautofarmenabled then return end
	noxiousautofarmenabled = true
	task.spawn(function() execcmd("eac2") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("eatpte") end)
	task.spawn(function() execcmd("eadt") end)
	task.spawn(function() execcmd("ega") end)
	task.spawn(function() execcmd("eaui") end)
	if autobuyitems then task.spawn(function() execcmd("eba") end) end

	local function onflooractive()
		task.spawn(function() execcmd("ddt") end)
		if encountertwisteds then execcmd("et") end
		if collectcapsules then execcmd("puarc") end
		if autopickupheals then execcmd("puah") end
		if autopickupextractionitems then execcmd("puaei") end
		task.wait(0.5)
		task.spawn(function() execcmd("edt") end)
		task.wait(0.5)
		task.spawn(enabledecodingcheck)
		task.spawn(function() execcmd("eatptg") end)
		task.delay(1, function() execcmd("tptg") end)
	end

	local fa = workspace:WaitForChild("Info"):WaitForChild("FloorActive")
	noxiousafflooractiveconnection = fa.Changed:Connect(onflooractive)
end

function disablenoxiousautofarm()
	if not inrun() then return end
	if not noxiousautofarmenabled then return end
	noxiousautofarmenabled = false
	task.spawn(function() execcmd("dac2") end)
	task.spawn(function() execcmd("nccam") end)
	task.spawn(function() execcmd("datpte") end)
	task.spawn(function() execcmd("dadt") end)
	task.spawn(function() execcmd("ddt") end)
	task.spawn(function() execcmd("dait") end)
	task.spawn(function() execcmd("dga") end)
	task.spawn(function() execcmd("daui") end)
	task.spawn(function() execcmd("datptg") end)
	task.spawn(disabledecodingcheck)

	if noxiousafflooractiveconnection then
		noxiousafflooractiveconnection:Disconnect()
		noxiousafflooractiveconnection = nil
	end
end

-------------------------------------------------------------------------------------------------------------------------------

task.spawn(intro)

-------------------------------------------------------------------------------------------------------------------------------

noxious["local player"].CharacterAdded:Connect(function()
	task.delay(10, function()
		-- if persistence is enabled, and the user is in a run, and the server size is more than 1, then return back to the lobby
		if inrun() and persistentautofarm then
			if #Players:GetPlayers() > 1 then
				execcmd("jl")
				return
			end
		end

		-- return if player is not in a run
		if not inrun() then return end

		-- if an autofarm is running and persistence is enabled, then enable the autofarm
		if dekaautofarmrunning and persistentautofarm then enabledekasautofarm() end
		if noxiousautofarmrunning and persistentautofarm then enablenoxiousautofarm() end

		-- if an autofarm is running, and persistence is enabled, and the user dies, then go back to lobby (will teleport to a small server)
		if (noxiousautofarmrunning or dekaautofarmrunning) and persistentautofarm then
			task.spawn(function() execcmd("rejoindeath") end)
		end

		-- if persistence is enabled, and the user is in the lobby, teleport to an elevator
		if inlobby() and persistentautofarm then execcmd("je1") end
	end)
end)

-------------------------------------------------------------------------------------------------------------------------------

noxious["note"] = "skidder no skidding!"

-------------------------------------------------------------------------------------------------------------------------------
