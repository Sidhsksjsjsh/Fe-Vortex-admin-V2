_G.Settings = {
      prefix = ":", -- default
      music = 0,
      device = "",
      AutoExecuteLink = "",
      AutoExecuteRawScript = "",
      Blacklist = "",
      BlacklistCount = 0,
      EspColor = BrickColor.new("Lime green"),
      partname = "",
      Added = false,
      Removed = false,
      kick = true,
      RemovePaused = true,
      username = true,
      LocalBotChatFunc = true,
      FreezeFling = false,
      PastedSources = false,
      banwaves = true
}

local COREGUI = game:GetService("CoreGui")
-- (15x)

-- _G.Settings.banwaves
-- _G.Settings.FreezeFling
-- _G.Settings.LocalBotChatFunc
-- _G.Settings.device
-- _G.Settings.username
local a = "Vortex Admin"
local b = "SettingsFile.lua"
function saveSettings()
    local c = game:GetService("HttpService")
    local d = c:JSONEncode(_G.Settings)
    if writefile then
        if isfolder(a) then
            writefile(a .. "-" .. b, d)
        else
            makefolder(a)
            writefile(a .. "-" .. b, d)
        end
    end
end
function loadSettings()
    local c = game:GetService("HttpService")
    if isfile(a .. "-" .. b) then
        _G.Settings = c:JSONDecode(readfile(a .. "-" .. b))
    end
end
loadSettings()

function Interface_Visible(GuiName, toggle_4)
     GuiName.Visible = toggle_4 or false
end
--[[
function AntiBypass()
if game.PlaceId == 277751860 then
game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:connect(function(child)
if child.ClassName == "BodyVelocity" or child.ClassName == "BodyGyro" then
child.Name = "power"
end
end)
else
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
end
end
--]]
function Pause()
if _G.Settings.RemovePaused == true then
game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(false)
end
end

-- noKick() < Removed
Pause()

dorjekwjosjksk = Instance.new("Sound")
dorjekwjosjksk.SoundId = "rbxassetid://216917652"
dorjekwjosjksk.Parent = game:GetService("SoundService")
dorjekwjosjksk.Name = "Notify Sound"
dorjekwjosjksk:Play()

-- Define the GUI
settingsGui = Instance.new("ScreenGui")
settingsGui.Name = "SettingsGui"
settingsGui.Parent = game.Players.LocalPlayer.PlayerGui
settingsGui.ResetOnSpawn = false

hub_q = Instance.new("TextLabel")
hub_q.Name = "TitleLabel"
hub_q.Position = UDim2.new(0.5, -150, 0.5, -100)
hub_q.Size = UDim2.new(0, 300, 0, 200)
hub_q.Text = ""
hub_q.TextColor3 = Color3.new(1, 1, 1)
hub_q.BackgroundTransparency = 1
hub_q.Parent = settingsGui
hub_q.Visible = false

mainFrame = Instance.new("ScrollingFrame")
mainFrame.Name = "MainFrame"
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Parent = hub_q

LocalInterface = Instance.new("TextLabel")
LocalInterface.Name = "TitleLabel"
LocalInterface.Position = UDim2.new(0, 0, 0, 10)
LocalInterface.Size = UDim2.new(1, 0, 0, 20)
LocalInterface.Text = "Admin Settings (BETA) | sup, " .. tostring(game.Players.LocalPlayer.DisplayName)
LocalInterface.TextColor3 = Color3.new(1, 1, 1)
LocalInterface.BackgroundTransparency = 1
LocalInterface.Parent = mainFrame

musicLabel = Instance.new("TextLabel")
musicLabel.Name = "A1"
musicLabel.Position = UDim2.new(0, 20, 0, 50)
musicLabel.Size = UDim2.new(0, 80, 0, 20)
musicLabel.Text = "anti-kick"
musicLabel.TextColor3 = Color3.new(1, 1, 1)
musicLabel.BackgroundTransparency = 1
musicLabel.Parent = mainFrame

UIButton = Instance.new("TextButton") -- pos: 0.25, 0, 0, 80 | Size: 0.25, 0, 0, 80
UIButton.Name = "A2"
UIButton.Position = UDim2.new(0.25, 0, 0, 50)
UIButton.Size = UDim2.new(0.5, 0, 0, 20)
UIButton.Text = "REMOVED"
UIButton.TextColor3 = Color3.new(1, 1, 1)
UIButton.BackgroundTransparency = 1
UIButton.Parent = mainFrame

soundLabel = Instance.new("TextLabel")
soundLabel.Name = "A3"
soundLabel.Position = UDim2.new(0, 20, 0, 70)
soundLabel.Size = UDim2.new(0, 80, 0, 20)
soundLabel.Text = "Gameplay paused"
soundLabel.TextColor3 = Color3.new(1, 1, 1)
soundLabel.BackgroundTransparency = 1
soundLabel.Parent = mainFrame

UIButton_2 = Instance.new("TextButton") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_2.Name = "A4"
UIButton_2.Position = UDim2.new(0.25, 0, 0,70)
UIButton_2.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_2.Text = "false"
UIButton_2.TextColor3 = Color3.new(1, 1, 1)
UIButton_2.BackgroundTransparency = 1
UIButton_2.Parent = mainFrame

prefixx = Instance.new("TextLabel")
prefixx.Name = "A3"
prefixx.Position = UDim2.new(0, 20, 0, 90)
prefixx.Size = UDim2.new(0, 80, 0, 20)
prefixx.Text = "prefix"
prefixx.TextColor3 = Color3.new(1, 1, 1)
prefixx.BackgroundTransparency = 1
prefixx.Parent = mainFrame

UIButton_3 = Instance.new("TextBox") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_3.Name = "A4"
UIButton_3.Position = UDim2.new(0.25, 0, 0,90)
UIButton_3.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_3.Text = _G.Settings.prefix
UIButton_3.TextColor3 = Color3.new(1, 1, 1)
UIButton_3.BackgroundTransparency = 1
UIButton_3.Parent = mainFrame

ESPCOLOR = Instance.new("TextLabel")
ESPCOLOR.Name = "A3"
ESPCOLOR.Position = UDim2.new(0, 20, 0, 110)
ESPCOLOR.Size = UDim2.new(0, 80, 0, 20)
ESPCOLOR.Text = "ESP color"
ESPCOLOR.TextColor3 = Color3.new(1, 1, 1)
ESPCOLOR.BackgroundTransparency = 1
ESPCOLOR.Parent = mainFrame

UIButton_4 = Instance.new("TextBox") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_4.Name = "A4"
UIButton_4.Position = UDim2.new(0.25, 0, 0,110)
UIButton_4.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_4.Text = "Lime green"
UIButton_4.TextColor3 = Color3.new(1, 1, 1)
UIButton_4.BackgroundTransparency = 1
UIButton_4.Parent = mainFrame

LocalCloseInterface = Instance.new("TextButton")
LocalCloseInterface.Name = "TitleLabel"
LocalCloseInterface.Position = UDim2.new(0, 0, 0, 130)
LocalCloseInterface.Size = UDim2.new(1, 0, 0, 20)
LocalCloseInterface.Text = "Close Config"
LocalCloseInterface.TextColor3 = Color3.new(1, 1, 1)
LocalCloseInterface.BackgroundTransparency = 1
LocalCloseInterface.Parent = mainFrame
LocalCloseInterface.MouseButton1Down:Connect(function()
hub_q.Visible = false
end)

-- _G.Settings = {
--      prefix = ":", -- default
--      music = 0,
--      device = "",
--      AutoExecuteLink = "",
--      AutoExecuteRawScript = "",
--      Blacklist = "",
--      BlacklistCount = 0,
--      EspColor = BrickColor.new("Lime green"),
--      partname = "",
--      Added = false,
--      Removed = false,
--      kick = true,
--      RemovePaused = false,
-- }

UIButton_3.FocusLost:Connect(function(Enter)
   if Enter then
       _G.Settings.prefix = UIButton_3.Text
       UIButton_3.Text = _G.Settings.prefix
       saveSettings()
   end
end)

UIButton_4.FocusLost:Connect(function(EnterInstance)
   if EnterInstance then
       _G.Settings.EspColor = BrickColor.new(UIButton_4.Text)
       UIButton_4.Text = _G.Settings.EspColor
       saveSettings()
   end
end)

UIButton.MouseButton1Down:Connect(function()
UIButton.Text = "REMOVED"
-- noKick()
saveSettings()
end)

UIButton_2.MouseButton1Down:Connect(function()
_G.Settings.RemovePaused = not _G.Settings.RemovePaused
UIButton_2.Text = _G.Settings.RemovePaused
Pause()
saveSettings()
end)

--[[
local game = game
local workspace = workspace
local table = table
local math = math
local task = task
local debug = debug
local coroutine = coroutine
local string = string
local Color3 = Color3
local Instance = Instance
local syn = syn 
local oth = syn and syn.oth

local unhook = oth and oth.unhook
local hook = oth and oth.hook
local lower = string.lower
local byte = string.byte
local round = math.round
local running = coroutine.running
local resume = coroutine.resume
local status = coroutine.status
local yield = coroutine.yield
local create = coroutine.create
local close = coroutine.close
local info = debug.info
]]
local function Create(instance, properties, children)
    local obj = Instance.new(instance)

    for i, v in next, properties or {} do
        obj[i] = v
        for _, child in next, children or {} do
            child.Parent = obj;
        end
    end
    return obj;
end

function Alert(title,Message,buttonname,ErrorCode)
    if getrenv then
        local ErrorPrompt = getrenv().require(COREGUI:WaitForChild("RobloxGui"):WaitForChild("Modules"):WaitForChild("ErrorPrompt")) -- File can be located in your roblox folder (C:\Users\%Username%\AppData\Local\Roblox\Versions\whateverversionitis\ExtraContent\scripts\CoreScripts\Modules)
        local prompt = ErrorPrompt.new("Default",{HideErrorCode = ErrorCode or true})
        local ErrorStoarge = Create("ScreenGui",{Parent = COREGUI,ResetOnSpawn = false})
        local thread = coroutine.running()
        prompt:setParent(ErrorStoarge)
        prompt:setErrorTitle(title)
        prompt:updateButtons({{
            Text = buttonname,
            Callback = function()
                prompt:_close()
                ErrorStoarge:Destroy()
                if thread then
                    coroutine.resume(thread)
                end
            end,
            Primary = true
        }}, 'Default')
        prompt:_open(Message)
        if thread then
            coroutine.yield(thread)
        end
    else
        warn(Message)
    end
end

-- ErrorPrompt("Start admin", "Start FE-Vortex admin?", "YES")
--]]
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local NotifyV1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
getgenv().IrisAd = true
-- local VortexUIUPDATE = loadstring(game:HttpGet("https://api.irisapp.ca/Scripts/IrisBetterNotifications.lua"))()

local Virtual = {}
Virtual.VirtualIcon = " ★"

function notify(title, content)
	NotifyV1:Notify(
               {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
               {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
               {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	dorjekwjosjksk:Play()
end

function info(title, content)
	NotifyV1:Notify(
               {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
               {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
               {Image = "http://www.roblox.com/asset/?id=9072944922", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	dorjekwjosjksk:Play()
end

function ErrorPrompt(title, content)
	NotifyV1:Notify(
               {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
               {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
               {Image = "http://www.roblox.com/asset/?id=9072920609", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	dorjekwjosjksk:Play()
end

function success(title, content)
	NotifyV1:Notify(
               {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
               {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
               {Image = "http://www.roblox.com/asset/?id=9073052584", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	dorjekwjosjksk:Play()
end

function warning(title, content)
	NotifyV1:Notify(
               {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
               {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "image"},
               {Image = "http://www.roblox.com/asset/?id=9072448788", ImageColor = Color3.fromRGB(255, 84, 84)}
        )
	dorjekwjosjksk:Play()
end

function ToggleNotify(title, content, for_false, for_true)
NotifyV1:Notify(
    {Title = tostring(title) .. " |" .. tostring(Virtual.VirtualIcon), Description = content},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 10, Type = "option"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84), Callback = function(State)
	if State == true then
            Callback(for_true)
	else
            Callback(for_false)
	end
end})
	dorjekwjosjksk:Play()
end

local cmds = {}
local speaker = game.Players.LocalPlayer
local Players = game.Players
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local hb = RunService.Heartbeat
local VoiceChatService = game:GetService("VoiceChatService")
local vim = game:service("VirtualInputManager")
local ESPenabled = false
local Mouse = speaker:GetMouse()
local FLYING = false
local QEfly = true
local iyflyspeed = 1
local vehicleflyspeed = 1
local workspace = game:GetService("Workspace")
local oofing = false
local TeleportService = game:GetService("TeleportService")
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request
local queue_on_teleport = syn and syn.queue_on_teleport or queue_on_teleport
local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local gethidden = gethiddenproperty or get_hidden_property or get_hidden_prop
local tpwalking = false
local walkto = false
local NetworkClient = game:GetService("NetworkClient")
local currentToolSize = ""
local PathService = game:GetService("PathfindingService")
local currentGripPos = ""
local nameBox = nil
local nbSelection = nil
local PARENT = nil
local swimming = false
local oldgrav = workspace.Gravity
local swimbeat = nil
local ProtocolSpam = false
local ProtocolCD = 1
local UserInputService = game:GetService("UserInputService")
local ContextActionService = game:GetService("ContextActionService")
local gotopartDelay = 0.1
local TweenService = game:GetService("TweenService")
local countb = 0
local HumanModCons = {}
local frozenParts = {}
local stats = game:GetService("Stats")
local GroupService = game:GetService("GroupService")
local Lighting = game:GetService("Lighting")
local Blur = Instance.new("BlurEffect", Lighting)
Blur.Size = 0 -- 12
--[[
function LyricsMusic(musicname)
repeat task.wait() until game:IsLoaded()

if not getgenv().executedHi then
	getgenv().executedHi = true
else
	return
end
local httprequest = (syn and syn.request) or http and http.request or http_request or (fluxus and fluxus.request) or request

local songName,plr
local debounce = false

getgenv().stopped = false

local function sendMessage(text)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end


game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents:WaitForChild('OnMessageDoneFiltering').OnClientEvent:Connect(function(msgdata)
	if plr ~= nil and (msgdata.FromSpeaker == plr or msgdata.FromSpeaker == game:GetService('Players').LocalPlayer.Name) then
		if string.lower(msgdata.Message) == '>stop' then
			getgenv().stopped = true
			debounce = true
			task.wait(3)
			debounce = false
		end
	end
	if debounce or not string.match(msgdata.Message, '>lyrics ') or string.gsub(msgdata.Message, '>lyrics', '') == '' or game:GetService('Players')[msgdata.FromSpeaker] == game:GetService('Players').LocalPlayer then
		return
	end
	debounce = true
	local speaker = msgdata.FromSpeaker
	local msg = string.lower(msgdata.Message):gsub('>lyrics ', ''):gsub('"', ''):gsub(' by ','/')
	local speakerDisplay = game:GetService('Players')[speaker].DisplayName
	plr = game:GetService('Players')[speaker].Name
	songName = string.gsub(msg, " ", ""):lower()
	local response
    local suc,er = pcall(function()
	response = httprequest({
		Url = "https://lyrist.vercel.app/api/" .. songName,
		Method = "GET",
	})
    end)
    if not suc then
	notify('Unexpected error','please retry')
	task.wait(3)
	debounce = false
	return
    end
	local lyricsData = game:GetService('HttpService'):JSONDecode(response.Body)
	local lyricsTable = {}
	if lyricsData.error and lyricsData.error == "Lyrics Not found" then
		debounce = true
		sendMessage('Lyrics were not found')
		task.wait(3)
		debounce = false
		return
	end
	for line in string.gmatch(lyricsData.lyrics, "[^\n]+") do
		table.insert(lyricsTable, line)
	end
	sendMessage('Fetched lyrics')
	task.wait(2)
	notify('Playing song requested by ' .. speakerDisplay .. ','You can stop it by typing "/stop"')
	task.wait(3)
	for i, line in ipairs(lyricsTable) do
		if getgenv().stopped then
			getgenv().stopped = false
			break
		end
		sendMessage(line)
		task.wait(4.7)
	end
	task.wait(3)
	debounce = false
	sendMessage('Ended. You can request songs again.')
end)

notify("Tutorial",'I am a lyrics bot! Type ">lyrics SongName" and I will sing the song for you!')
task.wait(2)
notify("Tutorial",'You can also do ">lyrics SongName by Author"')
end
--]]

function dragify(Frame)
    dragToggle = nil
    dragSpeed = 1
    dragInput = nil
    dragStart = nil
    dragPos = nil
    function updateInput(input)
        Delta = input.Position - dragStart
        Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
        TweenService:Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
    end
    Frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if UserInputService:GetFocusedTextBox() == nil then
            dragToggle = true
            dragStart = input.Position
            startPos = Frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragToggle = false
                end
            end)
                end
        end
    end)
    Frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)
    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragToggle then
            updateInput(input)
        end
    end)
end

local GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
local U1                         = Instance.new('TextButton', GUI_MAIN)
local U2                         = Instance.new('TextButton', U1)
local U3                         = Instance.new('TextButton', U1)
local U4                         = Instance.new('TextButton', U1)
local U5                         = Instance.new('TextButton', U1)
local U6                         = Instance.new('TextButton', U1)
local TextBar                         = Instance.new('TextBox', GUI_MAIN)
local BarSent                         = Instance.new('TextButton', TextBar)
local ToggleBypass                         = Instance.new('TextButton', TextBar)
local ToggleBypassMode                         = Instance.new('TextButton', TextBar)
local TextBarExecutor                         = Instance.new('TextBox', GUI_MAIN)
local BarButtonExecute                         = Instance.new('TextButton', TextBarExecutor)
-- choose part function ui
local Path                         = Instance.new('TextLabel', GUI_MAIN)
local ChoosePart                         = Instance.new('TextButton', Path)
local CopyPath                         = Instance.new('TextButton', Path)
local Exit_4                         = Instance.new('TextButton', Path)
-- API
local Github                         = Instance.new('TextBox', GUI_MAIN)
local WeatherCity                         = Instance.new('TextBox', GUI_MAIN)
local WeatherApiKey                         = Instance.new('TextBox', WeatherCity)
-- whisper:
local WhisperBox                         = Instance.new('TextBox', GUI_MAIN)
local WhisperPlayer                         = Instance.new('TextBox', WhisperBox)
local WhisperButton                         = Instance.new('TextButton', WhisperBox)
-- file saver:
local InFile                         = Instance.new('TextBox', GUI_MAIN)
local FileName                         = Instance.new('TextBox', InFile)
local SaveOMG                         = Instance.new('TextButton', InFile)
-- Freecam
local Control_1                         = Instance.new('TextButton', GUI_MAIN) -- W
local Control_2                         = Instance.new('TextButton', Control_1) -- A
local Control_3                         = Instance.new('TextButton', Control_1) -- S
local Control_4                         = Instance.new('TextButton', Control_1) -- D
local Control_UP                         = Instance.new('TextButton', Control_1) -- UP
local Control_Down                         = Instance.new('TextButton', Control_1) -- DOWN
local Control_LShift                         = Instance.new('TextButton', Control_1) -- Left Shift
-- command bar:
local CB                         = Instance.new('TextBox', GUI_MAIN)
-- part teleport
local PV1                         = Instance.new('TextBox', GUI_MAIN)
local PV2                         = Instance.new('TextBox', PV)
local PV3                         = Instance.new('TextButton', PV)
-- fling target
local FT1                         = Instance.new('TextBox', GUI_MAIN)
local FT2                         = Instance.new('TextButton', FT1)

GUI_MAIN.Name                      = "UI INTERFACE"

--local SOSKWKWK = "2.3.9"

local Phase1                         = Instance.new('TextLabel', GUI_MAIN)

--local identify_Label_Script = "Vortex Admin | Status: Online | Current version: " .. tostring(SOSKWKWK)

Phase1.Size                    = UDim2.new(0,0,0,30)
Phase1.BackgroundTransparency  = 1
Phase1.BackgroundColor         = BrickColor.new('Fossil')
Phase1.BorderSizePixel         = 0
Phase1.Position                = UDim2.new(0.5,-322,0,385)
Phase1.Text                    = ""
Phase1.TextColor3              = Color3.new(1,1,1) -- Offline
Phase1.TextStrokeTransparency  = 1
Phase1.TextWrapped             = true
Phase1.FontSize                = 'Size24'
Phase1.Font                    = 'SourceSansBold'
Phase1.Draggable = true
Phase1.Name = "Admin-Label"
Phase1.Visible = false

FT1.Size                    = UDim2.new(0,200,0,30)
FT1.BackgroundTransparency  = 0.5
FT1.BackgroundColor         = BrickColor.new('Fossil')
FT1.BorderSizePixel         = 0
FT1.Position                = UDim2.new(0.5,-100,0,0)
FT1.Text                    = "display name"
FT1.TextColor3              = Color3.new(1,1,1)
FT1.TextStrokeTransparency  = 1
FT1.TextWrapped             = true
FT1.FontSize                = 'Size24'
FT1.Font                    = 'SourceSansBold'
FT1.Draggable = false
FT1.Name = "FLING TARGET UI"
-- dragify(FT1)

FT2.Size                    = UDim2.new(0,200,0,30)
FT2.BackgroundTransparency  = 0.5
FT2.BackgroundColor         = BrickColor.new('Fossil')
FT2.BorderSizePixel         = 0
FT2.Position                = UDim2.new(0.5,-100,0,30)
FT2.Text                    = "FLING"
FT2.TextColor3              = Color3.new(1,1,1)
FT2.TextStrokeTransparency  = 1
FT2.TextWrapped             = true
FT2.FontSize                = 'Size24'
FT2.Font                    = 'SourceSansBold'

Interface_Visible(FT1,false)
Interface_Visible(FT2,false)

--[[
FT2.MouseButton1Down:Connect(function()

end)
--]]
PV1.Size                    = UDim2.new(0,200,0,30)
PV1.BackgroundTransparency  = 0.5
PV1.BackgroundColor         = BrickColor.new('Fossil')
PV1.BorderSizePixel         = 0
PV1.Position                = UDim2.new(0.5,-100,0,0)
PV1.Text                    = "part name (1)"
PV1.TextColor3              = Color3.new(1,1,1)
PV1.TextStrokeTransparency  = 1
PV1.TextWrapped             = true
PV1.FontSize                = 'Size24'
PV1.Font                    = 'SourceSansBold'
PV1.Draggable = false
PV1.Name = "PART TELEPORT"
-- dragify(PV1)

PV2.Size                    = UDim2.new(0,200,0,30)
PV2.BackgroundTransparency  = 0.5
PV2.BackgroundColor         = BrickColor.new('Fossil')
PV2.BorderSizePixel         = 0
PV2.Position                = UDim2.new(0.5,-100,0,30)
PV2.Text                    = "part name (2)"
PV2.TextColor3              = Color3.new(1,1,1)
PV2.TextStrokeTransparency  = 1
PV2.TextWrapped             = true
PV2.FontSize                = 'Size24'
PV2.Font                    = 'SourceSansBold'

PV3.Size                    = UDim2.new(0,200,0,30)
PV3.BackgroundTransparency  = 0.5
PV3.BackgroundColor         = BrickColor.new('Fossil')
PV3.BorderSizePixel         = 0
PV3.Position                = UDim2.new(0.5,-100,0,60)
PV3.Text                    = "Teleport"
PV3.TextColor3              = Color3.new(1,1,1)
PV3.TextStrokeTransparency  = 1
PV3.TextWrapped             = true
PV3.FontSize                = 'Size24'
PV3.Font                    = 'SourceSansBold'

Interface_Visible(PV1, false)
Interface_Visible(PV2, false)
Interface_Visible(PV3, false)

function ReturnText(UIname)
     return UIname.Text
end

local HIVTOGGLER = false
PV3.MouseButton1Down:Connect(function()
HIVTOGGLER = not HIVTOGGLER
       while wait() do
	if HIVTOGGLER == false then break end
	speaker.Character.HumanoidRootPart.CFrame = CFrame.new(ReturnText(PV1).Position)
		wait()	
	speaker.Character.HumanoidRootPart.CFrame = CFrame.new(ReturnText(PV2).Position)
    end
end)

CB.Size                    = UDim2.new(0,200,0,30)
CB.BackgroundTransparency  = 0.5
CB.BackgroundColor3         = Color3.new(0,0,1)
CB.BorderSizePixel         = 0
CB.Position                = UDim2.new(0.5,-100,0,-100) -- 50
CB.Text                    = "Command name"
CB.TextColor3              = Color3.new(1,1,1)
CB.TextStrokeTransparency  = 1
CB.TextWrapped             = true
CB.FontSize                = 'Size24'
CB.Font                    = 'SourceSansBold'
CB.Draggable = false
CB.ClearTextOnFocus = false
CB.Visible = false

CB.Name = "COMMAND BAR"
-- dragify(CB)

function OpenCmdBar()
        TweenService:Create(CB, TweenInfo.new(0.50), {Position = UDim2.new(0.5,-100,0,50)}):Play()
end

function CloseCmdBar()
        TweenService:Create(CB, TweenInfo.new(0.50), {Position = UDim2.new(0.5,-100,0,-100)}):Play()
end
-- ChangePosInterface(ui,UDim2.new(0.5,-100,0,-50))
function ChangePosInterface(UIParent,posto) -- UDim2.new(0.5,-100,0,-50)
        TweenService:Create(UIParent, TweenInfo.new(0.50), {Position = posto}):Play()
end

function ChangeSizeInterface(UIParent,SizeUI) -- UDim2.new(0.5,-100,0,-50)
        TweenService:Create(UIParent, TweenInfo.new(0.50), {Size = SizeUI}):Play()
end

OpenCmdBar()
-- CB.Changed:Connect(updatePosition)

CB.MouseEnter:Connect(function()
  CB.BackgroundTransparency = 0.5
  CB.TextTransparency = 0
  -- OpenCmdBar()
end)

Control_1.Size                    = UDim2.new(0,200,0,30)
Control_1.BackgroundTransparency  = 0.5
Control_1.BackgroundColor         = BrickColor.new('Fossil')
Control_1.BorderSizePixel         = 0
Control_1.Position                = UDim2.new(0.5,-100,0,0)
Control_1.Text                    = "↑"
Control_1.TextColor3              = Color3.new(1,1,1)
Control_1.TextStrokeTransparency  = 1
Control_1.TextWrapped             = true
Control_1.FontSize                = 'Size24'
Control_1.Font                    = 'SourceSansBold'
Control_1.Draggable = false
Control_1.Name = "FREECAM CONTROLLER"
-- dragify(Control_1)

Control_2.Size                    = UDim2.new(0,200,0,30)
Control_2.BackgroundTransparency  = 0.5
Control_2.BackgroundColor         = BrickColor.new('Fossil')
Control_2.BorderSizePixel         = 0
Control_2.Position                = UDim2.new(0.5,-100,0,60)
Control_2.Text                    = "←"
Control_2.TextColor3              = Color3.new(1,1,1)
Control_2.TextStrokeTransparency  = 1
Control_2.TextWrapped             = true
Control_2.FontSize                = 'Size24'
Control_2.Font                    = 'SourceSansBold'

Control_3.Size                    = UDim2.new(0,200,0,30)
Control_3.BackgroundTransparency  = 0.5
Control_3.BackgroundColor         = BrickColor.new('Fossil')
Control_3.BorderSizePixel         = 0
Control_3.Position                = UDim2.new(0.5,-100,0,30)
Control_3.Text                    = "↓"
Control_3.TextColor3              = Color3.new(1,1,1)
Control_3.TextStrokeTransparency  = 1
Control_3.TextWrapped             = true
Control_3.FontSize                = 'Size24'
Control_3.Font                    = 'SourceSansBold'

Control_4.Size                    = UDim2.new(0,200,0,30)
Control_4.BackgroundTransparency  = 0.5
Control_4.BackgroundColor         = BrickColor.new('Fossil')
Control_4.BorderSizePixel         = 0
Control_4.Position                = UDim2.new(0.5,-100,0,90)
Control_4.Text                    = "→"
Control_4.TextColor3              = Color3.new(1,1,1)
Control_4.TextStrokeTransparency  = 1
Control_4.TextWrapped             = true
Control_4.FontSize                = 'Size24'
Control_4.Font                    = 'SourceSansBold'

Control_UP.Size                    = UDim2.new(0,200,0,30)
Control_UP.BackgroundTransparency  = 0.5
Control_UP.BackgroundColor         = BrickColor.new('Fossil')
Control_UP.BorderSizePixel         = 0
Control_UP.Position                = UDim2.new(0.5,-100,0,120)
Control_UP.Text                    = "UP"
Control_UP.TextColor3              = Color3.new(1,1,1)
Control_UP.TextStrokeTransparency  = 1
Control_UP.TextWrapped             = true
Control_UP.FontSize                = 'Size24'
Control_UP.Font                    = 'SourceSansBold'
Control_UP.Draggable = false
-- dragify(Control_UP)

Control_Down.Size                    = UDim2.new(0,200,0,30)
Control_Down.BackgroundTransparency  = 0.5
Control_Down.BackgroundColor         = BrickColor.new('Fossil')
Control_Down.BorderSizePixel         = 0
Control_Down.Position                = UDim2.new(0.5,-100,0,150)
Control_Down.Text                    = "DOWN"
Control_Down.TextColor3              = Color3.new(1,1,1)
Control_Down.TextStrokeTransparency  = 1
Control_Down.TextWrapped             = true
Control_Down.FontSize                = 'Size24'
Control_Down.Font                    = 'SourceSansBold'

Control_LShift.Size                    = UDim2.new(0,200,0,30)
Control_LShift.BackgroundTransparency  = 0.5
Control_LShift.BackgroundColor         = BrickColor.new('Fossil')
Control_LShift.BorderSizePixel         = 0
Control_LShift.Position                = UDim2.new(0.5,-100,0,180)
Control_LShift.Text                    = "Left Shift"
Control_LShift.TextColor3              = Color3.new(1,1,1)
Control_LShift.TextStrokeTransparency  = 1
Control_LShift.TextWrapped             = true
Control_LShift.FontSize                = 'Size24'
Control_LShift.Font                    = 'SourceSansBold'

        Interface_Visible(Control_1, false)
	Interface_Visible(Control_2, false)
	Interface_Visible(Control_3, false)
	Interface_Visible(Control_4, false)
	Interface_Visible(Control_UP, false)
	Interface_Visible(Control_Down, false)
	Interface_Visible(Control_LShift, false)

InFile.Size                    = UDim2.new(0,200,0,30)
InFile.BackgroundTransparency  = 0.5
InFile.BackgroundColor         = BrickColor.new('Fossil')
InFile.BorderSizePixel         = 0
InFile.Position                = UDim2.new(0.5,-100,0,0)
InFile.Text                    = "Enter script (loadstring only)"
InFile.TextColor3              = Color3.new(1,1,1)
InFile.TextStrokeTransparency  = 1
InFile.TextWrapped             = true
InFile.FontSize                = 'Size24'
InFile.Font                    = 'SourceSansBold'
InFile.Draggable = false
InFile.Name = "FILE SAVER"
-- dragify(InFile)

SaveOMG.Size                    = UDim2.new(0,200,0,30)
SaveOMG.BackgroundTransparency  = 0.5
SaveOMG.BackgroundColor         = BrickColor.new('Fossil')
SaveOMG.BorderSizePixel         = 0
SaveOMG.Position                = UDim2.new(0.5,-100,0,60)
SaveOMG.Text                    = "save file"
SaveOMG.TextColor3              = Color3.new(1,1,1)
SaveOMG.TextStrokeTransparency  = 1
SaveOMG.TextWrapped             = true
SaveOMG.FontSize                = 'Size24'
SaveOMG.Font                    = 'SourceSansBold'

FileName.Size                    = UDim2.new(0,200,0,30)
FileName.BackgroundTransparency  = 0.5
FileName.BackgroundColor         = BrickColor.new('Fossil')
FileName.BorderSizePixel         = 0
FileName.Position                = UDim2.new(0.5,-100,0,30)
FileName.Text                    = "File name"
FileName.TextColor3              = Color3.new(1,1,1)
FileName.TextStrokeTransparency  = 1
FileName.TextWrapped             = true
FileName.FontSize                = 'Size24'
FileName.Font                    = 'SourceSansBold'

Github.Size                    = UDim2.new(0,200,0,30)
Github.BackgroundTransparency  = 0.5
Github.BackgroundColor         = BrickColor.new('Fossil')
Github.BorderSizePixel         = 0
Github.Position                = UDim2.new(0.5,-100,0,0)
Github.Text                    = ""
Github.TextColor3              = Color3.new(1,1,1)
Github.TextStrokeTransparency  = 1
Github.TextWrapped             = true
Github.FontSize                = 'Size24'
Github.Font                    = 'SourceSansBold'
Github.Draggable = false
Github.Name = "GITHUB USERNAME UI"
-- dragify(Github)

WeatherCity.Size                    = UDim2.new(0,200,0,30)
WeatherCity.BackgroundTransparency  = 0.5
WeatherCity.BackgroundColor         = BrickColor.new('Fossil')
WeatherCity.BorderSizePixel         = 0
WeatherCity.Position                = UDim2.new(0.5,-100,0,0)
WeatherCity.Text                    = ""
WeatherCity.TextColor3              = Color3.new(1,1,1)
WeatherCity.TextStrokeTransparency  = 1
WeatherCity.TextWrapped             = true
WeatherCity.FontSize                = 'Size24'
WeatherCity.Font                    = 'SourceSansBold'
WeatherCity.Draggable = false
WeatherCity.Name = "CITY NAME UI"
-- dragify(WeatherCity)

WeatherApiKey.Size                    = UDim2.new(0,200,0,30)
WeatherApiKey.BackgroundTransparency  = 0.5
WeatherApiKey.BackgroundColor         = BrickColor.new('Fossil')
WeatherApiKey.BorderSizePixel         = 0
WeatherApiKey.Position                = UDim2.new(0.5,-100,0,30)
WeatherApiKey.Text                    = ""
WeatherApiKey.TextColor3              = Color3.new(1,1,1)
WeatherApiKey.TextStrokeTransparency  = 1
WeatherApiKey.TextWrapped             = true
WeatherApiKey.FontSize                = 'Size24'
WeatherApiKey.Font                    = 'SourceSansBold'

WhisperBox.Size                    = UDim2.new(0,200,0,30)
WhisperBox.BackgroundTransparency  = 0.5
WhisperBox.BackgroundColor         = BrickColor.new('Fossil')
WhisperBox.BorderSizePixel         = 0
WhisperBox.Position                = UDim2.new(0.5,-100,0,0)
WhisperBox.Text                    = "Message"
WhisperBox.TextColor3              = Color3.new(1,1,1)
WhisperBox.TextStrokeTransparency  = 1
WhisperBox.TextWrapped             = true
WhisperBox.FontSize                = 'Size24'
WhisperBox.Font                    = 'SourceSansBold'
WhisperBox.Draggable = false
WhisperBox.Name = "WHISPER UI"
-- dragify(WhisperBox)

WhisperButton.Size                    = UDim2.new(0,200,0,30)
WhisperButton.BackgroundTransparency  = 0.5
WhisperButton.BackgroundColor         = BrickColor.new('Fossil')
WhisperButton.BorderSizePixel         = 0
WhisperButton.Position                = UDim2.new(0.5,-100,0,60)
WhisperButton.Text                    = "send whisper"
WhisperButton.TextColor3              = Color3.new(1,1,1)
WhisperButton.TextStrokeTransparency  = 1
WhisperButton.TextWrapped             = true
WhisperButton.FontSize                = 'Size24'
WhisperButton.Font                    = 'SourceSansBold'

WhisperPlayer.Size                    = UDim2.new(0,200,0,30)
WhisperPlayer.BackgroundTransparency  = 0.5
WhisperPlayer.BackgroundColor         = BrickColor.new('Fossil')
WhisperPlayer.BorderSizePixel         = 0
WhisperPlayer.Position                = UDim2.new(0.5,-100,0,30)
WhisperPlayer.Text                    = "Player name"
WhisperPlayer.TextColor3              = Color3.new(1,1,1)
WhisperPlayer.TextStrokeTransparency  = 1
WhisperPlayer.TextWrapped             = true
WhisperPlayer.FontSize                = 'Size24'
WhisperPlayer.Font                    = 'SourceSansBold'

WhisperPlayer.FocusLost:Connect(function(Enter)
   if Enter then
   for i,v in pairs(game.Players:GetChildren()) do
       if (string.sub(string.lower(v.Name),1,string.len(WhisperPlayer.Text))) == string.lower(WhisperPlayer.Text) then
         WhisperPlayer.Text = v.Name
     end
  end
   end
 end)

Interface_Visible(WhisperButton, false)
Interface_Visible(WhisperPlayer, false)
Interface_Visible(WhisperBox, false)

WeatherApiKey.Visible = false
WeatherCity.Visible = false
Github.Visible = false

Path.Size                    = UDim2.new(0,200,0,30)
Path.BackgroundTransparency  = 0.5
Path.BackgroundColor         = BrickColor.new('Fossil')
Path.BorderSizePixel         = 0
Path.Position                = UDim2.new(0.5,-100,0,0)
Path.Text                    = ""
Path.TextColor3              = Color3.new(1,1,1)
Path.TextStrokeTransparency  = 1
Path.TextWrapped             = true
Path.FontSize                = 'Size24'
Path.Font                    = 'SourceSansBold'
Path.Draggable = false
Path.Name = "PART or PATH NAME"
-- dragify(Path)

ChoosePart.Size                    = UDim2.new(0,200,0,30)
ChoosePart.BackgroundTransparency  = 0.5
ChoosePart.BackgroundColor         = BrickColor.new('Fossil')
ChoosePart.BorderSizePixel         = 0
ChoosePart.Position                = UDim2.new(0.5,-100,0,30)
ChoosePart.Text                    = "Select path"
ChoosePart.TextColor3              = Color3.new(1,1,1)
ChoosePart.TextStrokeTransparency  = 1
ChoosePart.TextWrapped             = true
ChoosePart.FontSize                = 'Size24'
ChoosePart.Font                    = 'SourceSansBold'

CopyPath.Size                    = UDim2.new(0,200,0,30)
CopyPath.BackgroundTransparency  = 0.5
CopyPath.BackgroundColor         = BrickColor.new('Fossil')
CopyPath.BorderSizePixel         = 0
CopyPath.Position                = UDim2.new(0.5,-100,0,60)
CopyPath.Text                    = "Copy path"
CopyPath.TextColor3              = Color3.new(1,1,1)
CopyPath.TextStrokeTransparency  = 1
CopyPath.TextWrapped             = true
CopyPath.FontSize                = 'Size24'
CopyPath.Font                    = 'SourceSansBold'


Exit_4.Size                    = UDim2.new(0,200,0,30)
Exit_4.BackgroundTransparency  = 0.5
Exit_4.BackgroundColor         = BrickColor.new('Fossil')
Exit_4.BorderSizePixel         = 0
Exit_4.Position                = UDim2.new(0.5,-100,0,90)
Exit_4.Text                    = "Close Interface"
Exit_4.TextColor3              = Color3.new(1,1,1)
Exit_4.TextStrokeTransparency  = 1
Exit_4.TextWrapped             = true
Exit_4.FontSize                = 'Size24'
Exit_4.Font                    = 'SourceSansBold'

Interface_Visible(Exit_4, false)
Interface_Visible(CopyPath, false)
Interface_Visible(ChoosePart, false)
Interface_Visible(Path, false)

--[[
SaveOMG.MouseButton1Down:Connect(function()
   if scriptfunc() then -- FileName & InFile   

   end
end
--]]

Interface_Visible(SaveOMG, false)
Interface_Visible(FileName, false)
Interface_Visible(InFile, false)

-- diff ui
TextBar.Size                    = UDim2.new(0,200,0,30)
TextBar.BackgroundTransparency  = 0.5
TextBar.BackgroundColor         = BrickColor.new('Fossil')
TextBar.BorderSizePixel         = 0
TextBar.Position                = UDim2.new(0.5,-100,0,0)
TextBar.Text                    = ""
TextBar.TextColor3              = Color3.new(1,1,1)
TextBar.TextStrokeTransparency  = 1
TextBar.TextWrapped             = true
TextBar.FontSize                = 'Size24'
TextBar.Font                    = 'SourceSansBold'
TextBar.Draggable = false
TextBar.Name = "CHAT BYPASS UI"
-- dragify(TextBar)

BarSent.Size                    = UDim2.new(0,200,0,30)
BarSent.BackgroundTransparency  = 0.5
BarSent.BackgroundColor         = BrickColor.new('Fossil')
BarSent.BorderSizePixel         = 0
BarSent.Position                = UDim2.new(0.5,-100,0,30)
BarSent.Text                    = "Send [Bypass: AUTO]"
BarSent.TextColor3              = Color3.new(1,1,1)
BarSent.TextStrokeTransparency  = 1
BarSent.TextWrapped             = true
BarSent.FontSize                = 'Size24'
BarSent.Font                    = 'SourceSansBold'

local BypassWord = true
ToggleBypass.Size                    = UDim2.new(0,200,0,30)
ToggleBypass.BackgroundTransparency  = 0.5
ToggleBypass.BackgroundColor         = BrickColor.new('Fossil')
ToggleBypass.BorderSizePixel         = 0
ToggleBypass.Position                = UDim2.new(0.5,-100,0,60)
ToggleBypass.Text                    = "Disable Bypass"
ToggleBypass.TextColor3              = Color3.new(1,1,1)
ToggleBypass.TextStrokeTransparency  = 1
ToggleBypass.TextWrapped             = true
ToggleBypass.FontSize                = 'Size24'
ToggleBypass.Font                    = 'SourceSansBold'
ToggleBypass.Visible = false
ToggleBypass.MouseButton1Down:Connect(function()
	BypassWord = not BypassWord
		if BypassWord then
			BarSent.Text                    = "Send [Bypass: ON]"
			ToggleBypass.Text                    = "Disable Bypass"
			else
			BarSent.Text                    = "Send [Bypass: OFF]"
			ToggleBypass.Text                    = "Enable Bypass"
     end
end)
-- ToggleBypassMode
local AutoSendScript = false
ToggleBypassMode.Size                    = UDim2.new(0,200,0,30)
ToggleBypassMode.BackgroundTransparency  = 0.5
ToggleBypassMode.BackgroundColor         = BrickColor.new('Fossil')
ToggleBypassMode.BorderSizePixel         = 0
ToggleBypassMode.Position                = UDim2.new(0.5,-100,0,60)
ToggleBypassMode.Text                    = "Auto Send: False"
ToggleBypassMode.TextColor3              = Color3.new(1,1,1)
ToggleBypassMode.TextStrokeTransparency  = 1
ToggleBypassMode.TextWrapped             = true
ToggleBypassMode.FontSize                = 'Size24'
ToggleBypassMode.Font                    = 'SourceSansBold'
ToggleBypassMode.MouseButton1Down:Connect(function()
	AutoSendScript = not AutoSendScript
		if AutoSendScript then
			ToggleBypassMode.Text                    = "Auto Send: True"
			BarSent.Visible = false
                        ChangePosInterface(ToggleBypass,UDim2.new(0.5,-100,0,30))
			ChangePosInterface(ToggleBypassMode,UDim2.new(0.5,-100,0,30))
			else
			ToggleBypassMode.Text                    = "Auto Send: False"
			BarSent.Visible = true
                        ChangePosInterface(ToggleBypass,UDim2.new(0.5,-100,0,60))
			ChangePosInterface(ToggleBypassMode,UDim2.new(0.5,-100,0,60))
     end
end)

TextBarExecutor.Size                    = UDim2.new(0,200,0,30)
TextBarExecutor.BackgroundTransparency  = 0.5
TextBarExecutor.BackgroundColor         = BrickColor.new('Fossil')
TextBarExecutor.BorderSizePixel         = 0
TextBarExecutor.Position                = UDim2.new(0.5,-100,0,0)
TextBarExecutor.Text                    = "Link here!"
TextBarExecutor.TextColor3              = Color3.new(1,1,1)
TextBarExecutor.TextStrokeTransparency  = 1
TextBarExecutor.TextWrapped             = true
TextBarExecutor.FontSize                = 'Size24'
TextBarExecutor.Font                    = 'SourceSansBold'
TextBarExecutor.Draggable = false
TextBarExecutor.Name = "LINK EXECUTE"
-- dragify(TextBarExecutor)

BarButtonExecute.Size                    = UDim2.new(0,200,0,30)
BarButtonExecute.BackgroundTransparency  = 0.5
BarButtonExecute.BackgroundColor         = BrickColor.new('Fossil')
BarButtonExecute.BorderSizePixel         = 0
BarButtonExecute.Position                = UDim2.new(0.5,-100,0,30)
BarButtonExecute.Text                    = "Execute"
BarButtonExecute.TextColor3              = Color3.new(1,1,1)
BarButtonExecute.TextStrokeTransparency  = 1
BarButtonExecute.TextWrapped             = true
BarButtonExecute.FontSize                = 'Size24'
BarButtonExecute.Font                    = 'SourceSansBold'
BarButtonExecute.Visible = false
TextBarExecutor.Visible = false

TextBar.Visible = false
BarSent.Visible = false
ToggleBypassMode.Visible = false

U1.Size                    = UDim2.new(0,200,0,30)
U1.BackgroundTransparency  = 0.5
U1.BackgroundColor         = BrickColor.new('Fossil')
U1.BorderSizePixel         = 0
U1.Position                = UDim2.new(0, 56, 0, 215) -- 245
U1.Text                    = "↑"
U1.TextColor3              = Color3.new(1,1,1)
U1.TextStrokeTransparency  = 1
U1.TextWrapped             = true
U1.FontSize                = 'Size24'
U1.Font                    = 'SourceSansBold'
U1.Draggable = false
U1.Name = "FLY MOBILE CONTROLLER"

U2.Size                    = UDim2.new(0,200,0,30)
U2.BackgroundTransparency  = 0.5
U2.BackgroundColor         = BrickColor.new('Fossil')
U2.BorderSizePixel         = 0
U2.Position                = UDim2.new(0.5,-100,0,30)
U2.Text                    = "↓"
U2.TextColor3              = Color3.new(1,1,1)
U2.TextStrokeTransparency  = 1
U2.TextWrapped             = true
U2.FontSize                = 'Size24'
U2.Font                    = 'SourceSansBold'

U3.Size                    = UDim2.new(0,200,0,30)
U3.BackgroundTransparency  = 0.5
U3.BackgroundColor         = BrickColor.new('Fossil')
U3.BorderSizePixel         = 0
U3.Position                = UDim2.new(0.5,-100,0,60)
U3.Text                    = "←"
U3.TextColor3              = Color3.new(1,1,1)
U3.TextStrokeTransparency  = 1
U3.TextWrapped             = true
U3.FontSize                = 'Size24'
U3.Font                    = 'SourceSansBold'

U4.Size                    = UDim2.new(0,200,0,30)
U4.BackgroundTransparency  = 0.5
U4.BackgroundColor         = BrickColor.new('Fossil')
U4.BorderSizePixel         = 0
U4.Position                = UDim2.new(0.5,-100,0,90)
U4.Text                    = "→"
U4.TextColor3              = Color3.new(1,1,1)
U4.TextStrokeTransparency  = 1
U4.TextWrapped             = true
U4.FontSize                = 'Size24'
U4.Font                    = 'SourceSansBold'

U5.Size                    = UDim2.new(0,200,0,30)
U5.BackgroundTransparency  = 0.5
U5.BackgroundColor         = BrickColor.new('Fossil')
U5.BorderSizePixel         = 0
U5.Position                = UDim2.new(0.5,-100,0,120)
U5.Text                    = "UP"
U5.TextColor3              = Color3.new(1,1,1)
U5.TextStrokeTransparency  = 1
U5.TextWrapped             = true
U5.FontSize                = 'Size24'
U5.Font                    = 'SourceSansBold'
U5.Draggable = false

U6.Size                    = UDim2.new(0,200,0,30)
U6.BackgroundTransparency  = 0.5
U6.BackgroundColor         = BrickColor.new('Fossil')
U6.BorderSizePixel         = 0
U6.Position                = UDim2.new(0.5,-100,0,150)
U6.Text                    = "DOWN"
U6.TextColor3              = Color3.new(1,1,1)
U6.TextStrokeTransparency  = 1
U6.TextWrapped             = true
U6.FontSize                = 'Size24'
U6.Font                    = 'SourceSansBold'

_G.ToggleKey = 'E'

local VortexUICmd = Instance.new('ScreenGui')
local Main = Instance.new('ImageLabel')
local Title = Instance.new('TextLabel')
local ScrollingFrame = Instance.new('ScrollingFrame')
local UIListLayout = Instance.new('UIListLayout')
local UIAspectRatioConstraint = Instance.new('UIAspectRatioConstraint')
local MainCmdbar = Instance.new('ImageLabel')
local TextBox = Instance.new('TextBox')
local Example = Instance.new('TextLabel')

local char = speaker.Character

VortexUICmd.Parent = COREGUI

Main.Name = 'Main'
Main.Parent = VortexUICmd
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1
Main.Position = UDim2.new(0.99, 0, 0.652, 0)
Main.Size = UDim2.new(0, 189, 0, 212)
Main.Image = 'rbxassetid://3570695787'
Main.ImageColor3 = Color3.fromRGB(20, 20, 20)
Main.ScaleType = Enum.ScaleType.Slice
Main.SliceCenter = Rect.new(100, 100, 100, 100)
Main.SliceScale = 0.120

Title.Name = 'Title'
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(-0.383801281, 0, 0.385744482, 0)
Title.Rotation = 90
Title.TextScaled = false
Title.Size = UDim2.new(0, 165, 0, 48)
Title.Font = Enum.Font.SourceSans
Title.Text = "VORTEX V2.0.0" -- V        O        R        T        E        X
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.121894635, 0, 0.0822094604, 0)
ScrollingFrame.Size = UDim2.new(0, 165, 0, 194)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 5, 0)
ScrollingFrame.ScrollBarThickness = 3

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

UIAspectRatioConstraint.Parent = UIListLayout

MainCmdbar.Name = 'MainCmdbar'
MainCmdbar.Parent = VortexUICmd
MainCmdbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainCmdbar.BackgroundTransparency = 1
MainCmdbar.Position = UDim2.new(2.885, 0, 0.61, 0)
MainCmdbar.Size = UDim2.new(0, 249, 0, 37)
MainCmdbar.Image = 'rbxassetid://3570695787'
MainCmdbar.ImageColor3 = Color3.fromRGB(20, 20, 20)
MainCmdbar.ScaleType = Enum.ScaleType.Slice
MainCmdbar.SliceCenter = Rect.new(100, 100, 100, 100)
MainCmdbar.SliceScale = 2

TextBox.Parent = MainCmdbar
TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.02, 0, 0, 0)
TextBox.Size = UDim2.new(0, 203, 0, 37)
TextBox.Font = Enum.Font.SourceSansLight
TextBox.Text = ''
TextBox.TextColor3 = Color3.fromRGB(229, 229, 229)
TextBox.TextSize = 17
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

Example.Name = 'Example'
Example.Parent = Main
Example.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Example.BackgroundTransparency = 1
Example.BorderSizePixel = 0
Example.Position = UDim2.new(-2.04146218, 0, 0.0974030718, 0)
Example.Size = UDim2.new(0, 175, 0, 19)
Example.ZIndex = 2
Example.Font = Enum.Font.SourceSans
Example.Text = 'Tora#4172'
Example.TextColor3 = Color3.fromRGB(180, 180, 180)
Example.TextScaled = true
Example.TextSize = 14
Example.TextStrokeColor3 = Color3.fromRGB(244, 244, 244)
Example.TextTransparency = 1
Example.TextWrapped = true
Example.TextXAlignment = Enum.TextXAlignment.Left

function newcmd(TextBox)
    local TextLabel = Instance.new('TextLabel')
    TextLabel.Parent = ScrollingFrame
    TextLabel.Name = 'Command'
    TextLabel.Text = TextBox
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Size = UDim2.new(0, 237, 0, 23)
    TextLabel.Font = Enum.Font.SourceSans 
    TextLabel.TextColor3 = Color3.fromRGB(180, 180, 180)
    TextLabel.TextSize = 16
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
end

-- newcmd('print [Value]')

spawn(function()
    TweenService:Create(MainCmdbar, TweenInfo.new(0.50), {Position = UDim2.new(0.885, 0, 0.61, 0)}):Play()
end)
TweenService:Create(Main, TweenInfo.new(0.75), {Position = UDim2.new(0.9, 0, 0.652, 0)}):Play()
wait(1.5)
TweenService:Create(MainCmdbar, TweenInfo.new(4), {Position = UDim2.new(2, 0, 0.61, 0)}):Play()
TweenService:Create(Main, TweenInfo.new(0.5), {Position = UDim2.new(0.99, 0, 0.652, 0)}):Play()

speaker:GetMouse().KeyDown:Connect(function(key)
	if key == _G.ToggleKey then
	    wait()
	    TextBox:CaptureFocus()
	    spawn(function()
                Blur.Size = 7
	        TweenService:Create(MainCmdbar, TweenInfo.new(0.50), {Position = UDim2.new(0.885, 0, 0.61, 0)}):Play()
	    end)
	    TweenService:Create(Main, TweenInfo.new(0.75), {Position = UDim2.new(0.9, 0, 0.652, 0)}):Play()
	end
end)

TextBox.FocusLost:Connect(function()
    TextBox.Text = ''
    Blur.Size = 0
    TweenService:Create(MainCmdbar, TweenInfo.new(4), {Position = UDim2.new(2, 0, 0.61, 0)}):Play()
    TweenService:Create(Main, TweenInfo.new(0.5), {Position = UDim2.new(0.99, 0, 0.652, 0)}):Play()
end)

Main.MouseEnter:Connect(function()
    spawn(function()
        Blur.Size = 7.5
        TweenService:Create(MainCmdbar, TweenInfo.new(0.50), {Position = UDim2.new(0.885, 0, 0.61, 0)}):Play()
    end)
    TweenService:Create(Main, TweenInfo.new(0.75), {Position = UDim2.new(0.9, 0, 0.652, 0)}):Play()
end)

Main.MouseLeave:Connect(function()
    Blur.Size = 0
    TweenService:Create(MainCmdbar, TweenInfo.new(4), {Position = UDim2.new(2, 0, 0.61, 0)}):Play()
    TweenService:Create(Main, TweenInfo.new(0.5), {Position = UDim2.new(0.99, 0, 0.652, 0)}):Play()
end)

-- TextBox.FocusLost:Connect(function(cmd)



local IsTPing  = false
local LPost = CFrame.new(0, 0, 0)
	
function MarkTarget()
if game:GetService("Workspace"):FindFirstChild("BlockMark") then
	game:GetService("Workspace"):FindFirstChild("BlockMark"):Destroy()
end

local part = Instance.new("Part")
part.Size = Vector3.new(2, 2, 2)
part.BrickColor = BrickColor.new("Bright green")
part.Transparency = 0.5
part.Name = "BlockMark"
part.Anchored = true
part.CanCollide = false
part.Position = speaker.Character.HumanoidRootPart.Position

part.Parent = game:GetService("Workspace")
--[[
while true do
    part.CFrame = part.CFrame * CFrame.Angles(0, math.rad(1), 0)
    wait()
end
--]]
end

function SetPartPosition(PartName, SecondPartPos, PartColor) -- BlockMark
	game:GetService("Workspace"):FindFirstChild(PartName).CFrame = CFrame.new(SecondPartPos)
	game:GetService("Workspace"):FindFirstChild(PartName).BrickColor = BrickColor.new(PartColor or "Bright red")
end

fade = function(obj, len, props)
    TweenService:Create(obj, TweenInfo.new(len, Enum.EasingStyle.Sine), props):Play()
end

_G.API_EXPLOIT = {}
_G.UrlList = {}
_G.DataInfoType = {}
--function HttpGet(userLink)
--	return game:HttpGet(userLink)
--end
_G.UserBio = {}
_G.UserDate = {}
function GetPlayerInfoByScript(targetTrack,dataType)
    local user = game:HttpGet("https://users.roblox.com/v1/users/" .. tostring(Players[targetTrack]))
    local jsonData = HttpService:JSONDecode(user)
    
    if dataType == "getBio" then
        local bio = jsonData["bio"]
        table.insert(_G.UserBio, bio)
        return table.concat(_G.UserBio,', ')

    elseif dataType == "getCreated" then
        local date = jsonData["created"]:sub(1,10)
        local splitDates = string.split(date, "-")
        local formattedDate = tostring(splitDates[2]) .. "/" .. tostring(splitDates[3]) .. "/" .. tostring(splitDates[1])
        
        table.insert(_G.UserDate,formattedDate)
        return table.concat(_G.UserDate,', ')

    else
        return "Fatal Error: Invalid JSON string or type."
    end
end

function getEquippedTool(player)
        local char = player.Character
        local polvus = char and char:FindFirstChildWhichIsA("Tool")
    
        if polvus ~= nil then
            return "[ " .. tostring(polvus.Name) .. " ]"
        else
            return "[ None ]"
        end
    end

U1.Visible = false
U2.Visible = false
U3.Visible = false
U4.Visible = false
U5.Visible = false
U6.Visible = false
--[[
getgenv().isOrbiting = false

local characterss = speaker.Character or speaker.CharacterAdded:Wait()
local humanoid = characterss:WaitForChild("Humanoid")
local rootPart = characterss:WaitForChild("HumanoidRootPart")

local center = rootPart.Position
local distance = 10
local angle = math.pi / 2


function orbit(user) -- 1
    getgenv().isOrbiting = true

    if not user then -- 2
      return
    else
        coroutine.wrap(function() -- 3
            while wait() do
                if not getgenv().isOrbiting then
                    break
                end

                local angular = tick() * angle
                local center = user.Character.HumanoidRootPart.Position

                local x = center.X + distance * math.cos(angular)
                local y = center.Y
                local z = center.Z + distance * math.sin(angular)

                rootPart.CFrame = CFrame.new(Vector3.new(x, y, z))
                rootPart.CFrame = CFrame.new(rootPart.Position, center)
            end
        end)
    end
end
--]]

local orbit = {
	eclipse = 1,
	radius = 8,
	speed = 8
}

-- Create a new ScreenGui object
local ShitGui = Instance.new("ScreenGui")
ShitGui.Name = "TPPOINT"
ShitGui.Parent = speaker.PlayerGui
ShitGui.ResetOnSpawn = false

-- Create a ScrollingFrame object
local fuckingFrame = Instance.new("ScrollingFrame")
fuckingFrame.Name = "InterfaceScrollingFrame"
fuckingFrame.Size = UDim2.new(0, 200, 0, 300)
fuckingFrame.Position = UDim2.new(0.5, -100, 0.5, -150)
fuckingFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
fuckingFrame.ScrollBarThickness = 8
fuckingFrame.Parent = ShitGui
fuckingFrame.Visible = false

local AddInterfaceEvent = {
        {Name = "Event {%s} - {%s}", Event = "{%s}"},
}

local InterfaceCoordFunction = {}

function RefreshInterface()
-- Add some UI elements to the InterfaceScrollingFrame
for i = 1, #InterfaceCoordFunction do
    local BitchLabel = Instance.new("TextButton")
    BitchLabel.Name = "Bitch"
    BitchLabel.Size = UDim2.new(1, 0, 0, 50)
    BitchLabel.Position = UDim2.new(0, 0, 0, (i - 1) * 50)
    BitchLabel.BackgroundTransparency = 0.5
    BitchLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    BitchLabel.Text = InterfaceCoordFunction[i].NAME
    BitchLabel.Parent = fuckingFrame

BitchLabel.MouseButton1Down:Connect(function()
for i,_ in pairs(InterfaceCoordFunction) do
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					wait(.1)
				end
				speaker.Character.HumanoidRootPart.CFrame = CFrame.new(InterfaceCoordFunction[i].COORD[1].Position)
			end
end)
end
end
--[[
function RotationData(RDataImg, TitleNameScript)
local DataAnimate = Instance.new('ScreenGui', game.CoreGui)
local OBU = Instance.new('ImageLabel', DataAnimate)
local TitleLoading = Instance.new('TextLabel', DataAnimate)


DataAnimate.Name = "><"


OBU.Size = UDim2.new(0,150,0,150)
OBU.BackgroundTransparency = 0.5
OBU.BackgroundColor = BrickColor.new('Fossil')
OBU.BorderSizePixel = 0
OBU.Position = UDim2.new(0.5,-100,0,0)
OBU.Image = "rbxassetid://" .. RDataImg
OBU.BackgroundTransparency = 100

TitleLoading.Size                    = UDim2.new(0,200,0,30)
TitleLoading.BackgroundTransparency  = 0.5
TitleLoading.BackgroundColor         = BrickColor.new('Fossil')
TitleLoading.BorderSizePixel         = 0
TitleLoading.Position                = UDim2.new(0.5,-100,0,30)
TitleLoading.Text                    = TitleNameScript
TitleLoading.TextColor3              = Color3.new(1,1,1)
TitleLoading.TextStrokeTransparency  = 1
TitleLoading.TextWrapped             = true
TitleLoading.FontSize                = 'Size24'
TitleLoading.Font                    = 'SourceSansBold'
TitleLoading.BackgroundTransparency = 100

local Pos = UDim2.new(0, 380, 0, 60)
local SizeUI = UDim2.new(0, 150, 0, 150)
local Pos2 = UDim2.new(0, 360, 0, -300)

-- create the Tween
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(
    2, -- duration
    Enum.EasingStyle.Quint, -- easing style
    Enum.EasingDirection.Out -- easing direction
)

local RotationSTART_B1 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 360 -- 360
}

local RotationSTART_B2 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 720
}

local RotationSTART_B3 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 1080 -- 360
}

local RotationSTART_B4 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 1440
}

local RotationSTOP = {
    Size = SizeUI,
    Position = Pos2,
    Rotation = 1800
}

local Rotation_A1 = tweenService:Create(OBU, tweenInfo, RotationSTART_B1)

local Rotation_A2 = tweenService:Create(OBU, tweenInfo, RotationSTART_B2)

local Rotation_A3 = tweenService:Create(OBU, tweenInfo, RotationSTART_B3)

local Rotation_A4 = tweenService:Create(OBU, tweenInfo, RotationSTART_B4)

local Rotation_Stop = tweenService:Create(OBU, tweenInfo, RotationSTOP)

Blur.Size = 12
OBU.Visible = true
TitleLoading.Visible = true
Rotation_A1:Play()
Rotation_A1.Completed:Wait()
Rotation_A2:Play()
Rotation_A2.Completed:Wait()
Rotation_A3:Play()
Rotation_A3.Completed:Wait()
Rotation_A4:Play()
Rotation_A4.Completed:Wait()
Rotation_Stop:Play()
TitleLoading:Destroy()
Rotation_Stop.Completed:Wait()
Blur.Size = 0
OBU:Destroy()
end

function ShakeData(Img)
local DataAnimate = Instance.new('ScreenGui', game.CoreGui)
local OBU = Instance.new('ImageLabel', DataAnimate)


DataAnimate.Name = "<>"


OBU.Size = UDim2.new(0,150,0,150)
OBU.BackgroundTransparency = 0.5
OBU.BackgroundColor = BrickColor.new('Fossil')
OBU.BorderSizePixel = 0
OBU.Position = UDim2.new(0.5,-100,0,0)
OBU.Image = "rbxassetid://" .. Img
OBU.BackgroundTransparency = 100

local Pos = UDim2.new(0, 380, 0, 60)
local SizeUI = UDim2.new(0, 150, 0, 150)
local Pos2 = UDim2.new(0, 360, 0, -300)

-- create the Tween
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(
    2, -- duration
    Enum.EasingStyle.Quint, -- easing style
    Enum.EasingDirection.Out -- easing direction
)

local RotationSTART_B1 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 30 -- 360
}

local RotationSTART_B2 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = -30
}

local RotationSTOP = {
    Size = SizeUI,
    Position = Pos2,
    Rotation = 0
}

local Rotation_A1 = tweenService:Create(OBU, tweenInfo, RotationSTART_B1)

local Rotation_A2 = tweenService:Create(OBU, tweenInfo, RotationSTART_B2)

local Rotation_Stop = tweenService:Create(OBU, tweenInfo, RotationSTOP)

Blur.Size = 12
OBU.Visible = true
Rotation_A1:Play()
Rotation_A1.Completed:Wait()
Rotation_A2:Play()
Rotation_A2.Completed:Wait()
Rotation_A1:Play()
Rotation_A1.Completed:Wait()
Rotation_Stop:Play()
Rotation_Stop.Completed:Wait()
Blur.Size = 0
OBU:Destroy()
end

function AppearData(DataImgV1)
local DataAnimate = Instance.new('ScreenGui', game.CoreGui)
local OBU = Instance.new('ImageLabel', DataAnimate)


DataAnimate.Name = "SyncAppearData"


OBU.Size = UDim2.new(0,150,0,150)
OBU.BackgroundTransparency = 0.5
OBU.BackgroundColor = BrickColor.new('Fossil')
OBU.BorderSizePixel = 0
OBU.Position = UDim2.new(0.5,-100,0,0)
OBU.Image = "rbxassetid://" .. DataImgV1
OBU.BackgroundTransparency = 100

local Pos = UDim2.new(0, 380, 0, 60)
local SizeUI = UDim2.new(0, 150, 0, 150)
local Pos2 = UDim2.new(0, 360, 0, -300)

-- create the Tween
local tweenService = game:GetService("TweenService")
local tweenInfo = TweenInfo.new(
    2, -- duration
    Enum.EasingStyle.Quint, -- easing style
    Enum.EasingDirection.Out -- easing direction
)

local RotationSTART_B1 = {
    Size = SizeUI,
    Position = Pos,
    Rotation = 0 -- 360
}

local RotationSTOP = {
    Size = SizeUI,
    Position = Pos2,
    Rotation = 0
}

local Rotation_A1 = tweenService:Create(OBU, tweenInfo, RotationSTART_B1)

local Rotation_Stop = tweenService:Create(OBU, tweenInfo, RotationSTOP)

Blur.Size = 12
OBU.Visible = true
Rotation_A1:Play()
Rotation_A1.Completed:Wait()
-- Rotation_Stop:Play()
-- Rotation_Stop.Completed:Wait()
Blur.Size = 0
OBU:Destroy()
end

-- RotationData("13030104160","Loading Admin...")
--]]
function ForceBodyPart()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait()
end)
end
end
end
--[[
function ESPName(toggle)
if toggle == "disable" then
_G.Settings.username = false
end
if toggle == "enable" then 
_G.Settings.username = true
end
end
]]

function FindInTable(tbl,val)
	if tbl == nil then return false end
	for _,v in pairs(tbl) do
		if v == val then return true end
	end 
	return false
end

function GetInTable(Table, Name)
	for i = 1, #Table do
		if Table[i] == Name then
			return i
		end
	end
	return false
end

function LoadBundle(id)
	local bundleDetails = game:GetService("AssetService"):GetBundleDetailsAsync(id)
	local HumanoidDescription = Instance.new("HumanoidDescription")
	HumanoidDescription.Name = bundleDetails.Name
	for _, bPartList in pairs(bundleDetails.Items) do
		local specialChar = (string.find(bPartList.Name, "_") ~= nil and string.find(bPartList.Name, "_")) or ((string.find(bPartList.Name, "-") ~= nil and string.find(bPartList.Name, "-")) or nil)
		if specialChar then
			local BodyPartName = string.sub(bPartList.Name, specialChar+1)
			BodyPartName = string.gsub(BodyPartName, "%s", "")
			local filter = {
				["Hat"] = "HatAccessory",
				["Hair"] = "HairAccessory",
				["Helmet"] = "HatAccessory",
			}
			if filter[BodyPartName] then
				HumanoidDescription[filter[BodyPartName]] = bPartList.Id
			else
				if HumanoidDescription[BodyPartName] ~= nil then
					HumanoidDescription[BodyPartName] = bPartList.Id
				end
			end
		end
	end
	HumanoidDescription.Parent = workspace
end

function SynchronousGameTeleport(GameID, CD, ScriptNumberAsync1)
local SyncSetTitles = game:GetService("MarketplaceService"):GetProductInfo(GameID)
local SyncTeleportScreen = Instance.new("Message", Workspace)
SyncTeleportScreen.Text = "Traveling to \n" .. SyncSetTitles.Name .. " \nplease wait about 1-5 minutes for it to teleport you to the game you choose"
for i = 1, ScriptNumberAsync1 do
workspace.CurrentCamera.FieldOfView = i
end
wait(CD)
game:GetService('TeleportService'):Teleport(GameID)
wait(1)
SyncTeleportScreen:Destroy()
end

local replace_Patched = { 
      ass = "𐌑á⁥⁥⁥⁥ѕѕ",
      cum = "с⁥⁥⁥𐌑úm",
      cock = "с𐌑ồс𐌑k",
      fuck = "f𐌑ú𐌑𝖔 ͜ ͣ c𐌑ḳ",
      asshole = "𐌑áѕѕh𐌑ol𐌑e𐌑𝖔 ͜ ͣ ",
      rape = "r𐌑áр𐌑e",
      boobs = "𐌑B𐌑o𐌑𝖔 ͜ ͣ o𐌑𝖔 ͜ ͣ b𐌑s",
      titties = "Т𐌑ìtt𐌑ìes",
      sex = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ хs",
      sexy = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ х𐌑y",
      hoe = "h𐌑ồ𐌑𝖔 ͜ ͣ е",
      porn = "р𐌑o𐌑r𐌑n",
      nigga = "n𐌑ìgg⁥𐌑á",
      penis = "р𐌑еn⁥𐌑ìs",
      beaner = "𐌑bе𐌑аn⁥е𐌑r",
      thot = "th𐌑ồt",
      xxx = "xxx",
      hentai = "h𐌑ent𐌑ái",
      bitch = "b𐌑ì𐌑t𐌑c𐌑h⁥⁥⁥⁥",
      bitches = "b𐌑ìtch𐌑es⁥⁥⁥⁥",
      shit = "s𐌑h𐌑ì𐌑t",
      kys = "kys",
      butthole = "b𐌑útth𐌑ồle",
      masturbate = "m𐌑ást𐌑úrb𐌑át𐌑e𐌑𝖔 ͜ ͣ ",
      bbc = "b𐌑ìg bl𐌑áck с𐌑ồ⁥⁥⁥сk",
      blowjob = "bl𐌑ồwj𐌑ồb",
      byc = "В𐌑ìt𐌑еѕ уоur с𐌑ồсk",
      cs = "с𐌑ồсk s𐌑úсkеr",
      fah = "f⁥𐌑át 𐌑á⁥ss h𐌑ồe",
      dick = "d𐌑ìc𐌑k",
      dogshit = "d𐌑o𐌑g𐌑s𐌑h𐌑ì𐌑t",
      tits = "t𐌑ìts",
      pussy = "p𐌑ússy",
      sperm = "s𐌑𝖔 ͜ ͣ p𐌑er𐌑ms",
      sperma = "s𐌑𝖔 ͜ ͣ p𐌑erm𐌑á", -- Indonesian dirty words
      memek = "m𐌑em𐌑ek",
      sepong = "s𐌑ep𐌑on𐌑g",
      kontol = "k𐌑o𐌑nt𐌑ol",
      ngentot = "ng𐌑en𐌑to𐌑t",
      jembut = "j𐌑emb𐌑út",
      bangsat = "b𐌑ángs𐌑át", -- Indonesian bad words
      terrorist = "t𐌑err𐌑𝖔 ͜ ͣ or𐌑ìs𐌑𝖔 ͜ ͣ t𐌑𝖔 ͜ ͣ s",
      discord = "𐌑d𐌑ìsc𐌑𝖔 ͜ ͣ or𐌑d",
      hub = "h𐌑úb",
      cyka = "c𐌑yk𐌑á",
      blyat = "bl𐌑y𐌑át",
      gay = "g𐌑áy",
      lesbian = "le𐌑𝖔 ͜ ͣ sb𐌑ì𐌑án",
      pride = "pr𐌑ìd𐌑𝖔 ͜ ͣ e",
      i = "i",
      love = "l𐌑𝖔 ͜ ͣ ov𐌑e",
      you = "yo𐌑ú",
      tiktok = "t𐌑ìkt𐌑ok",
      condom = "c𐌑𝖔 ͜ ͣ o𐌑n𐌑do𐌑m",
      suck = "s𐌑úc𐌑𝖔 ͜ ͣ k"
}
--[[
local replaceCAPS = { 
      ass = "𐌑á⁥⁥⁥⁥ѕѕ",
      cum = "с⁥⁥⁥𐌑úm",
      cock = "с𐌑ồс𐌑k",
      fuck = "f𐌑ú𐌑𝖔 ͜ ͣ c𐌑ḳ",
      asshole = "𐌑áѕѕh𐌑ol𐌑e",
      rape = "r𐌑áр𐌑e",
      boobs = "𐌑Bo𐌑𝖔 ͜ ͣ ob𐌑s",
      titties = "Т𐌑ìtt𐌑ìes",
      sex = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ х",
      sexy = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ х𐌑y",
      hoe = "h𐌑ồ𐌑𝖔 ͜ ͣ е",
      porn = "р𐌑ồrn",
      nigga = "n𐌑ìgg⁥𐌑á",
      penis = "р𐌑еn⁥𐌑ìs",
      beaner = "𐌑bе𐌑аn⁥е𐌑r",
      thot = "th𐌑ồt",
      xxx = "xxx",
      hentai = "h𐌑ent𐌑ái",
      bitch = "b𐌑ìtch⁥⁥⁥⁥",
      bitches = "b𐌑ìtch𐌑es⁥⁥⁥⁥",
      shit = "sh𐌑ìt",
      kys = "kys",
      butthole = "b𐌑útth𐌑ồle",
      masturbate = "m𐌑ást𐌑úrb𐌑át𐌑e",
      bbc = "b𐌑ìg bl𐌑áck с𐌑ồ⁥⁥⁥сk",
      blowjob = "bl𐌑ồwj𐌑ồb",
      byc = "В𐌑ìt𐌑еѕ уоur с𐌑ồсk",
      cs = "с𐌑ồсk s𐌑úсkеr",
      fah = "f⁥𐌑át 𐌑á⁥ss h𐌑ồe",
      dick = "d𐌑ìc𐌑k",
      dogshit = "d𐌑ồg sh𐌑ìt",
      tits = "t𐌑ìts",
      pussy = "p𐌑ússy",
      sperm = "s𐌑𝖔 ͜ ͣ p𐌑er𐌑m",
      sperma = "s𐌑𝖔 ͜ ͣ p𐌑erm𐌑á", -- Indonesian dirty words
      memek = "m𐌑em𐌑ek",
      sepong = "s𐌑ep𐌑on𐌑g",
      kontol = "k𐌑o𐌑nt𐌑ol",
      ngentot = "ng𐌑en𐌑to𐌑t",
      jembut = "j𐌑emb𐌑út",
      bangsat = "b𐌑ángs𐌑át", -- Indonesian bad words
      terrorist = "t𐌑err𐌑𝖔 ͜ ͣ or𐌑ìsts",
      discord = "𐌑d𐌑ìsc𐌑𝖔 ͜ ͣ or𐌑d",
      hub = "h𐌑úb",
      cyka = "c𐌑yk𐌑á",
      blyat = "bl𐌑y𐌑át",
      gay = "g𐌑áy",
      lesbian = "le𐌑𝖔 ͜ ͣ sb𐌑ì𐌑án",
      pride = "pr𐌑ìd𐌑𝖔 ͜ ͣ e",
      i = "i",
      love = "l𐌑𝖔 ͜ ͣ ov𐌑e",
      you = "yo𐌑ú",
      tiktok = "t𐌑ìkt𐌑ok"
--]]

local replace = { -- здравствуйте
      ass = "а⁥⁥⁥⁥ѕѕ",
      cum = "с⁥⁥⁥úm",
      cock = "сoсk",
      fuck = "fúсḳ",
      asshole = "аѕѕholё",
      rape = "rаре",
      boobs = "воовs",
      titties = "Тìttìes",
      sex = "s⁥⁥⁥⁥⁥⁥ех",
      sexy = "sе⁥⁥⁥ху",
      hoe = "hое",
      porn = "роrй",
      nigga = "йìgg⁥á",
      nigger = "йìgg⁥еr",
      penis = "рёnìs",
      beaner = "bеай⁥еr",
      thot = "thоt",
      xxx = "xxx",
      hentai = "hейtаi",
      bitch = "вìtch⁥⁥⁥⁥",
      bitches = "вìtchеs⁥⁥⁥⁥",
      shit = "shìt",
      kys = "kys",
      butthole = "вúttholё",
      masturbate = "mаstúrbаtё",
      bbc = "bìg blаck ⁥⁥⁥сoсk",
      blowjob = "blowjoв",
      byc = "Вìtёѕ уour сoсk",
      cs = "сoсk súсkёr",
      fah = "fаt а⁥ss hоё",
      dick = "dìсk",
      dogshit = "dоgshìt",
      tits = "tìts",
      pussy = "pússу",
      sperm = "spеrm",
      sperma = "spёrmа", -- Indonesian dirty words
      memek = "mёmёk",
      sepong = "sёpоng",
      kontol = "kоntоl",
      ngentot = "ngёntоt",
      jembut = "jёmbút",
      bangsat = "bаngsаt", -- Indonesian bad words
      terrorist = "tёrrоrìst",
      discord = "dìsсоrd",
      hub = "húb",
      cyka = "суkа",
      blyat = "blуаt",
      gay = "gаy",
      lesbian = "lёsbìаn",
      pride = "prìdё",
      i = "i",
      love = "lоvе",
      you = "уоú",
      tiktok = "tìktоk",
      condom = "соndоm",
      suck = "súсk"
}

function SyncBypassChat(str)
local chat = str:lower()
return chat:gsub("ass",replace.ass):gsub("cum",replace.cum):gsub("cock",replace.cock):gsub("fuck",replace.fuck):gsub("asshole",replace.asshole):gsub("rape",replace.rape):gsub("boobs",replace.boobs):gsub("titties",replace.titties):gsub("sex",replace.sex):gsub("hoe",replace.hoe):gsub("porn",replace.porn):gsub("nigga",replace.nigga):gsub("penis",replace.penis):gsub("beaner",replace.beaner):gsub("thot",replace.thot):gsub("xxx",replace.xxx):gsub("hentai",replace.hentai):gsub("bitch",replace.bitch):gsub("bitches",replace.bitches):gsub("shit",replace.shit):gsub("kys",replace.kys):gsub("butthole",replace.butthole):gsub("masturbate",replace.masturbate):gsub("big black cock",replace.bbc):gsub("blowjob",replace.blowjob):gsub("bites your cock",replace.byc):gsub("cock sucker",replace.cs):gsub("fat ass hoe",replace.fah):gsub("dick",replace.dick):gsub("dogshit",replace.dogshit):gsub("tits",replace.tits):gsub("pussy",replace.pussy):gsub("sperm",replace.sperm):gsub("sperma",replace.sperma):gsub("memek",replace.memek):gsub("sepong",replace.sepong):gsub("kontol",replace.kontol):gsub("ngentot",replace.ngentot):gsub("jembut",replace.jembut):gsub("bangsat",replace.bangsat):gsub("discord",replace.discord):gsub("terrorist",replace.terrorist):gsub("hub",replace.hub):gsub("cyka",replace.cyka):gsub("blyat",replace.blyat):gsub("gay",replace.gay):gsub("lesbian",replace.lesbian):gsub("pride",replace.pride):gsub("i",replace.i):gsub("love",replace.love):gsub("you",replace.you):gsub("tiktok",replace.tiktok):gsub("condom",replace.condom):gsub("suck",replace.suck):gsub("nigger",replace.nigger)
end
--[[
local replaceCAPS = { 
      ass = "𐌑á⁥⁥⁥⁥ѕѕ",
      cum = "с⁥⁥⁥𐌑úm",
      cock = "с𐌑ồс𐌑k",
      fuck = "f𐌑ú𐌑𝖔 ͜ ͣ c𐌑ḳ",
      asshole = "𐌑áѕѕh𐌑ol𐌑e",
      rape = "r𐌑áр𐌑e",
      boobs = "𐌑Bo𐌑𝖔 ͜ ͣ ob𐌑s",
      titties = "Т𐌑ìtt𐌑ìes",
      sex = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ х",
      sexy = "s⁥⁥⁥⁥⁥⁥𐌑e𐌑𝖔 ͜ ͣ х𐌑y",
      hoe = "h𐌑ồ𐌑𝖔 ͜ ͣ е",
      porn = "р𐌑ồrn",
      nigga = "n𐌑ìgg⁥𐌑á",
      penis = "р𐌑еn⁥𐌑ìs",
      beaner = "𐌑bе𐌑аn⁥е𐌑r",
      thot = "th𐌑ồt",
      xxx = "xxx",
      hentai = "h𐌑ent𐌑ái",
      bitch = "b𐌑ìtch⁥⁥⁥⁥",
      bitches = "b𐌑ìtch𐌑es⁥⁥⁥⁥",
      shit = "sh𐌑ìt",
      kys = "kys",
      butthole = "b𐌑útth𐌑ồle",
      masturbate = "m𐌑ást𐌑úrb𐌑át𐌑e",
      bbc = "b𐌑ìg bl𐌑áck с𐌑ồ⁥⁥⁥сk",
      blowjob = "bl𐌑ồwj𐌑ồb",
      byc = "В𐌑ìt𐌑еѕ уоur с𐌑ồсk",
      cs = "с𐌑ồсk s𐌑úсkеr",
      fah = "f⁥𐌑át 𐌑á⁥ss h𐌑ồe",
      dick = "d𐌑ìc𐌑k",
      dogshit = "d𐌑ồg sh𐌑ìt",
      tits = "t𐌑ìts",
      pussy = "p𐌑ússy",
      sperm = "s𐌑𝖔 ͜ ͣ p𐌑er𐌑m",
      sperma = "s𐌑𝖔 ͜ ͣ p𐌑erm𐌑á", -- Indonesian dirty words
      memek = "m𐌑em𐌑ek",
      sepong = "s𐌑ep𐌑on𐌑g",
      kontol = "k𐌑o𐌑nt𐌑ol",
      ngentot = "ng𐌑en𐌑to𐌑t",
      jembut = "j𐌑emb𐌑út",
      bangsat = "b𐌑ángs𐌑át", -- Indonesian bad words
      terrorist = "t𐌑err𐌑𝖔 ͜ ͣ or𐌑ìsts",
      discord = "𐌑d𐌑ìsc𐌑𝖔 ͜ ͣ or𐌑d",
      hub = "h𐌑úb",
      cyka = "c𐌑yk𐌑á",
      blyat = "bl𐌑y𐌑át",
      gay = "g𐌑áy",
      lesbian = "le𐌑𝖔 ͜ ͣ sb𐌑ì𐌑án",
      pride = "pr𐌑ìd𐌑𝖔 ͜ ͣ e",
      i = "i",
      love = "l𐌑𝖔 ͜ ͣ ov𐌑e",
      you = "yo𐌑ú",
      tiktok = "t𐌑ìkt𐌑ok"
}

function CAPS_BYPASS(str)
local Caps_Chat = str:lower()
Caps_Chat:gsub("ASS",replaceCAPS.)
end здравствуйте
тест
свинья
сволочь
животное
почему все?
--
function BP_SyncBypassChat(BypassWord)
local chat = BypassWord:lower()
    local tabl = {}
    for i = 1, #chat do
        local chara = chat:sub(i,i)
        if string.lower(chara) == "a" then
            chara = "а" -- 𐌑á
        elseif string.lower(chara) == "o" then
            chara = "о" -- 𐌑ồ
        elseif string.lower(chara) == "b" then
            chara = "в" -- 𐌑ì
        elseif string.lower(chara) == "c" then
            chara = "с" -- 𐌑ú
	elseif string.lower(chara) == "e" then
            chara = "е"
        end
        table.insert(tabl, chara)
    end
    chat = ""
    for i,v in pairs(tabl) do
        chat = chat..v
    end
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chat, "All")
end]]
--[[
local replace = { "𐌑á⁥⁥⁥⁥ѕѕ", "с⁥⁥⁥⁥um", "сосk", "fu𐌑𝖔 ͜ ͣ c𐌑ḳ", "аѕѕһоlе", "rаре", "Вoobs", "Тitties", "s⁥⁥⁥⁥⁥⁥ех", "һое", "рогn", "п⁥iɡ⁥ɡ⁥а", "реп⁥is", "bеаn⁥ег", "ТН⁥⁥⁥⁥⁥ОТ", "ΧΧΧ", "НЕΝТАӀ", "ВI⁥⁥⁥⁥⁥⁥TСН", "ВIT⁥⁥⁥⁥⁥⁥⁥СНEЅ", "ЅНIТ", "К⁥⁥⁥⁥⁥YЅ", "ВUТТ⁥⁥⁥⁥НOLЕ", "МАЅТURВАТЕ", "big black со⁥⁥⁥сk", "Вӏоwjob", "Віtеѕ уоur сосk", "сосk suсkеr", "f⁥аt а⁥ѕѕ һое" }

function SyncBypassChat(str)

end
--]]
--[[
function SyncBypassChatTwoMode(text)
local keywords = { "ass", "cum", "cock", "fuck", "asshole", "rape", "boobs", "titties", "sex", "hoe", "porn", "nigga", "penis", "beaner", "thot", "xxx", "hentai", "bitch", "bitches", "shit", "kys", "butthole", "masturbate", "big black cock", "blowjob", "bites your cock", "cock sucker", "fat ass hoe" } --Keyword
local replace = { "а⁥⁥⁥⁥ѕѕ", "с⁥⁥⁥⁥um", "сосk", "fu𐌑𝖔 ͜ ͣ c𐌑ḳ", "аѕѕһоlе", "rаре", "Вoobs", "Тitties", "s⁥⁥⁥⁥⁥⁥ех", "һое", "рогn", "п⁥iɡ⁥ɡ⁥а", "реп⁥is", "bеаn⁥ег", "ТН⁥⁥⁥⁥⁥ОТ", "ΧΧΧ", "НЕΝТАӀ", "ВI⁥⁥⁥⁥⁥⁥TСН", "ВIT⁥⁥⁥⁥⁥⁥⁥СНEЅ", "ЅНIТ", "К⁥⁥⁥⁥⁥YЅ", "ВUТТ⁥⁥⁥⁥НOLЕ", "МАЅТURВАТЕ", "big black со⁥⁥⁥сk", "Вӏоwjob", "Віtеѕ уоur сосk", "сосk suсkеr", "f⁥аt а⁥ѕѕ һое" } 
local message = string.lower(text)
    for word in string.gmatch(message, "%S+") do
        for i, key in ipairs(keywords) do
            if word == string.lower(key) then
                word = replace[i]
                break
            end
        end
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(word, "All")
        -- wait(tonumber(delay.Text))
    end
end
--]]
BarSent.MouseButton1Down:Connect(function()
if AutoSendScript == false then
	if BypassWord then
              game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SyncBypassChat(TextBar.Text),"All")
	else
	   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TextBar.Text, "All")
    end
  end
end)

TextBar.FocusLost:Connect(function(EnterText)
if AutoSendScript == true then
   if EnterText then
	if BypassWord then
           game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(SyncBypassChat(TextBar.Text),"All")
	else
	   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TextBar.Text, "All")
    end
   end
end
end)

local coreGuiTypeNames = {
	-- predefined aliases
	["inventory"] = Enum.CoreGuiType.Backpack,
	["leaderboard"] = Enum.CoreGuiType.PlayerList,
	["emotes"] = Enum.CoreGuiType.EmotesMenu
}

-- Load the full list of enums
for _, enumItem in ipairs(Enum.CoreGuiType:GetEnumItems()) do
	coreGuiTypeNames[enumItem.Name:lower()] = enumItem
end
--[[
local AUGPROPESP = Instance.new("BillboardGui")
local AUGSHOWESPPROP = Instance.new("TextLabel",AUGPROPESP) ---- new instances to make the billboard gui and the textlabel
 
 
 
AUGPROPESP.Name = "BETA PART ESP LABEL"; ---- properties of the esp
AUGPROPESP.ResetOnSpawn = false
AUGPROPESP.AlwaysOnTop = true;
AUGPROPESP.LightInfluence = 0;
AUGPROPESP.Size = UDim2.new(1.75, 0, 1.75, 0); -- here
AUGSHOWESPPROP.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
AUGSHOWESPPROP.Text = ""
AUGSHOWESPPROP.Size = UDim2.new(0,100,0,100);
AUGSHOWESPPROP.BorderSizePixel = 4;
AUGSHOWESPPROP.BorderColor3 = Color3.new(255,255,255)
AUGSHOWESPPROP.BorderSizePixel = 0
AUGSHOWESPPROP.Font = "GothamSemibold"
AUGSHOWESPPROP.TextSize = 20
AUGSHOWESPPROP.TextColor3 = Color3.fromRGB(1,1,1)
-- AUGPROPESP.Visible = false
AUGSHOWESPPROP.Visible = false
]]
local espParts = {}
local partEspTrigger = nil
function partAdded(part)
	if #espParts > 0 then
		if FindInTable(espParts,part.Name:lower()) then
			local a = Instance.new("BoxHandleAdornment")
			a.Name = part.Name:lower().."_PESP"
			a.Parent = part
			a.Adornee = part
			a.AlwaysOnTop = true
			a.ZIndex = 0
			a.Size = part.Size
			a.Transparency = 0.3
			a.Color = BrickColor.new("Lime green")
			notify("Part Spawned","Part name '"..part.Name:lower().."' has been spawned.")
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
	end
end

function FlyToolForMobile()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "FLY TOOL \n[ false ]"
tool.Parent = speaker.Backpack
tool.Equipped:Connect(function()
	NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
        U5.Visible = true
        U6.Visible = true
	tool.Name = "FLY TOOL \n[ true ]"
end)
tool.Unequipped:Connect(function()
	NOFLY()
        U1.Visible = false
        U2.Visible = false
        U3.Visible = false
        U4.Visible = false
        U5.Visible = false
        U6.Visible = false
	tool.Name = "FLY TOOL \n[ false ]"
end)
end

function FlyToolForPC()
local tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "FLY TOOL \n[ false ]"
tool.Parent = speaker.Backpack
tool.Equipped:Connect(function()
	NOFLY()
	wait()
	sFLY()
	tool.Name = "FLY TOOL \n[ true ]"
end)
tool.Unequipped:Connect(function()
	NOFLY()
        tool.Name = "FLY TOOL \n[ false ]"
end)
end

--[[
local ToolFunc_2 = ""
local DeleteParts = {}
local partDeleteTrigger = nil
function partDelete(part)
	if #DeleteParts > 0 then
		if FindInTable(DeleteParts,part.Name:lower()) then
			for i,v in pairs(game.Workspace:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    if v.Name:lower() == ToolFunc_2:lower() then
                                        v:Destroy()
                                    end
                           end
                    end
		end
	else
		partDeleteTrigger:Disconnect()
		partDeleteTrigger = nil
	end
end

local ToolFunc_1 = ""
local BringParts = {}
local partBringTrigger = nil
function partBringing(part)
	if #BringParts > 0 then
		if FindInTable(BringParts,part.Name:lower()) then
			for i,v in pairs(game.Workspace:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    if v.Name:lower() == ToolFunc_1:lower() then
                                        v.CFrame = speaker.Character.HumanoidRootPart.CFrame
                                    end
                           end
                    end
		end
	else
		partBringTrigger:Disconnect()
		partBringTrigger = nil
	end
end

local ToolFunc_3 = ""
local BypassParts = {}
local partBypassTrigger = nil
function partBypassed(part)
	if #BypassParts > 0 then
		if FindInTable(BypassParts,part.Name:lower()) then
			for i,v in pairs(game.Workspace:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    if v.Name:lower() == ToolFunc_3:lower() then
                                        v.CanCollide = false
                                    end
                           end
                    end
		end
	else
		partBypassTrigger:Disconnect()
		partBypassTrigger = nil
	end
end
--]]
--[[
function DebugPrint(SynText)
print(SynText)
    end
--]]

_G.VortexFunction = {}

function GenerateTitleText(gui,text)
for i=1,string.len(text) do
    gui.Text                    = string.sub(text,1,i)
    wait(0.001)
end
end

function TitlePlayer(title)
if speaker.Character.Head:FindFirstChild("tag") then
	speaker.Character.Head:FindFirstChild("tag"):Destroy()
end

	local bb = Instance.new("BillboardGui")
	bb.Parent = speaker.Character.Head
	bb.Adornee = speaker.Character.Head
	bb.AlwaysOnTop = true
	bb.Enabled = true
	bb.Size = UDim2.new(10,0,1.5,0)
	bb.Name = "tag"
	bb.StudsOffset = Vector3.new(0, 3, 0)
	local tl = Instance.new("TextLabel")
	tl.Parent = bb
	tl.Font = Enum.Font.Code
	tl.BackgroundTransparency = 1
	tl.TextScaled = true
	tl.TextColor3 = Color3.new(15/255, 15/255, 15/255)
	tl.Size = UDim2.new(1, 0, 1, 0)
	--tl.Text = title
	tl.Name = "trutag"
	tl.Visible = true
	tl.ZIndex = 2
	GenerateTitleText(tl,title)

	local rgbTitle = RunService.RenderStepped:Connect(function()
	if speaker.Character.Head:FindFirstChild("tag") then
	    tl.TextColor3 = Color3.new((math.sin(workspace.DistributedGameTime/2)/2)+0.5,(math.sin(workspace.DistributedGameTime)/2)+0.5,(math.sin(workspace.DistributedGameTime*1.5)/2)+0.5)
	else
	    rgbTitle:Disconnect()
	end
   end)
end

function NametagPlayer(title)
if speaker.Character:FindFirstChild("NameTag") then
      speaker.Character:FindFirstChild("NameTag"):Destroy()
end

    local billboardGui = Instance.new("BillboardGui", speaker.Character)
        billboardGui.Name = "NameTag"
        billboardGui.Size = UDim2.new(2, 0, 0.5, 0)
        billboardGui.Adornee = speaker.Character.Head
        billboardGui.StudsOffset = Vector3.new(0, 1, 0)
        billboardGui.ResetOnSpawn = false

        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.new(1, 0, 1, 0)
        --textLabel.Text = title
        textLabel.BackgroundTransparency = 1
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.Font = Enum.Font.SourceSansBold
        textLabel.TextScaled = true
        textLabel.Parent = billboardGui
	GenerateTitleText(textLabel,title)

    local rgbTitle = RunService.RenderStepped:Connect(function()
     if speaker.Character:FindFirstChild("NameTag") then
	textLabel.TextColor3 = Color3.new((math.sin(workspace.DistributedGameTime/2)/2)+0.5,(math.sin(workspace.DistributedGameTime)/2)+0.5,(math.sin(workspace.DistributedGameTime*1.5)/2)+0.5)
    else
	rgbTitle:Disconnect()
       end
    end)
end

function Math(expression)
    local a, op, b = expression:match("(%w+)%s*(%p)%s*(%w+)")
    a, b = tonumber(a), tonumber(b)
    
    if op == "+" then
        return a + b
    elseif op == "-" then
        return a - b
    elseif op == "*" then
        return a * b
    elseif op == "/" then
        if b == 0 then
            warning("Not Allowed","Division by zero is not allowed.")
            return
        end
        return a / b
    else
        ErrorPrompt("Error","Invalid operator.")
        return
    end
end

function SyncMath(exp,avp)
	if avp == "notify" then
		notify("Math AI",tostring(exp) .." = " .. tostring(Math(exp)))
	elseif avp == "chat" then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(exp) .. " = " .. tostring(Math(exp)), "All")
	else
		ErrorPrompt("Invalid","Invalid send type")
	end
end

--[[
function ProtocolCheck(FileName)
    isfile(FileName)     
end
--]]

_G.ForceFieldCooldown = 30
function ExplodePart(partname)
local Explode = Instance.new("Explosion",game:GetService("Workspace"))
Explode.Position = partname.Position
Explode.BlastPressure = 4000000
Explode.BlastRadius = 0
Explode.ExplosionType = 2
Explode.DestroyJointRadiusPercent = 1
end

function ForceField(nameshit,cdff)
local Hint = Instance.new("Hint", game:GetService("Workspace"))
local ff = Instance.new("ForceField")
ff.Parent = nameshit
for i = 1, tonumber(cdff) do
    if i < 60 then
       Hint.Text = "ForceField Cooldown " .. i .. "s"
    elseif i > 59 then
       Hint.Text = "ForceField Cooldown " .. i .. "m"
    elseif i > 3600 then
       Hint.Text = "ForceField Cooldown " .. i .. "hr"
   else
       Alert("cooldown is non-existent","We cannot load cooldowns that are non-numerical or the cooldown is empty, \nplease fill it with the command 'ffcd 30'","OK",true)
end
    wait(1)
end
ff:Remove()
Hint:Destroy()
end

function RandomNumberRange(a)
	return math.random(-a * 100, a * 100) / 100
end

function RandomVectorRange(a, b, c)
	return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
end

local DesyncTypes = {}
RunService.Heartbeat:Connect(function()
	if _G.Settings.PastedSources == true then
		DesyncTypes[1] = speaker.Character.HumanoidRootPart.CFrame
		DesyncTypes[2] = speaker.Character.HumanoidRootPart.AssemblyLinearVelocity

		local SpoofThis = speaker.Character.HumanoidRootPart.CFrame

		SpoofThis = SpoofThis * CFrame.new(Vector3.new(0, 0, 0))
		SpoofThis = SpoofThis * CFrame.Angles(math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)))

		speaker.Character.HumanoidRootPart.CFrame = SpoofThis

		speaker.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(1, 1, 1) * 16384

		RunService.RenderStepped:Wait()

		speaker.Character.HumanoidRootPart.CFrame = DesyncTypes[1]
		speaker.Character.HumanoidRootPart.AssemblyLinearVelocity = DesyncTypes[2]
	end
end)

function Tall()
local Character = speaker.Character
local Humanoid = Character.Humanoid

function rm()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name == "Handle" or v.Name == "Head" then
				if Character.Head:FindFirstChild("OriginalSize") then
					Character.Head.OriginalSize:Destroy()
				end
			else
				for i,cav in pairs(v:GetDescendants()) do
					if cav:IsA("Attachment") then
						if cav:FindFirstChild("OriginalPosition") then
							cav.OriginalPosition:Destroy()  
						end
					end
				end
				v:FindFirstChild("OriginalSize"):Destroy()
				if v:FindFirstChild("AvatarPartScaleType") then
					v:FindFirstChild("AvatarPartScaleType"):Destroy()
				end
			end
		end
	end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
end

function Short()
local Character = speaker.Character
local Humanoid = Character.Humanoid

local function rm()
	for i,v in pairs(Character:GetDescendants()) do
		if v:IsA("BasePart") then
			if v.Name ~= "Head" then
				for i,cav in pairs(v:GetDescendants()) do
					if cav:IsA("Attachment") then
						if cav:FindFirstChild("OriginalPosition") then
							cav.OriginalPosition:Destroy()
						end
					end
				end
				v:FindFirstChild("OriginalSize"):Destroy()
				if v:FindFirstChild("AvatarPartScaleType") then
					v:FindFirstChild("AvatarPartScaleType"):Destroy()
				end
			end
		end
	end
end

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
wait(1)

rm()
wait(0.5)
Humanoid:FindFirstChild("HeadScale"):Destroy()
wait(1)
end
--[[
local apfo_t = {"Ricky Wicky 😱", "Vortex Apple", "Egg Admino", "Amity coughed", "Where am I?", "Rickity Volcano", "walter white", "Nick Cage?!?!", "peyton real", "april fool!!"}
local apfo_i = {"11688231017", "11339922083", "11914981726", "5783845592", "6762179979", "7846015915", "11171958623", "11308149650", "7444547410", "6093472109"}

local Domain = {
                    Domain = Instance.new("ScreenGui"),
                    UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint"),
                    FriendJoined = Instance.new("Frame"),
                    UICorner_66 = Instance.new("UICorner"),
                    UICorner_67 = Instance.new("UICorner"),
                    Textjoin = Instance.new("TextLabel"),
                    Other = Instance.new("Frame"),
                    Avatarjoin = Instance.new("ImageLabel")
}

Domain.Domain.Name = "Domain"
Domain.Domain.Parent = game:GetService("CoreGui")
Domain.Domain.ResetOnSpawn = false

Domain.Other.Name = "Other"
Domain.Other.Parent = Domain.Domain
Domain.Other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Other.BackgroundTransparency = 1.000
Domain.Other.BorderSizePixel = 0
Domain.Other.Position = UDim2.new(0.966000021, 0, 0.261999995, 0)
Domain.Other.Size = UDim2.new(0.0430000015, 0, 0.474999994, 0)

Domain.FriendJoined.Name = "FriendJoined"
Domain.FriendJoined.Parent = Domain.Other
Domain.FriendJoined.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Domain.FriendJoined.BorderSizePixel = 0
Domain.FriendJoined.Position = UDim2.new(-4.58847857, 0, 1.30335116, 0)
Domain.FriendJoined.Size = UDim2.new(4.92762661, 0, 0.195112452, 0)
Domain.FriendJoined.Visible = false
 
Domain.UICorner_66.CornerRadius = UDim.new(0, 10)
Domain.UICorner_66.Parent = Domain.FriendJoined
 
Domain.Textjoin.Name = "Textjoin"
Domain.Textjoin.Parent = Domain.FriendJoined
Domain.Textjoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Textjoin.BackgroundTransparency = 1.000
Domain.Textjoin.BorderSizePixel = 0
Domain.Textjoin.Position = UDim2.new(0.26033023, 0, 0.25, 0)
Domain.Textjoin.Size = UDim2.new(0.685603261, 0, 0.5, 0) -- 0.685603261, 0, 0.5, 0 [0, 18, 0, 18]
Domain.Textjoin.Font = Enum.Font.GothamBold
Domain.Textjoin.Text = ""
Domain.Textjoin.TextColor3 = Color3.fromRGB(255, 255, 255)
Domain.Textjoin.TextScaled = true
Domain.Textjoin.TextSize = 14.000
Domain.Textjoin.TextWrapped = true
Domain.Textjoin.TextXAlignment = Enum.TextXAlignment.Left
 
Domain.UITextSizeConstraint_13.Parent = Domain.Textjoin
Domain.UITextSizeConstraint_13.MaxTextSize = 20
 
Domain.Avatarjoin.Name = "Avatarjoin"
Domain.Avatarjoin.Parent = Domain.FriendJoined
Domain.Avatarjoin.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Domain.Avatarjoin.BackgroundTransparency = 1.000
Domain.Avatarjoin.BorderSizePixel = 0
Domain.Avatarjoin.Position = UDim2.new(0.0651319921, 0, 0.189999998, 0)
Domain.Avatarjoin.Size = UDim2.new(0, 40, 0, 40) -- 0, 18, 0, 18
Domain.Avatarjoin.Image = "rbxasset://13030062874"

Domain.UICorner_67.CornerRadius = UDim.new(1, 20)
Domain.UICorner_67.Parent = Domain.Avatarjoin

function notify_(A1)
if os.date("%m %d") == "04 01" then
Domain.FriendJoined.Visible = true
    Domain.FriendJoined.Size = UDim2.new(0,0,0.195,0)
    Domain.FriendJoined.Textjoin.Text = A1
    Domain.FriendJoined.Textjoin.TextTransparency = 1
    Domain.FriendJoined.Avatarjoin.Image = "rbxassetid://" .. apfo_i[math.random(1, #apfo_i)]
    Domain.FriendJoined.Avatarjoin.ImageTransparency = 1
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0.195, 0)})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 0})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 0})
    tween:Play()
    wait(4)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0, 0)})
    tween:Play()
    else
    Domain.FriendJoined.Visible = true
    Domain.FriendJoined.Size = UDim2.new(0,0,0.195,0)
    Domain.FriendJoined.Textjoin.Text = A1
    Domain.FriendJoined.Textjoin.TextTransparency = 1
    Domain.Avatarjoin.Image = "rbxasset://13030062874"
    Domain.FriendJoined.Avatarjoin.ImageTransparency = 1
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0.195, 0)})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 0})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.45, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 0})
    tween:Play()
    wait(4)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Textjoin, transitionInfo, {TextTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {ImageTransparency = 1})
    tween:Play()
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined.Avatarjoin, transitionInfo, {BackgroundTransparency = 1})
    tween:Play()
    wait(0.5)
    local transitionInfo = TweenInfo.new(0.65, Enum.EasingStyle.Quint)
    local tween = game:GetService("TweenService"):Create(Domain.FriendJoined, transitionInfo, {Size = UDim2.new(4.928, 0, 0, 0)})
    tween:Play()
  end
end
--[[
function Punish(ooo)
	speaker:kick(ooo)
end
]]
function Executor()
if identifyexecutor then
    return identifyexecutor()
    end
end
--[[
local InfiniteJumpToggle = false
UserInputService.JumpRequest:connect(function()
	if InfiniteJumpToggle then
		speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
	end
end)
--]]
function Anticheat_Bypass()
if game.PlaceId == 277751860 then
speaker.Character.HumanoidRootPart.ChildAdded:connect(function(child)
if child.ClassName == "BodyVelocity" or child.ClassName == "BodyGyro" then
child.Name = "power"
end
end)
info("Anti-Cheat Bypass","anti-cheat bypass enabled for the game Epic Minigames")
else
local mt = getrawmetatable(game)
local old = mt.__namecall
local protect = newcclosure or protect_function

if not protect then
protect = function(f) return f end
end

setreadonly(mt, false)
mt.__namecall = protect(function(self, ...)
local method = getnamecallmethod()
if method == "Kick" then
wait(9e9)
return
end
return old(self, ...)
end)
hookfunction(game:GetService("Players").LocalPlayer.Kick,protect(function() wait(9e9) end))
info("Anti-Cheat and Anti-Kick Bypass","kick bypass enable")
end
end

function FindWorkspacePartName(name, hvhvhghh, turn_on_or_off)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == name then
              if hvhvhghh == "Collide" then
                v.CanCollide = turn_on_or_off or false
                end
              if hvhvhghh == "Anchor" then
                v.Anchored = false
                end
              if hvhvhghh == "Lock" then
                v.Locked = turn_on_or_off or false
                end
             if hvhvhghh == "Delete" then
                v:Destroy()
                end
              if hvhvhghh == "Query" then
                v.CanQuery = turn_on_or_off or false
                end
              if hvhvhghh == "Touch" then
                v.CanTouch = turn_on_or_off or false
                end
              if hvhvhghh == "Massless" then
                v.Massless = turn_on_or_off or false
                end
            end
        end
    end
end

function capitalizeFirstLetter(str)
    return str:gsub("(%a)([%w_']*)", function(first, rest)
        return first:upper() .. rest:lower()
    end)
end

local material = {
	"Air",
	"Asphalt",
	"Basalt",
	"Brick",
	"Cobblestone",
	"Concrete",
	"CorrodedMetal",
	"CrackedLava",
	"DiamondPlate",
	"Fabric",
	"Foil",
	"ForceField",
	"Glacier",
	"Glass",
	"Granite",
	"Grass",
	"Ground",
	"Ice",
	"LeafyGrass",
	"Limestone",
	"Marble",
	"Metal",
	"Mud",
	"Neon",
	"Pavement",
	"Pebble",
	"Plastic",
	"Rock",
	"Salt",
	"Sand",
	"Sandstone",
	"Slate",
	"SmoothPlastic",
	"Snow",
	"Water",
	"Wood",
	"WoodPlanks"
}

local MaterialMark = ""
--[[
function SetAsAMaterial(name)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == name then
		if v.Material == "Air" then
                   v.Material = material.asphalt
		   MaterialMark = "Asphalt"
		end
		if v.Material == "Asphalt" then
                   v.Material = material.basalt
		   MaterialMark = "Basalt"
		end
		if v.Material == "Basalt" then
                   v.Material = material.brick
		   MaterialMark = "Brick"
		end
		if v.Material == "Brick" then
                   v.Material = material.cobb
		   MaterialMark = "Cobblestone"
		end
		if v.Material == "Cobblestone" then
                   v.Material = material.concrete
		   MaterialMark = "Concrete"
		end
		if v.Material == "Concrete" then
                   v.Material = material.cm
		   MaterialMark = "CorrodedMetal"
		end
		if v.Material == "CorrodedMetal" then
                   v.Material = material.cl
		   MaterialMark = "CrackedLava"
		end
		if v.Material == "CrackedLava" then
                   v.Material = material.dl
		   MaterialMark = "DiamondPlate"
		end
		if v.Material == "DiamondPlate" then
                   v.Material = material.fabric
		   MaterialMark = "Fabric"
		end
		if v.Material == "Fabric" then
                   v.Material = material.foil
		   MaterialMark = "Foil"
		end
		if v.Material == "Foil" then
                   v.Material = material.ff
		   MaterialMark = "ForceField"
		end
		if v.Material == "ForceField" then
                   v.Material = material.glacier
		   MaterialMark = "Glacier"
		end
		if v.Material == "Glacier" then
                   v.Material = material.glass
		   MaterialMark = "Glass"
		end
		if v.Material == "Glass" then
                   v.Material = material.granite
		   MaterialMark = "Granite"
		end
		if v.Material == "Granite" then
                   v.Material = material.grass
		   MaterialMark = "Grass"
		end
		if v.Material == "Grass" then
                   v.Material = material.ground
		   MaterialMark = "Ground"
		end
		if v.Material == "Ground" then
                   v.Material = material.ice
		   MaterialMark = "Ice"
		end
		if v.Material == "Ice" then
                   v.Material = material.lg
		   MaterialMark = "LeafyGrass"
		end
		if v.Material == "LeafyGrass" then
                   v.Material = material.lime
		   MaterialMark = "Limestone"
		end
		if v.Material == "Limestone" then
                   v.Material = material.marble
		   MaterialMark = "Marble"
		end
		if v.Material == "Marble" then
                   v.Material = material.metal
		   MaterialMark = "Metal"
		end
		if v.Material == "Metal" then
                   v.Material = material.mud
		   MaterialMark = "Mud"
		end
		if v.Material == "Mud" then
                   v.Material = material.neon
		   MaterialMark = "Neon"
		end
		if v.Material == "Neon" then
                   v.Material = material.pave
		   MaterialMark = "Pavement"
		end
		if v.Material == "Pavement" then
                   v.Material = material.pebble
		   MaterialMark = "Pebble"
		end
		if v.Material == "Pebble" then
                   v.Material = material.plastic
		   MaterialMark = "Plastic"
		end
		if v.Material == "Plastic" then
                   v.Material = material.rock
		   MaterialMark = "Rock"
		end
		if v.Material == "Rock" then
                   v.Material = material.salt
		   MaterialMark = "Salt"
		end
		if v.Material == "Salt" then
                   v.Material = material.sand
		   MaterialMark = "Sand"
		end
		if v.Material == "Sand" then
                   v.Material = material.sandstone
		   MaterialMark = "Sandstone"
		end
		if v.Material == "Sandstone" then
                   v.Material = material.slate
		   MaterialMark = "Slate"
		end
		if v.Material == "Slate" then
                   v.Material = material.sp
		   MaterialMark = "SmoothPlastic"
		end
		if v.Material == "SmoothPlastic" then
                   v.Material = material.snow
		   MaterialMark = "Snow"
		end
		if v.Material == "Snow" then
                   v.Material = material.water
		   MaterialMark = "Water"
		end
		if v.Material == "Water" then
                   v.Material = material.wood
		   MaterialMark = "Wood"
		end
		if v.Material == "Wood" then
                   v.Material = material.wp
		   MaterialMark = "WoodPlanks"
		end
		if v.Material == "WoodPlanks" then
                   v.Material = material.air
		   MaterialMark = "Air"
		end
            end
        end
    end
end
--]]
local shapes = {
	"Ball",
	"Block",
	"CornerWedge",
	"Cylinder",
	"Wedge"
}

local ShapesMark = ""

function SetAsAShapes(name)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == name then
		if v.Shape == "Cylinder" then
                   v.Shape = shapes.wedge
		   ShapesMark = "Wedge"
		end
		if v.Shape == "Wedge" then
                   v.Shape = shapes.ball
		   ShapesMark = "Ball"
		end
		if v.Shape == "Ball" then
                   v.Shape = shapes.block
		   ShapesMark = "Block"
		end
		if v.Shape == "Block" then
                   v.Shape = shapes.corner
		   ShapesMark = "CornerWedge"
		end
		if v.Shape == "CornerWedge" then
                   v.Shape = shapes.cylinder
		   ShapesMark = "Cylinder"
		end
            end
        end
    end
end

function SetShape(name, shapename)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == name then
		v.Shape = shapename
            end
        end
    end
end

function SetMaterial(name, materialname)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("Part") then
            if v.Name == name then
                v.Material = materialname
            end
        end
    end
end

function MysteriousTool()        
local AddPartTool = Instance.new("Tool")
AddPartTool.RequiresHandle = false
AddPartTool.Name = "Add part"
AddPartTool.Activated:connect(function()
local pos = Mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
-- PartScript
local PartScriptVoxi = Instance.new("Part", workspace)
PartScriptVoxi.Size = Vector3.new(5, 0.5, 5)
PartScriptVoxi.Name = "VoxelScriptPart"
PartScriptVoxi.Locked = true
PartScriptVoxi.CFrame = pos * CFrame.new(Vector3.new(0, 0, 0))
PartScriptVoxi.Anchored = true
local Mesh = Instance.new("CylinderMesh", PartScriptVoxi)
-- End
end)
AddPartTool.Parent = speaker.Backpack

function EditToolName(name, toolname)
         toolname.Name = name
end

local DescAnchor = false
local DescLocked = false
local DescMass = false
local DescTouch = false
local DescQuery = false
local DescCollide = false
	
local ShapePartTool = Instance.new("Tool")
ShapePartTool.RequiresHandle = false
ShapePartTool.Name = "Shape: Cylinder"
ShapePartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
local randomshape = shapes[math.random(1, #shapes)]
SetShape("VoxelScriptPart", randomshape)
EditToolName("Shape: " .. randomshape,ShapePartTool)
else
ErrorPrompt("Unknown Part","Error when trying to apply shape to part")
end
end)
ShapePartTool.Parent = speaker.Backpack
	
local MaterialPartTool = Instance.new("Tool")
MaterialPartTool.RequiresHandle = false
MaterialPartTool.Name = "Material: Air"
MaterialPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
local randommaterial = material[math.random(1, #material)]
SetMaterial("VoxelScriptPart", randommaterial)
EditToolName("Material: " .. randommaterial,MaterialPartTool)
else
ErrorPrompt("Unknown Part","Error when trying to apply Material to part")
end
end)
MaterialPartTool.Parent = speaker.Backpack
	
local CollidePartTool = Instance.new("Tool")
CollidePartTool.RequiresHandle = false
CollidePartTool.Name = "CanCollide: false"
CollidePartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescCollide = not DescCollide
FindWorkspacePartName("VoxelScriptPart","Collide",DescCollide)
if DescCollide then
EditToolName("CanCollide: true",CollidePartTool)
else
EditToolName("CanCollide: false",CollidePartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to CanCollide part")
end
end)
CollidePartTool.Parent = speaker.Backpack
	
local QueryPartTool = Instance.new("Tool")
QueryPartTool.RequiresHandle = false
QueryPartTool.Name = "CanQuery: false"
QueryPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescQuery = not DescQuery
FindWorkspacePartName("VoxelScriptPart","Query",DescQuery)
if DescQuery then
EditToolName("CanQuery: true",QueryPartTool)
else
EditToolName("CanQuery: false",QueryPartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to CanQuery part")
end
end)
QueryPartTool.Parent = speaker.Backpack
	
local TouchPartTool = Instance.new("Tool")
TouchPartTool.RequiresHandle = false
TouchPartTool.Name = "CanTouch: false"
TouchPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescTouch = not DescTouch
FindWorkspacePartName("VoxelScriptPart","Touch",DescTouch)
if DescTouch then
EditToolName("CanTouch: true",TouchPartTool)
else
EditToolName("CanTouch: false",TouchPartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to CanTouch part")
end
end)
TouchPartTool.Parent = speaker.Backpack
	
local MassPartTool = Instance.new("Tool")
MassPartTool.RequiresHandle = false
MassPartTool.Name = "Massless: false"
MassPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescMass = not DescMass
FindWorkspacePartName("VoxelScriptPart","Massless",DescMass)
if DescMass then
EditToolName("Massless: true",MassPartTool)
else
EditToolName("Massless: false",MassPartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to massless part")
end
end)
MassPartTool.Parent = speaker.Backpack
	
local AnchorPartTool = Instance.new("Tool")
AnchorPartTool.RequiresHandle = false
AnchorPartTool.Name = "Anchor: false"
AnchorPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescAnchor = not DescAnchor
FindWorkspacePartName("VoxelScriptPart","Anchor",DescAnchor)
if DescAnchor then
EditToolName("Anchor: true",AnchorPartTool)
else
EditToolName("Anchor: false",AnchorPartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to anchor part")
end
end)
AnchorPartTool.Parent = speaker.Backpack

local LockedPartTool = Instance.new("Tool")
LockedPartTool.RequiresHandle = false
LockedPartTool.Name = "Locked: false"
LockedPartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
DescLocked = not DescLocked
FindWorkspacePartName("VoxelScriptPart","Lock",DescLocked)
if DescLocked then
EditToolName("Locked: true",LockedPartTool)
else
EditToolName("Locked: false",LockedPartTool)
end
else
ErrorPrompt("Unknown Part","Error while trying to lock part")
end
end)
LockedPartTool.Parent = speaker.Backpack

local DeletePartTool = Instance.new("Tool")
DeletePartTool.RequiresHandle = false
DeletePartTool.Name = "Delete"
DeletePartTool.Activated:connect(function()
if game.Workspace:FindFirstChild("VoxelScriptPart") then
FindWorkspacePartName("VoxelScriptPart","Delete")
else
ErrorPrompt("Unknown Part","Error while trying to delete part")
end
end)
DeletePartTool.Parent = speaker.Backpack
end

Github.FocusLost:Connect(function(InterfaceEnter)
if InterfaceEnter then
if Github.Text then
local username = Github.Text

local options = httprequest({
    Url = "https://api.github.com/users/" .. username,
    Method = "GET",
    Headers = {
        ["User-Agent"] = "Roblox"
    }
})

local success, result = pcall(HttpService.RequestAsync, HttpService, options)

if success then
    local userData = HttpService:JSONDecode(result.Body)
    print("GitHub username: " .. userData.login)
    print("GitHub ID: " .. userData.id)
    info("Github Data","Github username: " .. userData.login .. "\nGithub ID: " .. userData.id)
else
    -- notify("Error making request: " .. tostring(result))
    ErrorPrompt("Request Error or API Error","Error making request", tostring(result), "ok")
end
else
Github.Text = "REQUIRED GITHUB USERNAME"
wait(3)
Github.Text = ""
end
end
end)
local LastPositionPrimary = nil
local HumanoidPrimaryPart = speaker.Character.PrimaryPart
function RocketPropulsion(maxthrust,maxspeed,thrustp,targetplr,name)
	local l = Instance.new("RocketPropulsion")
	l.Parent = speaker.Character.HumanoidRootPart
	l.CartoonFactor = 1
	l.MaxThrust = maxthrust
	l.MaxSpeed = maxspeed
	l.ThrustP = thrustp
	l.Name = name
	l.Target = Players[targetplr].Character.HumanoidRootPart
	l:Fire()
end

WeatherApiKey.FocusLost:Connect(function(InterfaceEnterCity)
if InterfaceEnterCity then
if WeatherApiKey.Text then
local city = WeatherCity.Text or "New York"
local apiKey = WeatherApiKey.Text

local options = httprequest({
    Url = "http://api.openweathermap.org/data/2.5/weather?q=" .. city .. "&appid=" .. apiKey,
    Method = "GET",
    Headers = {
        ["Content-Type"] = "application/json"
    }
})

-- Send the request
local success, result = pcall(HttpService.RequestAsync, HttpService, options)

if success then
    local weatherData = HttpService:JSONDecode(result.Body)
    info("temperature","Current temperature in " .. city .. " is " .. tostring(weatherData.main.temp) .. " degrees Kelvin.")
else
    -- notify("Error making request: " .. tostring(result))
    ErrorPrompt("Request Error or API Error","Error making request", tostring(result), "ok")
end
else
WeatherApiKey.Text = "REQUIRED API KEY"
wait(3)
WeatherApiKey.Text = ""
end
end
end)

_G.KeybinList = {
	rightshift = "RightShift",
	leftshift = "LeftShift",
	rightcontrol = "RightControl",
	leftcontrol = "LeftControl"
}

function executeHTTPS(_link_)
     local respon, result = pcall(function()
     loadstring(game:HttpGet(_link_))()
     notify("Script Executed!","script executed successfully.")
     end)
     
     if not respon then
    -- notify(result)
     ErrorPrompt("Failed to inject scripts", result)
     end
end

executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/Roblox-Vortex-System/main/System.lua")

function executeOBJECTS(rbxID)
     local respon, result = pcall(function()
     loadstring(game:GetObjects("rbxassetid://" .. tostring(rbxID))[1].Source)()
     notify("Asset Id Executed!","Asset Id executed successfully.")
     end)
     
     if not respon then
    -- notify(result)
     ErrorPrompt("Failed to load asset id", result)
     end
end

function xray(v)
	if v then
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0.5
			end
		end
	else
		for _,i in pairs(workspace:GetDescendants()) do
			if i:IsA("BasePart") and not i.Parent:FindFirstChildOfClass('Humanoid') and not i.Parent.Parent:FindFirstChildOfClass('Humanoid') then
				i.LocalTransparencyModifier = 0
			end
		end
	end
end

local epicm = 0

-- local NotifyV1 = executeHTTPS("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua")

function ExecuteScriptNameFunction(script_name)
	if script_name == "epicm" then -- epic minigames
		epicm = epicm + 1
		if epicm > 1 then
			epicm = 1
			ErrorPrompt("ERROR!","you can only run this script once")
			else
			executeHTTPS("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI")
		end
	end
end

BarButtonExecute.MouseButton1Down:Connect(function()
     executeHTTPS(TextBarExecutor.Text)
end)

-- TextBarExecutor.Visible = true
-- BarButtonExecute.Visible = true

function copy(txt)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
           setclipboard(txt)
	else
	   -- notify("your exploit doesnt have ability to use clipboard, Bad exploit🤣😂")
	ErrorPrompt("Incompatible Exploit", "your exploit doesnt have ability to use clipboard, Bad exploit🤣😂")
    end
end

function ProtocolSave(FileName, Config)
	local file = writefile
	if file then
          writefile(FileName, Config)
	else
	  -- notify("your exploit doesnt have ability to use writefile, Bad exploit🤣😂")
	ErrorPrompt("Incompatible Exploit", "your exploit doesnt have ability to use writefile, Bad exploit🤣😂")
    end 
end
--[[
function ProtocolRead(FileName)
        readfile(FileName)
e]]

function GetTimePlayed()
local seconds = math.floor(workspace.DistributedGameTime)
local minutes = math.floor(workspace.DistributedGameTime / 60)
local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
local seconds = seconds - (minutes * 60)
local minutes = minutes - (hours * 60)
if hours < 1 then if minutes < 1 then
return seconds .. ' Second(s)' else
return minutes .. " Minute(s), " .. seconds .. ' Second(s)'
end
else
return hours .. ' Hour(s), ' .. minutes .. ' Minute(s), ' .. seconds .. ' Second(s)'
end
end

SaveOMG.MouseButton1Down:Connect(function()
   if isfile(FileName.Text) then -- FileName & InFile
      notify("This file already exists",'file with name "' .. FileName.Text .. '" already exists.')
   else
      ProtocolSave(FileName.Text, InFile.Text)
   end
end)
--[[
function SyncMath(math_1, ProtocolMath, math_2)
     if ProtocolMath == "+" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultPlus = 0
	ExecuteResultPlus = SyncNumber_1 + SyncNumber_2
	notify("Math",SyncNumber_1 .. " + " .. SyncNumber_2 .. " = " .. ExecuteResultPlus)
    end
     if ProtocolMath == "*" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultMultiplication = 0
	ExecuteResultMultiplication = SyncNumber_1 * SyncNumber_2
	notify("Math",SyncNumber_1 .. " * " .. SyncNumber_2 .. " = " .. ExecuteResultMultiplication)
    end
     if ProtocolMath == "/" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultMisc = 0
	ExecuteResultMisc = SyncNumber_1 / SyncNumber_2
	notify("Math",SyncNumber_1 .. " * " .. SyncNumber_2 .. " = " .. ExecuteResultMisc)
    end
end
]]
if _G.Settings.AutoExecuteLink == "" or _G.Settings.AutoExecuteLink == nil then
print("error! We could not find your script (Error Auto Execute: 404)")
else
loadstring(game:HttpGet(_G.Settings.AutoExecuteLink))()
end

if _G.Settings.AutoExecuteRawScript == "" or _G.Settings.AutoExecuteRawScript == nil then
print("error! We could not find your script (Error Auto Execute: 404)")
else
loadstring(_G.Settings.AutoExecuteRawScript)()
end

-- notify("welcome, " .. speaker.DisplayName .. " To vortex admin")

local IP_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

local IP_one_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9"}

function IP(country)
     notify("Currently getting " .. country .. " country IP... please wait")
       local IP_Address = IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)]
        copy(IP_Address)
     notify("Fake IP","IP code: '" .. IP_Address .. "', country: '" .. country .. "'. The IP has been copied to your keyboard")
end

function ProtocolSendChat(ProtocolChatService)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ProtocolChatService,"All")
end

--[[
function LoveRate(player, ratetype)
        local Rate = math.random(1, 100)
	if ratetype == "notify" then
		if Rate > 10 then
		   notify(string.format("love rating you and %s is %s❤️", player, Rate)
		else
		   notify(string.format("love rating you and %s is %s❤️", player, Rate)
	end
	end
	if ratetype == "chat" then
		if Rate > 10 then
		   ProtocolSendChat(string.format("love rating " .. tostring(speaker.Name) .." and %s is %s❤️", player, Rate)
		else
		   ProtocolSendChat(string.format("love rating " .. tostring(speaker.Name) .." and %s is %s💔", player, Rate)
	end
	end
end
--]]

function ProtocolWhisperChat(SyncPlayer, ProtocolWhisperChatService)
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w " .. tostring(SyncPlayer) .. " " .. tostring(ProtocolWhisperChatService),"All")
end

WhisperButton.MouseButton1Down:Connect(function()
   if Players:FindFirstChild(WhisperPlayer.Text) then
    ProtocolWhisperChat(WhisperPlayer.Text, WhisperBox.Text)
    else
    ErrorPrompt("Player not found!","player not found or text box is empty please fill in")
  end
end)
        function RejoinServer()
    if #game.Players:GetPlayers() <= 1 then
       -- game.Players.LocalPlayer:Kick("\nRejoining...")
        wait()
        game:GetService('TeleportService'):Teleport(game.PlaceId, speaker)
    else
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, speaker)
    end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
end

function LOCAL_WEB_IP_HOST()
local LOCAL_WEB = tostring(game:HttpGet("https://api.ipify.org", true))
    if LOCAL_WEB then
       return LOCAL_WEB
    else
       return "Chrome Error ':404: website not found ' or under maintenance"
    end
end

function GetRegionPlayer()
  local Thing = game:GetService("HttpService"):JSONDecode(game:HttpGet("http://country.io/names.json"))
  local ParsedCountry = Thing[gethiddenproperty(speaker, "CountryRegionCodeReplicate")]
    return ParsedCountry
end

-- Define a function to create a notification with tweening
function _Announcement(text)
    -- Create the notification GUI
    local notification = Instance.new("ScreenGui")
    notification.Name = "Notification"
    notification.Parent = game.Players.LocalPlayer.PlayerGui

    -- Create the notification frame
    local frame = Instance.new("Frame")
    frame.Name = "Frame"
    frame.Size = UDim2.new(0, 200, 0.2, 50)
    frame.Position = UDim2.new(0.5, -100, 0, -50)
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BackgroundTransparency = 0.5
    frame.Parent = notification

    -- Create the notification label
    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, 0, 1, 0) -- 1, 0, 1, 0
    label.Position = UDim2.new(0, 0, 0, 0)
    label.BackgroundColor3 = Color3.new(0, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = text
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 20
    label.TextColor3 = Color3.new(1, 1, 1)
    label.Parent = frame

    -- Define the tween for the notification
    local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0)
    local tween_A1 = game:GetService("TweenService"):Create(frame, tweenInfo, {Position = UDim2.new(0.5, -100, 0, 100)})

local tween_A2 = game:GetService("TweenService"):Create(frame, tweenInfo, {Position = UDim2.new(0.5, -100, 0, -300)})
    
    -- Play the tween and destroy the notification when it's finished
    tween_A1:Play()
    wait(2)
    tween_A2:Play()
    wait(1)
    notification:Destroy()
end

-- Call the function to create a notification with a message


function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end
--[[
function PetHat_R15AndR6(HatId)
    local plr = speaker
    local char = plr.Character

local lp = speaker


for i, v in pairs(char:GetChildren()) do
    if v:IsA("BallSocketConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char:GetChildren()) do
    if v:IsA("HingeConstraint") then
        v:Destroy()
    end
end

local HatNameDetection = game:GetObjects("rbxassetid://".. HatId)[1].Name
local hat = HatNameDetection

char[hat].Archivable = true
local fake = char[hat]:Clone()
fake.Parent = char
fake.Handle.Transparency = 1




    local car = char[hat]



    local att1 = Instance.new("Attachment",car.Handle)

    local ap = Instance.new("AlignPosition",car.Handle)
    ap.Attachment0 = att1
    ap.Attachment1 = att1
    ap.RigidityEnabled = true 


    local ao = Instance.new("AlignOrientation",car.Handle) 
    ao.Attachment0 = att1
    ao.Attachment1 = att1
    ao.RigidityEnabled = true
    
    car.Handle.AccessoryWeld:Destroy()

        local BP = Instance.new("BodyPosition", car.Handle)
        local BG = Instance.new("BodyGyro", car.Handle)
        RunService.Stepped:Connect(function()
          BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          BP.Position = char["HumanoidRootPart"].Position + Vector3.new(5, 1.8, 3)
          BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
          BG.CFrame = char["HumanoidRootPart"].CFrame
        end)
end
--[[
function PetHat_R6(HatId)
local hatid = HatId --must be wearing hat
local hatname = game:GetObjects("rbxassetid://".. hatid)[1].Name


local unanchoredparts = {}
local movers = {}
local tog = true
local move = false
local Player = speaker
local Character = Player.Character
local mov = {};
local mov2 = {};

local Hats = {Hat1  = Character:WaitForChild(hatname),
}




for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then

end
end
end

function ftp(str)
local pt = {};
if str ~= 'me' and str ~= 'random' then
for i, v in pairs(game.Players:GetPlayers()) do
if v.Name:lower():find(str:lower()) then
table.insert(pt, v);
end
end
elseif str == 'me' then
table.insert(pt, plr);
elseif str == 'random' then
table.insert(pt, Players:GetPlayers()[math.random(1, #Players:GetPlayers())]);
end
return pt;
end

local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = false
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 65
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = false
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end




align(Hats.Hat1.Handle, Character["Torso"])



Hats.Hat1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
   

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
       Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(4.5, -1, 3)    

-- made by Creatar#4019 aca Creatar aca RoBloit
end
--]]
function CameraMode(ModeType)
       if ModeType == "fpp" then
           speaker.CameraMode = "LockFirstPerson"
	elseif ModeType == "tpp" then
           speaker.CameraMode = "Classic"
	else
       ErrorPrompt("string:nil","Camera mode not found, mode: " .. ModeType)
end
end

function getTorso(x)
	x = x or Players.LocalPlayer.Character
	return x:FindFirstChild("Torso") or x:FindFirstChild("UpperTorso") or x:FindFirstChild("LowerTorso") or x:FindFirstChild("HumanoidRootPart")
end

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

if get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end


function WorldToScreen(Object)
	local ObjectVector = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(Object.Position)
	return Vector2.new(ObjectVector.X, ObjectVector.Y)
end

function MousePositionToVector2()
	return Vector2.new(Mouse.X, Mouse.Y)
end

function GetClosestPlayerFromCursor()
	local found = nil
	local ClosestDistance = math.huge
	for i, v in pairs(Players:GetPlayers()) do
		if v ~= Players.LocalPlayer and v.Character and v.Character:FindFirstChildOfClass("Humanoid") then
			for k, x in pairs(v.Character:GetChildren()) do
				if string.find(x.Name, "Torso") then
					local Distance = (WorldToScreen(x) - MousePositionToVector2()).Magnitude
					if Distance < ClosestDistance then
						ClosestDistance = Distance
						found = v
					end
				end
			end
		end
	end
	return found
end

SpecialPlayerCases = {
	["all"] = function(speaker) return Players:GetPlayers() end,
	["others"] = function(speaker)
		local plrs = {}
		for i,v in pairs(Players:GetPlayers()) do
			if v ~= speaker then
				table.insert(plrs,v)
			end
		end
		return plrs
	end,
	["me"] = function(speaker)return {speaker} end,
	["#(%d+)"] = function(speaker,args,currentList)
		local returns = {}
		local randAmount = tonumber(args)
		local players = {unpack(currentList)}
		for i = 1,randAmount do
			if #players == 0 then break end
			local randIndex = math.random(1,#players)
			table.insert(returns,players[randIndex])
			table.remove(players,randIndex)
		end
		return returns
	end,
	["random"] = function(speaker)
		local players = Players:GetPlayers()
		local localplayer = Players.LocalPlayer
		table.remove(players, table.find(players, localplayer))
		return players[math.random(1, #players)]
	end,
	["%%(.+)"] = function(speaker,args)
		local returns = {}
		local team = args
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team and string.sub(string.lower(plr.Team.Name),1,#team) == string.lower(team) then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["allies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["enemies"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["team"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team == team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonteam"] = function(speaker)
		local returns = {}
		local team = speaker.Team
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Team ~= team then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["friends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nonfriends"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if not plr:IsFriendsWith(speaker.UserId) and plr ~= speaker then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["guests"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Guest then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["bacons"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character:FindFirstChild('Pal Hair') or plr.Character:FindFirstChild('Kate Hair') then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["age(%d+)"] = function(speaker,args)
		local returns = {}
		local age = tonumber(args)
		if not age == nil then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.AccountAge <= age then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["nearest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local lowest = math.huge
		local NearestPlayer = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance < lowest then
					lowest = distance
					NearestPlayer = {plr}
				end
			end
		end
		return NearestPlayer
	end,
	["farthest"] = function(speaker,args,currentList)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		local highest = 0
		local Farthest = nil
		for _,plr in pairs(currentList) do
			if plr ~= speaker and plr.Character then
				local distance = plr:DistanceFromCharacter(getRoot(speakerChar).Position)
				if distance > highest then
					highest = distance
					Farthest = {plr}
				end
			end
		end
		return Farthest
	end,
	["group(%d+)"] = function(speaker,args)
		local returns = {}
		local groupID = tonumber(args)
		for _,plr in pairs(Players:GetPlayers()) do
			if plr:IsInGroup(groupID) then  
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["alive"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChildOfClass("Humanoid") and plr.Character:FindFirstChildOfClass("Humanoid").Health > 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["dead"] = function(speaker,args)
		local returns = {}
		for _,plr in pairs(Players:GetPlayers()) do
			if (not plr.Character or not plr.Character:FindFirstChildOfClass("Humanoid")) or plr.Character:FindFirstChildOfClass("Humanoid").Health <= 0 then
				table.insert(returns,plr)
			end
		end
		return returns
	end,
	["rad(%d+)"] = function(speaker,args)
		local returns = {}
		local radius = tonumber(args)
		local speakerChar = speaker.Character
		if not speakerChar or not getRoot(speakerChar) then return end
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and getRoot(plr.Character) then
				local magnitude = (getRoot(plr.Character).Position - getRoot(speakerChar).Position).magnitude
				if magnitude <= radius then table.insert(returns,plr) end
			end
		end
		return returns
	end,
	["cursor"] = function(speaker)
		local plrs = {}
		local v = GetClosestPlayerFromCursor()
		if v ~= nil then table.insert(plrs, v) end
		return plrs
	end,
    ["npcs"] = function(speaker,args)
		local returns = {}
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Model") and getRoot(v) and v:FindFirstChildWhichIsA("Humanoid") and Players:GetPlayerFromCharacter(v) == nil then
                local clone = Instance.new("Player")
                clone.Name = v.Name .. " - " .. v:FindFirstChildWhichIsA("Humanoid").DisplayName
                clone.Character = v
                table.insert(returns, clone)
            end
        end
		return returns
	end,
}

function splitString(str,delim)
	local broken = {}
	if delim == nil then delim = "," end
	for w in string.gmatch(str,"[^"..delim.."]+") do
		table.insert(broken,w)
	end
	return broken
end

function toTokens(str)
	local tokens = {}
	for op,name in string.gmatch(str,"([+-])([^+-]+)") do
		table.insert(tokens,{Operator = op,Name = name})
	end
	return tokens
end

function onlyIncludeInTable(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function removeTableMatches(tab,matches)
	local matchTable = {}
	local resultTable = {}
	for i,v in pairs(matches) do matchTable[v.Name] = true end
	for i,v in pairs(tab) do if not matchTable[v.Name] then table.insert(resultTable,v) end end
	return resultTable
end

function getPlayersByName(Name)
	local Name,Len,Found = string.lower(Name),#Name,{}
	for _,v in pairs(Players:GetPlayers()) do
		if Name:sub(0,1) == '@' then
			if string.sub(string.lower(v.Name),1,Len-1) == Name:sub(2) then
				table.insert(Found,v)
			end
		else
			if string.sub(string.lower(v.Name),1,Len) == Name or string.sub(string.lower(v.DisplayName),1,Len) == Name then
				table.insert(Found,v)
			end
		end
	end
	return Found
end

function getPlayer(list,speaker)
	if list == nil then return {speaker.Name} end
	local nameList = splitString(list,",")

	local foundList = {}

	for _,name in pairs(nameList) do
		if string.sub(name,1,1) ~= "+" and string.sub(name,1,1) ~= "-" then name = "+"..name end
		local tokens = toTokens(name)
		local initialPlayers = Players:GetPlayers()

		for i,v in pairs(tokens) do
			if v.Operator == "+" then
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = onlyIncludeInTable(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = onlyIncludeInTable(initialPlayers,getPlayersByName(tokenContent))
				end
			else
				local tokenContent = v.Name
				local foundCase = false
				for regex,case in pairs(SpecialPlayerCases) do
					local matches = {string.match(tokenContent,"^"..regex.."$")}
					if #matches > 0 then
						foundCase = true
						initialPlayers = removeTableMatches(initialPlayers,case(speaker,matches,initialPlayers))
					end
				end
				if not foundCase then
					initialPlayers = removeTableMatches(initialPlayers,getPlayersByName(tokenContent))
				end
			end
		end

		for i,v in pairs(initialPlayers) do table.insert(foundList,v) end
	end

	local foundNames = {}
	for i,v in pairs(foundList) do table.insert(foundNames,v.Name) end

	return foundNames
end

function getHierarchy(obj)
	local fullname
	local period

	if string.find(obj.Name,' ') then
		fullname = '["'..obj.Name..'"]'
		period = false
	else
		fullname = obj.Name
		period = true
	end

	local getS = obj
	local parent = obj
	local service = ''

	if getS.Parent ~= game then
		repeat
			getS = getS.Parent
			service = getS.ClassName
		until getS.Parent == game
	end

	if parent.Parent ~= getS then
		repeat
			parent = parent.Parent
			if string.find(tostring(parent),' ') then
				if period then
					fullname = '["'..parent.Name..'"].'..fullname
				else
					fullname = '["'..parent.Name..'"]'..fullname
				end
				period = false
			else
				if period then
					fullname = parent.Name..'.'..fullname
				else
					fullname = parent.Name..''..fullname
				end
				period = true
			end
		until parent.Parent == getS
	elseif string.find(tostring(parent),' ') then
		fullname = '["'..parent.Name..'"]'
		period = false
	end

	if period then
		return 'game:GetService("'..service..'").'..fullname
	else
		return 'game:GetService("'..service..'")'..fullname
	end
end

local selectionBox = Instance.new("SelectionBox")
selectionBox.Name = randomString()
selectionBox.Color3 = Color3.new(255,255,255)
selectionBox.Adornee = nil
selectionBox.Parent = PARENT

local selected = Instance.new("SelectionBox")
selected.Name = randomString()
selected.Color3 = Color3.new(0,166,0)
selected.Adornee = nil
selected.Parent = PARENT

local ActivateHighlight = nil
local ClickSelect = nil
function selectPart()
	local function HighlightPart()
		if selected.Adornee ~= Mouse.Target then
			selectionBox.Adornee = Mouse.Target
		else
			selectionBox.Adornee = nil
		end
	end
	ActivateHighlight = Mouse.Move:Connect(HighlightPart)
	local function SelectPart()
		if Mouse.Target ~= nil then
			selected.Adornee = Mouse.Target
			Path.Text = getHierarchy(Mouse.Target)
		end
	end
	ClickSelect = Mouse.Button1Down:Connect(SelectPart)
end

Exit_4.MouseButton1Click:Connect(function()
	if ActivateHighlight then
		ActivateHighlight:Disconnect()
	end
	if ClickSelect then
		ClickSelect:Disconnect()
	end
	selectionBox.Adornee = nil
	selected.Adornee = nil
	Path.Text = ""
	Interface_Visible(Exit_4, false)
        Interface_Visible(CopyPath, false)
        Interface_Visible(ChoosePart, false)
        Interface_Visible(Path, false)
	fuckingFrame.Visible = false
end)

CopyPath.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		copy(Path.Text)
	else
		ErrorPrompt("Copy part",'Select a part to copy its path')
	end
end)

ChoosePart.MouseButton1Click:Connect(function()
	if Path.Text ~= "" then
		local tpNameExt = ''
		local function handleWpNames()
			local FoundDupe = false
			for i,v in pairs(InterfaceCoordFunction) do
				if v.NAME:lower() == selected.Adornee.Name:lower()..tpNameExt then
					FoundDupe = true
				end
			end
			if not FoundDupe then
				InterfaceCoordFunction[#InterfaceCoordFunction + 1] = {NAME = selected.Adornee.Name..tpNameExt, COORD = {selected.Adornee}}
				notify("Select Part","Created waypoint: "..selected.Adornee.Name..tpNameExt)
					
			else
				if isNumber(tpNameExt) then
					tpNameExt = tpNameExt+1
				else
					tpNameExt = 1
				end
				handleWpNames()
			end
		end
		handleWpNames()
		RefreshInterface()
	else
		ErrorPrompt("Select Part",'Select a part first')
	end
end)

fcRunning = false
local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	local newCamera = workspace.CurrentCamera
	if newCamera then
		Camera = newCamera
	end
end)

local INPUT_PRIORITY = Enum.ContextActionPriority.High.Value

Spring = {} do
	Spring.__index = Spring

	function Spring.new(freq, pos)
		local self = setmetatable({}, Spring)
		self.f = freq
		self.p = pos
		self.v = pos*0
		return self
	end

	function Spring:Update(dt, goal)
		local f = self.f*2*math.pi
		local p0 = self.p
		local v0 = self.v

		local offset = goal - p0
		local decay = math.exp(-f*dt)

		local p1 = goal + (v0*dt - offset*(f*dt + 1))*decay
		local v1 = (f*dt*(offset*f - v0) + v0)*decay

		self.p = p1
		self.v = v1

		return p1
	end

	function Spring:Reset(pos)
		self.p = pos
		self.v = pos*0
	end
end

local cameraPos = Vector3.new()
local cameraRot = Vector2.new()

local velSpring = Spring.new(5, Vector3.new())
local panSpring = Spring.new(5, Vector2.new())

Input = {} do

	keyboard = {
		W = 0,
		A = 0,
		S = 0,
		D = 0,
		E = 0,
		Q = 0,
		Up = 0,
		Down = 0,
		LeftShift = 0,
	}

	mouse = {
		Delta = Vector2.new(),
	}

	NAV_KEYBOARD_SPEED = Vector3.new(1, 1, 1)
	PAN_MOUSE_SPEED = Vector2.new(1, 1)*(math.pi/64)
	NAV_ADJ_SPEED = 0.75
	NAV_SHIFT_MUL = 0.25

	navSpeed = 1

	function Input.Vel(dt)
		navSpeed = math.clamp(navSpeed + dt*(keyboard.Up - keyboard.Down)*NAV_ADJ_SPEED, 0.01, 4)

		local kKeyboard = Vector3.new(
			keyboard.D - keyboard.A,
			keyboard.E - keyboard.Q,
			keyboard.S - keyboard.W
		)*NAV_KEYBOARD_SPEED

		local shift = UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

		return (kKeyboard)*(navSpeed*(shift and NAV_SHIFT_MUL or 1))
	end

	function Input.Pan(dt)
		local kMouse = mouse.Delta*PAN_MOUSE_SPEED
		mouse.Delta = Vector2.new()
		return kMouse
	end

	do
		function Keypress(action, state, input)
			keyboard[input.KeyCode.Name] = state == Enum.UserInputState.Begin and 1 or 0
			return Enum.ContextActionResult.Sink
		end

		function MousePan(action, state, input)
			local delta = input.Delta
			mouse.Delta = Vector2.new(-delta.y, -delta.x)
			return Enum.ContextActionResult.Sink
		end

		function Zero(t)
			for k, v in pairs(t) do
				t[k] = v*0
			end
		end

		function Input.StartCapture()
			ContextActionService:BindActionAtPriority("FreecamKeyboard",Keypress,false,INPUT_PRIORITY,
				Enum.KeyCode.W,
				Enum.KeyCode.A,
				Enum.KeyCode.S,
				Enum.KeyCode.D,
				Enum.KeyCode.E,
				Enum.KeyCode.Q,
				Enum.KeyCode.Up,
				Enum.KeyCode.Down
			)
			ContextActionService:BindActionAtPriority("FreecamMousePan",MousePan,false,INPUT_PRIORITY,Enum.UserInputType.MouseMovement)
		end

		function Input.StopCapture()
			navSpeed = 1
			Zero(keyboard)
			Zero(mouse)
			ContextActionService:UnbindAction("FreecamKeyboard")
			ContextActionService:UnbindAction("FreecamMousePan")
		end
	end
		Control_1.MouseEnter:Connect(function()
                    keyboard.W = 0.5
                end)
		
		Control_2.MouseEnter:Connect(function()
                    keyboard.A = 1
                end)
		
		Control_3.MouseEnter:Connect(function()
                    keyboard.S = 0.5
                end)
		
		Control_4.MouseEnter:Connect(function()
                    keyboard.D = 1
                end)
		
		Control_UP.MouseEnter:Connect(function()
                    keyboard.Up = 1
                end)
		
		Control_Down.MouseEnter:Connect(function()
                    keyboard.Down = 1
                end)
		
		Control_LShift.MouseEnter:Connect(function()
                    keyboard.LeftShift = 1
                end)
		
		Control_1.MouseLeave:Connect(function()
                    keyboard.W = 0
                end)
		
		Control_2.MouseLeave:Connect(function()
                    keyboard.A = 0
                end)
		
		Control_3.MouseLeave:Connect(function()
                    keyboard.S = 0
                end)
		
		Control_4.MouseLeave:Connect(function()
                    keyboard.D = 0
                end)
		
		Control_UP.MouseLeave:Connect(function()
                    keyboard.Up = 0
                end)
		
		Control_Down.MouseLeave:Connect(function()
                    keyboard.Down = 0
                end)
		
		Control_LShift.MouseLeave:Connect(function()
                    keyboard.LeftShift = 0
                end)
end

function GetFocusDistance(cameraFrame)
	local znear = 0.1
	local viewport = Camera.ViewportSize
	local projy = 2*math.tan(cameraFov/2)
	local projx = viewport.x/viewport.y*projy
	local fx = cameraFrame.rightVector
	local fy = cameraFrame.upVector
	local fz = cameraFrame.lookVector

	local minVect = Vector3.new()
	local minDist = 512

	for x = 0, 1, 0.5 do
		for y = 0, 1, 0.5 do
			local cx = (x - 0.5)*projx
			local cy = (y - 0.5)*projy
			local offset = fx*cx - fy*cy + fz
			local origin = cameraFrame.p + offset*znear
			local _, hit = workspace:FindPartOnRay(Ray.new(origin, offset.unit*minDist))
			local dist = (hit - origin).magnitude
			if minDist > dist then
				minDist = dist
				minVect = offset.unit
			end
		end
	end

	return fz:Dot(minVect)*minDist
end

local function StepFreecam(dt)
	local vel = velSpring:Update(dt, Input.Vel(dt))
	local pan = panSpring:Update(dt, Input.Pan(dt))

	local zoomFactor = math.sqrt(math.tan(math.rad(70/2))/math.tan(math.rad(cameraFov/2)))

	cameraRot = cameraRot + pan*Vector2.new(0.75, 1)*8*(dt/zoomFactor)
	cameraRot = Vector2.new(math.clamp(cameraRot.x, -math.rad(90), math.rad(90)), cameraRot.y%(2*math.pi))

	local cameraCFrame = CFrame.new(cameraPos)*CFrame.fromOrientation(cameraRot.x, cameraRot.y, 0)*CFrame.new(vel*Vector3.new(1, 1, 1)*64*dt)
	cameraPos = cameraCFrame.p

	Camera.CFrame = cameraCFrame
	Camera.Focus = cameraCFrame*CFrame.new(0, 0, -GetFocusDistance(cameraCFrame))
	Camera.FieldOfView = cameraFov
end

local PlayerState = {} do
	mouseBehavior = ""
	mouseIconEnabled = ""
	cameraType = ""
	cameraFocus = ""
	cameraCFrame = ""
	cameraFieldOfView = ""

	function PlayerState.Push()
		cameraFieldOfView = Camera.FieldOfView
		Camera.FieldOfView = 70

		cameraType = Camera.CameraType
		Camera.CameraType = Enum.CameraType.Custom

		cameraCFrame = Camera.CFrame
		cameraFocus = Camera.Focus

		mouseIconEnabled = UserInputService.MouseIconEnabled
		UserInputService.MouseIconEnabled = true

		mouseBehavior = UserInputService.MouseBehavior
		UserInputService.MouseBehavior = Enum.MouseBehavior.Default
	end

	function PlayerState.Pop()
		Camera.FieldOfView = 70

		Camera.CameraType = cameraType
		cameraType = nil

		Camera.CFrame = cameraCFrame
		cameraCFrame = nil

		Camera.Focus = cameraFocus
		cameraFocus = nil

		UserInputService.MouseIconEnabled = mouseIconEnabled
		mouseIconEnabled = nil

		UserInputService.MouseBehavior = mouseBehavior
		mouseBehavior = nil
	end
end

-- local ToggleRotateHandleMesh = false
function tptool_A1()
local TpTool = Instance.new("Tool")
	TpTool.Name = "Teleport Tool"
	TpTool.RequiresHandle = true
	TpTool.Parent = speaker.Backpack
	TpTool.ToolTip = "Teleport to place you want"
	local handle = Instance.new("Part")
              handle.Name = "Handle"
              handle.Size = Vector3.new(1, 1, 1)
              handle.BrickColor = BrickColor.new("Bright yellow")
              handle.Anchored = false
              handle.CanCollide = false
              handle.Parent = TpTool
	TpTool.Activated:Connect(function()
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		if not Char or not HRP then
			ErrorPrompt("Failed to load tptool","Failed to find HumanoidRootPart")
		end
		HRP.CFrame = CFrame.new(Mouse.Hit.X, Mouse.Hit.Y + 3, Mouse.Hit.Z, select(4, HRP.CFrame:components()))
	end)
end

function MobileController()
if _G.Settings.device == "Mobile" then
	Interface_Visible(Control_1, true)
	Interface_Visible(Control_2, true)
	Interface_Visible(Control_3, true)
	Interface_Visible(Control_4, true)
	Interface_Visible(Control_UP, true)
	Interface_Visible(Control_Down, true)
	Interface_Visible(Control_LShift, true)
	notify("Mobile Freecam","Freecam enable for mobile devices")
	ErrorPrompt("Announcement for mobile users", "THIS CONTROL AND THE SPEED IS STILL UNDER DEVELOPMENT, SO PLEASE REJOIN IF FOUND A BUG")
   end
if _G.Settings.device == "PC" then
	Interface_Visible(Control_1, false)
	Interface_Visible(Control_2, false)
	Interface_Visible(Control_3, false)
	Interface_Visible(Control_4, false)
	Interface_Visible(Control_UP, false)
	Interface_Visible(Control_Down, false)
	Interface_Visible(Control_LShift, false)
	notify("PC Freecam","Freecam enable for PC devices")
   end
if _G.Settings.device == nil then
        ErrorPrompt("Incompatible Device", "Unknown Device")
    end
end

function StartFreecam(pos)
	if fcRunning then
		StopFreecam()
	end
	local cameraCFrame = Camera.CFrame
	if pos then
		cameraCFrame = pos
	end
	cameraRot = Vector2.new()
	cameraPos = cameraCFrame.p
	cameraFov = Camera.FieldOfView

	velSpring:Reset(Vector3.new())
	panSpring:Reset(Vector2.new())

	PlayerState.Push()
	RunService:BindToRenderStep("Freecam", Enum.RenderPriority.Camera.Value, StepFreecam)
	Input.StartCapture()
	fcRunning = true
end

function StopFreecam()
	if not fcRunning then return end
	Input.StopCapture()
	RunService:UnbindFromRenderStep("Freecam")
	PlayerState.Pop()
	workspace.Camera.FieldOfView = 70
	fcRunning = false
	Interface_Visible(Control_1, false)
	Interface_Visible(Control_2, false)
	Interface_Visible(Control_3, false)
	Interface_Visible(Control_4, false)
	Interface_Visible(Control_UP, false)
	Interface_Visible(Control_Down, false)
	Interface_Visible(Control_LShift, false)
end

function r15(plr)
	if plr.Character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		return true
	end
end

local ServerSize_A777 = "(0/0)"
function Serverhop()
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
        end
    end
    if #x > 0 then
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
    else
        return "Protocol:cantfind"
    end
end
 
function CheckServers()
    -- local respon, result = pcall(function()
    local x = {}
    for _, v in ipairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100")).data) do
        if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
            x[#x + 1] = v.id
		ServerSize_A777 = "(" .. tostring(v.playing) .. "/" .. tostring(v.maxPlayers) .. ")"
        end
    end
    if #x > 0 then
        return "Protocol:found"
    else
        return "Protocol:cantfind"
    end
    -- end)
    
    -- if not respon then
    -- ErrorPrompt("Serverhop", result)
    -- end
end

function AnimationExtension(AnimName)
	local Animate = speaker.Character.Animate
	if AnimName == "patrol" then
	Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1149612882"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1151231493"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1150967949"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1148811837"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1148863382"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "confident" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1069977950"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1069987858"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1070017263"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1070001516"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1069984524"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1069946257"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1069973677"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "popstar" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1212900985"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1150842221"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980338"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1212980348"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1212954642"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1213044953"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1212900995"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "cowboy" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1014390418"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1014398616"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1014421541"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1014401683"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1014394726"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1014380606"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1014384571"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "ghost" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=616006778"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=616008087"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=616013216"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=616008936"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=616005863"
Animate.swimidle.SwimIdle.AnimationId = "http://www.roblox.com/asset/?id=616012453"
Animate.swim.Swim.AnimationId = "http://www.roblox.com/asset/?id=616011509"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "sneaky" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=1132473842"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=1132477671"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=1132510133"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=1132494274"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=1132489853"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=1132461372"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=1132469004"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "princess" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=941003647"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=941013098"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=941028902"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=941015281"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=941008832"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=940996062"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=941000007"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
	if AnimName == "tmp" then
		Animate.idle.Animation1.AnimationId = "http://www.roblox.com/asset/?id=4211409027"
Animate.idle.Animation2.AnimationId = "http://www.roblox.com/asset/?id=4211409027"
Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=4211412518"
Animate.run.RunAnim.AnimationId = "http://www.roblox.com/asset/?id=421141570"
Animate.jump.JumpAnim.AnimationId = "http://www.roblox.com/asset/?id=421141025"
Animate.climb.ClimbAnim.AnimationId = "http://www.roblox.com/asset/?id=4211406184"
Animate.fall.FallAnim.AnimationId = "http://www.roblox.com/asset/?id=4211407659"
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end

function StartServerhop()
	local ServerChecker = CheckServers()
	if ServerChecker == "Protocol:cantfind" then
	ErrorPrompt("Cant find a server for u","We couldn't find a server")
        OpenCmdBar()
	end
	if ServerChecker == "Protocol:found" then
	success("Joining..","Joining server " .. tostring(ServerSize_A777))
        CloseCmdBar()
	end
	wait(1)
	local Check2 = Serverhop()
	if Check2 == "Protocol:cantfind" then
	ErrorPrompt("Cant find a server for u","We couldn't find a server")
        OpenCmdBar()
	end
end

local ScreenGui = Instance.new("ScreenGui")
local UI_A1= Instance.new("TextLabel")
local UI_A2 = Instance.new("TextLabel")


--Properties:


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


UI_A1.Name = "PING_UI"
UI_A1.Parent = ScreenGui
UI_A1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_A1.BackgroundTransparency = 1.000
UI_A1.Position = UDim2.new(0.786138654, 0, 0, 0)
UI_A1.Text = "#PING_ERROR"
UI_A1.Size = UDim2.new(0, 135, 0, 25)
UI_A1.Font = Enum.Font.SourceSans
UI_A1.TextColor3 = Color3.fromRGB(0, 255, 0)
UI_A1.TextScaled = true
UI_A1.TextSize = 14.000
UI_A1.TextWrapped = true
UI_A1.Visible = false

UI_A2.Name = "FPS_UI"
UI_A2.Parent = ScreenGui
UI_A2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UI_A2.BackgroundTransparency = 1.000
UI_A2.BorderColor3 = Color3.fromRGB(255, 255, 255)
UI_A2.Position = UDim2.new(0.700000048, 0, 0, 0)
UI_A2.Text = "#FPS_ERR"
UI_A2.Size = UDim2.new(0, 125, 0, 25)
UI_A2.Font = Enum.Font.SourceSans
UI_A2.TextColor3 = Color3.fromRGB(0, 255, 0)
UI_A2.TextScaled = true
UI_A2.TextSize = 14.000
UI_A2.TextWrapped = true
UI_A2.Visible = false

function ProtocolLoopPING()
      local Current_Ping = tonumber(string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1])
     -- UI_A1.Text = tostring(Current_Ping)
      if Current_Ping < 500 then
         UI_A1.TextColor3 = Color3.fromRGB(0, 255, 0)
         UI_A1.Text = "" .. tostring(Current_Ping) .. "ms"
      end
      if Current_Ping > 500 then
         UI_A1.TextColor3 = Color3.fromRGB(245, 205, 48)
         UI_A1.Text = "" .. tostring(Current_Ping) .. "ms"
      end
      if Current_Ping > 1000 then
         UI_A1.TextColor3 = Color3.fromRGB(196, 40, 28)
         UI_A1.Text = "⚠️ " .. tostring(Current_Ping) .. "ms ⚠️"
      end
end

function ProtocolLoopFPS(Frame)
      -- UI_A2.Text = Frame
      if tonumber(Frame) > 30 then
           UI_A2.TextColor3 = Color3.fromRGB(0, 255, 0)
           UI_A2.Text = "fps: " .. tostring(Frame) .. " | "
        end
      if tonumber(Frame) < 30 then
           UI_A2.TextColor3 = Color3.fromRGB(245, 205, 48)
           UI_A2.Text = "fps: " .. tostring(Frame) .. " | "
        end
        if tonumber(Frame) < 10 then
           UI_A2.TextColor3 = Color3.fromRGB(196, 40, 28)
           UI_A2.Text = "⚠️ fps: " .. Frame .. " ⚠️ | "
        end
end

RunService.RenderStepped:Connect(function()
        ProtocolLoopPING()
        -- local FPS = game:GetService("Workspace"):GetRealPhysicsFPS()
	ProtocolLoopFPS(math.floor(game:GetService("Workspace"):GetRealPhysicsFPS()))
end)

function DisplayUI(UIname)
      if UIname == "ping" then
      UI_A1.Visible = true
   end
      if UIname == "fps" then
      UI_A2.Visible = true
   end
      if UIname == "targetfling" then
      Interface_Visible(FT1,true)
      Interface_Visible(FT2,true)
      dragify(FT1)
   end
      if UIname == "chatbypass" then
      TextBar.Visible = true
      BarSent.Visible = true
      ToggleBypassMode.Visible = true
      dragify(TextBar)
   end
      if UIname == "exc" then
      TextBarExecutor.Visible = true
      BarButtonExecute.Visible = true
      dragify(TextBarExecutor)
   end
      if UIname == "part" then
      Interface_Visible(Exit_4, true)
      Interface_Visible(CopyPath, true)
      Interface_Visible(ChoosePart, true)
      Interface_Visible(Path, true)
      fuckingFrame.Visible = true
      selectPart()
      dragify(Path)
   end
      if UIname == "whisper" then
      Interface_Visible(WhisperButton, true)
      Interface_Visible(WhisperPlayer, true)
      Interface_Visible(WhisperBox, true)
      dragify(WhisperBox)
   end
      if UIname == "file" then
      Interface_Visible(SaveOMG, true)
      Interface_Visible(FileName, true)
      Interface_Visible(InFile, true)
      dragify(Infile)
   end
      if UIname == "prt" then
      Interface_Visible(PV1, true)
      Interface_Visible(PV2, true)
      Interface_Visible(PV3, true)
      dragify(PV1)
   end
      if UIname == "all" then
      UI_A1.Visible = true
      UI_A2.Visible = true
      TextBar.Visible = true
      BarSent.Visible = true
      TextBarExecutor.Visible = true
      BarButtonExecute.Visible = true
      Interface_Visible(Exit_4, true)
      Interface_Visible(CopyPath, true)
      Interface_Visible(ChoosePart, true)
      Interface_Visible(Path, true)
      fuckingFrame.Visible = true
      Interface_Visible(WhisperButton, true)
      Interface_Visible(WhisperPlayer, true)
      Interface_Visible(WhisperBox, true)
      Interface_Visible(SaveOMG, true)
      Interface_Visible(FileName, true)
      Interface_Visible(InFile, true)
      Interface_Visible(PV1, true)
      Interface_Visible(PV2, true)
      Interface_Visible(PV3, true)
   end
end

function RemoveDisplayUI(UIname)
      if UIname == "ping" then
      UI_A1.Visible = false
   end
      if UIname == "fps" then
      UI_A2.Visible = false
   end
      if UIname == "chatbypass" then
      TextBar.Visible = false
      BarSent.Visible = false
      ToggleBypassMode.Visible = false
   end
   if UIname == "exc" then
      TextBarExecutor.Visible = false
      BarButtonExecute.Visible = false
   end
      if UIname == "targetfling" then
      Interface_Visible(FT1,false)
      Interface_Visible(FT2,false)
   end
      if UIname == "part" then
      Interface_Visible(Exit_4, false)
      Interface_Visible(CopyPath, false)
      Interface_Visible(ChoosePart, false)
      Interface_Visible(Path, false)
      fuckingFrame.Visible = false
   end
      if UIname == "whisper" then
      Interface_Visible(WhisperButton, false)
      Interface_Visible(WhisperPlayer, false)
      Interface_Visible(WhisperBox, false)
   end
      if UIname == "file" then
      Interface_Visible(SaveOMG, false)
      Interface_Visible(FileName, false)
      Interface_Visible(InFile, false)
   end
      if UIname == "prt" then
      Interface_Visible(PV1, false)
      Interface_Visible(PV2, false)
      Interface_Visible(PV3, false)
   end
      if UIname == "all" then
      UI_A1.Visible = false
      UI_A2.Visible = false
      TextBar.Visible = false
      BarSent.Visible = false
      TextBarExecutor.Visible = false
      BarButtonExecute.Visible = false
      Interface_Visible(Exit_4, false)
      Interface_Visible(CopyPath, false)
      Interface_Visible(ChoosePart, false)
      Interface_Visible(Path, false)
      fuckingFrame.Visible = false
      Interface_Visible(WhisperButton, false)
      Interface_Visible(WhisperPlayer, false)
      Interface_Visible(WhisperBox, false)
      Interface_Visible(SaveOMG, false)
      Interface_Visible(FileName, false)
      Interface_Visible(InFile, false)
      Interface_Visible(PV1, false)
      Interface_Visible(PV2, false)
      Interface_Visible(PV3, false)
   end
end

local VIPScreenGui = Instance.new("ScreenGui")
VIPScreenGui.Parent = speaker.PlayerGui
VIPScreenGui.ResetOnSpawn = false

local VIPFrame = Instance.new("Frame")
VIPFrame.Size = UDim2.new(0, 200, 0, 50)
VIPFrame.Position = UDim2.new(0.5, -100, 0, 0) -- The -100 value is half the width of the frame
VIPFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
VIPFrame.BorderSizePixel = 0
VIPFrame.Parent = VIPScreenGui
VIPFrame.Visible = false

local VIPTextLabel = Instance.new("TextLabel")
VIPTextLabel.Text = "No fling exploit detected"
VIPTextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
VIPTextLabel.Size = UDim2.new(1, 0, 1, 0)
VIPTextLabel.Parent = VIPFrame

function EditFlingNotify(VIPEditText)
	VIPTextLabel.Text = VIPEditText
end

local MusicName = ""
function music(idmusic)
if game:GetService("SoundService"):FindFirstChild("Sound") then
game:GetService("SoundService"):FindFirstChild("Sound").SoundId = "rbxassetid://" .. idmusic
game:GetService("SoundService"):FindFirstChild("Sound").Volume = 1
game:GetService("SoundService"):FindFirstChild("Sound").Looped = true
game:GetService("SoundService"):FindFirstChild("Sound"):Play()
else
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://" .. idmusic
sound.Volume = 1
sound.Parent = game:GetService("SoundService")
sound.Looped = true
sound:Play()
end

local id = string.match(game:GetService("SoundService"):FindFirstChild("Sound").SoundId, "rbxasset://sounds.+") or string.match(game:GetService("SoundService"):FindFirstChild("Sound").SoundId, "&hash=.+") or string.match(game:GetService("SoundService"):FindFirstChild("Sound").SoundId, "%d+")

local Asset = game:GetService("MarketplaceService"):GetProductInfo(id)

MusicName = Asset.Name
end

function SyncFunction(Func)
       return tostring(Func)
end

function onPartSpawned(part)
      if _G.Settings.Added == true then
    if part.Name == _G.Settings.partname then
        print("The " .. SyncFunction(_G.Settings.partname) .. " was spawned!")
        
    end
end
end

game:GetService("Workspace").DescendantAdded:Connect(onPartSpawned)

local _AnimName = ""
function _Anims(id)
AnimService = Instance.new("Animation")
AnimService.AnimationId = "rbxassetid://" .. id
AnimService.Name = "Custom Animation"
ServiceStart = speaker.Character.Humanoid:LoadAnimation(AnimService)
ServiceStart:Play()
ServiceStart:AdjustSpeed(1)

local id = string.match(AnimService.AnimationId, "rbxasset://sounds.+") or string.match(AnimService.AnimationId, "&hash=.+") or string.match(AnimService.AnimationId, "%d+")

local Asset = game:GetService("MarketplaceService"):GetProductInfo(id)

_AnimName = Asset.Name
end


function respawn(plr)
	-- if invisRunning then TurnVisible() end
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end

local refreshCmd = false
function refresh(plr)
	refreshCmd = true
	local Human = plr.Character and plr.Character:FindFirstChildOfClass("Humanoid", true)
	local pos = Human and Human.RootPart and Human.RootPart.CFrame
	local pos1 = workspace.CurrentCamera.CFrame
	respawn(plr)
	task.spawn(function()
		plr.CharacterAdded:Wait():WaitForChild("Humanoid").RootPart.CFrame, workspace.CurrentCamera.CFrame = pos, wait() and pos1
		refreshCmd = false
	end)
end

function attach(client,target)
	if tools(speaker) then
		local char = speaker.Character
		local tchar = target.Character
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local hrp = getRoot(speaker.Character)
		local hrp2 = getRoot(target.Character)
		hum.Name = "1"
		local newHum = hum:Clone()
		newHum.Parent = char
		newHum.Name = "Humanoid"
		wait()
		hum:Destroy()
		workspace.CurrentCamera.CameraSubject = char
		newHum.DisplayDistanceType = "None"
		local tool = speaker:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass("Tool") or speaker.Character:FindFirstChildOfClass("Tool")
		tool.Parent = char
		hrp.CFrame = hrp2.CFrame * CFrame.new(0, 0, 0) * CFrame.new(math.random(-100, 100)/200,math.random(-100, 100)/200,math.random(-100, 100)/200)
		local n = 0
		repeat
			wait(.1)
			n = n + 1
			hrp.CFrame = hrp2.CFrame
		until (tool.Parent ~= char or not hrp or not hrp2 or not hrp.Parent or not hrp2.Parent or n > 250) and n > 2
	else
		ErrorPrompt("Tool Required","You need to have an item in your inventory to use this command")
	end
end

function kill(client,target,fast)
	if tools(speaker) then
		if target ~= nil then
			local NormPos = getRoot(speaker.Character).CFrame
			if not fast then
				refresh(client)
				wait()
				repeat wait() until speaker.Character ~= nil and getRoot(speaker.Character)
				wait(0.3)
			end
			local hrp = getRoot(speaker.Character)
			attach(client,target)
			repeat
				wait()
				hrp.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5,999999)
			until not getRoot(target.Character) or not getRoot(speaker.Character)
			speaker.CharacterAdded:Wait():WaitForChild("HumanoidRootPart").CFrame = NormPos
		end
	else
		ErrorPrompt("Tool Required","You need to have an item in your inventory to use this command")
	end
end

function ProtocolResponse(RespondType, ProtocolPlayer)
       if RespondType == "compliment" then
       local compliment = {
             "i've always thought " .. ProtocolPlayer .. " have remarkably awe-inspiring buttocks",
             "i must say: " .. ProtocolPlayer .. " have extraordinarily angelic muscles",
             "they say " .. ProtocolPlayer .. " are pretty delightful",
             "i reckon " .. ProtocolPlayer .. " have simply mind-blowing ideas",
             "i think " .. ProtocolPlayer .. " are insanely ravishing",
             "it's true, " .. ProtocolPlayer .. " are deeply divine",
             "i can't believe " .. ProtocolPlayer .. " are totally adorable",
             "i think " .. ProtocolPlayer .. " have extremely terrific eyebrows"
      }
     game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(compliment[math.random(1, #compliment)],"All")
end
       if RespondType == "insult" then
       local insult = {
             " are as sickening as a repulsive cloud of boring smelly cockroach slime",
             " are as ugly as a monstrous sticky ton of inferior bug assholes",
             " are as noxious as an unsatisfactory bunch of stinky ugly rat vomit",
             " are as naughty as a nasty pointless gross bundle of ghastly cockroach puke",
             " are as yucky as a detrimental bucket of inferior dog poop",
             " are as obnoxious as a dreadful puddle of vicious impertinent repellent pig spit",
             " are as dirty as a decaying repellent inferior heap of unpleasant absurd horse assholes"
      }
     game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(tostring(ProtocolPlayer) .. "" .. tostring(insult[math.random(1, #insult)]),"All")
end
end



local SourceUITemplate = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Content = Instance.new("Frame")
local Content_2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Close = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local TextLabel = Instance.new("TextLabel")
local List = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")

SourceUITemplate.Name = "SourceUITemplate"
SourceUITemplate.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
SourceUITemplate.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = SourceUITemplate
Frame.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
Frame.BackgroundTransparency = 0.300
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.425558329, 0, 0.38188976, 0)
Frame.Size = UDim2.new(0, 300, 0, 300)

Content.Name = "Content"
Content.Parent = Frame
Content.AnchorPoint = Vector2.new(0.5, 0.5)
Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content.BackgroundTransparency = 1.000
Content.Position = UDim2.new(0.5, 0, 0.5, 0)
Content.Size = UDim2.new(1, -10, 1, -10)

Content_2.Name = "Content"
Content_2.Parent = Frame
Content_2.AnchorPoint = Vector2.new(0.5, 0.5)
Content_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Content_2.BackgroundTransparency = 1.000
Content_2.Position = UDim2.new(1, 0, 0, 0)
Content_2.Size = UDim2.new(1, -10, 0.5, 0)

Title.Name = "Title"
Title.Parent = Content
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Size = UDim2.new(1, 0, 0, 18)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Vortext V:{2} | {ContentError}:{1}"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.TextYAlignment = Enum.TextYAlignment.Top

Close.Name = "Close"
Close.Parent = Content
Close.AnchorPoint = Vector2.new(1, 0)
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(1, 0, 0, 0)
Close.Size = UDim2.new(1, 0, 0, 16)

UIAspectRatioConstraint.Parent = Close

TextLabel.Parent = Close
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "X"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.500
TextLabel.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

local function close()
local script = Instance.new('LocalScript', Close)

script.Parent.MouseButton1Click:Connect(function()
script.Parent.Parent.Parent.Visible = false
end)

end
coroutine.wrap(close)()
local function drag()
local script = Instance.new('LocalScript', Frame)

local UserInputService = game:GetService("UserInputService")

local gui = script.Parent

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
local delta = input.Position - dragStart
gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position

input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)

gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(drag)()
SourceUITemplate:Destroy()

function Helicopter(mode)
         if mode == "fling" then
         if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true

flinging = false
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
		end
	end
	Clip = false
	wait(0.1)
	local function V()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	XV = RunService.Stepped:Connect(V)
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity")
	bambam.Name = randomString()
	bambam.Parent = getRoot(speaker.Character)
	bambam.AngularVelocity = Vector3.new(0,99999,0)
	bambam.MaxTorque = Vector3.new(0,math.huge,0)
	bambam.P = math.huge
	local Char = speaker.Character:GetChildren()
	for i, v in next, Char do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Massless = true
			v.Velocity = Vector3.new(0, 0, 0)
		end
	end
	flinging = true
	local function flingDiedF()
		if XV then
        	XV:Disconnect()
	end
	Clip = true
end
	if flingDied then
		flingDied:Disconnect()
	end
	wait(.1)
	flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
	repeat
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		wait(.2)
		bambam.AngularVelocity = Vector3.new(0,0,0)
		wait(.1)
	until flinging == false

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true

local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=0"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)
end
if mode == "none" then
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")

if XV then
        	XV:Disconnect()
	end
	Clip = true
	if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then return end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=0"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)
end
if mode == "swim" then
if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true

speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)

end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=0"
hi.Volume = 2
hi.Looped = true
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()

local spinSpeed = 40
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)


end)    
end
local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
local u = game.Players.LocalPlayer
local urchar = u.Character

task.spawn(function()


qUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'q' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight - 3
end
end)
eUp = Mouse.KeyUp:Connect(function(KEY)
if KEY == 'e' then
urchar.Humanoid.HipHeight = urchar.Humanoid.HipHeight + 3
end
end)


end)
end
end

function StatusBAR(A, B, C, D)
local Character = speaker.Character
		local newName = Instance.new("Model", speaker.Character)
		newName.Name = ""
		local cl = Character:WaitForChild("Head"):Clone()
		cl.Parent = newName
		cl:WaitForChild("face"):Destroy()
		local hum = Instance.new("Humanoid", newName)
		hum.Name = "NameTag"
		hum.MaxHealth = 0
		hum.Health = 0
		local weld = Instance.new("Weld", cl)
		weld.Part0 = cl
		weld.Part1 = Character:WaitForChild("Head")
		Character:WaitForChild("Head").Transparency = 1
		
        local BarNumber = 100
         while wait(1) do
         if speaker.Character.Humanoid.Health == 0 then break end
         BarNumber = BarNumber + -1
         
       if BarNumber == 100 then
       newName.Name = A .. " \n■■■■■■■■■■ " .. BarNumber .. "%"
       end
       if BarNumber == 90 then
       newName.Name = A .. " \n■■■■■■■■■□ " .. BarNumber .. "%"
       end
       if BarNumber == 80 then
       newName.Name = A .. " \n■■■■■■■■□□ " .. BarNumber .. "%"
       end
       if BarNumber == 70 then
       newName.Name = A .. " \n■■■■■■■□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 60 then
       newName.Name = A .. " \n■■■■■■□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 50 then
       newName.Name = A .. " \n■■■■■□□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 40 then
       newName.Name = A .. " \n■■■■□□□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 30 then
       newName.Name = A .. " \n■■■□□□□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 20 then
       newName.Name = A .. " \n■■□□□□□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 10 then
       newName.Name = A .. " \n■□□□□□□□□□ " .. BarNumber .. "%"
       end
       if BarNumber == 0 then
       newName.Name = A .. " \n□□□□□□□□□□ " .. BarNumber .. "%"
       wait(1)
       newName:Destroy()
       end
   end
end

function sFLY(vfly)
	repeat wait() until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat wait() until Mouse
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = getRoot(Players.LocalPlayer.Character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat wait()
				if not vfly and Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					if game.PlaceId == 277751860 then
					if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
					local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
					local root = getRoot(speaker.Character)
					hum:ChangeState(0)
					root.Velocity = root.CFrame.LookVector * 30
					end
					else
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = Mouse.KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
		elseif QEfly and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)*2
		elseif QEfly and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	U1.MouseEnter:Connect(function()
	CONTROL.F = (vfly and vehicleflyspeed or iyflyspeed)
	end)
	U2.MouseEnter:Connect(function()
	CONTROL.B = - (vfly and vehicleflyspeed or iyflyspeed)
	end)
	U3.MouseEnter:Connect(function()
	CONTROL.L = - (vfly and vehicleflyspeed or iyflyspeed)
	end)
	U4.MouseEnter:Connect(function()
	CONTROL.R = (vfly and vehicleflyspeed or iyflyspeed)
	end)
	U5.MouseEnter:Connect(function()
	CONTROL.Q = (vfly and vehicleflyspeed or iyflyspeed)
	end)
	U6.MouseEnter:Connect(function()
	CONTROL.E = -(vfly and vehicleflyspeed or iyflyspeed)
	end)
	flyKeyUp = Mouse.KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	U1.MouseLeave:Connect(function()
	CONTROL.F = 0
	end)
	U2.MouseLeave:Connect(function()
	CONTROL.B = 0
	end)
	U3.MouseLeave:Connect(function()
	CONTROL.L = 0
	end)
	U4.MouseLeave:Connect(function()
	CONTROL.R = 0
	end)
	U5.MouseLeave:Connect(function()
	CONTROL.Q = 0
	end)
	U6.MouseLeave:Connect(function()
	CONTROL.E = 0
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end


function ESP(plr)
	task.spawn(function()
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == plr.Name..'_ESP' then
				v:Destroy()
			end
		end
		wait()
		if plr.Character and plr.Name ~= Players.LocalPlayer.Name and not COREGUI:FindFirstChild(plr.Name..'_ESP') then
			local ESPholder = Instance.new("Folder")
			ESPholder.Name = plr.Name..'_ESP'
			ESPholder.Parent = COREGUI
			repeat wait(1) until plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
			for b,n in pairs (plr.Character:GetChildren()) do
				if (n:IsA("BasePart")) then
					local a = Instance.new("BoxHandleAdornment")
					a.Name = plr.Name
					a.Parent = ESPholder
					a.Adornee = n
					a.AlwaysOnTop = true
					a.ZIndex = 10
					a.Size = n.Size
					a.Transparency = espTransparency
					a.Color = plr.TeamColor
				end
			end
			if plr.Character and plr.Character:FindFirstChild('Head') then
				local BillboardGui = Instance.new("BillboardGui")
				local TextLabel = Instance.new("TextLabel")
				BillboardGui.Adornee = plr.Character.Head
				BillboardGui.Name = plr.Name
				BillboardGui.Parent = ESPholder
				BillboardGui.Size = UDim2.new(0, 100, 0, 150)
				BillboardGui.StudsOffset = Vector3.new(0, 1, 0)
				BillboardGui.AlwaysOnTop = true
				TextLabel.Parent = BillboardGui
				TextLabel.BackgroundTransparency = 1
				TextLabel.Position = UDim2.new(0, 0, 0, -50)
				TextLabel.Size = UDim2.new(0, 100, 0, 100)
				TextLabel.Font = Enum.Font.SourceSansSemibold
				TextLabel.TextSize = 20
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.TextStrokeTransparency = 0
				TextLabel.TextYAlignment = Enum.TextYAlignment.Bottom
				TextLabel.Text = 'Name: '..plr.Name
				TextLabel.ZIndex = 10
				local espLoopFunc
				local teamChange
				local addedFunc
				addedFunc = plr.CharacterAdded:Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						teamChange:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						addedFunc:Disconnect()
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
					end
				end)
				teamChange = plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
					if ESPenabled then
						espLoopFunc:Disconnect()
						addedFunc:Disconnect()
						ESPholder:Destroy()
						repeat wait(1) until getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid")
						ESP(plr)
						teamChange:Disconnect()
					else
						teamChange:Disconnect()
					end
				end)
				local function espLoop()
					if COREGUI:FindFirstChild(plr.Name..'_ESP') then
						if plr.Character and getRoot(plr.Character) and plr.Character:FindFirstChildOfClass("Humanoid") and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character) and Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid") then
							local pos = math.floor((getRoot(Players.LocalPlayer.Character).Position - getRoot(plr.Character).Position).magnitude)
							if pos < 1000 then
							TextLabel.Text = 'Name: '..plr.Name..' ' .. getEquippedTool(plr) .. ' \nHealth: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' \nDistance: '..pos..' meters'
							end
							if pos > 999 then
							TextLabel.Text = 'Name: '..plr.Name..' ' .. getEquippedTool(plr) .. ' \nHealth: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' \nDistance: '..pos..' km'
							end
						end
					else
						teamChange:Disconnect()
						addedFunc:Disconnect()
						espLoopFunc:Disconnect()
					end
				end
				espLoopFunc = RunService.RenderStepped:Connect(espLoop)
			end
		end
	end)
end

--[[
CB.FocusLost:Connect(function(Execute)
   if Execute then

end
end)
--]]

local prefix = _G.Settings.prefix

--[[local animNames = { 
	idle = 	{	
				{ id = "http://www.roblox.com/asset/?id=507766666", weight = 1 },
				{ id = "http://www.roblox.com/asset/?id=507766951", weight = 1 },
				{ id = "http://www.roblox.com/asset/?id=507766388", weight = 9 }
			},
	walk = 	{ 	
				{ id = "http://www.roblox.com/asset/?id=507777826", weight = 10 } 
			}, 
	run = 	{
				{ id = "http://www.roblox.com/asset/?id=507767714", weight = 10 } 
			}, 
	swim = 	{
				{ id = "http://www.roblox.com/asset/?id=507784897", weight = 10 } 
			}, 
	swimidle = 	{
				{ id = "http://www.roblox.com/asset/?id=507785072", weight = 10 } 
			}, 
	jump = 	{
				{ id = "http://www.roblox.com/asset/?id=507765000", weight = 10 } 
			}, 
	fall = 	{
				{ id = "http://www.roblox.com/asset/?id=507767968", weight = 10 } 
			}, 
	climb = {
				{ id = "http://www.roblox.com/asset/?id=507765644", weight = 10 } 
			}, 
	sit = 	{
				{ id = "http://www.roblox.com/asset/?id=507768133", weight = 10 } 
			},	
	toolnone = {
				{ id = "http://www.roblox.com/asset/?id=507768375", weight = 10 } 
			},
	toolslash = {
				{ id = "http://www.roblox.com/asset/?id=522635514", weight = 10 } 
			},
	toollunge = {
				{ id = "http://www.roblox.com/asset/?id=522638767", weight = 10 } 
			},
	wave = {
				{ id = "http://www.roblox.com/asset/?id=507770239", weight = 10 } 
			},
	point = {
				{ id = "http://www.roblox.com/asset/?id=507770453", weight = 10 } 
			},
	dance = {
				{ id = "http://www.roblox.com/asset/?id=507771019", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507771955", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507772104", weight = 10 } 
			},
	dance2 = {
				{ id = "http://www.roblox.com/asset/?id=507776043", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507776720", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507776879", weight = 10 } 
			},
	dance3 = {
				{ id = "http://www.roblox.com/asset/?id=507777268", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507777451", weight = 10 }, 
				{ id = "http://www.roblox.com/asset/?id=507777623", weight = 10 } 
			},
	laugh = {
				{ id = "http://www.roblox.com/asset/?id=507770818", weight = 10 } 
			},
	cheer = {
				{ id = "http://www.roblox.com/asset/?id=507770677", weight = 10 } 
			},
}]]

function unfling()
if NoclippingFling then
		NoclippingFling:Disconnect()
		-- speaker.Character.Humanoid.Jump = true
		for _, child in pairs(speaker.Character:GetDescendants()) do
                   if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
			child.CanCollide = true
		end
	end
	end
	Clip = true
if flingDied then
		flingDied:Disconnect()
	end
	flinging = false
	wait(.1)
	local speakerChar = speaker.Character
	if not speakerChar or not getRoot(speakerChar) then return end
	for i,v in pairs(getRoot(speakerChar):GetChildren()) do
		if v.ClassName == 'BodyAngularVelocity' then
			v:Destroy()
		end
	end
	for _, child in pairs(speakerChar:GetDescendants()) do
		if child.ClassName == "Part" or child.ClassName == "MeshPart" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end

function fling()
flinging = false
	for _, child in pairs(speaker.Character:GetDescendants()) do
		if child:IsA("BasePart") then
			child.CustomPhysicalProperties = PhysicalProperties.new(math.huge, 0.3, 0.5)
		end
	end
	Clip = false
	wait(0.1)
	local function NoclipLoopForFling()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	NoclippingFling = RunService.Stepped:Connect(NoclipLoopForFling)
	wait(.1)
	local bambam = Instance.new("BodyAngularVelocity")
	bambam.Name = randomString()
	bambam.Parent = getRoot(speaker.Character)
	bambam.AngularVelocity = Vector3.new(0,99999,0)
	bambam.MaxTorque = Vector3.new(0,math.huge,0)
	bambam.P = math.huge
	local Char = speaker.Character:GetChildren()
	for i, v in next, Char do
		if v:IsA("BasePart") then
			v.CanCollide = false
			v.Massless = true
			v.Velocity = Vector3.new(0, 0, 0)
		end
	end
	flinging = true
	local function flingDiedF()
		unfling()
	end
	flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
	repeat
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		wait(.2)
		bambam.AngularVelocity = Vector3.new(0,0,0)
		wait(.1)
	until flinging == false
end

local arrow = "> "
local Arrow_2 = " <"
TextBox.FocusLost:Connect(function(Enter)
   if Enter then
	CB.BackgroundTransparency = 0.7
        CB.TextTransparency = 0.7
	-- CloseCmdBar()
end
end)

local SPrefix = ""

local Rect = CFrame.new(0, 0, 0)

FT2.MouseButton1Down:Connect(function()
local variable = getPlayer(FT1.Text, speaker)
	for i,v in pairs(variable) do
LPost = CFrame.new(speaker.Character.HumanoidRootPart.Position)
wait(0.2)
_G.Settings.PastedSources = true
RocketPropulsion(800000,1000,400000,v,"Fling")
wait(1)
if speaker.Character.HumanoidRootPart.Fling then
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v.Name == "Fling" and v:IsA("RocketPropulsion") then
				v:Destroy()
			end
		end
	end
end
wait()
_G.Settings.PastedSources = false
speaker.Character.HumanoidRootPart.CFrame = LPost
end)

TextBox.FocusLost:Connect(function(Execute) -- prefix disabled
   if Execute then -- 1
local msg = TextBox.Text:lower()
if string.sub(TextBox.Text,1,3) == "/e " then
msg = string.sub(msg,4)
end
-- if string.sub(msg,1,1) == prefix then -- 2
local cmd
local space = string.find(msg," ")
if space then
cmd = string.sub(msg,1,space-1) -- 2
else
cmd = string.sub(msg,1) -- 2
end

if cmd == "print" then
local var = string.sub(msg,space+1)
print(var)
end
if cmd == "reset" then
speaker.Character:BreakJoints()
ExplodePart(speaker.Character.HumanoidRootPart)
success("Reset character","Reset Character")
end
if cmd == "respawn" then
respawn(speaker)
ExplodePart(speaker.Character.HumanoidRootPart)
success("respawn character","Respawning")
end
if cmd == "refresh" then
refresh(speaker)
ExplodePart(speaker.Character.HumanoidRootPart)
success("refresh character","Refreshing")
end
if cmd == "unrotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
notify("look vector","Rotate disabled")
end
if cmd == "rotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
notify("look vector","Rotate enabled")
end
if cmd == "stun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
notify("PlatformStand","PlatformStand enabled")
end
if cmd == "unstun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
notify("PlatformStand","PlatformStand disabled")
end
if cmd == "kill" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
	kill(speaker,Players[v])
success("managed to kill","killed " .. tostring(Players[v]))
end
end
if cmd == "inspect" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
GuiService:CloseInspectMenu()
		GuiService:InspectPlayerFromUserId(Players[v].UserId)
notify("command notification","inspect " .. tostring(Players[v]) .. " (" .. tostring(Players[v].Userid) .. ")")
end
end
if cmd == "bring" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local Target = Players[v]

local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait()
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait()
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
end
end
local function getout(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
tp(game.Players[Target], game.Players.LocalPlayer)
wait()
getout(game.Players.LocalPlayer, game.Players[Target])
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
notify("FE bring","bring " .. tostring(Players[v]))
end
end
if cmd == "esp" then
ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				ESP(v)
			end
		end
success("ESP","ESP enabled")
end
if cmd == "unesp" then
ESPenabled = false
	for i,c in pairs(COREGUI:GetChildren()) do
		if string.sub(c.Name, -4) == '_ESP' then
			c:Destroy()
		end
	end
success("ESP","ESP disabled")
end
if cmd == "noclip" then
Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and speaker.Character ~= nil then
			for _, child in pairs(speaker.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = RunService.Stepped:Connect(NoclipLoop)
success("noclipping","noclip enabled")
end
if cmd == "clip" then
if Noclipping then
		Noclipping:Disconnect()
		-- speaker.Character.Humanoid.Jump = true
		for _, child in pairs(speaker.Character:GetDescendants()) do
                   if child:IsA("BasePart") and child.CanCollide == true and child.Name ~= floatName then
			child.CanCollide = true
		end
	end
	end
	Clip = true
success("noclipping","noclip disabled")
end
if cmd == "bang" then
local var = string.sub(msg,space+1)
local arg1, arg2 = var:match("(%w+)%s*(%w+)")
if isNumber(arg2) then
local variable = getPlayer(arg1, speaker)
	for _, v in pairs(variable) do
		bangAnim = Instance.new("Animation")
		if not r15(speaker) then
			bangAnim.AnimationId = "rbxassetid://148840371"
		else
			bangAnim.AnimationId = "rbxassetid://5918726674"
		end
		bang = speaker.Character:FindFirstChildOfClass('Humanoid'):LoadAnimation(bangAnim)
		bang:Play(.1, 1, 1)
		bang:AdjustSpeed(tonumber(arg2))
		local bangplr = Players[v].Name
		bangDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(function()
			bangLoop = bangLoop:Disconnect()
			bang:Stop()
			bangAnim:Destroy()
			bangDied:Disconnect()
		end)
		local bangOffet = CFrame.new(0, 0, 1.1)
		bangLoop = RunService.Stepped:Connect(function()
			pcall(function()
				local otherRoot = getTorso(Players[bangplr].Character)
				getRoot(Players.LocalPlayer.Character).CFrame = otherRoot.CFrame * bangOffet
			end)
		end)
notify("Ambatukam","Banging " .. tostring(Players[v]))
end
	else
	ErrorPrompt("Invalid 2nd Argument","The second argument can only be a number.")
end
end
if cmd == "unbang" then
if bangLoop then
		bangLoop = bangLoop:Disconnect()
		bangDied:Disconnect()
		bang:Stop()
		bangAnim:Destroy()
	end
end
if cmd == "follow" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local function Loopwalk()
speaker.Character.Humanoid:MoveTo(Players[v].Character.HumanoidRootPart.Position)
end
    Follow = RunService.Stepped:Connect(Loopwalk)
notify("follow","Following " .. tostring(Players[v]))
end
end
if cmd == "loopgoto" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local function Looptp()
speaker.Character.HumanoidRootPart.CFrame = Players[v].Character.HumanoidRootPart.CFrame - Players[v].Character.HumanoidRootPart.CFrame.LookVector*0
end
    Loopgoto = RunService.Stepped:Connect(Looptp)
notify("loop goto","loop go to " .. tostring(Players[v]))
end
end
if cmd == "looptween" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local function TweenTo()
TweenService:Create(speaker.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = CFrame.new(Players[v].Character.HumanoidRootPart.Position)}):Play()
end
    LoopTween = RunService.Stepped:Connect(TweenTo)
notify("loop tweening","Loop tweening to " .. tostring(Players[v]))
end
end
if cmd == "goto" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
speaker.Character.HumanoidRootPart.CFrame = Players[v].Character.HumanoidRootPart.CFrame - Players[v].Character.HumanoidRootPart.CFrame.LookVector*0
notify("Teleporting","teleporting you to " .. tostring(Players[v]))
end
end
if cmd == "tweento" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
TweenService:Create(speaker.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), {CFrame = CFrame.new(Players[v].Character.HumanoidRootPart.Position)}):Play()
notify("Teleporting","tweening you to " .. tostring(Players[v]))
end
end
if cmd == "walkto" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
speaker.Character.Humanoid:MoveTo(Players[v].Character.HumanoidRootPart.Position)
notify("walking to","walk you to " .. tostring(Players[v]))
end
end
if cmd == "unfollow" then
if Follow then
		Follow:Disconnect()
end
success("unfollow","follow disabled")
end
if cmd == "unloopgoto" then
if Loopgoto then
		Loopgoto:Disconnect()
end
success("unloopgoto","loopgoto disabled")
end
if cmd == "unlooptween" then
if LoopTween then
		LoopTween:Disconnect()
end
success("loop tweening","looptween disabled")
end
if cmd == "fly" then
if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
        U5.Visible = true
        U6.Visible = true
	notify("mobile FLY","FLY enabled for mobile devices")
else
NOFLY()
	wait()
	sFLY()
        notify("PC FLY","FLY enabled for PC devices")
end
end
if cmd == "invisfling" then
local ch = speaker.Character
	local prt = Instance.new("Model")
	prt.Parent = speaker.Character
	local z1 = Instance.new("Part")
	z1.Name = "Torso"
	z1.CanCollide = false
	z1.Anchored = true
	local z2 = Instance.new("Part")
	z2.Name = "Head"
	z2.Parent = prt
	z2.Anchored = true
	z2.CanCollide = false
	local z3 = Instance.new("Humanoid")
	z3.Name = "Humanoid"
	z3.Parent = prt
	z1.Position = Vector3.new(0,9999,0)
	speaker.Character=prt
	wait(3)
	speaker.Character=ch
	wait(3)
	local Hum = Instance.new("Humanoid")
	z2:Clone()
	Hum.Parent = speaker.Character
	local root =  getRoot(speaker.Character)
	for i,v in pairs(speaker.Character:GetChildren()) do
		if v ~= root and  v.Name ~= "Humanoid" then
			v:Destroy()
		end
	end
	root.Transparency = 0
	root.Color = Color3.new(1, 1, 1)
	local invisflingStepped
	invisflingStepped = RunService.Stepped:Connect(function()
		if speaker.Character and getRoot(speaker.Character) then
			getRoot(speaker.Character).CanCollide = false
		else
			invisflingStepped:Disconnect()
		end
	end)

	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
        U5.Visible = true
        U6.Visible = true
	notify("FE INVISIBLE FLING","INVISIBLE FLING enabled for mobile devices")
	else
NOFLY()
	wait()
	sFLY()
        notify("FE INVISIBLE FLING","INVISIBLE FLING enabled for PC devices")
end

	workspace.CurrentCamera.CameraSubject = root
	local bambam = Instance.new("BodyThrust")
	bambam.Parent = getRoot(speaker.Character)
	bambam.Force = Vector3.new(99999,99999*10,99999)
	bambam.Location = getRoot(speaker.Character).Position
end
if cmd == "unfly" then
NOFLY()
U1.Visible = false
U2.Visible = false
U3.Visible = false
U4.Visible = false
U5.Visible = false
U6.Visible = false
notify("FLY","FLY disabled")
end
if cmd == "vfly" then
if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
NOFLY()
	wait()
	sFLY(true)
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
        U5.Visible = true
        U6.Visible = true
        notify("Mobile Vehicle FLY","VEHICLE FLY enabled for mobile devices")
else
NOFLY()
	wait()
	sFLY(true)
        notify("PC Vehicle FLY","VEHICLE FLY enabled for PC devices [Control' Q, E]")
end
end
if cmd == "unvfly" then
NOFLY()
U1.Visible = false
U2.Visible = false
U3.Visible = false
U4.Visible = false
U5.Visible = false
U6.Visible = false
notify("🗿","VEHICLE FLY disabled")
end
if cmd == "speed" then
local var = string.sub(msg,space+1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = var
notify("WalkSpeed Changed","Current speed: " .. var)
end
if cmd == "jump" then
local var = string.sub(msg,space+1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = var
notify("JumpPower Changed","Current jump: " .. var)
end
if cmd == "fling" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
RocketPropulsion(800000,1000,400000,v,"Fling")
notify("Fling",'Flinged!')
end
end
if cmd == "unfling" then
	if speaker.Character.HumanoidRootPart.Fling then
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v.Name == "Fling" and v:IsA("RocketPropulsion") then
				v:Destroy()
			end
		end
	end
end
if cmd == "tempfling" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
LPost = CFrame.new(speaker.Character.HumanoidRootPart.Position)
wait(0.2)
-- fling()
RocketPropulsion(800000,1000,400000,v,"Fling")
wait(1)
if speaker.Character.HumanoidRootPart.Fling then
		for i,v in pairs(speaker.Character:GetDescendants()) do
			if v.Name == "Fling" and v:IsA("RocketPropulsion") then
				v:Destroy()
			end
		end
	end
end
wait()
-- unfling()
speaker.Character.HumanoidRootPart.CFrame = LPost
end
if cmd == "headsit" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
if headSit then headSit:Disconnect() end
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = true
		headSit = RunService.Heartbeat:Connect(function()
			if game.Players:FindFirstChild(game.Players[v].Name) and game.Players[v].Character ~= nil and getRoot(game.Players[v].Character) and getRoot(game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit == true then
				getRoot(game.Players.LocalPlayer.Character).CFrame = getRoot(game.Players[v].Character).CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
			else
				headSit:Disconnect()
			end
		end)
notify("Headsit","sitting on the " .. tostring(Players[v]) .. " head")
end
end
if cmd == "spy" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
viewing = Players[v]
		workspace.CurrentCamera.CameraSubject = viewing.Character
		local function viewDiedFunc()
			repeat wait() until Players[v].Character ~= nil and getRoot(Players[v].Character)
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewDied = Players[v].CharacterAdded:Connect(viewDiedFunc)
		local function viewChangedFunc()
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(viewChangedFunc)
		notify("spy","Spying " .. tostring(Players[v]))
end
end
if cmd == "unspy" then
if viewing ~= nil then
		viewing = nil
	end
	if viewDied then
		viewDied:Disconnect()
		viewChanged:Disconnect()
	end
	workspace.CurrentCamera.CameraSubject = speaker.Character
	notify("unspy","Spying turned off")
end
if cmd == "cmds" then
ErrorPrompt("Error","ERROR")
end
if cmd == "nosit" then
local function DISABLESIT()
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
    NositCmd = RunService.Stepped:Connect(DISABLESIT)
success("u cant sit","sit disabled")
end
if cmd == "unnosit" then
if NositCmd then
     NositCmd:Disconnect()
end
success("can sit","sit enabled")
end
if cmd == "sit" then
game.Players.LocalPlayer.Character.Humanoid.Sit = true
notify("tired?","sit XD")
end
if cmd == "helicopter" then
local var = string.sub(msg,space+1)
Helicopter(var)
notify("useless command","Helicopter mode: " .. var)
end
if cmd == "attach" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
attach(speaker,Players[v])
notify("give tool","attached: " .. tostring(Players[v]))
end
end
if cmd == "enablestate" then
local var = string.sub(msg,space+1)
local x = var:lower()
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[var:lower()]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, true)
notify("state enabled","current state: " .. var)
end
if cmd == "disablestate" then
local var = string.sub(msg,space+1)
local x = var:lower()
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[var:lower()]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, false)
notify("😘","state disabled")
end
if cmd == "rejoin" then
local respon, result = pcall(function()
notify("Rejoin server","Rejoining...")
wait()
RejoinServer()
CloseCmdBar()
if (queue_on_teleport) then
	if Executor() == "Arceus X" or Executor() == "Hydrogen" then
            queue_on_teleport("loadstring(game.HttpGet(game, \"https://raw.githubusercontent.com/Sidhsksjsjsh/Fe-Vortex-admin-V2/main/VortexCompany/C4/Discord.Lua\"))()");
		end
	end
end)

if not respon then
ErrorPrompt("Rejoin", result)
end
end
if cmd == "delete" then
local var = string.sub(msg,space+1)
local RightArm = "Right Arm"
local LeftArm = "Left Arm"
local LeftLeg = "Left Leg"
local RightLeg = "Right Leg"
local torso_R6 = "Torso"
local UpperTorso_R15 = "Upper Torso"
local LowerTorso_R15 = "Lower Torso"
local Head = "Head"

local Arms_2 = "RightUpperArm"
local Arms_3 = "LeftUpperArm"
local Legs_2 = "RightUpperLeg"
local Legs_3 = "LeftUpperLeg"

local BodyPart = {
         ["ra"] = RightArm;
         ["la"] = LeftArm;
         ["ll"] = LeftLeg;
         ["rl"] = RightLeg;
         ["torso"] = torso_R6;
         ["utorso"] = UpperTorso_R15;
         ["ltorso"] = LowerTorso_R15;
         ["head"] = Head;
         ["nolimbs"] = RightArm and LeftArm and LeftLeg and RightLeg;
    }

local R15Part = {
         ["ra"] = Arms_2,
	 ["la"] = Arms_3,
	 ["ll"] = Legs_3,
	 ["rl"] = Legs_2,
	 ["head"] = Head
}

if r15(speaker) then
speaker.Character[R15Part[var]]:Destroy()
notify("Humanoid Part (R15)","Deleting parts: " .. tostring(R15Part[var]))
else
speaker.Character[BodyPart[var]]:Destroy()
notify("Humanoid Part (R6)","Deleting parts: " .. tostring(BodyPart[var]))
end
end
if cmd == "music" then
local var = string.sub(msg,space+1)
local OfficialMusic = {
       paradisefalls = 1837879082,
       stadiumrave = 1846368080,
       crabrave = 5410086218,
       hijacket = 1842559618,
       wonderfulday = 1843382633,
       bloodpop = 6823597327,
       sunrise = 1837324500,
       cintanyaaku = 14417854633
}

local TextMusic = {
      paradisefalls = "Paradise Falls",
      stadiumrave = "Stadium Rave",
      crabrave = "Crab Rave",
      hijacket = "Hijacket",
      wonderfulday = "Wonderful Day",
      bloodpop = "BloodPop",
      sunrise = "Sunrise",
      cintanyaaku = "Cintanya Aku - Tiara andini and Arsy Widianto"
}

local respond, result = pcall(function()
if not isNumber(var) then
music(OfficialMusic[var])
success("now playing ",tostring(TextMusic[var]) .. " (" .. tostring(OfficialMusic[var]) .. ")")
else
music(var)
success("now playing ",MusicName .. " (" .. var .. ")")
end
end)

if not respond then
ErrorPrompt("failed to load music",result)
end
end
if cmd == "nomusic" then
game:GetService("SoundService"):FindFirstChild("Sound").Volume = 0
success("Client Music","music disabled")
end
if cmd == "volume" then
var = string.sub(msg,space+1)
if game:GetService("SoundService"):FindFirstChild("Sound") then
game:GetService("SoundService"):FindFirstChild("Sound").Volume = tonumber(var)
else
ErrorPrompt("Error","You haven't played any music yet.")
end
end
if cmd == "anim" then
local var = string.sub(msg,space+1)
_Anims(var)
notify("now playing animation ",_AnimName .. " (" .. tostring(var) .. ")")
end
if cmd == "noanim" then
AnimService:Stop()
ServiceStart:Destroy()
notify("Reset animation","animation disabled")
end
if cmd == "joindate" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local dates = {}
	warning("Wait","Hold on a sec")
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[v].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[v].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	local chatString = table.concat(dates, ', ')
	notify(tostring(Players[v]) .. " Account Age",chatString .. " (" .. tostring(Players[v].AccountAge) .. " days old)")
end
end
if cmd == "blockhats" then
for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
		for i,c in pairs(v:GetDescendants()) do
			if c:IsA("SpecialMesh") then
				c:Destroy()
			end
		end
	end
end
if cmd == "blocktools" then
for _,v in pairs(speaker.Character:GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			for i,c in pairs(v:GetDescendants()) do
				if c:IsA("SpecialMesh") then
					c:Destroy()
				end
			end
		end
	end
end
if cmd == "faceless" then
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Decal") and v.Name == 'face' then
			v:Destroy()
		end
	end
end
if cmd == "grabtools" then
local humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	for _, child in ipairs(workspace:GetChildren()) do
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end

	if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	grabtoolsFunc = workspace.ChildAdded:Connect(function(child)
		if speaker.Character and child:IsA("BackpackItem") and child:FindFirstChild("Handle") then
			humanoid:EquipTool(child)
		end
	end)

	notify("Auto Picking tools","Picking up any dropped tools")
end
if cmd == "ungrabtools" then
if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	notify("Disable Auto Picking Tools","Grabtools has been disabled")
end
if cmd == "loopoof" then
oofing = true
	repeat wait(0.1)
		for i,v in pairs(Players:GetPlayers()) do
			if v.Character ~= nil and v.Character:FindFirstChild'Head' then
				for _,x in pairs(v.Character.Head:GetChildren()) do
					if x:IsA'Sound' then x.Playing = true end
				end
			end
		end
	until oofing == false
end
if cmd == "unloopoof" then
oofing = false
end
if cmd == "enablesl" then
speaker.DevEnableMouseLock = true
	notify("PC shiftlock","Shift lock is now available")
end
if cmd == "setfpscap" then
local var = string.sub(msg,space+1)
if setfpscap and type(setfpscap) == "function" then
		local num = var or 1e6
		if num == 'none' then
			setfpscap(1e6)
		elseif tonumber(num) > 0 then
			setfpscap(num)
		else
			notify('Invalid argument', "Please provide a number above 0 or 'none'.")
		end
	else
		notify('Incompatible Exploit', 'Your exploit does not support this command (missing setfpscap)')
	end
end
if cmd == "antiteleport" then
if not hookmetamethod then 
		ErrorPrompt("Incompatible Exploit","Your exploit does not support this command (missing hookmetamethod)")
	end
	local TeleportService = game:GetService('TeleportService')
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == TeleportService then
			if method:lower() == "teleport" then
				ErrorPrompt("Teleportation has been blocked","Expected ':' not '.' calling member function Kick")
			elseif method == "TeleportToPlaceInstance" then
				ErrorPrompt("Teleportation has been blocked","Expected ':' not '.' calling member function TeleportToPlaceInstance")
			end
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == TeleportService and getnamecallmethod():lower() == "teleport" or getnamecallmethod() == "TeleportToPlaceInstance" then
			return
		end
		return oldhmmnc(self, ...)
	end)

	notify("Anti-Teleport","Client anti teleport is now active (only effective on localscript teleport)")
end
if cmd == "ip" then
local var = string.sub(msg,space+1)
IP(var)
end
if cmd == "prefix" then
local var = string.sub(msg,space+1)
_G.Settings.prefix = var
prefix = _G.Settings.prefix
ShakeData("13030062874")
end
if cmd == "saveprefix" then
saveSettings()
ShakeData("13030078632")
end
if cmd == "antifling" then
VIPFrame.Visible = true -- 
MarkTarget()
local Services = setmetatable({}, {__index = function(Self, Index)
			local NewService = game.GetService(game, Index)
			if NewService then
				Self[Index] = NewService
			end
			return NewService
		end})
	
		-- [ LocalPlayer ] --
		local LocalPlayer = Services.Players.LocalPlayer
	
		-- // Functions \\ --
		local function PlayerAdded(yolo)
			local Detected = false
			local Character;
			local PrimaryPart;
	
			local function CharacterAdded(NewCharacter)
				Character = NewCharacter
				repeat
					wait()
					PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
				until PrimaryPart
				Detected = false
			end
	
			CharacterAdded(yolo.Character or yolo.CharacterAdded:Wait())
			yolo.CharacterAdded:Connect(CharacterAdded)
			Services.RunService.Heartbeat:Connect(function()
				if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
					if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
						if Detected == false then
							-- warn("be carefull!")
							EditFlingNotify("Fling Exploit detected, Player: " .. tostring(yolo))
							SetPartPosition("BlockMark",yolo.Character.HumanoidRootPart.Position,"Bright red") -- BlockMark
							wait(1)
							SetPartPosition("BlockMark",speaker.Character.HumanoidRootPart.Position,"Bright green")
						end
						Detected = true
						for i,v in ipairs(Character:GetDescendants()) do
							if v:IsA("BasePart") then
								v.CanCollide = false
								v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
								v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
								v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
							end
						end
						PrimaryPart.CanCollide = false
						PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
						PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
					end
				end
			end)
		end
	
		-- // Event Listeners \\ --
		for i,v in ipairs(Services.Players:GetPlayers()) do
			if v ~= LocalPlayer then
				PlayerAdded(v)
			end
		end
		Services.Players.PlayerAdded:Connect(PlayerAdded)
	
		local LastPosition = nil
		Services.RunService.Heartbeat:Connect(function()
			pcall(function()
				local PrimaryPart = LocalPlayer.Character.PrimaryPart
				if PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 250 then
					PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
					PrimaryPart.CFrame = LastPosition
	
					-- warn("you were flung")
					EditFlingNotify("You were flung. Neutralizing velocity.")
					SetPartPosition("BlockMark",speaker.Character.HumanoidRootPart.Position,"Bright yellow")
				elseif PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 then
					LastPosition = PrimaryPart.CFrame
				end
			end)
		end)
end
if cmd == "cammode" then
local var = string.sub(msg,space+1)
CameraMode(var)
end
if cmd == "usetool" then
local var = string.sub(msg,space+1)
if loopUse then
       loopUse:Disconnect()
end
local function Tool_Service_UV75()
   for i,v in pairs (speaker.Character:GetChildren()) do
       if v.Name:lower() == var then
           v:Activate()
       end
   end
end
    loopUse = RunService.Stepped:Connect(Tool_Service_UV75)
end
if cmd == "unusetool" then
if loopUse then
       loopUse:Disconnect()
end
end
if cmd == "clogs" then
local respon, result = pcall(function()
if not speaker.PlayerGui:FindFirstChild("ChatGui") then
executeHTTPS("https://pastebin.com/raw/CB3Jghvb")
else
speaker.PlayerGui:FindFirstChild("ChatGui").Frame.LogPanel.Visible = true
speaker.PlayerGui:FindFirstChild("ChatGui").Frame.Close.Visible = true
speaker.PlayerGui:FindFirstChild("ChatGui").Frame.Mini.Visible = true
speaker.PlayerGui:FindFirstChild("ChatGui").Frame.Log.Visible = true
end
end)

if not respon then
ErrorPrompt("Chat logs error", result)
end
end
if cmd == "datalimit" then
local var = string.sub(msg,space+1)
if tonumber(var) then
		NetworkClient:SetOutgoingKBPSLimit(var)
	end
end
if cmd == "noprompt" then
COREGUI.PurchasePrompt.Enabled = false
end
if cmd == "prompt" then
COREGUI.PurchasePrompt.Enabled = true
end
if cmd == "lay" then
local Human = speaker.Character and speaker.Character:FindFirstChildOfClass('Humanoid')
	if not Human then
		return
	end
	Human.Sit = true
	task.wait(.1)
	Human.RootPart.CFrame = Human.RootPart.CFrame * CFrame.Angles(math.pi * .5, 0, 0)
	for _, v in ipairs(Human:GetPlayingAnimationTracks()) do
		v:Stop()
	end
end
if cmd == "replicationlag" then
local var = string.sub(msg,space+1)
if tonumber(var) then
		settings():GetService("NetworkSettings").IncomingReplicationLag = var
	end
end
if cmd == "compliment" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
ProtocolResponse("compliment",tostring(Players[v]))
end
end
if cmd == "insult" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
ProtocolResponse("insult",tostring(Players[v]))
end
end
if cmd == "reach" then
local var = string.sub(msg,space+1)
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			if var then
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,var)
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			else
				currentToolSize = v.Handle.Size
				currentGripPos = v.GripPos
				local a = Instance.new("SelectionBox")
				a.Name = "SelectionBoxCreated"
				a.Parent = v.Handle
				a.Adornee = v.Handle
				v.Handle.Massless = true
				v.Handle.Size = Vector3.new(0.5,0.5,60)
				v.GripPos = Vector3.new(0,0,0)
				speaker.Character:FindFirstChildOfClass('Humanoid'):UnequipTools()
			end
		end
	end
end
if cmd == "unreach" then
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Handle.Size = currentToolSize
			v.GripPos = currentGripPos
			v.Handle.SelectionBoxCreated:Destroy()
		end
	end
end
if cmd == "grippos" then
local var = string.sub(msg,space+1)
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = speaker:FindFirstChildOfClass("Backpack")
			v.GripPos = Vector3.new(var)
			v.Parent = speaker.Character
		end
	end
end
if cmd == "hovername" then
nameBox = Instance.new("TextLabel")
	nameBox.Name = randomString()
	nameBox.Parent = PARENT
	nameBox.BackgroundTransparency = 1
	nameBox.Size = UDim2.new(0,200,0,30)
	nameBox.Font = Enum.Font.Code
	nameBox.TextSize = 16
	nameBox.Text = ""
	nameBox.TextColor3 = Color3.new(1, 1, 1)
	nameBox.TextStrokeTransparency = 0
	nameBox.TextXAlignment = Enum.TextXAlignment.Left
	nameBox.ZIndex = 10
	nbSelection = Instance.new('SelectionBox')
	nbSelection.Name = randomString()
	nbSelection.LineThickness = 0.03
	nbSelection.Color3 = Color3.new(1, 1, 1)
	local function updateNameBox()
		local t
		local target = Mouse.Target

		if target then
			local humanoid = target.Parent:FindFirstChildOfClass("Humanoid") or target.Parent.Parent:FindFirstChildOfClass("Humanoid")
			if humanoid then
				t = humanoid.Parent
			end
		end

		if t ~= nil then
			local x = Mouse.X
			local y = Mouse.Y
			local xP
			local yP
			if Mouse.X > 200 then
				xP = x - 205
				nameBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				xP = x + 25
				nameBox.TextXAlignment = Enum.TextXAlignment.Left
			end
			nameBox.Position = UDim2.new(0, xP, 0, y)
			nameBox.Text = t.Name
			nameBox.Visible = true
			nbSelection.Parent = t
			nbSelection.Adornee = t
		else
			nameBox.Visible = false
			nbSelection.Parent = nil
			nbSelection.Adornee = nil
		end
	end
	nbUpdateFunc = Mouse.Move:Connect(updateNameBox)
end
if cmd == "unhovername" then
if nbUpdateFunc then
		nbUpdateFunc:Disconnect()
		nameBox:Destroy()
		nbSelection:Destroy()
	end
end
if cmd == "fall" then
if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local root = getRoot(speaker.Character)
		hum:ChangeState(0)
		root.Velocity = root.CFrame.LookVector * 30
	end
end
if cmd == "loopfall" then
local function loopFall()
if speaker and speaker.Character and speaker.Character:FindFirstChildOfClass("Humanoid") and getRoot(speaker.Character) then
		local hum = speaker.Character:FindFirstChildOfClass("Humanoid")
		local root = getRoot(speaker.Character)
		hum:ChangeState(0)
		root.Velocity = root.CFrame.LookVector * 30
	end
end
    FallingAnim = RunService.Stepped:Connect(loopFall)
end
if cmd == "unloopfall" then
if FallingAnim then
    FallingAnim:Disconnect()
end
end
if cmd == "swim" then
if not swimming and speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		oldgrav = workspace.Gravity
		workspace.Gravity = 0
		local swimDied = function()
			workspace.Gravity = oldgrav
			swimming = false
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		gravReset = Humanoid.Died:Connect(swimDied)
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, false)
		end
		Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
		swimbeat = RunService.Heartbeat:Connect(function()
			pcall(function()
				speaker.Character.HumanoidRootPart.Velocity = ((Humanoid.MoveDirection ~= Vector3.new() or UserInputService:IsKeyDown(Enum.KeyCode.Space)) and speaker.Character.HumanoidRootPart.Velocity or Vector3.new())
			end)
		end)
		swimming = true
	end
notify("swim","Swimming enabled")
end
if cmd == "unswim" then
if speaker and speaker.Character and speaker.Character:FindFirstChildWhichIsA("Humanoid") then
		workspace.Gravity = oldgrav
		swimming = false
		if gravReset then
			gravReset:Disconnect()
		end
		if swimbeat ~= nil then
			swimbeat:Disconnect()
			swimbeat = nil
		end
		local Humanoid = speaker.Character:FindFirstChildWhichIsA("Humanoid")
		local enums = Enum.HumanoidStateType:GetEnumItems()
		table.remove(enums, table.find(enums, Enum.HumanoidStateType.None))
		for i, v in pairs(enums) do
			Humanoid:SetStateEnabled(v, true)
		end
	end
notify("unswim","Swimming disabled")
end
if cmd == "getpos" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify("Getposition Error","Missing character")
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		notify(tostring(Players[v]) .. " Position","Current Position " .. roundedPos)
end
end
if cmd == "copypos" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local char = Players[v].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify("Getposition Error","Missing character")
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		copy(roundedPos)
                success("copied","copied to the clipboard")
end
end
if cmd == "spam" then
local var = string.sub(msg,space+1)
ProtocolSpam = true
repeat wait(ProtocolCD)
ProtocolSendChat(var)
until ProtocolSpam == false
end
if cmd == "unspam" then
ProtocolSpam = false
end
if cmd == "spamspeed" then
local var = string.sub(msg,space+1)
ProtocolCD = var
end
if cmd == "equiptools" then
for i,v in pairs(speaker:FindFirstChildOfClass("Backpack"):GetChildren()) do
		if v:IsA("Tool") or v:IsA("HopperBin") then
			v.Parent = speaker.Character
		end
	end
end
if cmd == "droptools" then
for i,v in pairs(Players.LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = Players.LocalPlayer.Character
		end
	end
	wait()
	for i,v in pairs(Players.LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			v.Parent = workspace
		end
	end
end
if cmd == "deletehats" then
for i,v in next, speaker.Character:GetDescendants() do
		if v:IsA("Accessory") then
			for i,p in next, v:GetDescendants() do
				if p:IsA("Weld") then
					p:Destroy()
				end
			end
		end
	end
end
if cmd == "drophats" then
if speaker.Character then
		for _,v in pairs(speaker.Character:FindFirstChildOfClass('Humanoid'):GetAccessories()) do
			v.Parent = workspace
		end
	end
end
if cmd == "noterrain" then
game:GetService("Workspace"):FindFirstChild('Terrain'):Clear()
end
if cmd == "firecd" then
local var = string.sub(msg,space+1)
        if var then
            local name = var
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ClickDetector") and descendant.Name:lower() == name then
                    fireclickdetector(descendant)
                end
            end
        else
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ClickDetector") then
                    fireclickdetector(descendant)
                end
            end
        end
end
if cmd == "nocdlimits" then
for i,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("ClickDetector") then
			v.MaxActivationDistance = math.huge
		end
	end
end
if cmd == "freecam" then
StartFreecam()
MobileController()
end
if cmd == "freecampos" then
local var = string.sub(msg,space+1)
if not var then return end
	local freecamPos = CFrame.new(var)
	StartFreecam(freecamPos)
end
if cmd == "fcgoto" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
StartFreecam(getRoot(Players[v].Character).CFrame)
end
end
if cmd == "unfreecam" then
StopFreecam()
end
if cmd == "fcspeed" then
local var = string.sub(msg,space+1)
local FCspeed = var or 1
	if isNumber(FCspeed) then
		NAV_KEYBOARD_SPEED = Vector3.new(FCspeed, FCspeed, FCspeed)
	end
end
if cmd == "notifyfcpos" then
if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		notify("Freecam Position","Current Position: " .. tostring(Format("%s, %s, %s", Round(X), Round(Y), Round(Z))))
	end
end
if cmd == "copyfcpos" then
if fcRunning then
		local X,Y,Z = workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
		local Format, Round = string.format, math.round
		copy(Format("%s, %s, %s", Round(X), Round(Y), Round(Z)))
	end
end
if cmd == "show" then -- displayui
local var = string.sub(msg,space+1)
DisplayUI(var)
end
if cmd == "unshow" then -- nodisplayui
local var = string.sub(msg,space+1)
RemoveDisplayUI(var)
end
if cmd == "addnote" then
local var = string.sub(msg,space+1)
local V_C1 = "╔═══════════════❖••❖══════════════╗"
local V_C2 = "╚═══════════════❖••❖══════════════╝"
local notes = V_C1 .. "\n Notes by: " .. tostring(speaker.Name) .. " (" .. tostring(speaker.DisplayName) .. ") \n" .. V_C2 .. "\n\n" .. var .. "\n\n# AI_write stop \n\n# VortexFile end \n\n# Attempt to index nil with 'ProtocolAI(start)' - line 7890 (ERROR: 587)"
ProtocolSave(tostring(speaker.DisplayName) .. " Notes.txt", notes)
ShakeData("13030062874")
info("The note has been saved to a folder.","notes are saved to your executor folder.")
end
if cmd == "parttp" then
loadstring(game:HttpGet("https://pastebin.com/raw/aYRmhsMG"))()
end
if cmd == "savemusic" then
warning("Maintenance","Sorry, this command has been temporarily disabled and is currently being tested")
end
if cmd == "addevent" then
local var = string.sub(msg,space+1)
StatusBAR(var)
end
if cmd == "checkprefix" then
notify("Current Prefix","prefix: '" .. tostring(prefix) .. "'")
end
if cmd == "addplaymusic" then
local var = string.sub(msg,space+1)
_G.Settings.music = var
saveSettings()
ShakeData("13030078632")
end
if cmd == "serverhop" then
local respon, result = pcall(function()
notify("Serverhop","Teleporting you to another server")
CloseCmdBar()
StartServerhop()
if (queue_on_teleport) then
	if Executor() == "Arceus X" or Executor() == "Hydrogen" then
            queue_on_teleport("loadstring(game.HttpGet(game, \"https://raw.githubusercontent.com/Sidhsksjsjsh/Fe-Vortex-admin-V2/main/VortexCompany/C4/Discord.Lua\"))()");
		end
	end
end)

if not respon then
ErrorPrompt("Serverhop", result)
end
end
if cmd == "blacklist" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
_G.Settings.Blacklist = Players[v]
_G.Settings.BlacklistCount = _G.Settings.BlacklistCount + 1
if _G.Settings.BlacklistCount > 1 then
_G.Settings.BlacklistCount = 1
warning("Blacklist","You can only blacklist a player once")
else
success("Done Blacklist","Successfull Blacklisted!")
saveSettings()
end
end
end
if cmd == "clearblacklist" then
_G.Settings.Blacklist = ""
_G.Settings.BlacklistCount = 0
success("Blacklist cleared!","Removed all blacklist")
saveSettings()
end
if cmd == "cleardevice" then
_G.Settings.device = ""
saveSettings()
end
if cmd == "friend" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local respon, result = pcall(function()
local playerIsAlrFriend = Players:FindFirstChild(Players[v])
if playerIsAlrFriend then
    local isFriend = speaker:IsFriendsWith(playerIsAlrFriend.UserId)
    if isFriend then
        warning("is friend","You are already friends with " .. tostring(Players[v]))
        return
    end
end

speaker:RequestFriendship(Players[v])
success("Send Friend Request","Friend request sent to " .. tostring(Players[v]))
end)

if not respon then
ErrorPrompt("Friend request error", result)
-- ShakeData("13040484705")
end
end
end
if cmd == "unfriend" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
local respon, result = pcall(function()
speaker:RevokeFriendship(Players[v])
notify("Unfriend","you are no longer friends with " .. tostring(Players[v]))
end)

if not respon then
ErrorPrompt("Unfriend error", result)
-- ShakeData("13040484705")
end
end
end
if cmd == "debug" then
ErrorPrompt("missing","unsupported command")
end
if cmd == "partesp" then
local var = string.sub(msg,space+1)
local partEspName = var
	if not FindInTable(espParts,partEspName) then
		table.insert(espParts,partEspName)
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name:lower() == partEspName then
				local a = Instance.new("BoxHandleAdornment")
				a.Name = partEspName.."_PESP"
				a.Parent = v
				a.Adornee = v
				a.AlwaysOnTop = true
				a.ZIndex = 0
				a.Size = v.Size
				a.Transparency = 0.3
				a.Color = BrickColor.new("Lime green")
			end
		end
	end
	if partEspTrigger == nil then
		partEspTrigger = workspace.DescendantAdded:Connect(partAdded)
	end
end
if cmd == "unpartesp" then
local var = string.sub(msg,space+1)
if var then
		local partEspName = var
		if FindInTable(espParts,partEspName) then
			table.remove(espParts, GetInTable(espParts, partEspName))
		end
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name == partEspName..'_PESP' then
				v:Destroy()
			end
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
		espParts = {}
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BoxHandleAdornment") and v.Name:sub(-5) == '_PESP' then
				v:Destroy()
			end
		end
	end
end
if cmd == "gotopart" then
local var = string.sub(msg,space+1)
for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == var and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			getRoot(speaker.Character).CFrame = v.CFrame
		end
	end
end
if cmd == "tweengotopart" then
local var = string.sub(msg,space+1)
for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == var and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			TweenService:Create(getRoot(speaker.Character), TweenInfo.new(1, Enum.EasingStyle.Linear), {CFrame = v.CFrame}):Play()
		end
	end
end
if cmd == "bringpart" then
local var = string.sub(msg,space+1)
for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == var and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
                        TweenService:Create(v, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = getRoot(speaker.Character).CFrame}):Play()
			-- v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end
if cmd == "gotopartdelay" then
local var = string.sub(msg,space+1)
local gtpDelay = var or 0.1
	if isNumber(gtpDelay) then
		gotopartDelay = gtpDelay
	else
		warning("unsupported character","Number ONLY!")
	end
end
if cmd == "detectpart" then
local var = string.sub(msg,space+1)
for i,v in pairs(workspace:GetDescendants()) do
		if v.Name:lower() == var and v:IsA("BasePart") then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			wait(gotopartDelay)
			_G.Settings.partname = v
			_G.Settings.Added = true
			_G.Settings.Removed = true
			saveSettings()
		end
	end
end
if cmd == "undetectpart" then
_G.Settings.partname = ""
_G.Settings.Added = false
_G.Settings.Removed = false
saveSettings()
end
if cmd == "math" then
local var = string.sub(msg,space+1)
SyncMath(var,"notify")
end
if cmd == "tall" then
Tall()
end
if cmd == "short" then
Short()
end
if cmd == "snipe" then
local SyncArgs = string.sub(msg,space+1)
if SyncArgs == nil then
            return
        end
        local Thumbnail = ""
        local UserID = 0
        local PlaceID = game.PlaceId
        if string.find(SyncArgs, "%a") then
            local UserInfo = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.roblox.com/users/get-by-username?username="..SyncArgs, true))
            if UserInfo["success"] == false then
                ErrorPrompt("Snipe","Failed!, Invalid username")
                return
            end
            UserID = UserInfo.Id
        else -- by userID
            UserID = SyncArgs
        end
        local ThumbnailInfo = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://www.roblox.com/headshot-thumbnail/json?userId="..UserID.."&width=48&height=48&format=png", true))
        if string.find(ThumbnailInfo.Url, "t0.rbxcdn.com") then
            ErrorPrompt("Invalid UserID or API","Failed!, Invalid UserID, or, API failed to return valid image")
            return
        else
            Thumbnail = ThumbnailInfo.Url
        end
        if PlaceID == nil then
            warning("No PlaceID","No PlaceID, defaulting to current place id...")
            PlaceID = game.PlaceId
        else
            ErrorPrompt("Fail","Failed!, Invalid PlaceID")
            return
        end
        local Check = game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..tostring(PlaceID).."&startIndex=0",true)
        if string.find(string.lower(Check), "permission") then
            ErrorPrompt("Fail","Failed!, Lacking permissions for API? (Try again maybe)")
            return
        end
        local StartIndex = 0
        local Servers = {}
        repeat
            local CurrentList = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..tostring(PlaceID).."&startIndex="..tostring(StartIndex),true))
            for i,v in pairs(CurrentList.Collection) do
                table.insert(Servers, v)
            end
            StartIndex = StartIndex + 10
            wait()
        until #CurrentList.Collection == 0
        if #Servers == 0 then
            ErrorPrompt("No server detected","Failed!, Game had no servers")
            return
        end
        local FoundPlayer = false
        for a,b in pairs(Servers) do
            local ServerID = b.Guid
            for c,d in pairs(b.CurrentPlayers) do
                if d.Thumbnail.Url == Thumbnail then
                    local num1 = string.find(b["PlayersCapacity"], "%d")
                    local num2 = string.find(b["PlayersCapacity"], "%d", num1 + 1)
                    num1 = tonumber(string.sub(b["PlayersCapacity"], num1, num1))
                    num2 = tonumber(string.sub(b["PlayersCapacity"], num2, num2))
                    if num1 >= num2 then
                        ErrorPrompt("Server full","Failed!, Server full!")
                        return
                    else
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ServerID, game.Players.LocalPlayer)
                        FoundPlayer = true
                    end
                end
            end
        end
        if FoundPlayer == true then
           -- notify("Success!, Teleporting to player's game...")
	success("Sniping player","Success!, Teleporting to player's game...")
        else
            -- notify("Failed!, Player isn't in game")
	ErrorPrompt("Sniping player error", "Failed!, Player isn't in game")
        end
end
if cmd == "copyid" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
copy("" .. tostring(Players[v].UserId) .. "")
notify("Copy UserId","Copied to clipboard")
end
end
if cmd == "dex" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua")
end)

if not respon then
ErrorPrompt("Dex error", result)
end
end
if cmd == "rspy" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/0XkSXRhy")
end)

if not respon then
ErrorPrompt("Remote spy V3 error", result)
end
end
if cmd == "iy" then
local respon, result = pcall(function()
executeHTTPS('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source.lua') -- without .lua
end)

if not respon then
ErrorPrompt("Infinite Yield error", result)
end
end
if cmd == "config" then
hub_q.Visible = true
end
if cmd == "crosshair" then
local Crosshair = Instance.new("ScreenGui")
local CrosshairImage = Instance.new("ImageLabel")
--Properties:
Crosshair.Parent = speaker:WaitForChild("PlayerGui")
 
CrosshairImage.Parent = ScreenGui
CrosshairImage.BackgroundColor3 = Color3.new(0, 0, 0)
CrosshairImage.BackgroundTransparency = 100
CrosshairImage.Position = UDim2.new(0.5, -25, 0.5, -44)
CrosshairImage.Size = UDim2.new(0, 50, 0, 50)
CrosshairImage.Image = "rbxassetid://13171020627"
end
if cmd == "animation" then
local var = string.sub(msg,space+1)
AnimationExtension(var)
end
if cmd == "date" then
notify("Time",os.date())
end
if cmd == "animationgui" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui")
end)

if not respon then
ErrorPrompt("Animation", result)
end
end
if cmd == "snake" then
local respon, result = pcall(function()
executeHTTPS("https://pastefy.ga/tWBTcE4R/raw")
end)

if not respon then
ErrorPrompt("FE snake", result)
end
end
if cmd == "loopspeed" then
local var = string.sub(msg,space+1)
local speed = var or 16
	if var then
		speed = var or 16
	end
	if isNumber(speed) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function WalkSpeedChange()
			if Char and Human then
				Human.WalkSpeed = speed
			end
		end
		WalkSpeedChange()
		HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			WalkSpeedChange()
			HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("WalkSpeed"):Connect(WalkSpeedChange)
		end)
	end
end
if cmd == "loopjump" then
local var = string.sub(msg,space+1)
local jpower = var or 50
	if isNumber(jpower) then
		local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
		local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
		local function JumpPowerChange()
			if Char and Human then
				if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = jpower
				else
					speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jpower
				end
			end
		end
		JumpPowerChange()
		HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or speaker.CharacterAdded:Connect(function(nChar)
			Char, Human = nChar, nChar:WaitForChild("Humanoid")
			JumpPowerChange()
			HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or Human:GetPropertyChangedSignal("JumpPower"):Connect(JumpPowerChange)
		end)
	end
end
if cmd == "unloopspeed" then
HumanModCons.wsLoop = (HumanModCons.wsLoop and HumanModCons.wsLoop:Disconnect() and false) or nil
	HumanModCons.wsCA = (HumanModCons.wsCA and HumanModCons.wsCA:Disconnect() and false) or nil
end
if cmd == "unloopjump" then
local Char = speaker.Character or workspace:FindFirstChild(speaker.Name)
	local Human = Char and Char:FindFirstChildWhichIsA("Humanoid")
	HumanModCons.jpLoop = (HumanModCons.jpLoop and HumanModCons.jpLoop:Disconnect() and false) or nil
	HumanModCons.jpCA = (HumanModCons.jpCA and HumanModCons.jpCA:Disconnect() and false) or nil
	if Char and Human then
		if speaker.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpPower = 50
		else
			speaker.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = 50
		end
	end
end
if cmd == "fakedata" then
local options = httprequest({
    Url = "https://jsonplaceholder.typicode.com/users",
    Method = "GET",
    Headers = {
        ["Content-Type"] = "application/json"
    }
})

local success, result = pcall(HttpService.RequestAsync, HttpService, options)

if success then
    local users = HttpService:JSONDecode(result.Body)
    for _, user in ipairs(users) do
        print("User ID: " .. user.id)
        print("Username: " .. user.username)
	-- notify("User ID: " .. user.id .. "\nUsername: " .. user.username)
	ErrorPrompt("Fake data generator (Copied)","User ID: " .. user.id .. "\nUsername: " .. user.username)
	copy("User ID: " .. user.id .. "\nUsername: " .. user.username)
    end
else
    -- notify("Error making request: " .. tostring(result))
ErrorPrompt("API Error","Error making request: " .. result)
end
end
if cmd == "githubdata" then
Github.Visible = true
end
if cmd == "weather" then
WeatherApiKey.Visible = true
WeatherCity.Visible = true
end
if cmd == "ungithubdata" then
Github.Visible = false
end
if cmd == "unweather" then
WeatherApiKey.Visible = false
WeatherCity.Visible = false
end
if cmd == "tptool" then
tptool_A1()
end
if cmd == "split" then
if r15(speaker) then
		speaker.Character.UpperTorso.Waist:Destroy()
	else
		ErrorPrompt('R15 Required','This command requires the r15 rig type')
	end
end
if cmd == "noroot" then
if speaker.Character ~= nil then
		local char = Players.LocalPlayer.Character
		char.Parent = nil
		char.HumanoidRootPart:Destroy()
		char.Parent = workspace
	end
end
if cmd == "reproot" then
if speaker.Character ~= nil and speaker.Character:FindFirstChild("HumanoidRootPart") then
		local Char = speaker.Character
		local OldParent = Char.Parent
		local HRP = Char and Char:FindFirstChild("HumanoidRootPart")
		local OldPos = HRP.CFrame
		Char.Parent = game
		local HRP1 = HRP:Clone()
		HRP1.Parent = Char
		HRP = HRP:Destroy()
		HRP1.CFrame = OldPos
		Char.Parent = OldParent
	end
end
if cmd == "nolegs" then
if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" then
				v:Destroy()
			end
		end
	end
end
if cmd == "sitwalk" then
local anims = speaker.Character.Animate
	local sit = anims.sit:FindFirstChildOfClass("Animation").AnimationId
	anims.idle:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.walk:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.run:FindFirstChildOfClass("Animation").AnimationId = sit
	anims.jump:FindFirstChildOfClass("Animation").AnimationId = sit
	if r15(speaker) then
		speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = 0.5
	else
		speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = -1.5
	end
end
if cmd == "nolimbs" then
if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperLeg" or
				v.Name == "LeftUpperLeg" or
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Leg" or
				v.Name == "Left Leg" or
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end
if cmd == "noarms" then
if r15(speaker) then
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "RightUpperArm" or
				v.Name == "LeftUpperArm" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(speaker.Character:GetChildren()) do
			if v:IsA("BasePart") and
				v.Name == "Right Arm" or
				v.Name == "Left Arm" then
				v:Destroy()
			end
		end
	end
end
if cmd == "weaken" then
local var = string.sub(msg,space+1)
for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if var then
				child.CustomPhysicalProperties = PhysicalProperties.new(-var, 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(0, 0.3, 0.5)
			end
		end
	end
end
if cmd == "unweaken" then
for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			child.CustomPhysicalProperties = PhysicalProperties.new(0.7, 0.3, 0.5)
		end
	end
end
if cmd == "strengthen" then
local var = string.sub(msg,space+1)
for _, child in pairs(speaker.Character:GetDescendants()) do
		if child.ClassName == "Part" then
			if var then
				child.CustomPhysicalProperties = PhysicalProperties.new(var, 0.3, 0.5)
			else
				child.CustomPhysicalProperties = PhysicalProperties.new(100, 0.3, 0.5)
			end
		end
	end
end
if cmd == "bundle" then
local var = string.sub(msg,space+1)
local respon, result = pcall(function()
LoadBundle(var)
end)

if not respon then
ErrorPrompt("Failed to load bundle", result)
end
end
if cmd == "username" then
local var = string.sub(msg,space+1)
ESPName(var)
saveSettings()
end
if cmd == "timeplayed" then
notify("wait","wait")
notify("Time Played",GetTimePlayed())
end
if cmd == "domainhub" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/udQLpt5d") -- without .lua
end)

if not respon then
ErrorPrompt("Domain Hub (REMAKE)", result)
end
end
if cmd == "nowall" then    
for i,v in pairs(workspace:GetDescendants()) do
	if v:IsA("BasePart") and v.Transparency == 1 then
	   v.CanCollide = false
	end
    end
end
if cmd == "spin" then
local var = string.sub(msg,space+1)
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = speaker.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,var,0)
end
if cmd == "unspin" then
for i,v in pairs(getRoot(speaker.Character):GetChildren()) do
		if v.Name == "Spinning" then
			v:Destroy()
		end
	end
end
if cmd == "collide" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == var then
                v.CanCollide = false
            end
        end
    end
end
if cmd == "uncollide" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == var then
                v.CanCollide = true
            end
        end
    end
end
if cmd == "dpart" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Workspace:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.Name:lower() == var then
                ExplodePart(v)
                v:Destroy()
            end
        end
    end
end
if cmd == "travelto" then
local var = string.sub(msg,space+1)
local respon, result = pcall(function()
CloseCmdBar()
SynchronousGameTeleport(var,0,0) -- https://
if (queue_on_teleport) then
	if Executor() == "Arceus X" or Executor() == "Hydrogen" then
            queue_on_teleport("loadstring(game.HttpGet(game, \"https://raw.githubusercontent.com/Sidhsksjsjsh/Fe-Vortex-admin-V2/main/VortexCompany/C4/Discord.Lua\"))()");
		end
	end
end)

if not respon then
OpenCmdBar()
ErrorPrompt("Travel Failed",result)
end
end
if cmd == "loopbringpart" then
local var = string.sub(msg,space+1)
local partBringName = var
	if not FindInTable(BringParts,partBringName) then
		table.insert(BringParts,partBringName)
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and v.Name:lower() == partBringName then
				v.CFrame = getRoot(speaker.Character).CFrame
				ToolFunc_1 = partBringName
			end
		end
	end
	if partBringTrigger == nil then
		partBringTrigger = workspace.DescendantAdded:Connect(partBringing)
	end
    success("Auto Bring","started carrying the named object '" .. var .. "'.")
end
if cmd == "unloopbringpart" then
if partBringTrigger then
       partBringTrigger:Disconnect()
	partBringTrigger = nil
	ToolFunc_1 = ""
       success("Auto Bring","stoped carrying the object")
end
end
if cmd == "fates" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua")
end)

if not respon then
ErrorPrompt("Fates admin error", result)
end
end
if cmd == "tool" then
MysteriousTool()
notify("Mysterious Tools","10 items have been added to your inventory")
end
if cmd == "looptime" then
local var = string.sub(msg,space+1)
local function LoopTimeZone()
      Lighting.ClockTime = var
end
      TimeZones = RunService.Stepped:Connect(LoopTimeZone)
end
if cmd == "time" then
local var = string.sub(msg,space+1)
Lighting.ClockTime = var
end
if cmd == "unlooptime" then
if TimeZones then
       TimeZones:Disconnect()
end
end
if cmd == "bypass" then
local var = string.sub(msg,space+1)
local s,r = pcall(function()
Anticheat_Bypass()
AdonisBypass(var)
end)

if s then
success("Anti-Cheat bypass is running 🐧","do not run this command again!")
else
warning("Anti-Cheat Bypass Error 🐧",r)
end
end
if cmd == "epicm" then
if game.PlaceId == 277751860 then
   executeHTTPS("https://raw.githubusercontent.com/SlamminPig/rblxgames/main/Epic%20Minigames/EpicMinigamesGUI")
else
   warning("Unsupported game","this game is not supported, teleport to Epic Minigames to run this script")
   SynchronousGameTeleport(277751860, 0, 0)
end
end
if cmd == "oldrspy" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/Jshdjdhdkdb/main/Omgshit.lua")
end)

if not respon then
ErrorPrompt("Remote spy V2 error", result)
end
end
if cmd == "zombie" then
local respon, result = pcall(function()
executeHTTPS("https://pastefy.ga/n42Ougzx/raw")
end)

if not respon then
ErrorPrompt("Zombie script Error", result)
end
end
if cmd == "fling2" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/ToggleFling/main/Roblox/Script.lua")
end)

if not respon then
ErrorPrompt("FE Touch Fling GUI Error", result)
end
end
if cmd == "nofog" then
Lighting.FogEnd = 100000
	for i,v in pairs(Lighting:GetDescendants()) do
		if v:IsA("Atmosphere") then
			v:Destroy()
			info("fog","Fog Removed")
		end
	end
end
if cmd == "maxzoom" then
local var = string.sub(msg,space+1)
speaker.CameraMaxZoomDistance = tonumber(var)
end
if cmd == "minzoom" then
local var = string.sub(msg,space+1)
speaker.CameraMinZoomDistance = tonumber(var)
end
if cmd == "fixcam" then
game.Workspace.CurrentCamera.CameraType = "Fixed"
notify("Camera","Fixing Camera...")
wait(0.5)
game.Workspace.CurrentCamera.CameraSubject = speaker.Character:FindFirstChildWhichIsA('Humanoid')
game.Workspace.CurrentCamera.CameraType = "Custom"
notify("Camera","The camera was successfully fixed")
end
if cmd == "sturdy" then
local respon, result = pcall(function()
ForceBodyPart()
executeHTTPS("https://pastebin.com/raw/sfH0d8RW")
end)

if not respon then
ErrorPrompt("FE Sturdy Error", result)
end
end
if cmd == "emotegui" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/Gi7331/scripts/main/Emote.lua")
notify("Keybind",'press comma')
end)

if not respon then
ErrorPrompt("FE Emote GUI Error", result)
end
end
if cmd == "fighter" then
local respon, result = pcall(function()
ForceBodyPart()
executeHTTPS("https://pastebin.com/raw/XhTSzvNU")
end)

if not respon then
ErrorPrompt("FE Fighter Error", result)
end
end
if cmd == "esp2" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/EspV2/main/Death.lua")
end)

if not respon then
ErrorPrompt("ESP V2 Error", result)
end
end
if cmd == "orbit" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
RocketPropulsion(5000,100,5000,v,"OrbitMove")

if Players:FindFirstChild(Players[v]) then
notify("Orbit","Orbiting " .. tostring(Players[v]) .. ".")
else
ErrorPrompt("Player not found","We couldn't find the player named " .. tostring(Players[v]))
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.Name == "OrbitMove" then
			v:Destroy()
		end
	end
end
end
end
if cmd == "unorbit" then
for i,v in pairs(speaker.Character:GetDescendants()) do
		if v.Name == "OrbitMove" then
			v:Destroy()
		end
	end
end
if cmd == "orbitspeed" then
local var = string.sub(msg,space+1)
orbit.speed = tonumber(var)
end
if cmd == "orbiteclipse" then
local var = string.sub(msg,space+1)
orbit.eclipse = tonumber(var)
end
if cmd == "orbitradius" then
local var = string.sub(msg,space+1)
orbit.radius = tonumber(var)
end
if cmd == "noanim" then
speaker.Character.Animate.Disabled = true
end
if cmd == "freezeanims" then
local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(0)
	end
end
if cmd == "reanim" then
speaker.Character.Animate.Disabled = false
end
if cmd == "unfreezeanims" then
local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(1)
	end
end
if cmd == "stand" then
speaker.Character.Animate.Disabled = true
local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(0)
	end
end
if cmd == "unstand" then
speaker.Character.Animate.Disabled = false
local Humanoid = speaker.Character:FindFirstChildOfClass("Humanoid") or speaker.Character:FindFirstChildOfClass("AnimationController")
	local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
	for _, v in pairs(ActiveTracks) do
		v:AdjustSpeed(1)
	end
end
if cmd == "exit" then
ToggleNotify("Confirm","Are you sure you want to exit the game?",print("NO"),game:shutdown())
end
if cmd == "infjump" then
if infjumpsystem then 
   infjumpsystem:Disconnect() 
end

infjumpsystem = UserInputService.JumpRequest:connect(function()
	speaker.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end)
end
if cmd == "uninfjump" then
if infjumpsystem then 
   infjumpsystem:Disconnect() 
end
end
if cmd == "btools" then
for i = 1, 4 do
		local Tool = Instance.new("HopperBin")
		Tool.BinType = i
		Tool.Name = randomString()
		Tool.Parent = speaker:FindFirstChildOfClass("Backpack")
	end
notify("btools","4 items have been added to your inventory.")
end
if cmd == "immortal" then
local Cam = game:GetService("Workspace").CurrentCamera
	local Pos, Char = Cam.CFrame, speaker.Character
	local Human = Char and Char.FindFirstChildWhichIsA(Char, "Humanoid")
	local nHuman = Human.Clone(Human)
	nHuman.Parent, speaker.Character = Char, nil
	nHuman.SetStateEnabled(nHuman, 15, false)
	nHuman.SetStateEnabled(nHuman, 1, false)
	nHuman.SetStateEnabled(nHuman, 0, false)
	nHuman.BreakJointsOnDeath, Human = true, Human.Destroy(Human)
	speaker.Character, Cam.CameraSubject, Cam.CFrame = Char, nHuman, wait() and Pos
	nHuman.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	local Script = Char.FindFirstChild(Char, "Animate")
	if Script then
		Script.Disabled = true
		wait()
		Script.Disabled = false
	end
	nHuman.Health = nHuman.MaxHealth
end
if cmd == "headless" then
if sethidden then
		-- Full credit to Thomas_Cornez#0272 @Discord
		local lplr = speaker
		local char = lplr.Character
		local rigType = tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R6" and 1 or tostring(char:FindFirstChildOfClass('Humanoid').RigType) == "Enum.HumanoidRigType.R15" and 2

		local test = Instance.new("Model")
		local hum  = Instance.new("Humanoid")
		local animation = Instance.new("Model")
		local humanoidanimation = Instance.new("Humanoid")
		test.Parent = game:GetService("Workspace")
		hum.Parent = test
		animation.Parent = game:GetService("Workspace")
		humanoidanimation.Parent = animation

		lplr.Character = test
		wait(2)
		char:FindFirstChildOfClass('Humanoid').Animator.Parent = humanoidanimation
		char:FindFirstChildOfClass('Humanoid'):Destroy()

		char.Head:Destroy()
		wait(5)
		Players.LocalPlayer.Character = char

		local hum2 = Instance.new("Humanoid")
		hum2.Parent = char
		char:FindFirstChildOfClass("Humanoid").Jump = true

		humanoidanimation.Animator.Parent = hum2
		char.Animate.Disabled = true
		wait()
		char.Animate.Disabled = false
		wait()

		if not r15(speaker) then
			hum2.HipHeight = 0
		else
			hum2.HipHeight = 3
		end
	else
		ErrorPrompt('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end
end
if cmd == "discordusername" then
copy("Tora4172#0")
end
if cmd == "glitcher" then
local respon, result = pcall(function()
executeHTTPS("https://pastefy.ga/qqTUbyGK/raw")
end)

if not respon then
if r15(speaker) then
ErrorPrompt("FE Glitcher ( R15 )", result)
else
ErrorPrompt("FE Glitcher ( R6 )", result)
end
end
end
if cmd == "pet" then
local var = string.sub(msg,space+1)
ForceBodyPart()
if isNumber(var) then
PetHat_R15AndR6(tonumber(var))
else
ErrorPrompt("Required Number","only supports ID accessories")
end
end
if cmd == "clag" then
local Message = "⛓" 
local Unicode = " "
Message = Message .. Unicode:rep(200 - #Message)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SayMessageRequest = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

if SayMessageRequest then
    for i = 1, 7 do
        SayMessageRequest:FireServer(Message, "All")
    end
end
end
if cmd == "netless" then
ForceBodyPart()
success("Netless Activated","run this command after character reset.")
end
if cmd == "xray" then
xray(true)
end
if cmd == "unxray" then
xray(false)
end
if cmd == "f3x" then
executeOBJECTS("6695644299")
end
if cmd == "nameless" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/CsKA3L8Z")
end)

if not respon then
ErrorPrompt("FE Nameless V2 Error", result)
end
end
if cmd == "speedboost" then
tpwalking = true
local chr = speaker.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
if hum.MoveDirection.Magnitude > 0 then
chr:TranslateBy(hum.MoveDirection)
end
end
 
 
speaker.Character.Animate.Disabled = true
local Char = speaker.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")
 
 
for i,v in next, Hum:GetPlayingAnimationTracks() do
v:AdjustSpeed(0)
end
end
if cmd == "eathats" then
local char = speaker.Character

for i, v in pairs(char:GetChildren()) do
    if v:IsA("BallSocketConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char:GetChildren()) do
    if v:IsA("HingeConstraint") then
        v:Destroy()
    end
end

for i, v in pairs(char.Humanoid:GetAccessories()) do
local hat = v.Name

char[hat].Archivable = true
local fake = char[hat]:Clone()
fake.Parent = char
fake.Handle.Transparency = 1

local hold = false
local enabled = false

char[hat].Handle.AccessoryWeld:Destroy()

local tool = Instance.new("Tool", speaker.Backpack)
tool.RequiresHandle = true
tool.CanBeDropped = false
tool.Name = hat

local handle = Instance.new("Part", tool)
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1)
handle.Massless = true
handle.Transparency = 1

local positions = {
    forward = tool.GripForward,
    pos = tool.GripPos,
    right = tool.GripRight,
    up = tool.GripUp
}

tool.Equipped:connect(function()
 hold = true
end)

tool.Unequipped:connect(function()
   hold = false
end)

tool.Activated:connect(function()
    if enabled == false then
        enabled = true
        tool.GripForward = Vector3.new(-0.976,0,-0.217)
    tool.GripPos = Vector3.new(.95,-0.76,1.4)
    tool.GripRight = Vector3.new(0.217,0, 0.976)
    tool.GripUp = Vector3.new(0,1,0)
    wait(.8)
    tool.GripForward = positions.forward
    tool.GripPos = positions.pos
    tool.GripRight = positions.right
    tool.GripUp = positions.up
    enabled = false
    end
end)

hb:connect(function()
    pcall(function()
       char[hat].Handle.Velocity = Vector3.new(30, 0, 0)
if hold == false then
    char[hat].Handle.CFrame = fake.Handle.CFrame
elseif hold == true then
    char[hat].Handle.CFrame = handle.CFrame
    end
end)
end)
end
end
if cmd == "fecheck" then
if game:GetService("Workspace").FilteringEnabled == true then
		warning("FE is Enabled", "FE is enabled!")
	else
		warning("FE is Disabled", "FE is disabled. Consider using a different script.")
	end
end
if cmd == "mute" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
            ProtocolSendChat("/mute " .. tostring(Players[v]))
end
end
if cmd == "unmute" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
            ProtocolSendChat("/unmute " .. tostring(Players[v]))
end
end
if cmd == "highlightpart" then
-- fade(highlights.Parent.label, 0.25, {TextColor3 = c3(52, 189, 98)})
        notify("Highlight (Secret Command)","Unanchored Highlighted")
for _,part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(speaker.Character) == false and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false and part:FindFirstChild("Weld") == nil then --// Checks Part Properties
            local selectionBox = Instance.new("SelectionBox")
            selectionBox.Adornee = part
            selectionBox.Color3 = Color3.new(1,0,0)
            selectionBox.Parent = part
        end
        end
end
if cmd == "unhighlightpart" then
-- fade(highlights.Parent.label, 0.25, {TextColor3 = c3w})
        notify("Highlight (Secret Command)","Unanchored Un-Highlighted")
    for _,part in pairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(speaker.Character) == false and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false and part:FindFirstChild("Weld") == nil then --// Checks Part Properties
            if part:FindFirstChild("SelectionBox") then
            part.SelectionBox:Destroy()
            end
        end
end
end
if cmd == "countpart" then
    for index, part in pairs(game.workspace:GetDescendants()) do
    if part:IsA("BasePart") and part.Anchored == false and part:IsDescendantOf(speaker.Character) == false and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false and part:FindFirstChild("Weld") == nil then --// Checks Part Properties
        countb = countb + 1
    end
    end
    notify("All parts checked","found " .. countb .. " that are unanchored")
    wait(0.1)
    countb = 0
end
if cmd == "r6" then
local respon, result = pcall(function()
if r15(speaker) then
notify("Loading","Hold on a sec")
executeHTTPS("https://pastebin.com/raw/9wJepMwY")
else
warning("Rig Type","Your character rig is already R6, can't change.")
end
end)

if not respon then
ErrorPrompt("Rig Type Changer", result)
end
end
if cmd == "disbot" then
_G.Settings.LocalBotChatFunc = false
info("Assistant Bot","Disabled")
end
if cmd == "enabot" then
_G.Settings.LocalBotChatFunc = true
info("Assistant Bot","Enabled")
end
if cmd == "antiafk" then
local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(speaker.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
			end
		end
	else
		speaker.Idled:Connect(function()
			local VirtualUser = game:GetService("VirtualUser")
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new())
		end)
	end
	notify('Anti Idle','Anti idle is enabled')
end
if cmd == "russiankick" then
local respon, result = pcall(function()
if r15(speaker) then
info("Russian Kick (R15)","Loading...")
executeHTTPS("https://pastebin.com/raw/XHi228Ln")
else
info("Russian Kick (R6)","Loading...")
executeHTTPS("https://pastebin.com/raw/qtgTPwYm")
end
end)

if not respon then
if r15(speaker) then
ErrorPrompt("FE Russian Kick (R15)", result)
else
ErrorPrompt("FE Russian Kick (R6)", result)
end
end
end
if cmd == "rtx" then
-- Roblox Graphics Enhancher
local light = game.Lighting
for i, v in pairs(light:GetChildren()) do
v:Destroy()
end

local ter = workspace.Terrain
local color = Instance.new("ColorCorrectionEffect")
local bloom = Instance.new("BloomEffect")
local sun = Instance.new("SunRaysEffect")
local blur = Instance.new("BlurEffect")

color.Parent = light
bloom.Parent = light
sun.Parent = light
blur.Parent = light

-- enable or disable shit

local config = {

Terrain = true;
ColorCorrection = true;
Sun = true;
Lighting = true;
BloomEffect = true;

}

-- settings {

color.Enabled = false
color.Contrast = 0.15
color.Brightness = 0.1
color.Saturation = 0.25
color.TintColor = Color3.fromRGB(255, 222, 211)

bloom.Enabled = false
bloom.Intensity = 0.1

sun.Enabled = false
sun.Intensity = 0.2
sun.Spread = 1

bloom.Enabled = false
bloom.Intensity = 0.05
bloom.Size = 32
bloom.Threshold = 1

blur.Enabled = false
blur.Size = 6

-- settings }


if config.ColorCorrection then
color.Enabled = true
end


if config.Sun then
sun.Enabled = true
end


if config.Terrain then
-- settings {
ter.WaterColor = Color3.fromRGB(10, 10, 24)
ter.WaterWaveSize = 0.1
ter.WaterWaveSpeed = 22
ter.WaterTransparency = 0.9
ter.WaterReflectance = 0.05
-- settings }
end


if config.Lighting then
-- settings {
light.Ambient = Color3.fromRGB(0, 0, 0)
light.Brightness = 4
light.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
light.ColorShift_Top = Color3.fromRGB(0, 0, 0)
light.ExposureCompensation = 0
light.FogColor = Color3.fromRGB(132, 132, 132)
light.GlobalShadows = true
light.OutdoorAmbient = Color3.fromRGB(112, 117, 128)
light.Outlines = false
-- settings }
end
end
if cmd == "psyhub" then
notify("Psy Hub","Loading...")
executeOBJECTS("3014051754")
end
if cmd == "annoychat" then
ProtocolSendChat(" ⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻⸻")
end
if cmd == "robuxtroll" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/BHjfPXC6")
end)

if not respon then
ErrorPrompt("FE Robux Troll Error", result)
end
end
if cmd == "bombvest" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/S7vdifqp")
end)

if not respon then
ErrorPrompt("FE Bomb Vest Error", result)
end
end
if cmd == "grabv3" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/TPZXG8fH")
end)

if not respon then
ErrorPrompt("FE Grab V3 Error", result)
end
end
if cmd == "grabv4" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/7zK1Swpt")
end)

if not respon then
ErrorPrompt("FE Grab V4 Error", result)
end
end
if cmd == "anir15" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/MenK10Ak")
end)

if not respon then
ErrorPrompt("FE R15 Animation Error", result)
end
end
if cmd == "anir6" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/Ydt76Kep")
end)

if not respon then
ErrorPrompt("FE R6 Animation Error", result)
end
end
if cmd == "arosia" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/Nwit6ZqP")
end)

if not respon then
ErrorPrompt("FE Arosia GUI Error", result)
end
end
if cmd == "clown" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/0uJXBEmN")
end)

if not respon then
ErrorPrompt("FE Clown Error", result)
end
end
if cmd == "coolerkids" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/GGQeWXSL")
end)

if not respon then
ErrorPrompt("FE Cooler Kids Error", result)
end
end
if cmd == "equinox" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/scYFbHQb")
end)

if not respon then
ErrorPrompt("FE Equinox Error", result)
end
end
if cmd == "hypertotal" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/aYdepQa0")
end)

if not respon then
ErrorPrompt("FE HyperTotal Error", result)
end
end
if cmd == "opfinality" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/fG5b1zrM")
end)

if not respon then
ErrorPrompt("FE OPFinality GUI Error", result)
end
end
if cmd == "ophub" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/r7DuWSt7")
end)

if not respon then
ErrorPrompt("FE OPHub GUI Error", result)
end
end
if cmd == "roxploit" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/ZkhCcaa5")
end)

if not respon then
ErrorPrompt("FE RoXploit GUI Error", result)
end
end
if cmd == "rosehub" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/1BJj0fB4")
end)

if not respon then
ErrorPrompt("FE Rose Hub GUI Error", result)
end
end
if cmd == "sernhub" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/8sD7V8xp")
end)

if not respon then
ErrorPrompt("FE Sern Hub Error", result)
end
end
if cmd == "topk3k" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/bEmmF8UH")
end)

if not respon then
ErrorPrompt("FE TOPK3K GUI Error", result)
end
end
if cmd == "beerus" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/c1TGDAKC")
end)

if not respon then
ErrorPrompt("FE beerus Error", result)
end
end
if cmd == "ace" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/fA4XSTY1")
end)

if not respon then
ErrorPrompt("FE Ace Error", result)
end
end
if cmd == "beast" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/0AH8SZTJ")
end)

if not respon then
ErrorPrompt("FE Beast Error", result)
end
end
if cmd == "assasin" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/bKu2GuzN")
end)

if not respon then
ErrorPrompt("FE Assasin Error", result)
end
end
if cmd == "dssj4" then
local respon, result = pcall(function()
executeHTTPS("https://pastebin.com/raw/pfdud8wK")
end)

if not respon then
ErrorPrompt("FE DSSJ4 Error", result)
end
end
if cmd == "pathfindfollow" then
local var = string.sub(msg,space+1)
walkto = false
	wait()
	local variable = getPlayer(var, speaker)
	local hum = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	local path = PathService:CreatePath()
	for i,v in pairs(variable)do
		if Players[v].Character ~= nil then
			if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
				speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
				wait(.1)
			end
			walkto = true
			repeat wait()
				local success, response = pcall(function()
					path:ComputeAsync(getRoot(speaker.Character).Position, getRoot(Players[v].Character).Position)
					local waypoints = path:GetWaypoints()
					local distance 
					for waypointIndex, waypoint in pairs(waypoints) do
						local waypointPosition = waypoint.Position
						hum:MoveTo(waypointPosition)
						repeat 
							distance = (waypointPosition - hum.Parent.PrimaryPart.Position).magnitude
							wait()
						until
						distance <= 5
					end	 
				end)
				if not success then
					speaker.Character:FindFirstChildOfClass('Humanoid'):MoveTo(getRoot(Players[v].Character).Position)
				end
			until Players[v].Character == nil or not getRoot(Players[v].Character) or walkto == false
		end
	end
end
if cmd == "laugh" then
ProtocolSendChat("/e laugh")
end
if cmd == "point" then
ProtocolSendChat("/e point")
end
if cmd == "cheer" then
ProtocolSendChat("/e cheer")
end
if cmd == "vccheck" then
if VoiceChatService:IsVoiceEnabledForUserIdAsync(speaker.UserId) then
              notify("VC Checks","This player has voice chat enabled")
         else
              notify("VC Checks","This player does not have voice chat enabled")
          end
 end
if cmd == "sad" then
_Anims("180612465")
wait(1.5)
speaker.Character.Animate.Disabled = true
ServiceStart:AdjustSpeed(0)
end
if cmd == "unsad" then
AnimService:Destroy()
ServiceStart:Stop()
ServiceStart:AdjustSpeed(1)
end
if cmd == "keybind" then
ErrorPrompt("Keybind Error","Keybind error, please DM this issue to the developer of this script. (Tora4172#0)")
end
if cmd == "tpua" then
local var = string.sub(msg,space+1)
if sethidden then
		local variable = getPlayer(var, speaker)
		for i,v in pairs(variable) do
			local Forces = {}
			for _,part in pairs(workspace:GetDescendants()) do
				if Players[v].Character:FindFirstChild('Head') and part:IsA("BasePart" or "UnionOperation" or "Model") and part.Anchored == false and not part:IsDescendantOf(speaker.Character) and part.Name == "Torso" == false and part.Name == "Head" == false and part.Name == "Right Arm" == false and part.Name == "Left Arm" == false and part.Name == "Right Leg" == false and part.Name == "Left Leg" == false and part.Name == "HumanoidRootPart" == false then
					for i,c in pairs(part:GetChildren()) do
						if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
							c:Destroy()
						end
					end
					local ForceInstance = Instance.new("BodyPosition")
					ForceInstance.Parent = part
					ForceInstance.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
					table.insert(Forces, ForceInstance)
					if not table.find(frozenParts,part) then
						table.insert(frozenParts,part)
					end
				end
			end
			for i,c in pairs(Forces) do
				c.Position = Players[v].Character.Head.Position
			end
		end
	else
		notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
	end

notify("Black hole Created","touch part to make a black hole")
end
if cmd == "flagwars" then
local respon, result = pcall(function()
notify("Injecting..","please wait 15 seconds")
Anticheat_Bypass()
wait()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/FlagWars/main/Roblox/Script.lua")
end)

if not respon then
ErrorPrompt("Flag Wars Script", result)
end
end
if cmd == "enable" then
local var = string.sub(msg,space+1)
	if var then
		if var:lower() == "reset" then
			StarterGui:SetCore("ResetButtonCallback", true)
		else
			local coreGuiType = coreGuiTypeNames[var:lower()]
			if coreGuiType then
				game:GetService("StarterGui"):SetCoreGuiEnabled(coreGuiType, true)
			end
		end
	end
end
if cmd == "disable" then
local var = string.sub(msg,space+1)
	if var then
		if var:lower() == "reset" then
			StarterGui:SetCore("ResetButtonCallback", false)
		else
			local coreGuiType = coreGuiTypeNames[var:lower()]
			if coreGuiType then
				game:GetService("StarterGui"):SetCoreGuiEnabled(coreGuiType, false)
			end
		end
	end
end
if cmd == "ff" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
         ForceField(Players[v].Character,_G.ForceFieldCooldown)
end
end
if cmd == "ffcd" then
local var = string.sub(msg,space+1)
_G.ForceFieldCooldown = tonumber(var)
end
if cmd == "bring" then
if Bringplayerrunservice then
Bringplayerrunservice:Disconnect()
end

Bringplayerrunservice = RunService.RenderStepped:Connect(function()
    for _, v in next, Players:GetPlayers() do
        if v ~= speaker then
            -- print(v)
            v.Character.HumanoidRootPart.CFrame = speaker.Character.HumanoidRootPart.CFrame * CFrame.new(2.2,0.5,-3)
        end
    end
    end)
end
if cmd == "unbring" then
if Bringplayerrunservice then
Bringplayerrunservice:Disconnect()
end
end
if cmd == "wfs" then
local respon, result = pcall(function()
notify("Injecting..","please wait 15 seconds")
Anticheat_Bypass()
wait()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/Turtle-Hub/main/WFS/WeaponFightingSimulator/Script.lua")
end)

if not respon then
ErrorPrompt("Weapon Fighting Simulator Script", result)
end
end
if cmd == "name" then
local var = string.sub(msg,space+1)
speaker.Name = var
notify("Fake Username","currently username: " .. var)
end
if cmd == "displayname" then
local var = string.sub(msg,space+1)
speaker.DisplayName = var
notify("Fake Display name","Currently display name: " .. var)
end
if cmd == "sillysimon" then
local respon, result = pcall(function()
executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/SillySimonSays/main/CheatingTool.lua")
end)

if not respon then
ErrorPrompt("Silly Simon Says Script", result)
end
end
if cmd == "nccam" then
local sc = (debug and debug.setconstant) or setconstant
	local gc = (debug and debug.getconstants) or getconstants
	if not sc or not getgc or not gc then
		notify('Incompatible Exploit', 'Your exploit does not support this command (missing setconstant or getconstants or getgc)')
	end
	local pop = speaker.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
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
end
if cmd == "flytool" then
if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
   FlyToolForMobile()
else
   FlyToolForPC()
end
end
if cmd == "nametag" then
local var = string.sub(msg,space+1)
    NametagPlayer(capitalizeFirstLetter("[ " .. tostring(var) .. " ] \n" .. tostring(speaker.DisplayName)))
end
if cmd == "title" then
local var = string.sub(msg,space+1)
    TitlePlayer(capitalizeFirstLetter(var))
end
if cmd == "discord" then
if setclipboard then
		copy('https://discord.gg/ZcnSSpH63u')
		notify('Discord Invite','Copied to clipboard!\ndiscord.gg/ZcnSSpH63u')
	else
		notify('Discord Invite','discord.gg/ZcnSSpH63u')
	end
	if httprequest then
		httprequest({
			Url = 'http://127.0.0.1:6463/rpc?v=1',
			Method = 'POST',
			Headers = {
				['Content-Type'] = 'application/json',
				Origin = 'https://discord.com'
			},
			Body = HttpService:JSONEncode({
				cmd = 'INVITE_BROWSER',
				nonce = HttpService:GenerateGUID(false),
				args = {code = 'ZcnSSpH63u'}
			})
		})
	end
end
if cmd == "memory" then
notify("Total memory usage",tostring(math.round(game:GetService("Stats").GetTotalMemoryUsageMb(stats))) .. " mb")
end
if cmd == "httpspy" then
notify("HTTP SPY","Vortex's http spy V1 enabled")
				
local old;
old = hookfunction(request, newcclosure(function(newreq)
if newreq.Url:find("discord") or newreq.Url:find("webhook") then
print(newreq.Url)
warning("Webhook detected","Blocked webhook!")
return
end
return old(newreq)
end))


local old;
old = hookfunction(game.HttpGet, newcclosure(function(olgame, url)
if url:find("pastebin") then
url = url:gsub("pastebin","pastebinp")
elseif url:find("process") then
warning("HTTP SPY",url)
print(url .. "\nURL sequence: " .. tostring(#_G.UrlList + 1))
_G.UrlList[#_G.UrlList + 1] = {urlHook = url}
end
print(url .. "\nURL sequence: " .. tostring(#_G.UrlList + 1))
notify("HTTP SPY",url)
_G.UrlList[#_G.UrlList + 1] = {urlHook = url}
return old(olgame, url)
end))

setreadonly(getrawmetatable(game), false)

local mt = getrawmetatable(game) or getmetatable(game)
local __oldnamecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
	local args = {...}
	local namecallmethod = getnamecallmethod()
	
	if self == speaker and string.lower(namecallmethod) == "kick" then
		warning("Kick Bypassed","bitchass tried to kick you, L KICK SYSTEM")
		wait(9e9)
		return nil
 	end
 	return __oldnamecall(self, unpack(args))
end)

setreadonly(getrawmetatable(game), true)
end
if cmd == "copyurl" then
local var = string.sub(msg,space+1)
if (not _G.UrlList[tonumber(var)]) then
    ErrorPrompt("error","sequence not found.")
else
    copy(string.format('-- Generated by AI and API \n-- AI by : Tora4172#0 \n\n{\n    "apiMetadata": {\n        "websiteName": "%s",\n        "baseUrl": "%s",\n        "documentation": "%s"\n    },\n    "requestDetails": {\n        "endpoint": "/users/info",\n        "method": "GET",\n        "host": "%s",\n        "cookie": {\n            "SESSIONID": "%s"\n        },\n        "fingerprint": "%s",\n        "userAgent": "%s"\n    },\n    "response": {\n        "statusCode": 200,\n        "statusMessage": "OK",\n        "data": {\n            "userId": "%s",\n            "username": "%s",\n            "displayName": "%s",\n            "email": "%s",\n            "dateJoined": "%s",\n            "bio": "%s"\n        }\n    },\n    "meta": {\n        "timestamp": "%s",\n        "version": "5.0.0",\n        "serverId": "MS-API-01"\n    }\n}',"nil",_G.UrlList[tonumber(var)].urlHook,"nil",_G.UrlList[tonumber(var)].urlHook:gsub("githubusercontent","github"):gsub("pastebin","pastebin"):gsub("luarmor","luarmor"),HttpService:GenerateGUID(false),HttpService:GenerateGUID(false),Executor(),speaker.UserId,speaker.Name,speaker.DisplayName,"nil",GetPlayerInfoByScript(speaker.UserId,"getCreated"),GetPlayerInfoByScript(speaker.UserId,"getBio"),os.date()))
end
end
if cmd == "cframe" then
local var = string.sub(msg,space+1)
getRoot(speaker.Character).CFrame = CFrame.new(var)
end
if cmd == "playerinfo" then
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do
         Alert(tostring(Players[v]) .. " Bio",GetPlayerInfoByScript(tostring(Players[v].UserId),"getBio"),"close",true)
   end
end
if cmd == "keypress" then
local var = string.sub(msg,space+1)
	if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
		if (not _G.KeybinList[var]) then
			vim:SendKeyEvent(true,capitalizeFirstLetter(var),false,game)
		else
			vim:SendKeyEvent(true,_G.KeybinList[var],false,game)
	end
		else
			warning("Only Mobile!","This command is specifically for mobile device users.")
   end
end
if cmd == "nols" then
 BypassLoadingScreen()
success("Bypass","Successfully Bypassed Loading Screen")
end
if cmd == "cms" then
local respon, result = pcall(function()
	notify("Injecting...","pls wait..")
        executeHTTPS("https://raw.githubusercontent.com/itsnoctural/Utilities/main/Closed/Clicker%20Mining%20Simulator.lua")
end)

if not respon then
    ErrorPrompt("Clicker Mining Simulator Script", result)
end
end
if cmd == "hitbox" then --1
local var = string.sub(msg,space+1)
local variable = getPlayer(var, speaker)
	for i,v in pairs(variable) do --2
	GameVirtualHitbox = RunService.RenderStepped:connect(function() --3
	if Players[v].Name ~= speaker.Name then
            pcall(function()
                Players[v].Character.HumanoidRootPart.Size = Vector3.new(50,50,50)
                Players[v].Character.HumanoidRootPart.Transparency = 0.7
                Players[v].Character.HumanoidRootPart.BrickColor = BrickColor.new("Really Green")
                Players[v].Character.HumanoidRootPart.Material = "Neon"
                Players[v].Character.HumanoidRootPart.CanCollide = false
                end)
	end
        end)
	end
end
if cmd == "unhitbox" then --1
if GameVirtualHitbox then
	GameVirtualHitbox:Disconnect()
  end
end
if cmd == "scriptview" or cmd == "sv" or cmd == "dex2" then --COREGUI
local respon, result = pcall(function()
	notify("Injecting...","pls wait..")
if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then -- for mobile
local Iris = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0581/Iris-Exploit-Bundle/main/bundle.lua"))().Init(COREGUI)
local PropertyAPIDump = game.HttpService:JSONDecode(game:HttpGet("https://anaminus.github.io/rbx/json/api/latest.json"))

local function GetPropertiesForInstance(Instance)
    local Properties = {}
    for i,v in next, PropertyAPIDump do
        if v.Class == Instance.ClassName and v.type == "Property" then
            pcall(function()
                Properties[v.Name] = {
                    Value = Instance[v.Name],
                    Type = v.ValueType,
                }
            end)
        end
    end
    return Properties
end

local ScriptContent = [[]]
local SelectedInstance = nil
local Properties = {}

local function CrawlInstances(Inst)
    for _, Instance in next, Inst:GetChildren() do
        local InstTree = Iris.Tree({Instance.Name})

        Iris.SameLine() do
            if Instance:IsA("LocalScript") or Instance:IsA("ModuleScript") then
                if Iris.SmallButton({"View Script"}).clicked then
                    ScriptContent = decompile(Instance)
                end
            end
            if Iris.SmallButton({"View and Copy Properties"}).clicked then
                SelectedInstance = Instance
                Properties = GetPropertiesForInstance(Instance)
		copy(SelectedInstance and SelectedInstance:GetFullName() or "UNKNOWN INSTANCE")
		notify("Clipboard Assistant","Copied to clipboard!")
            end
            Iris.End()
        end

        if InstTree.state.isUncollapsed.value then
            CrawlInstances(Instance)
        end
        Iris.End()
    end
end

Iris:Connect(function()
    local InstanceViewer = Iris.State(false)
    local PropertyViewer = Iris.State(false)
    local ScriptViewer = Iris.State(false)
    local CopyProp = Iris.State(false)

    Iris.Window({"Vortex Explorer Settings", [Iris.Args.Window.NoResize] = true}, {size = Iris.State(Vector2.new(400, 75)), position = Iris.State(Vector2.new(0, 0))}) do
        Iris.SameLine() do
            Iris.Checkbox({"Instance Viewer"}, {isChecked = InstanceViewer})
            Iris.Checkbox({"Property Viewer"}, {isChecked = PropertyViewer})
            Iris.Checkbox({"Script Viewer"}, {isChecked = ScriptViewer})
	    Iris.Checkbox({"Copy Properties"}, {isChecked = ScriptViewer})
            Iris.End()
        end
        Iris.End()
    end

    if InstanceViewer.value then
        Iris.Window({"Vortex Explorer Instance Viewer", [Iris.Args.Window.NoClose] = true}, {size = Iris.State(Vector2.new(400, 300)), position = Iris.State(Vector2.new(0, 75))}) do
            CrawlInstances(game)
            Iris.End()
        end
    end

    if PropertyViewer.value then
        Iris.Window({"Vortex Explorer Property Viewer", [Iris.Args.Window.NoClose] = true}, {size = Iris.State(Vector2.new(400, 200)), position = Iris.State(Vector2.new(0, 375))}) do
            Iris.Text({("Viewing Properties For: %s"):format(
                SelectedInstance and SelectedInstance:GetFullName() or "UNKNOWN INSTANCE"
            )})
            Iris.Table({3, [Iris.Args.Table.RowBg] = true}) do
                for PropertyName, PropDetails in next, Properties do
                    Iris.Text({PropertyName})
                    Iris.NextColumn()
                    Iris.Text({PropDetails.Type})
                    Iris.NextColumn()
                    Iris.Text({tostring(PropDetails.Value)})
                    Iris.NextColumn()
                end
                Iris.End()
            end
        end
        Iris.End()
    end

    if ScriptViewer.value then
        Iris.Window({"Vortex Explorer Script Viewer", [Iris.Args.Window.NoClose] = true}, {size = Iris.State(Vector2.new(600, 575)), position = Iris.State(Vector2.new(400, 0))}) do
            if Iris.Button({"Copy Script"}).clicked then
                copy(ScriptContent)
		notify("Script Viewer","Copied To Clipboard")
            end
            local Lines = ScriptContent:split("\n")
            for I, Line in next, Lines do
                Iris.Text({Line})
            end
            Iris.End()
        end
    end
end)
else
ErrorPrompt("Invalid Index","Sorry, the PC version is currently undergoing improvements.")
end
end)

if not respon then
    ErrorPrompt("Vortex Explorer Script & Vortex Script Viewer", result)
end
end
if cmd == "gameview" then
local respon, result = pcall(function()
	notify("Injecting...","pls wait..")
        executeHTTPS("https://pastebin.com/raw/C39cfVy1")
end)

if not respon then
    ErrorPrompt("Game Viewer Script",result)
end
end
if cmd == "invisible" then
local respon, result = pcall(function()
	notify("Injecting...","pls wait..")
        executeHTTPS("https://pastebin.com/raw/8vcT5yzF")
end)

if not respon then
    ErrorPrompt("Toggle Invisible Script",result)
end
end
if cmd == "peruanito" then
local respon, result = pcall(function()
	notify("Injecting...","pls wait..")
        executeHTTPS("https://raw.githubusercontent.com/i4mitty/Peruanito.exe/main/Peruanito.exe.lua")
end)

if not respon then
    ErrorPrompt("Script Error",result)
end
end
if cmd == "astronaut" or cmd == "nogravity" then
if Astronaut then
	Astronaut:Disconnect()
	workspace.Gravity = oldgrav
	speaker.Character.Humanoid.Sit = false
end

Astronaut = UserInputService.JumpRequest:connect(function()
		wait()
		workspace.Gravity = 0
		speaker.Character.Humanoid.Sit = true
	end)
end
if cmd == "unastronaut" or cmd == "gravity" then
if Astronaut then
	Astronaut:Disconnect()
	workspace.Gravity = oldgrav
	speaker.Character.Humanoid.Sit = false
end
end
if cmd == "chatmath" or cmd == "cm" or cmd == "cmath" then --1
local var = string.sub(msg,space+1)
	SyncMath(var,"chat")
end
if cmd == "zombieattack" or cmd == "za" then
local respon, result = pcall(function()
if game.PlaceId == 1240123653 or game.PlaceId == 1632210982 then
	notify("Injecting...","pls wait..")
        executeHTTPS("https://raw.githubusercontent.com/Sidhsksjsjsh/ZombieAttack/main/OrinHub/Script.lua")
	else
        ErrorPrompt("Not Supported","the game you are playing is not supported, This command only supports Zombie Attack game")
    end
end)

if not respon then
    ErrorPrompt("Zombie Attack Error",result)
end
end
if cmd == "dance" then
local dances = {"27789359","30196114","248263260","45834924","33796059","28488254","52155728"}
	if r15(speaker) then
		dances = {"3333432454","4555808220","4049037604","4555782893","10214311282","10714010337","10713981723","10714372526","10714076981","10714392151","11444443576"}
	end
	local animation = Instance.new("Animation")
	animation.AnimationId = "rbxassetid://" .. dances[math.random(1, #dances)]
	danceTrack = speaker.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
	danceTrack.Looped = true
	danceTrack:Play()
end
if cmd == "undance" then
danceTrack:Stop()
danceTrack:Destroy()
end
if cmd == "creatorid" or cmd == "ci" then
if game.CreatorType == Enum.CreatorType.User then
		notify("Creator Id",game.CreatorId)
		--notify('Set ID','Set UserId to '..game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		notify("Creator Id",OwnerID)
		--notify('Set ID','Set UserId to '..OwnerID)
	end
end
if cmd == "copycreatorid" or cmd == "cci" or cmd == "copyci" then
if game.CreatorType == Enum.CreatorType.User then
		copy(game.CreatorId)
		notify('Copied Creator ID to Clipboard','The Creator ID is copied to the clipboard')
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		copy(OwnerID)
		notify('Copied Creator ID to Clipboard','The Creator ID is copied to ge clipboard')
	end
end
if cmd == "setcreatorid" or cmd == "sci" or cmd == "setci" then
if game.CreatorType == Enum.CreatorType.User then
		speaker.UserId = game.CreatorId
		notify('Set ID','Set UserId to '..game.CreatorId)
	elseif game.CreatorType == Enum.CreatorType.Group then
		local OwnerID = GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
		speaker.UserId = OwnerID
		notify('Set ID','Set UserId to '..OwnerID)
	end
end
-- limit
end
-- end
--if string.sub(msg,1,1) == prefix then
--ErrorPrompt("Forbidden Prefix","prefix is ​​not supported in the command bar.")
--end
end)

cmds[#cmds + 1] = {Text = "[1] " .. tostring(prefix) .. "print [text]",Title = "useless"}
cmds[#cmds + 1] = {Text = "[2] " .. tostring(prefix) .. "unrotate",Title = "disable view"}
cmds[#cmds + 1] = {Text = "[3] " .. tostring(prefix) .. "rotate",Title = "enable view"}
cmds[#cmds + 1] = {Text = "[4] " .. tostring(prefix) .. "stun",Title = "enable PlatformStand"}
cmds[#cmds + 1] = {Text = "[5] " .. tostring(prefix) .. "unstun",Title = "disable PlatformStand"}
cmds[#cmds + 1] = {Text = "[6] " .. tostring(prefix) .. "kill [username]",Title = "kill nigga🤑😍😍"}
cmds[#cmds + 1] = {Text = "[7] " .. tostring(prefix) .. "inspect [username]",Title = "view item"}
cmds[#cmds + 1] = {Text = "[?] " .. tostring(prefix) .. "[ Command Deleted ]",Title = "Deleted"}
cmds[#cmds + 1] = {Text = "[9] " .. tostring(prefix) .. "esp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[10] " .. tostring(prefix) .. "unesp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[11] " .. tostring(prefix) .. "noclip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[12] " .. tostring(prefix) .. "clip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[13] " .. tostring(prefix) .. "bang [username] [speed]",Title = "make bitches pregnant"}
cmds[#cmds + 1] = {Text = "[13] " .. tostring(prefix) .. "unbang",Title = "make bitches pregnant"}
cmds[#cmds + 1] = {Text = "[14] " .. tostring(prefix) .. "follow [username]",Title = "follow nigga or bitches"}
cmds[#cmds + 1] = {Text = "[15] " .. tostring(prefix) .. "loopgoto [username",Title = "loop tp to nigga or bitches"}
cmds[#cmds + 1] = {Text = "[16] " .. tostring(prefix) .. "looptween [username]",Title = "loop tween to bitches or nigga"}
cmds[#cmds + 1] = {Text = "[17] " .. tostring(prefix) .. "goto",Title = "tp to nigga"}
cmds[#cmds + 1] = {Text = "[18] " .. tostring(prefix) .. "walkto",Title = "moving to nigga"}
cmds[#cmds + 1] = {Text = "[19] " .. tostring(prefix) .. "tweento",Title = "tween to nigga"}
cmds[#cmds + 1] = {Text = "[20] " .. tostring(prefix) .. "unloopgoto",Title = "stop teleporting"}
cmds[#cmds + 1] = {Text = "[21] " .. tostring(prefix) .. "unfollow",Title = "stop following"}
cmds[#cmds + 1] = {Text = "[22] " .. tostring(prefix) .. "unlooptween",Title = "stop tweening"}
cmds[#cmds + 1] = {Text = "[23] " .. tostring(prefix) .. "spy [username]",Title = "spy nigga"}
cmds[#cmds + 1] = {Text = "[24] " .. tostring(prefix) .. "unspy",Title = "stop spying"}
cmds[#cmds + 1] = {Text = "[25] " .. tostring(prefix) .. "stare [username]",Title = "stare."}
cmds[#cmds + 1] = {Text = "[26] " .. tostring(prefix) .. "unstare",Title = "stop staring"}
cmds[#cmds + 1] = {Text = "[27] " .. tostring(prefix) .. "fly [speed]",Title = "Fly! WOHOO"}
cmds[#cmds + 1] = {Text = "[28] " .. tostring(prefix) .. "unfly",Title = "stop flying"}
cmds[#cmds + 1] = {Text = "[29] " .. tostring(prefix) .. "speed [speed]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[30] " .. tostring(prefix) .. "jump [jump]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[31] " .. tostring(prefix) .. "loopspeed [speed]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[32] " .. tostring(prefix) .. "unloopspeed",Title = "no text"}
cmds[#cmds + 1] = {Text = "[31] " .. tostring(prefix) .. "loopjump [jump]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[32] " .. tostring(prefix) .. "unloopjump",Title = "no text"}
cmds[#cmds + 1] = {Text = "[33] " .. tostring(prefix) .. "fling [username]",Title = "Fling target"}
cmds[#cmds + 1] = {Text = "[33] " .. tostring(prefix) .. "unfling",Title = "stops fling"}
cmds[#cmds + 1] = {Text = "[34] " .. tostring(prefix) .. "headsit [username]",Title = "sit at nigga head🤡🤙"}
cmds[#cmds + 1] = {Text = "[35] " .. tostring(prefix) .. "nosit",Title = "disable sit"}
cmds[#cmds + 1] = {Text = "[36] " .. tostring(prefix) .. "unnosit",Title = "enable sit"}
cmds[#cmds + 1] = {Text = "[37] " .. tostring(prefix) .. "sit",Title = "sit"}
cmds[#cmds + 1] = {Text = "[38] " .. tostring(prefix) .. "helicopter [none or fling or swim]",Title = "become a helicopter and destroy 2 towers😍👌"}
cmds[#cmds + 1] = {Text = "[39] " .. tostring(prefix) .. "attach [username]",Title = "attach."}
cmds[#cmds + 1] = {Text = "[40] " .. tostring(prefix) .. "enablestate [state type]",Title = "enable state like 15 (tonumber)"}
cmds[#cmds + 1] = {Text = "[41] " .. tostring(prefix) .. "disablestate [state type]",Title = "disable state like 15 (tonumber)"}
cmds[#cmds + 1] = {Text = "[42] " .. tostring(prefix) .. "rejoin",Title = "rejoin server"}
cmds[#cmds + 1] = {Text = "[43] " .. tostring(prefix) .. "delete [ra, la, rl, ll, and nolimbs]",Title = "being a person without limbs😍🤫😜"}
cmds[#cmds + 1] = {Text = "[44] " .. tostring(prefix) .. "music [id]",Title = "play music"}
cmds[#cmds + 1] = {Text = "[45] " .. tostring(prefix) .. "nomusic",Title = "stop music"}
cmds[#cmds + 1] = {Text = "[46] " .. tostring(prefix) .. "anim [id]",Title = "use ur animation"}
cmds[#cmds + 1] = {Text = "[47] " .. tostring(prefix) .. "noanim",Title = "stop ur animation"}
cmds[#cmds + 1] = {Text = "[48] " .. tostring(prefix) .. "joindate [username]",Title = "join date"}
cmds[#cmds + 1] = {Text = "[49] " .. tostring(prefix) .. "blockhats",Title = "turn all your hats and hair into squares"}
cmds[#cmds + 1] = {Text = "[50] " .. tostring(prefix) .. "blocktools",Title = "turn all your tools into squares"}
cmds[#cmds + 1] = {Text = "[51] " .. tostring(prefix) .. "faceless",Title = "remove ur face"}
cmds[#cmds + 1] = {Text = "[52] " .. tostring(prefix) .. "grabtools",Title = "Picking up any dropped tools"}
cmds[#cmds + 1] = {Text = "[53] " .. tostring(prefix) .. "ungrabtools",Title = "Picking up any dropped tools"}
cmds[#cmds + 1] = {Text = "[54] " .. tostring(prefix) .. "loopoof",Title = "spamming oof sound"}
cmds[#cmds + 1] = {Text = "[55] " .. tostring(prefix) .. "unloopoof",Title = "unspamming oof sound"}
cmds[#cmds + 1] = {Text = "[56] " .. tostring(prefix) .. "enablesl",Title = "enable shift lock"}
cmds[#cmds + 1] = {Text = "[57] " .. tostring(prefix) .. "setfpscap [number]",Title = "set fps cap"}
cmds[#cmds + 1] = {Text = "[58] " .. tostring(prefix) .. "antiteleport",Title = "enable anti teleport bypass"}
cmds[#cmds + 1] = {Text = "[59] " .. tostring(prefix) .. "discord",Title = "copy discord invite"}
cmds[#cmds + 1] = {Text = "[60] " .. tostring(prefix) .. "ip [country]",Title = "sshhhttt, I tracked this code using my website's server🤫🤫"}
cmds[#cmds + 1] = {Text = "[61] " .. tostring(prefix) .. "antifling",Title = "Prevents you from being hit by a fling"}
cmds[#cmds + 1] = {Text = "[62] " .. tostring(prefix) .. "cammode [tpp or fpp]",Title = "Camera mode."}
cmds[#cmds + 1] = {Text = "[63] " .. tostring(prefix) .. "usetool",Title = "hold the objects in your inventory"}
cmds[#cmds + 1] = {Text = "[64] " .. tostring(prefix) .. "unusetool",Title = "{}"}
cmds[#cmds + 1] = {Text = "[65] " .. tostring(prefix) .. "clogs",Title = "u can see all private message"}
cmds[#cmds + 1] = {Text = "[66] " .. tostring(prefix) .. "datalimit [number]",Title = "set data limit"}
cmds[#cmds + 1] = {Text = "[67] " .. tostring(prefix) .. "noprompt",Title = "hide all purchase prompt"}
cmds[#cmds + 1] = {Text = "[68] " .. tostring(prefix) .. "prompt",Title = "show all purchase prompt"}
cmds[#cmds + 1] = {Text = "[69] " .. tostring(prefix) .. "lay",Title = "sleep"}
cmds[#cmds + 1] = {Text = "[70] " .. tostring(prefix) .. "replicationlag",Title = "set IncomingReplicationLag"}
cmds[#cmds + 1] = {Text = "[71] " .. tostring(prefix) .. "compliment [username]",Title = "Compliment someone you like😍❤️🥰"}
cmds[#cmds + 1] = {Text = "[72] " .. tostring(prefix) .. "insult [username]",Title = "insult someone you hate😡😠🤬"}
cmds[#cmds + 1] = {Text = "[73] " .. tostring(prefix) .. "reach",Title = "increase the range of your sword"}
cmds[#cmds + 1] = {Text = "[74] " .. tostring(prefix) .. "unreach",Title = "Returns the range of the sword to its original range"}
cmds[#cmds + 1] = {Text = "[75] " .. tostring(prefix) .. "grippos [Vector3]",Title = "set GripPos tools (exp: /grippos 0,0,0)"}
cmds[#cmds + 1] = {Text = "[76] " .. tostring(prefix) .. "hovername",Title = "enable player name"}
cmds[#cmds + 1] = {Text = "[77] " .. tostring(prefix) .. "unhovername",Title = "disable player name"}
cmds[#cmds + 1] = {Text = "[78] " .. tostring(prefix) .. "fall",Title = "fall..it hurts like jumping from the top of a building"}
cmds[#cmds + 1] = {Text = "[79] " .. tostring(prefix) .. "swim",Title = "swimming like a fish😍"}
cmds[#cmds + 1] = {Text = "[80] " .. tostring(prefix) .. "unswim",Title = "disable swim"}
cmds[#cmds + 1] = {Text = "[81] " .. tostring(prefix) .. "getpos [username]",Title = "see where the position of the player"}
cmds[#cmds + 1] = {Text = "[82] " .. tostring(prefix) .. "copypos [username]",Title = "copy player position"}
cmds[#cmds + 1] = {Text = "[83] " .. tostring(prefix) .. "loopfall",Title = "'HAPPYMOD🤬😠😡'"}
cmds[#cmds + 1] = {Text = "[84] " .. tostring(prefix) .. "unloopfall",Title = "'HAPPYMOD🤬😠😡'"}
cmds[#cmds + 1] = {Text = "[85] " .. tostring(prefix) .. "spam [message]",Title = "annoy them by spamming messages."}
cmds[#cmds + 1] = {Text = "[86] " .. tostring(prefix) .. "unspam",Title = "stop spamming"}
cmds[#cmds + 1] = {Text = "[87] " .. tostring(prefix) .. "spamspeed [speed]",Title = "Set spam speed"}
cmds[#cmds + 1] = {Text = "[88] " .. tostring(prefix) .. "equiptools",Title = "equip all tools"}
cmds[#cmds + 1] = {Text = "[89] " .. tostring(prefix) .. "droptools",Title = "drop all tools"}
cmds[#cmds + 1] = {Text = "[90] " .. tostring(prefix) .. "deletehats",Title = "delete all hats"}
cmds[#cmds + 1] = {Text = "[91] " .. tostring(prefix) .. "drophats",Title = "drop all hats"}
cmds[#cmds + 1] = {Text = "[92] " .. tostring(prefix) .. "noterrain",Title = "Remove terrain"}
cmds[#cmds + 1] = {Text = "[93] " .. tostring(prefix) .. "firecd",Title = "fire click detectors"}
cmds[#cmds + 1] = {Text = "[94] " .. tostring(prefix) .. "nocdlimits",Title = "Remove fire click detectors limits"}
cmds[#cmds + 1] = {Text = "[95] " .. tostring(prefix) .. "freecam",Title = "start freecam"}
cmds[#cmds + 1] = {Text = "[96] " .. tostring(prefix) .. "freecampos",Title = "set freecam position"}
cmds[#cmds + 1] = {Text = "[97] " .. tostring(prefix) .. "fcgoto [username]",Title = "freecam someone"}
cmds[#cmds + 1] = {Text = "[98] " .. tostring(prefix) .. "unfreecam",Title = "stop freecam"}
cmds[#cmds + 1] = {Text = "[99] " .. tostring(prefix) .. "fcspeed [speed]",Title = "set freecam speed"}
cmds[#cmds + 1] = {Text = "[100] " .. tostring(prefix) .. "notifyfcpos",Title = "provide notification of your freecam position"}
cmds[#cmds + 1] = {Text = "[101] " .. tostring(prefix) .. "copyfcpos",Title = "Copy your freecam position"}
cmds[#cmds + 1] = {Text = "[102] " .. tostring(prefix) .. "show [ping, fps, chatbypass, exc, whisper, or file]",Title = "display your UI"}
cmds[#cmds + 1] = {Text = "[103] " .. tostring(prefix) .. "unshow [ping, fps, chatbypass, exc, part, whisper, or file]",Title = "remove your display fps and ping UI"}
cmds[#cmds + 1] = {Text = "[104] " .. tostring(prefix) .. "addnote [notes]",Title = "this command will add the log file to your executor folder"}
cmds[#cmds + 1] = {Text = "[105] " .. tostring(prefix) .. "parttp",Title = "Beta Command"}
cmds[#cmds + 1] = {Text = "[106] " .. tostring(prefix) .. "vfly",Title = "fly with ur car😍"}
cmds[#cmds + 1] = {Text = "[107] " .. tostring(prefix) .. "unvfly",Title = "disable vfly"}
cmds[#cmds + 1] = {Text = "[108] " .. tostring(prefix) .. "addevent [Event Name]",Title = "add ur visual event"}
cmds[#cmds + 1] = {Text = "[109] " .. tostring(prefix) .. "checkprefix",Title = "checking current refix"}
cmds[#cmds + 1] = {Text = "[110] " .. tostring(prefix) .. "addplaymusic [music id]",Title = "added autoplay of the song"}
cmds[#cmds + 1] = {Text = "[111] " .. tostring(prefix) .. "serverhop",Title = "teleport you to another server"}
cmds[#cmds + 1] = {Text = "[112] " .. tostring(prefix) .. "blacklist [username]",Title = "player blacklist"}
cmds[#cmds + 1] = {Text = "[113] " .. tostring(prefix) .. "clearblacklist",Title = "clear blacklists"}
cmds[#cmds + 1] = {Text = "[114] " .. tostring(prefix) .. "invisfling",Title = "invisible flings"}
cmds[#cmds + 1] = {Text = "[115] " .. tostring(prefix) .. "cleardevice",Title = "Reset ur device chaptca!"}
cmds[#cmds + 1] = {Text = "[116] " .. tostring(prefix) .. "friend [username]",Title = "Sent friend request"}
cmds[#cmds + 1] = {Text = "[117] " .. tostring(prefix) .. "unfriend [username]",Title = "Revoke ur friendship!"}
cmds[#cmds + 1] = {Text = "[118] " .. tostring(prefix) .. "debug",Title = "U can see all error here"}
cmds[#cmds + 1] = {Text = "[119] " .. tostring(prefix) .. "partesp [part name]",Title = "enable Part esp"}
cmds[#cmds + 1] = {Text = "[120] " .. tostring(prefix) .. "unpartesp [part name] ",Title = "disable part esp"}
cmds[#cmds + 1] = {Text = "[121] " .. tostring(prefix) .. "gotopart [part name]",Title = "teleporting you to selected part"}
cmds[#cmds + 1] = {Text = "[122] " .. tostring(prefix) .. "tweengotopart [part name]",Title = "tweening you to selected part"}
cmds[#cmds + 1] = {Text = "[123] " .. tostring(prefix) .. "gotopartdelay [number]",Title = "goto/tween delay or cooldown"}
cmds[#cmds + 1] = {Text = "[124] " .. tostring(prefix) .. "bringpart [part name]",Title = "bring selected part"}
cmds[#cmds + 1] = {Text = "[125] " .. tostring(prefix) .. "detectpart [part name]",Title = "will detect the part you selected appears"}
cmds[#cmds + 1] = {Text = "[126] " .. tostring(prefix) .. "undetectpart",Title = "turn off ur detect part"}
cmds[#cmds + 1] = {Text = "[127] " .. tostring(prefix) .. "math [value ex: 5 + 9]",Title = "use this command if u dumb at math😂"}
cmds[#cmds + 1] = {Text = "[128] " .. tostring(prefix) .. "tall",Title = "Taller"}
cmds[#cmds + 1] = {Text = "[129] " .. tostring(prefix) .. "short",Title = "short"}
cmds[#cmds + 1] = {Text = "[130] " .. tostring(prefix) .. "snipe [username or id]",Title = "Sniping player u want."}
cmds[#cmds + 1] = {Text = "[131] " .. tostring(prefix) .. "copyid [username]",Title = "copy player id"}
cmds[#cmds + 1] = {Text = "[132] " .. tostring(prefix) .. "dex",Title = "dex view client system"}
cmds[#cmds + 1] = {Text = "[133] " .. tostring(prefix) .. "rspy",Title = "remote spy"}
cmds[#cmds + 1] = {Text = "[134] " .. tostring(prefix) .. "iy",Title = "infinite yield"}
cmds[#cmds + 1] = {Text = "[135] " .. tostring(prefix) .. "config",Title = "real no clickbait😨😱"}
cmds[#cmds + 1] = {Text = "[136] " .. tostring(prefix) .. "crosshair",Title = "to help you aim at your target opponent"}
cmds[#cmds + 1] = {Text = "[137] " .. tostring(prefix) .. "animation [patrol, confident, popstar, cowboy, ghost, sneaky, princess]",Title = "flex ur animation🤭"}
cmds[#cmds + 1] = {Text = "[138] " .. tostring(prefix) .. "date",Title = "i have no idea"}
cmds[#cmds + 1] = {Text = "[139] " .. tostring(prefix) .. "animationgui",Title = "Change your character's animation style -- script from 0mar#1053"}
cmds[#cmds + 1] = {Text = "[140] " .. tostring(prefix) .. "snake",Title = "change your character into a demon snake 😨😱 -- script from 0mar#1053"}
cmds[#cmds + 1] = {Text = "[141] " .. tostring(prefix) .. "loopspeed [number]",Title = "permanent speed"}
cmds[#cmds + 1] = {Text = "[142] " .. tostring(prefix) .. "loopjump [number]",Title = "permanent jump"}
cmds[#cmds + 1] = {Text = "[143] " .. tostring(prefix) .. "unloopspeed",Title = "reset speed"}
cmds[#cmds + 1] = {Text = "[144] " .. tostring(prefix) .. "unloopjump",Title = "reset jump"}
cmds[#cmds + 1] = {Text = "[145] " .. tostring(prefix) .. "fakedata",Title = "generate ur fake acc data"}
cmds[#cmds + 1] = {Text = "[146] " .. tostring(prefix) .. "githubdata & ungithub",Title = "leak the data of the github username you typed in"}
cmds[#cmds + 1] = {Text = "[147] " .. tostring(prefix) .. "weather & unweather",Title = "find out the temperature in the country you typed in"}
cmds[#cmds + 1] = {Text = "[148] " .. tostring(prefix) .. "tptool",Title = "gives u teleport tool"}

cmds[#cmds + 1] = {Text = "[149] " .. tostring(prefix) .. "split",Title = "impostor😱"} -- 1
cmds[#cmds + 1] = {Text = "[150] " .. tostring(prefix) .. "noroot",Title = "destroy root"} -- 2
cmds[#cmds + 1] = {Text = "[151] " .. tostring(prefix) .. "reproot",Title = "replace root"} -- 3
cmds[#cmds + 1] = {Text = "[152] " .. tostring(prefix) .. "nolegs",Title = "destroy ur 2 legs"} -- 4
cmds[#cmds + 1] = {Text = "[153] " .. tostring(prefix) .. "sitwalk",Title = "walk but sit"} -- 5
cmds[#cmds + 1] = {Text = "[154] " .. tostring(prefix) .. "nolimbs",Title = "nolimbs V2"} -- 6
cmds[#cmds + 1] = {Text = "[155] " .. tostring(prefix) .. "noarms",Title = "destroy ur 2 arms"} -- 7
cmds[#cmds + 1] = {Text = "[156] " .. tostring(prefix) .. "weaken [number]",Title = "weakness"} -- 8
cmds[#cmds + 1] = {Text = "[157] " .. tostring(prefix) .. "unweaken",Title = "destroy weakness"} -- 9
cmds[#cmds + 1] = {Text = "[158] " .. tostring(prefix) .. "strengthen [number]",Title = "strong"} -- 10
cmds[#cmds + 1] = {Text = "[159] " .. tostring(prefix) .. "bundle [bundle ID]",Title = "gives u free bundle"}
cmds[#cmds + 1] = {Text = "[160] " .. tostring(prefix) .. "timeplayed",Title = "to check ur time played"}
cmds[#cmds + 1] = {Text = "[161] " .. tostring(prefix) .. "domainhub",Title = "execute domain hub script"}
cmds[#cmds + 1] = {Text = "[162] " .. tostring(prefix) .. "nowall",Title = "removed invisible wall"}
cmds[#cmds + 1] = {Text = "[163] " .. tostring(prefix) .. "spin [speed]",Title = "spinning."}
cmds[#cmds + 1] = {Text = "[164] " .. tostring(prefix) .. "unspin",Title = "stop spinning."}
cmds[#cmds + 1] = {Text = "[165] " .. tostring(prefix) .. "collide [part name]",Title = "make u walk through"}
cmds[#cmds + 1] = {Text = "[166] " .. tostring(prefix) .. "uncollide [part name]",Title = "cant make u walk through"}
cmds[#cmds + 1] = {Text = "[167] " .. tostring(prefix) .. "dpart [part name]",Title = "remove selected part"}
cmds[#cmds + 1] = {Text = "[168] " .. tostring(prefix) .. "travelto [game ID]",Title = "game teleport but travel"}
cmds[#cmds + 1] = {Text = "[169] " .. tostring(prefix) .. "loopbringpart [part name]",Title = "auto bringing all item"}
cmds[#cmds + 1] = {Text = "[170] " .. tostring(prefix) .. "unloopbringpart",Title = "stop auto bringing"}
cmds[#cmds + 1] = {Text = "[171] " .. tostring(prefix) .. "fates",Title = "execute fates admin"}
cmds[#cmds + 1] = {Text = "[172] " .. tostring(prefix) .. "looptime [number]",Title = "Looping"}
cmds[#cmds + 1] = {Text = "[173] " .. tostring(prefix) .. "unlooptime",Title = "stop looping"}
cmds[#cmds + 1] = {Text = "[174] " .. tostring(prefix) .. "time [number]",Title = "set world time"}
cmds[#cmds + 1] = {Text = "[175] " .. tostring(prefix) .. "bypass [V1 / V2 / V3 / Auto]",Title = "bypass all anti-cheat (including adonis)"}
cmds[#cmds + 1] = {Text = "[176] " .. tostring(prefix) .. "epicm",Title = "execute epic minigames script"}
cmds[#cmds + 1] = {Text = "[177] " .. tostring(prefix) .. "oldrspy",Title = "execute old remote spy script"}
cmds[#cmds + 1] = {Text = "[178] " .. tostring(prefix) .. "fling2",Title = "touch someone"}
cmds[#cmds + 1] = {Text = "[179] " .. tostring(prefix) .. "zombie",Title = "zombie script, eat em"}
cmds[#cmds + 1] = {Text = "[180] " .. tostring(prefix) .. "nofog",Title = "remove fog"}
cmds[#cmds + 1] = {Text = "[181] " .. tostring(prefix) .. "maxzoom [number]",Title = "set camera maxzoom distance"}
cmds[#cmds + 1] = {Text = "[182] " .. tostring(prefix) .. "minzoom [number]",Title = "set camera minzoom distance"}
cmds[#cmds + 1] = {Text = "[183] " .. tostring(prefix) .. "fixcam",Title = "fix ur camera"}
cmds[#cmds + 1] = {Text = "[184] " .. tostring(prefix) .. "sturdy",Title = "Get Sturdy"}
cmds[#cmds + 1] = {Text = "[185] " .. tostring(prefix) .. "emotegui",Title = "Free Emote"}
cmds[#cmds + 1] = {Text = "[186] " .. tostring(prefix) .. "fighter",Title = "Become a fighter"}
cmds[#cmds + 1] = {Text = "[187] " .. tostring(prefix) .. "esp2",Title = "enable esp v2"}
cmds[#cmds + 1] = {Text = "[188] " .. tostring(prefix) .. "orbit [username]",Title = "orbiting someone"}
cmds[#cmds + 1] = {Text = "[189] " .. tostring(prefix) .. "unorbit",Title = "stop orbiting"}
cmds[#cmds + 1] = {Text = "[190] " .. tostring(prefix) .. "orbitspeed [number]",Title = "set orbit speed"}
cmds[#cmds + 1] = {Text = "[191] " .. tostring(prefix) .. "orbitradius [number]",Title = "set orbit size or radius"}
cmds[#cmds + 1] = {Text = "[192] " .. tostring(prefix) .. "orbiteclipse [number]",Title = "set orbit eclipse"}
cmds[#cmds + 1] = {Text = "[193] " .. tostring(prefix) .. "noanim",Title = "disable ur character animation"}
cmds[#cmds + 1] = {Text = "[194] " .. tostring(prefix) .. "freezeanims",Title = "freeze ur character animation"}
cmds[#cmds + 1] = {Text = "[195] " .. tostring(prefix) .. "reanim",Title = "enable udr character animation"}
cmds[#cmds + 1] = {Text = "[196] " .. tostring(prefix) .. "unfreezeanims",Title = "unfreeze ur character animation"}
cmds[#cmds + 1] = {Text = "[197] " .. tostring(prefix) .. "stand",Title = "stand without animation and move without animation"}
cmds[#cmds + 1] = {Text = "[198] " .. tostring(prefix) .. "unstand",Title = ""}
cmds[#cmds + 1] = {Text = "[199] " .. tostring(prefix) .. "exit",Title = "take you out of the game."}
cmds[#cmds + 1] = {Text = "[200] " .. tostring(prefix) .. "infjump",Title = "Infinite jump"}
cmds[#cmds + 1] = {Text = "[201] " .. tostring(prefix) .. "btools",Title = "builder tools"}
cmds[#cmds + 1] = {Text = "[202] " .. tostring(prefix) .. "immortal",Title = "you are immortal, can't die"}
cmds[#cmds + 1] = {Text = "[203] " .. tostring(prefix) .. "headless",Title = "remove your head to make it look like a real headless"}
cmds[#cmds + 1] = {Text = "[204] " .. tostring(prefix) .. "discordusername",Title = "copy my discord username"}
cmds[#cmds + 1] = {Text = "[205] " .. tostring(prefix) .. "glitcher",Title = "Fe script work R6 and R15"}
cmds[#cmds + 1] = {Text = "[206] " .. tostring(prefix) .. "pet [hat id]",Title = "turn your accessories into pets"}
cmds[#cmds + 1] = {Text = "[207] " .. tostring(prefix) .. "clag",Title = "make the players on your server lag or crash."}
cmds[#cmds + 1] = {Text = "[208] " .. tostring(prefix) .. "netless",Title = "Fe netless"}
cmds[#cmds + 1] = {Text = "[209] " .. tostring(prefix) .. "xray",Title = "make all objects invisible so you can see through them"}
cmds[#cmds + 1] = {Text = "[210] " .. tostring(prefix) .. "unxray",Title = "make all objects visible so you cant see through them"}
cmds[#cmds + 1] = {Text = "[211] " .. tostring(prefix) .. "f3x",Title = "Fe F3X"}
cmds[#cmds + 1] = {Text = "[212] " .. tostring(prefix) .. "nameless",Title = "Fe"}
cmds[#cmds + 1] = {Text = "[213] " .. tostring(prefix) .. "speedboost",Title = "make your speed quite fast and activate the noclip"}
cmds[#cmds + 1] = {Text = "[214] " .. tostring(prefix) .. "eathats",Title = "eat your accessories"}
cmds[#cmds + 1] = {Text = "[215] " .. tostring(prefix) .. "fecheck",Title = "Check FE"}
cmds[#cmds + 1] = {Text = "[216] " .. tostring(prefix) .. "mute [plr]",Title = "mute player chat"}
cmds[#cmds + 1] = {Text = "[217] " .. tostring(prefix) .. "unmute [plr]",Title = "unmute player chat"}
cmds[#cmds + 1] = {Text = "[218] " .. tostring(prefix) .. "tempfling [plr]",Title = "fling the player until he dies"}
cmds[#cmds + 1] = {Text = "[219] " .. tostring(prefix) .. "r6",Title = "change your character rig to R6"}
cmds[#cmds + 1] = {Text = "[220] " .. tostring(prefix) .. "countpart",Title = "count all unanchored part"}
cmds[#cmds + 1] = {Text = "[221] " .. tostring(prefix) .. "antiafk",Title = "anti afk"}
cmds[#cmds + 1] = {Text = "[222] " .. tostring(prefix) .. "russiankick",Title = "russian kick animation (credit Dark Eccentric on YT)"}
cmds[#cmds + 1] = {Text = "[223] " .. tostring(prefix) .. "rtx",Title = "change your roblox graphics to be good"}
cmds[#cmds + 1] = {Text = "[224] " .. tostring(prefix) .. "psyhub",Title = "Psy Hub"}
cmds[#cmds + 1] = {Text = "[225] " .. tostring(prefix) .. "volume [number]",Title = "set the music volume"}
cmds[#cmds + 1] = {Text = "[226] " .. tostring(prefix) .. "robuxtroll",Title = ""}
cmds[#cmds + 1] = {Text = "[227] " .. tostring(prefix) .. "bombvest",Title = ""}
cmds[#cmds + 1] = {Text = "[228] " .. tostring(prefix) .. "grabv3",Title = ""}
cmds[#cmds + 1] = {Text = "[229] " .. tostring(prefix) .. "grabv4",Title = ""}
cmds[#cmds + 1] = {Text = "[230] " .. tostring(prefix) .. "anir15",Title = ""}
cmds[#cmds + 1] = {Text = "[231] " .. tostring(prefix) .. "anir6",Title = ""}
cmds[#cmds + 1] = {Text = "[232] " .. tostring(prefix) .. "arosia",Title = ""}
cmds[#cmds + 1] = {Text = "[233] " .. tostring(prefix) .. "clown",Title = ""}
cmds[#cmds + 1] = {Text = "[234] " .. tostring(prefix) .. "coolerkids",Title = ""}
cmds[#cmds + 1] = {Text = "[235] " .. tostring(prefix) .. "equinox",Title = ""}
cmds[#cmds + 1] = {Text = "[236] " .. tostring(prefix) .. "hypertotal",Title = ""}
cmds[#cmds + 1] = {Text = "[237] " .. tostring(prefix) .. "opfinality",Title = ""}
cmds[#cmds + 1] = {Text = "[238] " .. tostring(prefix) .. "ophub",Title = ""}
cmds[#cmds + 1] = {Text = "[239] " .. tostring(prefix) .. "roxploit",Title = ""}
cmds[#cmds + 1] = {Text = "[240] " .. tostring(prefix) .. "rosehub",Title = ""}
cmds[#cmds + 1] = {Text = "[241] " .. tostring(prefix) .. "sernhub",Title = ""}
cmds[#cmds + 1] = {Text = "[242] " .. tostring(prefix) .. "topk3k",Title = ""}
cmds[#cmds + 1] = {Text = "[243] " .. tostring(prefix) .. "beerus",Title = ""}
cmds[#cmds + 1] = {Text = "[244] " .. tostring(prefix) .. "ace",Title = ""}
cmds[#cmds + 1] = {Text = "[245] " .. tostring(prefix) .. "beast",Title = ""}
cmds[#cmds + 1] = {Text = "[246] " .. tostring(prefix) .. "assasin",Title = ""}
cmds[#cmds + 1] = {Text = "[247] " .. tostring(prefix) .. "dssj4",Title = ""}
cmds[#cmds + 1] = {Text = "[248] " .. tostring(prefix) .. "pathfindfollow [plr]",Title = "follow player using pathfinding"}
cmds[#cmds + 1] = {Text = "[249] " .. tostring(prefix) .. "laugh",Title = "laughing"}
cmds[#cmds + 1] = {Text = "[250] " .. tostring(prefix) .. "cheer",Title = "cherring"}
cmds[#cmds + 1] = {Text = "[251] " .. tostring(prefix) .. "point",Title = "point🤦"}
cmds[#cmds + 1] = {Text = "[252] " .. tostring(prefix) .. "sad",Title = "i lost my gf:("}
cmds[#cmds + 1] = {Text = "[253] " .. tostring(prefix) .. "unsad",Title = "Nothing."}
cmds[#cmds + 1] = {Text = "[254] " .. tostring(prefix) .. "keybind [Keybind] [Cmd name]",Title = "Fuck command"}
cmds[#cmds + 1] = {Text = "[255] " .. tostring(prefix) .. "uninfjump",Title = "disable infinite jump"}
cmds[#cmds + 1] = {Text = "[256] " .. tostring(prefix) .. "tpua [player name]",Title = "black hole"}
cmds[#cmds + 1] = {Text = "[257] " .. tostring(prefix) .. "flagwars",Title = "flag wars script"}
cmds[#cmds + 1] = {Text = "[258] " .. tostring(prefix) .. "enable [inventory / leaderboard / emotes]",Title = "enable roblox coregui"}
cmds[#cmds + 1] = {Text = "[259] " .. tostring(prefix) .. "disable [inventory / leaderboard / emotes]",Title = "disable roblox coregui"}
cmds[#cmds + 1] = {Text = "[260] " .. tostring(prefix) .. "ff [player name]",Title = "ForceField Effect"}
cmds[#cmds + 1] = {Text = "[261] " .. tostring(prefix) .. "ffcd [number]",Title = "ForceField Cooldown"}
cmds[#cmds + 1] = {Text = "[262] " .. tostring(prefix) .. "bring",Title = "bring all player to ur CFrame"}
cmds[#cmds + 1] = {Text = "[263] " .. tostring(prefix) .. "unbring",Title = "stop bring"}
cmds[#cmds + 1] = {Text = "[264] " .. tostring(prefix) .. "wfs",Title = "Weapon Fighting Simulator"}
cmds[#cmds + 1] = {Text = "[265] " .. tostring(prefix) .. "name [value]",Title = "change ur username"}
cmds[#cmds + 1] = {Text = "[266] " .. tostring(prefix) .. "displayname [value]",Title = "change ur display name"}
cmds[#cmds + 1] = {Text = "[267] " .. tostring(prefix) .. "sillysimon",Title = "Super silly simon says game script"}
cmds[#cmds + 1] = {Text = "[268] " .. tostring(prefix) .. "nccam",Title = "Noclip Camera"}
cmds[#cmds + 1] = {Text = "[269] " .. tostring(prefix) .. "ccam",Title = "clip Camera"}
cmds[#cmds + 1] = {Text = "[270] " .. tostring(prefix) .. "flytool",Title = "Fly toggle but its tool"}
cmds[#cmds + 1] = {Text = "[271] " .. tostring(prefix) .. "title [value]",Title = "give you a title"}
cmds[#cmds + 1] = {Text = "[272] " .. tostring(prefix) .. "nametag [value]",Title = "server-sided nametag?"}
cmds[#cmds + 1] = {Text = "[273] " .. tostring(prefix) .. "memory",Title = "Early-Access"}
cmds[#cmds + 1] = {Text = "[274] " .. tostring(prefix) .. "httpspy",Title = "Early-Access"}
cmds[#cmds + 1] = {Text = "[275] " .. tostring(prefix) .. "copyurl [URL sequence]",Title = "url sequence will be displayed in the console when http spy is active or triggered"}
cmds[#cmds + 1] = {Text = "[276] " .. tostring(prefix) .. "cframe [position]",Title = "Teleport to the coordination you want"}
cmds[#cmds + 1] = {Text = "[277] " .. tostring(prefix) .. "playerinfo [player name]",Title = "Show user account bio"}
cmds[#cmds + 1] = {Text = "[278] " .. tostring(prefix) .. "keypress [key]",Title = "will press the button you want like on a computer"}
cmds[#cmds + 1] = {Text = "[279] " .. tostring(prefix) .. "nols",Title = "Remove Loading Screen"}
cmds[#cmds + 1] = {Text = "[280] " .. tostring(prefix) .. "cms",Title = "Load Clicker Mining Simulator Script"}
cmds[#cmds + 1] = {Text = "[281] " .. tostring(prefix) .. "scriptview / sv / dex2",Title = "Run Vortex Explorer and Script Viewer"}
cmds[#cmds + 1] = {Text = "[282] " .. tostring(prefix) .. "gameview",Title = "test it"}
cmds[#cmds + 1] = {Text = "[283] " .. tostring(prefix) .. "invisible",Title = "toggle invisible"}
cmds[#cmds + 1] = {Text = "[284] " .. tostring(prefix) .. "peruanito",Title = "load peruanito.exe hub"}
cmds[#cmds + 1] = {Text = "[285] " .. tostring(prefix) .. "astronaut / nogravity",Title = "Float sit"}
cmds[#cmds + 1] = {Text = "[286] " .. tostring(prefix) .. "unastronaut / gravity",Title = "Normal"}
cmds[#cmds + 1] = {Text = "[287] " .. tostring(prefix) .. "chatmath / cm / cmath [value ex: 5 + 9]",Title = "AI MATHEMATICS 🖕"}
cmds[#cmds + 1] = {Text = "[288] " .. tostring(prefix) .. "zombieattack / za",Title = "Run Zombie Attack GUI"}
cmds[#cmds + 1] = {Text = "[289] " .. tostring(prefix) .. "creatorid / ci",Title = "Show Creator ID"}
cmds[#cmds + 1] = {Text = "[290] " .. tostring(prefix) .. "copycreatorid / cci / copyci",Title = "Copy Creator ID"}
cmds[#cmds + 1] = {Text = "[291] " .. tostring(prefix) .. "setcreatorid / sci /setci",Title = "Replace your account ID with the Creator ID of this game"}
cmds[#cmds + 1] = {Text = "[292] " .. tostring(prefix) .. "dance",Title = "Dances"}
cmds[#cmds + 1] = {Text = "[293] " .. tostring(prefix) .. "undance",Title = "Stop Dancing"}

_G.RemoveSymbols = {
   blank = ""
}

function Bypassedshit(word)
return word:gsub("",_G.RemoveSymbols.blank):gsub("",_G.RemoveSymbols.blank):gsub("1",_G.RemoveSymbols.blank):gsub("2",_G.RemoveSymbols.blank):gsub("3",_G.RemoveSymbols.blank):gsub("4",_G.RemoveSymbols.blank):gsub("5",_G.RemoveSymbols.blank):gsub("6",_G.RemoveSymbols.blank):gsub("7",_G.RemoveSymbols.blank):gsub("8",_G.RemoveSymbols.blank):gsub("9",_G.RemoveSymbols.blank):gsub("0",_G.RemoveSymbols.blank):gsub(tostring(prefix),_G.RemoveSymbols.blank)
end

function NoPrefix(wordbitch)
return wordbitch:gsub(tostring(prefix),_G.RemoveSymbols.blank)
end

for v = 1, #cmds do
-- for _,v in next, #cmds do
       warn(NoPrefix(tostring(cmds[v].Text)) .. " | " .. tostring(cmds[v].Title) .. "")
       newcmd(Bypassedshit(tostring(cmds[v].Text)))
end
--[[
function GetPlayer(String)
    local plr
    local strl = String:lower()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                plr = v
            end 
        end
        if String == "me" then
                plr = game.Players.LocalPlayer
            end
        if String == "" or String == " " then
           plr = nil
        end
    return plr
end
--]]
local Developer = {
      Title = "Developer:";
      Rivanda_Cheater = "Rivanda_Cheater (Tora4172#0) (YT: Entity)";
      CookieProgamming = "CookieProgamming (alt)";
}

local friend = {
      Title = "My friend who uses my admin script:";
      Daffy = "nom_boy123 (Daffy.man#0820)";
      anikazila = "anikazila (vilson#9959)";
      vilobatir = "vilobatir (vilobatir#4720)";
      iksan = "iDa7om & Iksanbaiksekali (exiy#1118)"
}

local staff = {
      _staff_Title = "staff:";
      _staff_1 = "demon_luc28 (i forgor💀#4109)";
      _staff_2 = "AdindaFood (Riri#0337)";
      _staff_3 = "";
      _staff_4 = "";
}

local moderator = {
      _mod_title = "moderator:";
      _mod_1 = "i forgor💀#4109";    
}

local partner = {
      Title = "Vortex Partner (4/5)";
      _A = "i forgor💀#4109 -> Gui/UI";
      _B = "Riri#0337 -> Admin/Command string";
      _C = "[dE]Jepin#0478 -> Idea/Script";
      _D = "XxkillerboyxX#5706 -> cmds display";
}

local CrV = staff._staff_Title .. "\n" .. staff._staff_1 .. "\n" .. staff._staff_2 .. "\n\n" .. moderator._mod_title .. "\n" .. moderator._mod_1 .. "\n\n"

local content_credit = Developer.Title .. "\n" .. Developer.Rivanda_Cheater .. "\n" .. Developer.CookieProgamming .. "\n\n" .. friend.Title .. "\n" .. friend.Daffy .. "\n" .. friend.anikazila .. "\n" .. friend.vilobatir .. "\n" .. friend.iksan .. "\n\n" .. CrV .. ""

local ContentCmds = "The command list is in the console."

warn(content_credit)

List.Parent = Content_2
List.AnchorPoint = Vector2.new(0.5, 0.5)
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 1.000
List.Position = UDim2.new(0, 1, 1, 0)
List.Size = UDim2.new(1, 0, 0, 18)
List.Font = Enum.Font.GothamBlack
List.Text = "The command list is in the console. {!}:{}"
List.TextColor3 = Color3.fromRGB(255, 255, 255)
List.TextScaled = true
List.TextSize = 14.000
List.TextTransparency = 0.500
List.TextWrapped = true

-- ProtocolSendChat()
local ProtocolDisplayName = speaker.DisplayName
local ProtocolReportCount = 0
local ProtocolBlockCount = 0

local ProtocolGetChatSystem = function(ProtocolPlayer)
ProtocolPlayer.Chatted:Connect(function(ProtocolChat)
 if string.sub(ProtocolChat,1,3) == "/e " or string.sub(ProtocolChat,1,4) == "/w " then
ProtocolChat = string.sub(ProtocolChat,4)
end
        if ProtocolChat == "REPORT" or ProtocolChat == "Report" or ProtocolChat == "report" then
            ProtocolReportCount = ProtocolReportCount+1
            notify(ProtocolReportCount .. " players have reported you. Beware of being banned!")
        end
        if ProtocolChat == "BLOCK" or ProtocolChat == "Block" or ProtocolChat == "block" then
            ProtocolBlockCount = ProtocolBlockCount+1
            notify(ProtocolBlockCount .. " Players have blocked you.")
        end
        if ProtocolChat == "" or ProtocolChat == "" or ProtocolChat == "" or ProtocolChat == "" or ProtocolChat == "" or ProtocolChat == "" then
            wait(1)
            ProtocolSendChat("")
        end
        if ProtocolChat == ProtocolDisplayName or ProtocolChat == speaker.Name or ProtocolChat == ProtocolDisplayName:lower() then -- string if they call your name using display or username
            wait(1)
            if _G.Settings.LocalBotChatFunc == true then
            ProtocolSendChat("hm?") -- roblox chat anti-detect
            else
            warning("Bot is disabled","The bot will not answer if someone calls your name.")
            end
        end
    end)
end

for _, ProtocolPlayer in pairs(Players:GetChildren()) do
     if ProtocolPlayer.ClassName == "Player" then
         ProtocolGetChatSystem(ProtocolPlayer)
     end
end


Players.PlayerAdded:Connect(function(plr)
ProtocolGetChatSystem(plr)
if ESPenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		ESP(plr)
	end
end)

-- title.Text = "Vortex UPDATE LIST: [10/07/2023] \n\n[CONTENT] \n[+] Latest UI \n[+] Added Chat AI (chatGPT) (BETA) \nlook in the console for new commands by clicking F9 \n\n[BALANCE] \n[-] Removed admin Label🖕 \n\n[EVENT] \n[?] There isn't any.. \n\n[PROMOTION / SPONSORSHIP] \n[?] There isn't any.. \n\nNeed help? dm me in discord: Tora#4172 \n\nNOTE: The command list is in the console. \nExecutor currently in use: " .. Executor() -- .. LOCAL_WEB_IP_HOST()

if speaker.Name == "Rivanda_Cheater" then
	TitlePlayer("Developer")
	NametagPlayer("[ Elite Inspector ] \n" .. tostring(speaker.DisplayName))
end
--[[
VortexUIUPDATE.WallNotification("Vortex UPDATE LIST: [11/09/2023]","[CONTENT] \n[+] Added 1 new command \nlook in the console for new commands by clicking F9 \n\n[BALANCE] \n[-] Fixed JSON response in copyurl \n\n[EVENT] \n[?] There isn't any.. \n\n[PROMOTION / SPONSORSHIP] \n[?] There isn't any.. \n\nNeed help? dm me in discord: Tora4172#0 \n\nNOTE: The command list is in the console. \nExploit User-Agent: " .. Executor(), {
    MainSettings = {
        Orientation = "Left",
        VisibleSize = UDim2.new(0.5, 0, 0.5, 0);
        HiddenSize  = UDim2.new(0, 0, 0.5, 0),
        TweenTime   = 0.8
    },
})

-- ProtocolSave(tostring(speaker.DisplayName) .. "_" .. Executor() .. ".exe", LOCAL_WEB_IP_HOST())
--[[
-- Create a tween for the intro frame to slide onto the screen
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(introFrame, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)})

-- Start the tween
tween:Play()
--]]
-- DebugPrint(':5783: Debug Error \n:4278: Attempt to index nil with "DebuggingSensorAPI"')

-- ErrorPrompt("Announcement from staff", "Roblox has released a new anti-cheat called byfron and we have bypassed that anti-cheat, relax, it will not be detected.", "OK")

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true)

function Data_AV12(PlayerSync)
local dates = {}
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[PlayerSync].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	local chatString = table.concat(dates, ', ')
	return chatString
end

local ToolDateScript = "{00/00/0000}"

--[[
local esp_settings = { ---- table for esp settings 
    textsize = 8,
    colour = 255,255,255
}
 
local gui = Instance.new("BillboardGui")
local esp = Instance.new("TextLabel",gui) ---- new instances to make the billboard gui and the textlabel
 
 
 
gui.Name = "Cracked esp"; ---- properties of the esp
gui.ResetOnSpawn = false
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
esp.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
esp.Text = ""
esp.Size = UDim2.new(0,100,0,100);
esp.BorderSizePixel = 4;
esp.BorderColor3 = Color3.new(255,255,255)
esp.BorderSizePixel = 0
esp.Font = "GothamSemibold"
esp.TextSize = 20
esp.TextColor3 = Color3.fromRGB(1,1,1) -- text colour
 
RunService.RenderStepped:Connect(function() ---- loops faster than a while loop :)
    for i,v in pairs(Players:GetPlayers()) do
        if v ~= speaker and v.Character.Head:FindFirstChild("Cracked esp")==nil then -- craeting checks for team check, local player etc
            esp.Text = "{"..v.Name.."}"
            gui:Clone().Parent = v.Character.Head
    end
end
end)
--]]
-- ErrorPrompt("ESP name","This feature is only as a trial \nautomatically turns off when time is up \n1787 minutes","OK")

UserInputService.InputBegan:Connect(function(KeyPressed)
--  if KeyPressed.KeyCode == Enum.KeyCode.R or KeyPressed.KeyCode == Enum.KeyCode.E then
--     ErrorPrompt("Bad HTTPS","Error Maintenance")
--  end
  if KeyPressed.KeyCode == Enum.KeyCode.Q then
	wait()
	TextBox:CaptureFocus()
	 spawn(function()
          Blur.Size = 7
           TweenService:Create(MainCmdbar, TweenInfo.new(0.50), {Position = UDim2.new(0.885, 0, 0.61, 0)}):Play()
	   end)
	    TweenService:Create(Main, TweenInfo.new(0.75), {Position = UDim2.new(0.9, 0, 0.652, 0)}):Play()
	end
end)

notify("UI toggle","Press Q to open the UI.")

local restnotify = true

if os.date("%m %d") == "01 01" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Selamat Tahun Baru!")
		Virtual.VirtualIcon = " 🎆 "
else
      notify("ChatGPT","Happy New Year!")
		Virtual.VirtualIcon = " 🎆 "
end
elseif os.date("%m %d") == "02 14" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","hari Valentine! ♥️💖💘")
		Virtual.VirtualIcon = " ♥️❤️ "
else
      notify("ChatGPT","Valentine Day! ♥️💖💘")
		Virtual.VirtualIcon = " ♥️❤️ "
end
elseif os.date("%m %d") == "03 08" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Selamat Hari Perempuan Internasional!")
		Virtual.VirtualIcon = " 🧖 "
else
      notify("ChatGPT","Happy International Women's day!")
		Virtual.VirtualIcon = " 🧖 "
end
elseif os.date("%m %d") == "04 01" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Asu.")
		Virtual.VirtualIcon = " 🖕 "
else
      notify("ChatGPT","April fools for assholes.")
		Virtual.VirtualIcon = " 🖕 "
end
elseif os.date("%m %d") == "05 01" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Selamat Hari Buruh Internasional!")
		Virtual.VirtualIcon = " ⛏️🔪 "
else
      notify("ChatGPT","Happy International Labor Day!")
		Virtual.VirtualIcon = " ⛏️🔪 "
end
elseif os.date("%m %d") == "12 24" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","BESOK NATAL! SEKARANG ADALAH MALAM NATAL")
		Virtual.VirtualIcon = " 🎄 "
else
      notify("ChatGPT","CHRISTMAS TOMORROW! NOW IS CHRISTMAS EVE")
		Virtual.VirtualIcon = " 🎄 "
end
elseif os.date("%m %d") == "12 25" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Merry Christmas bagi yang merayakannya!")
		Virtual.VirtualIcon = " 🎄 "
else
      notify("ChatGPT","Merry Christmas to those who celebrate it!")
		Virtual.VirtualIcon = " 🎄 "
end
elseif os.date("%m %d") == "01 29" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT | Hari ulang tahun🎉🎊","Selamat ulang tahun untuk pengembang kami, semoga Anda sehat")
		Virtual.VirtualIcon = " 🎂 "
else
      notify("ChatGPT | Birthday🎉🎊","Happy birthday to our developer, wish you good health")
		Virtual.VirtualIcon = " 🎂 "
end
elseif os.date("%m %d") == "08 17" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT","Selamat 17 Agustus untuk Indonesia! semoga menang di kontesnya")
		Virtual.VirtualIcon = " MERDEKA!"
else
      notify("ChatGPT","Happy 17th August for Indonesia! hope you win in the contest")
		Virtual.VirtualIcon = " INDEPENDENT!"
end
elseif os.date("%m %d") == "03 10" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT | Hari ulang tahun🎉🎊","Selamat ulang tahun adikku, semoga sehat selalu")
else
      notify("ChatGPT | Birthday🎉🎊","Happy birthday to my sister, wish you good health")
end
elseif os.date("%m %d") == "02 15" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT | Hari ulang tahun🎉🎊","Selamat ulang tahun staff kami, semoga sehat selalu")
		Virtual.VirtualIcon = " 🎂🛠️ "
else
      notify("ChatGPT | Birthday🎉🎊","Happy birthday to our staff, wish you good health")
		Virtual.VirtualIcon = " 🎂🛠️ "
end
elseif os.date("%m %d") == "10 05" then
   if GetRegionPlayer() == "Indonesia" then
      notify("ChatGPT | Hari ulang tahun🎉🎊","Selamat ulang tahun untuk Desainer UI kami, semoga Anda sehat")
		Virtual.VirtualIcon = " 🎂 "
else
      notify("ChatGPT | Birthday🎉🎊","Happy birthday to our UI Designer, wish you good health")
		Virtual.VirtualIcon = " 🎂 "
end
else
	Virtual.VirtualIcon = " " .. Executor()
end

_G.RGB = {
   R = 0,
   G = 0,
   B = 0
}
-- BackgroundColor3 Color3.fromRGB
RunService.RenderStepped:Connect(function()
Title.BackgroundColor3 = Color3.fromRGB(math.floor(((math.sin(workspace.DistributedGameTime/2)/2)+0.5)*255),math.floor(((math.sin(workspace.DistributedGameTime)/2)+0.5)*255),math.floor(((math.sin(workspace.DistributedGameTime*1.5)/2)+0.5)*255))
Title.TextColor3 = Color3.fromRGB(math.floor(((math.sin(workspace.DistributedGameTime/2)/2)+0.5)*255),math.floor(((math.sin(workspace.DistributedGameTime)/2)+0.5)*255),math.floor(((math.sin(workspace.DistributedGameTime*1.5)/2)+0.5)*255))
end)

local friendsingame = 0
game.Players.PlayerAdded:Connect(function(Player)
if speaker:IsFriendsWith(Player.UserId) then
friendsingame = friendsingame + 1
friendsonline = #speaker:GetFriendsOnline()
info("Friend Joined","Your friend " .. tostring(Player) .. " has joined the game \nFriends in game: " .. friendsingame .. " \nFriends online: " .. friendsonline)
-- print(friendsingame..' are in this server')
end
end)

-- identify_Label_Script
-- Phase1.Text                    = "Vortex Admin | Status: Online | Current version: " .. tostring(SOSKWKWK)
ChangeSizeInterface(Phase1,UDim2.new(0, #identify_Label_Script * 12, 0, 30))
wait(0.1)
local dogshitlen = string.len(identify_Label_Script)
for i=1,dogshitlen do
    Phase1.Text                    = string.sub(identify_Label_Script,1,i)
    wait(0.001)
end

Players.PlayerRemoving:Connect(function(Player)
if ESPenabled or COREGUI:FindFirstChild(tostring(Player) .. '_LC') then
		for i,v in pairs(COREGUI:GetChildren()) do
			if v.Name == tostring(Player) .. '_ESP' or v.Name == tostring(Player) .. '_LC' or v.Name == tostring(Player) .. '_CHMS' then
				v:Destroy()
			end
		end
	end
if speaker:IsFriendsWith(Player.UserId) then
friendsingame = friendsingame + -1
if friendsingame < 0 then
friendsingame = 0
end
end
end)
-- DebugPrint(':5783: Debug Error \n:4278: Attempt to index nil with "DebuggingSensorAPI"')
--[[
speaker.PlayerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.ChildAdded:Connect(function(msg)
   msg.TextLabel.TextColor3 = Color3.new(0, 255, 0)
end)

if COREGUI:FindFirstChild("BubbleChat") then
   COREGUI.BubbleChat.DescendantAdded:Connect(function(bubble)
     bubble.Parent.BackgroundColor3 = Color3.new(1, 0.85098, 0)
   end)
end
]]
getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' or child:FindFirstChild('MessageArea') or child.MessageArea:FindFirstChild("ErrorFrame") then
        child:Destroy()
	warning("ErrorPrompt GUI","Successfully removed the GUI with the name 'ErrorPrompt'.")
	warning("Disconnected","Client Disconnected, Rejoining... (please wait 1 sec)")
	wait(1)
        RejoinServer()
    end
end)

if table.find({Enum.Platform.IOS, Enum.Platform.Android}, UserInputService:GetPlatform()) then
   _G.Settings.device = "Mobile"
else
   _G.Settings.device = "PC"
end

--Alert("Lua Injection | Banwaves","Roblox has officially started their banwaves, I recommend you use VPN and alt accounts \n• Currently every other Android cheat is detected\n• join our discord server for the latest updates on anti-cheat bypass","👍🏻👌🏻",true)


--[[

local _L = {}
_L.timestamp = tick()

function onScriptLoaded()
    info("Loaded!","Loaded in " .. string.format("%.5f", tick() - _L.timestamp) .. " seconds.")
end

if game:IsLoaded() then
    onScriptLoaded()
end
--]]
-- Anticheat_Bypass()
