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
      RemovePaused = false,
}

if not game:IsLoaded() then
    local MessageCore = Instance.new("Message", Workspace)
    MessageCore.Text = "Vortex is waiting for the game to load"
    game.Loaded:Wait()
    MessageCore.Text = "game loaded successfully"
    wait(0.5)
    MessageCore:Destroy()
end
local a = "Vortex Admin"
local b = "PrefixFile.lua"
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

function noKick()
if _G.Settings.kick == false then
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

function Pause()
if _G.Settings.RemovePaused == true then
game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(false)
end
end

noKick()
Pause()

-- Define the GUI
local settingsGui = Instance.new("ScreenGui")
settingsGui.Name = "SettingsGui"
settingsGui.Parent = game.Players.LocalPlayer.PlayerGui
settingsGui.ResetOnSpawn = false

local hub_q = Instance.new("TextLabel")
hub_q.Name = "TitleLabel"
hub_q.Position = UDim2.new(0.5, -150, 0.5, -100)
hub_q.Size = UDim2.new(0, 300, 0, 200)
hub_q.Text = ""
hub_q.TextColor3 = Color3.new(1, 1, 1)
hub_q.BackgroundTransparency = 1
hub_q.Parent = settingsGui
hub_q.Visible = false

local mainFrame = Instance.new("ScrollingFrame")
mainFrame.Name = "MainFrame"
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Parent = hub_q
mainFrame.Visible = false

local LocalInterface = Instance.new("TextLabel")
LocalInterface.Name = "TitleLabel"
LocalInterface.Position = UDim2.new(0, 0, 0, 10)
LocalInterface.Size = UDim2.new(1, 0, 0, 20)
LocalInterface.Text = "Admin Settings (BETA) | sup, " .. tostring(game.Players.LocalPlayer.DisplayName)
LocalInterface.TextColor3 = Color3.new(1, 1, 1)
LocalInterface.BackgroundTransparency = 1
LocalInterface.Parent = mainFrame

local musicLabel = Instance.new("TextLabel")
musicLabel.Name = "A1"
musicLabel.Position = UDim2.new(0, 20, 0, 50)
musicLabel.Size = UDim2.new(0, 80, 0, 20)
musicLabel.Text = "anti-kick"
musicLabel.TextColor3 = Color3.new(1, 1, 1)
musicLabel.BackgroundTransparency = 1
musicLabel.Parent = mainFrame

local UIButton = Instance.new("TextButton") -- pos: 0.25, 0, 0, 80 | Size: 0.25, 0, 0, 80
UIButton.Name = "A2"
UIButton.Position = UDim2.new(0.25, 0, 0, 50)
UIButton.Size = UDim2.new(0.5, 0, 0, 20)
UIButton.Text = "false"
UIButton.TextColor3 = Color3.new(1, 1, 1)
UIButton.BackgroundTransparency = 1
UIButton.Parent = mainFrame

local soundLabel = Instance.new("TextLabel")
soundLabel.Name = "A3"
soundLabel.Position = UDim2.new(0, 20, 0, 70)
soundLabel.Size = UDim2.new(0, 80, 0, 20)
soundLabel.Text = "Gameplay paused"
soundLabel.TextColor3 = Color3.new(1, 1, 1)
soundLabel.BackgroundTransparency = 1
soundLabel.Parent = mainFrame

local UIButton_2 = Instance.new("TextButton") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_2.Name = "A4"
UIButton_2.Position = UDim2.new(0.25, 0, 0,70)
UIButton_2.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_2.Text = "false"
UIButton_2.TextColor3 = Color3.new(1, 1, 1)
UIButton_2.BackgroundTransparency = 1
UIButton_2.Parent = mainFrame

local prefix = Instance.new("TextLabel")
prefix.Name = "A3"
prefix.Position = UDim2.new(0, 20, 0, 90)
prefix.Size = UDim2.new(0, 80, 0, 20)
prefix.Text = "prefix"
prefix.TextColor3 = Color3.new(1, 1, 1)
prefix.BackgroundTransparency = 1
prefix.Parent = mainFrame

local UIButton_3 = Instance.new("TextBox") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_3.Name = "A4"
UIButton_3.Position = UDim2.new(0.25, 0, 0,90)
UIButton_3.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_3.Text = _G.Settings.prefix
UIButton_3.TextColor3 = Color3.new(1, 1, 1)
UIButton_3.BackgroundTransparency = 1
UIButton_3.Parent = mainFrame

local ESPCOLOR = Instance.new("TextLabel")
ESPCOLOR.Name = "A3"
ESPCOLOR.Position = UDim2.new(0, 20, 0, 110)
ESPCOLOR.Size = UDim2.new(0, 80, 0, 20)
ESPCOLOR.Text = "ESP color"
ESPCOLOR.TextColor3 = Color3.new(1, 1, 1)
ESPCOLOR.BackgroundTransparency = 1
ESPCOLOR.Parent = mainFrame

local UIButton_4 = Instance.new("TextBox") -- pos: 0.25, 0, 0, 140 | Size: 0.5, 0, 0, 20
UIButton_4.Name = "A4"
UIButton_4.Position = UDim2.new(0.25, 0, 0,110)
UIButton_4.Size = UDim2.new(0.5, 0, 0, 20)
UIButton_4.Text = "Lime green"
UIButton_4.TextColor3 = Color3.new(1, 1, 1)
UIButton_4.BackgroundTransparency = 1
UIButton_4.Parent = mainFrame

local LocalCloseInterface = Instance.new("TextButton")
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
       _G.Settings.EspColor = UIButton_4.Text
       UIButton_4.Text = _G.Settings.EspColor
       saveSettings()
   end
end)

UIButton.MouseButton1Down:Connect(function()
_G.Settings.kick = not _G.Settings.kick
UIButton.Text = _G.Settings.kick
noKick()
saveSettings()
end)

UIButton_2.MouseButton1Down:Connect(function()
_G.Settings.RemovePaused = not _G.Settings.RemovePaused
UIButton_2.Text = _G.Settings.RemovePaused
Pause()
saveSettings()
end)


local cmds = {}
local speaker = game.Players.LocalPlayer
local Players = game.Players
local GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local COREGUI = game:GetService("CoreGui")
local ESPenabled = false
local Mouse = speaker:GetMouse()
local FLYING = false
local QEfly = true
local iyflyspeed = 1
local vehicleflyspeed = 1
local flinging = false
local Asset = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
local oofing = false
local TeleportService = game:GetService("TeleportService")
local httprequest = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request)
local CharInject = true
local NetworkClient = game:GetService("NetworkClient")
local currentToolSize = ""
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
local Character = speaker.Character
local Blur = Instance.new("BlurEffect", game.Lighting)
Blur.Size = 0 -- 12
local GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
local U1                         = Instance.new('TextButton', GUI_MAIN)
local U2                         = Instance.new('TextButton', U1)
local U3                         = Instance.new('TextButton', U1)
local U4                         = Instance.new('TextButton', U1)
-- toggle vfly:
local U5                         = Instance.new('TextButton', GUI_MAIN)
local U6                         = Instance.new('TextButton', U5)
local TextBar                         = Instance.new('TextBox', GUI_MAIN)
local BarSent                         = Instance.new('TextButton', TextBar)
local TextBarExecutor                         = Instance.new('TextBox', GUI_MAIN)
local BarButtonExecute                         = Instance.new('TextButton', TextBarExecutor)

GUI_MAIN.Name                      = "Fly_Controller"

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
TextBar.Draggable = true

BarSent.Size                    = UDim2.new(0,200,0,30)
BarSent.BackgroundTransparency  = 0.5
BarSent.BackgroundColor         = BrickColor.new('Fossil')
BarSent.BorderSizePixel         = 0
BarSent.Position                = UDim2.new(0.5,-100,0,30)
BarSent.Text                    = "Sent!"
BarSent.TextColor3              = Color3.new(1,1,1)
BarSent.TextStrokeTransparency  = 1
BarSent.TextWrapped             = true
BarSent.FontSize                = 'Size24'
BarSent.Font                    = 'SourceSansBold'

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
TextBarExecutor.Draggable = true

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

U1.Size                    = UDim2.new(0,200,0,30)
U1.BackgroundTransparency  = 0.5
U1.BackgroundColor         = BrickColor.new('Fossil')
U1.BorderSizePixel         = 0
U1.Position                = UDim2.new(0.5,-100,0,0)
U1.Text                    = "↑"
U1.TextColor3              = Color3.new(1,1,1)
U1.TextStrokeTransparency  = 1
U1.TextWrapped             = true
U1.FontSize                = 'Size24'
U1.Font                    = 'SourceSansBold'
U1.Draggable = true

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
U5.Position                = UDim2.new(0.5,-100,0,0)
U5.Text                    = "↑"
U5.TextColor3              = Color3.new(1,1,1)
U5.TextStrokeTransparency  = 1
U5.TextWrapped             = true
U5.FontSize                = 'Size24'
U5.Font                    = 'SourceSansBold'
U5.Draggable = true

U6.Size                    = UDim2.new(0,200,0,30)
U6.BackgroundTransparency  = 0.5
U6.BackgroundColor         = BrickColor.new('Fossil')
U6.BorderSizePixel         = 0
U6.Position                = UDim2.new(0.5,-100,0,30)
U6.Text                    = "↓"
U6.TextColor3              = Color3.new(1,1,1)
U6.TextStrokeTransparency  = 1
U6.TextWrapped             = true
U6.FontSize                = 'Size24'
U6.Font                    = 'SourceSansBold'

U1.Visible = false
U2.Visible = false
U3.Visible = false
U4.Visible = false
U5.Visible = false
U6.Visible = false

function RotationData(RDataImg)
local DataAnimate = Instance.new('ScreenGui', game.CoreGui)
local OBU = Instance.new('ImageLabel', DataAnimate)


DataAnimate.Name = "><"


OBU.Size = UDim2.new(0,150,0,150)
OBU.BackgroundTransparency = 0.5
OBU.BackgroundColor = BrickColor.new('Fossil')
OBU.BorderSizePixel = 0
OBU.Position = UDim2.new(0.5,-100,0,0)
OBU.Image = "rbxassetid://" .. RDataImg
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
Rotation_A1:Play()
Rotation_A1.Completed:Wait()
Rotation_A2:Play()
Rotation_A2.Completed:Wait()
Rotation_A3:Play()
Rotation_A3.Completed:Wait()
Rotation_A4:Play()
Rotation_A4.Completed:Wait()
Rotation_Stop:Play()
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

RotationData("13030104160")

function ForceBodyPart()
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end
end


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

function SyncBypassChat(BypassWord)
local chat = BypassWord
    local tabl = {}
    for i = 1, #chat do
        local chara = chat:sub(i,i)
        if string.lower(chara) == "a" then
            chara = "á"
        elseif string.lower(chara) == "o" then
            chara = "ồ"
        elseif string.lower(chara) == "i" then
            chara = "ì"
        elseif string.lower(chara) == "u" then
            chara = "ú"
        elseif string.lower(chara) == "e" then
            chara = "ệ"
        elseif string.lower(chara) == "d" then
            chara = "đ"
        elseif string.lower(chara) == "y" then
            chara = "ỷ"
	elseif string.lower(chara) == " " then
            chara = " "
	elseif string.lower(chara) == "" then
            chara = "{?}"
        end
        table.insert(tabl, chara)
    end
    chat = ""
    for i,v in pairs(tabl) do
        chat = chat..v
    end
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chat, "All")
end

BarSent.MouseButton1Down:Connect(function()
     SyncBypassChat(TextBar.Text)
end)

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
		end
	else
		partEspTrigger:Disconnect()
		partEspTrigger = nil
	end
end

-- [[

-- ]]

function DebugPrint(SynText)
print(SynText)
    end

function getstring(begin)
	local start = begin-1
	local AA = '' for i,v in pairs(cargs) do
		if i > start then
			if AA ~= '' then
				AA = AA .. ' ' .. v
			else
				AA = AA .. v
			end
		end
	end
	return AA
end

function ProtocolCheck(FileName)
    isfile(FileName)     
end


function Tall()
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

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
local Humanoid = Character:FindFirstChildOfClass("Humanoid")

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
Domain.Avatarjoin.Size = UDim2.new(0, 18, 0, 18)
Domain.Avatarjoin.Image = "rbxasset://13030062874"

Domain.UICorner_67.CornerRadius = UDim.new(1, 20)
Domain.UICorner_67.Parent = Domain.Avatarjoin

function notify(A1)
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

function executeHTTPS(_link_)
     local respon, result = pcall(function()
     loadstring(_link_)()
     end)
     
     if not respon then
     notify(result)
     end
end

BarButtonExecute.MouseButton1Down:Connect(function()
     executeHTTPS(game:HttpGet(TextBarExecutor))
end)

-- TextBarExecutor.Visible = true
-- BarButtonExecute.Visible = true

function copy(txt)
	local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
	if clipBoard then
           setclipboard(txt)
	else
	   notify("your exploit doesnt have ability to use clipboard, Bad exploit🤣😂")
    end
end

function ProtocolSave(FileName, Config)
	local file = writefile
	if file then
          writefile(FileName, Config)
	else
	  notify("your exploit doesnt have ability to use writefile, Bad exploit🤣😂")
    end
end

function ProtocolRead(FileName)
        readfile(FileName)
end

function SyncMath(math_1, ProtocolMath, math_2)
     if ProtocolMath == "+" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultPlus = 0
	ExecuteResultPlus = SyncNumber_1 + SyncNumber_2
	notify(SyncNumber_1 .. " + " .. SyncNumber_2 .. " = " .. ExecuteResultPlus)
    end
     if ProtocolMath == "*" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultMultiplication = 0
	ExecuteResultMultiplication = SyncNumber_1 * SyncNumber_2
	notify(SyncNumber_1 .. " * " .. SyncNumber_2 .. " = " .. ExecuteResultMultiplication)
    end
     if ProtocolMath == "/" then
        local SyncNumber_1 = math_1
	local SyncNumber_2 = math_2
	local ExecuteResultMisc = 0
	ExecuteResultMisc = SyncNumber_1 / SyncNumber_2
	notify(SyncNumber_1 .. " * " .. SyncNumber_2 .. " = " .. ExecuteResultMisc)
    end
end

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

notify("welcome, " .. speaker.DisplayName .. " To vortex admin")

local IP_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

local IP_one_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9"}

function IP(country)
     notify("Currently getting " .. country .. " country IP... please wait")
       local IP_Address = IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)]
        copy(IP_Address)
     notify("IP code: '" .. IP_Address .. "', country: '" .. country .. "'. The IP has been copied to your keyboard")
end

function ProtocolSendChat(ProtocolChatService)
local args = {
    [1] = ProtocolChatService,
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end

        function RejoinServer()
    if #game.Players:GetPlayers() <= 1 then
        game.Players.LocalPlayer:Kick("\nRejoining...")
        wait()
        game:GetService('TeleportService'):Teleport(game.PlaceId, game.Players.LocalPlayer)
    else
        game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
end

function isNumber(str)
	if tonumber(str) ~= nil or str == 'inf' then
		return true
	end
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

function CameraMode(ModeType)
       if ModeType == "fpp" then
           speaker.CameraMode = "LockFirstPerson"
       end
       if ModeType == "tpp" then
           speaker.CameraMode = "Classic"
end
       if not ModeType == "tpp" and ModeType == "fpp" then
           notify("Camera mode not found, mode: " .. ModeType)
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

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

function tools(plr)
	if plr:FindFirstChildOfClass("Backpack"):FindFirstChildOfClass('Tool') or plr.Character:FindFirstChildOfClass('Tool') then
		return true
	end
end

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
    local respon, result = pcall(function()
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
    end)
    
    if not respon then
    DebugPrint(result)
    end
end

function StartServerhop()
	local ServerChecker = CheckServers()
	if ServerChecker == "Protocol:cantfind" then
	notify("We couldn't find a server")
	end
	if ServerChecker == "Protocol:found" then
	notify("Joining server " .. tostring(ServerSize_A777))
	end
	wait(1)
	local Check2 = Serverhop()
	if Check2 == "Protocol:cantfind" then
	notify("We couldn't find a server")
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
      local Current_Ping = string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] .. "ms"
      UI_A1.Text = tostring(Current_Ping)
end

function ProtocolLoopFPS(Frame)
      UI_A2.Text = Frame
end

RunService.RenderStepped:Connect(function(frame)
        ProtocolLoopPING()
	ProtocolLoopFPS(math.round(1/frame))
end)

function DisplayUI(UIname)
      if UIname == "ping" then
      UI_A1.Visible = true
   end
      if UIname == "fps" then
      UI_A2.Visible = true
   end
      if UIname == "chatbypass" then
      TextBar.Visible = true
      BarSent.Visible = true
   end
      if UIname == "exc" then
      TextBarExecutor.Visible = true
      BarButtonExecute.Visible = true
   end
      if UIname == "all" then
      UI_A1.Visible = true
      UI_A2.Visible = true
      TextBar.Visible = true
      BarSent.Visible = true
      TextBarExecutor.Visible = true
      BarButtonExecute.Visible = true
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
   end
   if UIname == "exc" then
      TextBarExecutor.Visible = false
      BarButtonExecute.Visible = false
   end
      if UIname == "all" then
      UI_A1.Visible = false
      UI_A2.Visible = false
      TextBar.Visible = false
      BarSent.Visible = false
      TextBarExecutor.Visible = false
      BarButtonExecute.Visible = false
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
VIPTextLabel.Text = "Access Denied. Error 100"
VIPTextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
VIPTextLabel.Size = UDim2.new(1, 0, 1, 0)
VIPTextLabel.Parent = VIPFrame

function EditFlingNotify(VIPEditText)
	VIPTextLabel.Text = VIPEditText
end

local MusicName = ""
function music(idmusic)
sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://" .. idmusic
sound.Volume = 1
sound.Parent = game:GetService("SoundService")
sound.Looped = true
sound:Play()
local id = string.match(sound.SoundId, "rbxasset://sounds.+") or string.match(sound.SoundId, "&hash=.+") or string.match(sound.SoundId, "%d+")

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
ServiceStart = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(AnimService)
ServiceStart:Play()
ServiceStart:AdjustSpeed(1)
local id = string.match(AnimService.AnimationId, "rbxasset://sounds.+") or string.match(AnimService.AnimationId, "&hash=.+") or string.match(AnimService.AnimationId, "%d+")

local Asset = game:GetService("MarketplaceService"):GetProductInfo(id)

_AnimName = Asset.Name
end


function respawn(plr)
	if invisRunning then TurnVisible() end
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
		notify("Tool Required","You need to have an item in your inventory to use this command","Yes","No","")
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
		notify("Tool Required","You need to have an item in your inventory to use this command","Yes","No","")
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
     local textstring = {
    [1] = compliment[math.random(1, #compliment)],
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(textstring))
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
     local textstring = {
    [1] = ProtocolPlayer .. "" .. tostring(insult[math.random(1, #insult)]),
    [2] = "All"
}


game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(textstring))
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
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
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
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
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
hi.SoundId = "http://www.roblox.com/asset/?id=165113352"
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
					Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
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
							TextLabel.Text = 'Name: '..plr.Name..' \nHealth: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' \nStuds: '..pos..' meters'
							end
							if pos > 999 then
							TextLabel.Text = 'Name: '..plr.Name..' \nHealth: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' \nStuds: '..pos..' km'
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

local prefix = _G.Settings.prefix
speaker.Chatted:Connect(function(msg)
msg = msg:lower()
if string.sub(msg,1,3) == "/e " then
msg = string.sub(msg,4)
end
if string.sub(msg,1,1) == prefix then
local cmd
local space = string.find(msg," ")
if space then
cmd = string.sub(msg,2,space-1)
else
cmd = string.sub(msg,2)
end

if cmd == "print" then
local var = string.sub(msg,space+1)
print(var)
end
if cmd == "reset" then
game.Players.LocalPlayer.Character:BreakJoints()
notify("Reset Character")
end
if cmd == "respawn" then
respawn(speaker)
notify("Respawning")
end
if cmd == "refresh" then
refresh(speaker)
notify("Refreshing")
end
if cmd == "unrotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
notify("Rotate disabled")
end
if cmd == "rotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
notify("Rotate enabled")
end
if cmd == "stun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
notify("PlatformStand enabled")
end
if cmd == "unstun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
notify("PlatformStand disabled")
end
if cmd == "kill" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

kill(speaker,Players[var])
notify("kill " .. var)
end
if cmd == "inspect" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

GuiService:CloseInspectMenu()
		GuiService:InspectPlayerFromUserId(Players[var].UserId)
notify("inspect " .. var .. " (" .. Players[var].Userid .. ")")
end
if cmd == "bring" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local Target = var

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
notify("bring " .. var)
end
if cmd == "esp" then
ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				ESP(v)
			end
		end
notify("ESP enabled")
end
if cmd == "unesp" then
ESPenabled = false
	for i,c in pairs(COREGUI:GetChildren()) do
		if string.sub(c.Name, -4) == '_ESP' then
			c:Destroy()
		end
	end
notify("ESP disabled")
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
notify("noclip enabled")
end
if cmd == "clip" then
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
notify("noclip disabled")
end
if cmd == "bang" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://148840371"
track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
track:Play()
track:AdjustSpeed(10)
local function Looptp()
local bangOffet = CFrame.new(0, 0, 1.1)
local otherRoot = getTorso(Players[var].Character)
				getRoot(Players.LocalPlayer.Character).CFrame = otherRoot.CFrame * bangOffet
end
    RapeStart = RunService.Stepped:Connect(Looptp)
notify("Banging: " .. var)
end
if cmd == "unbang" then
if RapeStart then
		RapeStart:Disconnect()
                track:Stop()
		Anim:Destroy()
		notify("Stop Banging")
	end
end
if cmd == "follow" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local function Loopwalk()
speaker.Character.Humanoid:MoveTo(Players[var].Character.HumanoidRootPart.Position)
end
    Follow = RunService.Stepped:Connect(Loopwalk)
notify("Following " .. var)
end
if cmd == "loopgoto" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local function Looptp()
speaker.Character.HumanoidRootPart.CFrame = Players[var].Character.HumanoidRootPart.CFrame - Players[var].Character.HumanoidRootPart.CFrame.LookVector*0
end
    Loopgoto = RunService.Stepped:Connect(Looptp)
notify("loop go to " .. var)
end
if cmd == "looptween" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local function TweenTo()
local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 


{CFrame = CFrame.new(Players[var].Character.HumanoidRootPart.Position)}):Play()
end
    LoopTween = RunService.Stepped:Connect(TweenTo)
notify("Loop tweening to " .. var)
end
if cmd == "goto" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

speaker.Character.HumanoidRootPart.CFrame = Players[var].Character.HumanoidRootPart.CFrame - Players[var].Character.HumanoidRootPart.CFrame.LookVector*0
notify("teleporting to " .. var)
end
if cmd == "tweento" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local TweenService = game:GetService("TweenService")
local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 


{CFrame = CFrame.new(Players[var].Character.HumanoidRootPart.Position)}):Play()
notify("tweening to " .. var)
end
if cmd == "walkto" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

speaker.Character.Humanoid:MoveTo(Players[var].Character.HumanoidRootPart.Position)
notify("walk to " .. var)
end
if cmd == "unfollow" then
if Follow then
		Follow:Disconnect()
end
notify("follow disabled")
end
if cmd == "unloopgoto" then
if Loopgoto then
		Loopgoto:Disconnect()
end
notify("loopgoto disabled")
end
if cmd == "unlooptween" then
if LoopTween then
		LoopTween:Disconnect()
end
notify("looptween disabled")
end
if cmd == "fly" then
if _G.Settings.device == "" then
local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
game.StarterGui:SetCore("SendNotification", {
Title = Title;
Text = Text;
Icon = "";
Duration = Duration;
Button1 = Button1Text;
Button2 = Button2Text;
Callback = NotificationBindable;
})
end


NotificationBindable.OnInvoke = function(result)
if result == "Mobile" then
        _G.Settings.device = "Mobile"
	saveSettings()
        NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
	notify("FLY enabled for mobile devices")
   end
   if result == "PC" then
        _G.Settings.device = "PC"
	saveSettings()
        NOFLY()
	wait()
	sFLY()
        notify("FLY enabled for PC devices")
   end
end
Msgreq("Device CAPTCHA","What device are you using?",999999999,"Mobile","PC")
end
if _G.Settings.device == "Mobile" then
NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
	notify("FLY enabled for mobile devices")
end
if _G.Settings.device == "PC" then
NOFLY()
	wait()
	sFLY()
        notify("FLY enabled for PC devices")
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

	if _G.Settings.device == "" then
local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
game.StarterGui:SetCore("SendNotification", {
Title = Title;
Text = Text;
Icon = "";
Duration = Duration;
Button1 = Button1Text;
Button2 = Button2Text;
Callback = NotificationBindable;
})
end


NotificationBindable.OnInvoke = function(result)
if result == "Mobile" then
        _G.Settings.device = "Mobile"
	saveSettings()
        NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
	notify("INVISIBLE FLING enabled for mobile devices, RESET and type " .. prefix .. "unfly to hide controller")
   end
   if result == "PC" then
        _G.Settings.device = "PC"
	saveSettings()
        NOFLY()
	wait()
	sFLY()
        notify("INVISIBLE FLING enabled for PC devices")
   end
end
Msgreq("Device CAPTCHA","What device are you using?",999999999,"Mobile","PC")
end
	if _G.Settings.device == "Mobile" then
NOFLY()
	wait()
	sFLY()
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
	notify("INVISIBLE FLING enabled for mobile devices")
end
if _G.Settings.device == "PC" then
NOFLY()
	wait()
	sFLY()
        notify("INVISIBLE FLING enabled for PC devices")
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
notify("FLY disabled")
end
if cmd == "vfly" then
if _G.Settings.device == "" then
local NotificationBindable = Instance.new("BindableFunction")
local Msgreq = function(Title,Text,Duration,Button1Text,Button2Text)
game.StarterGui:SetCore("SendNotification", {
Title = Title;
Text = Text;
Icon = "";
Duration = Duration;
Button1 = Button1Text;
Button2 = Button2Text;
Callback = NotificationBindable;
})
end


NotificationBindable.OnInvoke = function(result)
if result == "Mobile" then
        _G.Settings.device = "Mobile"
	saveSettings()
        NOFLY()
	wait()
	sFLY(true)
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
	notify("VEHICLE FLY enabled for mobile devices")
   end
   if result == "PC" then
        _G.Settings.device = "PC"
	saveSettings()
        NOFLY()
	wait()
	sFLY(true)
        notify("VEHICLE FLY enabled for PC devices")
   end
end
Msgreq("Device CAPTCHA","What device are you using?",999999999,"Mobile","PC")
end
if _G.Settings.device == "Mobile" then
NOFLY()
	wait()
	sFLY(true)
	U1.Visible = true
        U2.Visible = true
        U3.Visible = true
        U4.Visible = true
        notify("VEHICLE FLY enabled for mobile devices")
end
if _G.Settings.device == "PC" then
NOFLY()
	wait()
	sFLY(true)
        notify("VEHICLE FLY enabled for PC devices [Control' Q, E]")
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
notify("VEHICLE FLY disabled")
end
if cmd == "speed" then
local var = string.sub(msg,space+1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = var
notify("Current speed: " .. var)
end
if cmd == "jump" then
local var = string.sub(msg,space+1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = var
notify("Current jump: " .. var)
end
if cmd == "fling" then
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
	flingDied = speaker.Character:FindFirstChildOfClass('Humanoid').Died:Connect(flingDiedF)
	repeat
		bambam.AngularVelocity = Vector3.new(0,99999,0)
		wait(.2)
		bambam.AngularVelocity = Vector3.new(0,0,0)
		wait(.1)
	until flinging == false
notify("fling enabled")
end
if cmd == "unfling" then
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
notify("fling disabled")
end
if cmd == "headsit" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

if headSit then headSit:Disconnect() end
		game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit = true
		headSit = RunService.Heartbeat:Connect(function()
			if game.Players:FindFirstChild(game.Players[var].Name) and game.Players[var].Character ~= nil and getRoot(game.Players[var].Character) and getRoot(game.Players.LocalPlayer.Character) and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').Sit == true then
				getRoot(game.Players.LocalPlayer.Character).CFrame = getRoot(game.Players[var].Character).CFrame * CFrame.Angles(0,math.rad(0),0)* CFrame.new(0,1.6,0.4)
			else
				headSit:Disconnect()
			end
		end)
notify("sitting on the " .. var .. " head")
end
if cmd == "spy" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

viewing = Players[var]
		workspace.CurrentCamera.CameraSubject = viewing.Character
		local function viewDiedFunc()
			repeat wait() until Players[var].Character ~= nil and getRoot(Players[var].Character)
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewDied = Players[var].CharacterAdded:Connect(viewDiedFunc)
		local function viewChangedFunc()
			workspace.CurrentCamera.CameraSubject = viewing.Character
		end
		viewChanged = workspace.CurrentCamera:GetPropertyChangedSignal("CameraSubject"):Connect(viewChangedFunc)
		AppearData("13040492999")
notify("Spying " .. var)
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
	AppearData("13040492999")
notify("Spying turned off")
end
if cmd == "cmds" then
RotationData("13040482767")
notify("ERROR")
end
if cmd == "nosit" then
local function DISABLESIT()
      game.Players.LocalPlayer.Character.Humanoid.Sit = false
end
    NositCmd = RunService.Stepped:Connect(DISABLESIT)
notify("sit disabled")
end
if cmd == "unnosit" then
if NositCmd then
     NositCmd:Disconnect()
end
notify("sit enabled")
end
if cmd == "sit" then
game.Players.LocalPlayer.Character.Humanoid.Sit = true
notify("sit XD")
end
if cmd == "helicopter" then
local var = string.sub(msg,space+1)
Helicopter(var)
notify("Helicopter mode: " .. var)
end
if cmd == "attach" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

attach(speaker,Players[var])
notify("attached: " .. var)
end
if cmd == "enablestate" then
local var = string.sub(msg,space+1)
local x = var
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[var]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, true)
notify("state enabled, current state: " .. var)
end
if cmd == "disablestate" then
local var = string.sub(msg,space+1)
local x = var
	if not tonumber(x) then
		local x = Enum.HumanoidStateType[var]
	end
	speaker.Character:FindFirstChildOfClass("Humanoid"):SetStateEnabled(x, false)
notify("state disabled")
end
if cmd == "rejoin" then
local respon, result = pcall(function()
notify("Rejoining...")
wait()
RejoinServer()
end)

if not respon then
DebugPrint(result)
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

speaker.Character[BodyPart[var]]:Destroy()
notify("Deleting parts: " .. tostring(BodyPart[var]))
end
if cmd == "music" then
local var = string.sub(msg,space+1)
local OfficialMusic = {
       ["paradisefalls"] = 1837879082,
       ["stadiumrave"] = 1846368080,
       ["crabrave"] = 5410086218,
       ["hijacket"] = 1842559618,
       ["wonderfullday"] = 1843382633,
       ["bloodpop"] = 6823597327,
       ["sunrise"] = 1837324500
}

local T1 = "Paradise Falls"
local T2 = "Stadium Rave"
local T3 = "Crab Rave"
local T4 = "Hijacket"
local T5 = "Wonderfull Day"
local T6 = "Blood Pop"
local T7 = "Sunrise Workout"

local MusicText = {
       ["paradisefalls"] = T1,
       ["stadiumrave"] = T2,
       ["crabrave"] = T3,
       ["hijacket"] = T4,
       ["wonderfullday"] = T5,
       ["bloodpop"] = T6,
       ["sunrise"] = T7
}

music(var or OfficialMusic[var])
notify("now playing " .. var .. " (" .. tostring(MusicName or MusicText[var]) .. ")")
end
if cmd == "nomusic" then
sound.Volume = 0
notify("music disabled")
end
if cmd == "anim" then
local var = string.sub(msg,space+1)
_Anims(var)
notify("now playing animation " .. var .. " (" .. tostring(_AnimName) .. ")")
end
if cmd == "noanim" then
AnimService:Stop()
ServiceStart:Destroy()
notify("animation disabled")
end
if cmd == "joindate" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local dates = {}
	notify("Hold on a sec")
		local user = game:HttpGet("https://users.roblox.com/v1/users/"..Players[var].UserId)
		local json = HttpService:JSONDecode(user)
		local date = json["created"]:sub(1,10)
		local splitDates = string.split(date,"-")
		table.insert(dates,Players[var].Name.." joined: "..splitDates[2].."/"..splitDates[3].."/"..splitDates[1])
	local chatString = table.concat(dates, ', ')
	notify(chatString)
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

	notify("Picking up any dropped tools")
end
if cmd == "ungrabtools" then
if grabtoolsFunc then 
		grabtoolsFunc:Disconnect() 
	end

	notify("Grabtools has been disabled")
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
	notify("Shift lock is now available")
end
if cmd == "setfpscap" then
local var = string.sub(msg,space+1)
if setfpscap then
		local num = var or 1e6
		if num == 'none' then
			return setfpscap(1e6)
		elseif num > 0 then
			return setfpscap(num)
		else
			return notify("Please provide a number above 0 or 'none'.")
		end
	else
		return notify("Your exploit does not support this command (missing setfpscap)")
	end
end
if cmd == "antiteleport" then
if not hookmetamethod then 
		return notify("Your exploit does not support this command (missing hookmetamethod)")
	end
	local TeleportService = TeleportService
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == TeleportService then
			if method:lower() == "teleport" then
				return notify("Expected ':' not '.' calling member function Kick")
			elseif method == "TeleportToPlaceInstance" then
				return notify("Expected ':' not '.' calling member function TeleportToPlaceInstance")
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

	notify("Client anti teleport is now active (only effective on localscript teleport)")
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
VIPFrame.Visible = true
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
		local function PlayerAdded(Player)
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
	
			CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
			Player.CharacterAdded:Connect(CharacterAdded)
			Services.RunService.Heartbeat:Connect(function()
				if (Character and Character:IsDescendantOf(workspace)) and (PrimaryPart and PrimaryPart:IsDescendantOf(Character)) then
					if PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or PrimaryPart.AssemblyLinearVelocity.Magnitude > 100 then
						if Detected == false then
							warn("be carefull!")
							EditFlingNotify("Fling Exploit detected, Player: " .. tostring(Player))
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
	
					warn("you were flung")
					EditFlingNotify("You were flung. Neutralizing velocity.")
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
local function Tool_Service_UV75()
   for i,v in pairs(speaker.Backpack:GetChildren()) do
       v:Activate()
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
loadstring(game:HttpGet("https://pastebin.com/raw/CB3Jghvb"))()
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
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

ProtocolResponse("compliment",var)
end
if cmd == "insult" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

ProtocolResponse("insult",var)
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
notify("Swimming enabled")
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
notify("Swimming disabled")
end
if cmd == "getpos" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local char = Players[var].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify("Getposition Error, Missing character")
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		notify("Current Position " .. roundedPos)
end
if cmd == "copypos" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local char = Players[var].Character
		local pos = char and (getRoot(char) or char:FindFirstChildWhichIsA("BasePart"))
		pos = pos and pos.Position
		if not pos then
			return notify("Getposition Error, Missing character")
		end
		local roundedPos = math.round(pos.X) .. ", " .. math.round(pos.Y) .. ", " .. math.round(pos.Z)
		copy(roundedPos)
                notify("copied")
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
workspace:FindFirstChildOfClass('Terrain'):Clear()
end
if cmd == "firecd" then
local var = string.sub(msg,space+1)
        if var then
            local name = var
            for _, descendant in ipairs(workspace:GetDescendants()) do
                if descendant:IsA("ClickDetector") and descendant.Name == name then
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
end
if cmd == "freecampos" then
local var = string.sub(msg,space+1)
if not var then return end
	local freecamPos = CFrame.new(var)
	StartFreecam(freecamPos)
end
if cmd == "fcgoto" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

StartFreecam(getRoot(Players[var].Character).CFrame)
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
		notify("Current Position: " .. tostring(Format("%s, %s, %s", Round(X), Round(Y), Round(Z))))
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
notify("notes are saved to your executor folder.")
end
if cmd == "parttp" then
loadstring(game:HttpGet("https://pastebin.com/raw/aYRmhsMG"))()
end
if cmd == "savemusic" then
notify("Sorry, this command has been temporarily disabled and is currently being tested")
end
if cmd == "addevent" then
local var = string.sub(msg,space+1)
StatusBAR(var)
end
if cmd == "checkprefix" then
notify("prefix: '" .. tostring(prefix) .. "'")
end
if cmd == "addplaymusic" then
local var = string.sub(msg,space+1)
_G.Settings.music = var
saveSettings()
ShakeData("13030078632")
end
if cmd == "serverhop" then
local respon, result = pcall(function()
StartServerhop()
end)

if not respon then
DebugPrint(result)
end
end
if cmd == "blacklist" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

_G.Settings.Blacklist = var
_G.Settings.BlacklistCount = _G.Settings.BlacklistCount + 1
if _G.Settings.BlacklistCount > 1 then
_G.Settings.BlacklistCount = 1
_Announcement("You can only blacklist a player once")
else
_Announcement("Successfull Blacklisted!")
saveSettings()
end
end
if cmd == "clearblacklist" then
_G.Settings.Blacklist = ""
_G.Settings.BlacklistCount = 0
_Announcement("Blacklist cleared!")
saveSettings()
end
if cmd == "cleardevice" then
_G.Settings.device = ""
saveSettings()
end
if cmd == "friend" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local respon, result = pcall(function()
local playerIsAlrFriend = Players:FindFirstChild(var)
if playerIsAlrFriend then
    local isFriend = speaker:IsFriendsWith(playerIsAlrFriend.UserId)
    if isFriend then
        notify("You are already friends with " .. var)
        return
    end
end

Players:RequestFriendship(var)
notify("Friend request sent to " .. var)
end)

if not respon then
DebugPrint(result)
ShakeData("13040484705")
end
end
if cmd == "unfriend" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

local respon, result = pcall(function()
Players:RevokeFriendship(var)
notify("you are no longer friends with " .. var)
end)

if not respon then
DebugPrint(result)
ShakeData("13040484705")
end
end
if cmd == "debug" then
notify("unsupported command")
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
			v.CFrame = getRoot(speaker.Character).CFrame
		end
	end
end
if cmd == "gotopartdelay" then
local var = string.sub(msg,space+1)
local gtpDelay = var or 0.1
	if isNumber(gtpDelay) then
		gotopartDelay = gtpDelay
	else
		notify("Number ONLY!")
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
local SyncType_1 = string.sub(msg,space+1)
local SyncType_2 = string.sub(msg,space+2)
local SyncType_3 = string.sub(msg,space+3)
SyncMath(SyncType_1, SyncType_2, SyncType_3)
end
if cmd == "tall" then
Tall()
end
if cmd == "short" then
Short()
end
if cmd == "snipe" then
local SyncArgs = string.sub(msg,space+1)
if SyncArgs[1] == nil then
            return
        end
        local Thumbnail = ""
        local UserID = 0
        local PlaceID = 0
        if string.find(SyncArgs[1], "%a") then
            local UserInfo = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.roblox.com/users/get-by-username?username="..SyncArgs[1], true))
            if UserInfo["success"] == false then
                notify("Failed!, Invalid username")
                return
            end
            UserID = UserInfo.Id
        else -- by userID
            UserID = SyncArgs
        end
        local ThumbnailInfo = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://www.roblox.com/headshot-thumbnail/json?userId="..UserID.."&width=48&height=48&format=png", true))
        if string.find(ThumbnailInfo.Url, "t0.rbxcdn.com") then
            notify("Failed!, Invalid UserID, or, API failed to return valid image")
            return
        else
            Thumbnail = ThumbnailInfo.Url
        end
        if SyncArgs[2] == nil then
            notify("No PlaceID, defaulting to current place id...")
            PlaceID = game.PlaceId
        elseif tonumber(SyncArgs[2]) ~= nil and not string.find(SyncArgs[2], "%a") then
            PlaceID = SyncArgs[2]
        else
            notify("Failed!, Invalid PlaceID")
            return
        end
        local Check = game:HttpGet("https://www.roblox.com/games/getgameinstancesjson?placeId="..tostring(PlaceID).."&startIndex=0",true)
        if string.find(string.lower(Check), "permission") then
            notify("Failed!, Lacking permissions for API? (Try again maybe)")
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
            notify("Failed!, Game had no servers")
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
                        notify("Failed!, Server full!")
                        return
                    else
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ServerID, game.Players.LocalPlayer)
                        FoundPlayer = true
                    end
                end
            end
        end
        if FoundPlayer == true then
            notify("Success!, Teleporting to player's game...")
        else
            notify("Failed!, Player isn't in game")
        end
end
if cmd == "copyid" then
local var = string.sub(msg,space+1)
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

copy("" .. Players[var].UserId .. "")
notify("Copied to clipboard")
end
if cmd == "dex" then
local respon, result = pcall(function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)

if not respon then
notify(result)
end
end
if cmd == "rspy" then
local respon, result = pcall(function()
loadstring(game:HttpGet("https://pastebin.com/raw/0XkSXRhy"))()
end)

if not respon then
notify(result)
end
end
if cmd == "iy" then
local respon, result = pcall(function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

if not respon then
notify(result)
end
end
if cmd == "config" then
hub_q.Visible = true
end
-- limits
end
end)
-- + 1
cmds[#cmds + 1] = {Text = "[1] " .. tostring(prefix) .. "print [text]",Title = "useless"}
cmds[#cmds + 1] = {Text = "[2] " .. tostring(prefix) .. "unrotate",Title = "disable view"}
cmds[#cmds + 1] = {Text = "[3] " .. tostring(prefix) .. "rotate",Title = "enable view"}
cmds[#cmds + 1] = {Text = "[4] " .. tostring(prefix) .. "stun",Title = "enable PlatformStand"}
cmds[#cmds + 1] = {Text = "[5] " .. tostring(prefix) .. "unstun",Title = "disable PlatformStand"}
cmds[#cmds + 1] = {Text = "[6] " .. tostring(prefix) .. "kill [username]",Title = "kill nigga🤑😍😍"}
cmds[#cmds + 1] = {Text = "[7] " .. tostring(prefix) .. "inspect [username]",Title = "view item"}
cmds[#cmds + 1] = {Text = "[8] " .. tostring(prefix) .. "bring [username]",Title = "bring nigga to ur position"}
cmds[#cmds + 1] = {Text = "[9] " .. tostring(prefix) .. "esp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[10] " .. tostring(prefix) .. "unesp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[11] " .. tostring(prefix) .. "noclip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[12] " .. tostring(prefix) .. "clip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[13] " .. tostring(prefix) .. "bang [username]",Title = "make bitches pregnant"}
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
cmds[#cmds + 1] = {Text = "[33] " .. tostring(prefix) .. "fling",Title = "Troll"}
cmds[#cmds + 1] = {Text = "[33] " .. tostring(prefix) .. "unfling",Title = "stop flinging"}
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
cmds[#cmds + 1] = {Text = "[59] " .. tostring(prefix) .. "support",Title = "copy discord invite"}
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
cmds[#cmds + 1] = {Text = "[102] " .. tostring(prefix) .. "show [ping, fps, chatbypass, or exc]",Title = "display your fps and ping UI"}
cmds[#cmds + 1] = {Text = "[103] " .. tostring(prefix) .. "unshow [ping, fps, chatbypass, or exc]",Title = "remove your display fps and ping UI"}
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
cmds[#cmds + 1] = {Text = "[123] " .. tostring(prefix) .. "gotopartdelay [number] ",Title = "goto/tween delay or cooldown"}
cmds[#cmds + 1] = {Text = "[124] " .. tostring(prefix) .. "bringpart [part name] ",Title = "bring selected part"}
cmds[#cmds + 1] = {Text = "[125] " .. tostring(prefix) .. "detectpart [part name] ",Title = "will detect the part you selected appears"}
cmds[#cmds + 1] = {Text = "[126] " .. tostring(prefix) .. "undetectpart ",Title = "turn off ur detect part"}
cmds[#cmds + 1] = {Text = "[127] " .. tostring(prefix) .. "math [number + or / or * number] ",Title = "use this command if u dumb at math😂"}
cmds[#cmds + 1] = {Text = "[128] " .. tostring(prefix) .. "tall ",Title = "Taller"}
cmds[#cmds + 1] = {Text = "[129] " .. tostring(prefix) .. "short ",Title = "short"}
cmds[#cmds + 1] = {Text = "[130] " .. tostring(prefix) .. "snipe [username or id] ",Title = "Sniping player u want."}
cmds[#cmds + 1] = {Text = "[131] " .. tostring(prefix) .. "copyid [username] ",Title = "copy player id"}
cmds[#cmds + 1] = {Text = "[132] " .. tostring(prefix) .. "dex ",Title = "dex view client system"}
cmds[#cmds + 1] = {Text = "[133] " .. tostring(prefix) .. "rspy",Title = "remote spy"}
cmds[#cmds + 1] = {Text = "[134] " .. tostring(prefix) .. "iy ",Title = "infinite yield"}
cmds[#cmds + 1] = {Text = "[135] " .. tostring(prefix) .. "config ",Title = "real no clickbait😨😱"}

for v = 1, #cmds do
-- for _,v in next, #cmds do
       warn(tostring(cmds[v].Text) .. " | " .. tostring(cmds[v].Title) .. "")
       end

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

local Developer = {
      Title = "Developer:";
      Rivanda_Cheater = "Rivanda_Cheater (C4#4172) (YT: Entity)";
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

local content_credit = Developer.Title .. "\n" .. Developer.Rivanda_Cheater .. "\n" .. Developer.CookieProgamming .. "\n\n" .. friend.Title .. "\n" .. friend.Daffy .. "\n" .. friend.anikazila .. "\n" .. friend.vilobatir .. "\n" .. friend.iksan .. "\n\n" .. CrV .. "" .. partner.Title .. "\n" .. partner._A .. "\n" .. partner._B .. "\n" .. partner._C ..  "\n" .. partner._D

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
        if ProtocolChat == "AYO" or ProtocolChat == "YO" or ProtocolChat == "AY" or ProtocolChat == "ayo" or ProtocolChat == "ay" or ProtocolChat == "yo" then
            wait(1)
            ProtocolSendChat("")
        end
        if ProtocolChat == ProtocolDisplayName or ProtocolChat == speaker.Name then -- string if they call your name using display or username
            wait(1)
            ProtocolSendChat("what?") -- roblox chat anti-detect
        end
    end)
end

Players.PlayerAdded:Connect(function(plr)
if ESPenabled then
		repeat wait(1) until plr.Character and getRoot(plr.Character)
		ESP(plr)
	end
end)

for _, ProtocolPlayer in pairs(Players:GetChildren()) do
     if ProtocolPlayer.ClassName == "Player" then
         ProtocolGetChatSystem(ProtocolPlayer)
     end
end

-- Define variables
local introGui = Instance.new("ScreenGui")
local introFrame = Instance.new("Frame")
local closeButton = Instance.new("TextButton")
local title = Instance.new("TextLabel")

-- Set up the intro GUI
introGui.Name = "IntroGui"
introGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Set up the intro frame
introFrame.Name = "IntroFrame"
introFrame.Size = UDim2.new(1, 0, 1, 0)
introFrame.Position = UDim2.new(0, 0, 0, 0)
introFrame.BackgroundColor3 = Color3.new(1, 1, 1)
introFrame.Parent = introGui

title.Name = "Text"
title.Text = "Vortex UPDATE LIST: [18/04/2023] \n\n[CONTENT] \n[+] added 'iy', 'rspy' and 'dex command \n[+] added 'config' command?😱 \nlook in the console for new commands by clicking F9 \n\n[BALANCE] \n[-] Fix some bugs \n[-] fixed the execute button doesn't appear \n[-] fixed invalid url \n\nNeed help? add my discord: C4#4172 \n\nNOTE: The command list is in the console."
title.Size = UDim2.new(1, 0, 1, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.BackgroundColor3 = Color3.new(0, 0, 0)
title.TextColor3 = Color3.new(1, 1, 1)
title.Parent = introFrame

-- Set up the close button
closeButton.Name = "CloseButton"
closeButton.Text = "Close"
closeButton.Size = UDim2.new(0, 200, 0, 50)
closeButton.Position = UDim2.new(0.5, -100, 0.9, 0)
closeButton.BackgroundColor3 = Color3.new(0, 0, 0)
closeButton.TextColor3 = Color3.new(1, 1, 1)
closeButton.Parent = introFrame

-- Set up the close button's functionality
closeButton.MouseButton1Click:Connect(function()
    -- Create a tween for the intro frame to slide offscreen
    local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    local tween = game:GetService("TweenService"):Create(introFrame, tweenInfo, {Position = UDim2.new(0, 0, 1, 0)})
    
    -- Start the tween and destroy the intro GUI when it's finished
    tween:Play()
    tween.Completed:Connect(function()
        introGui:Destroy()
    end)
end)

-- Create a tween for the intro frame to slide onto the screen
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tween = game:GetService("TweenService"):Create(introFrame, tweenInfo, {Position = UDim2.new(0, 0, 0, 0)})

-- Start the tween
tween:Play()

-- DebugPrint(':5783: Debug Error \n:4278: Attempt to index nil with "DebuggingSensorAPI"')

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,true)

if _G.Settings.music == 0 or nil then
	notify("You didn't add any music.")
else
music(tostring(_G.Settings.music))
	notify("Now playing (AUTO PLAY): " .. MusicName)
end

DebugPrint(':5783: Debug Error \n:4278: Attempt to index nil with "DebuggingSensorAPI"')

local groupId = 123456
local staffRanks = { 123 }
local devRanks = { 123 }
local modRanks = { 123 }
local partnerRanks = { 123 }


local gameName = Asset.Name

local function searchGroups(gameName)
    local url = "https://groups.roblox.com/v1/groups/search?keyword=" .. HttpService:UrlEncode(gameName)
    local response = HttpService:GetAsync(url)
    local groups = HttpService:JSONDecode(response).data
    return groups
end

local function getGroupId(gameName)
    local groups = searchGroups(gameName)
    if groups and #groups > 0 then
        return groups[1].id
    end
end

local groupName = getGroupId(gameName)
if groupName then
    print("Group ID for game \n'" .. gameName .. "'\n: '" .. groupName .. "'")
    groupId = groupName
else
    print("No group found for game '" .. gameName .. "'.")
end

local function getRankIds(groupId)
    local ranks = game:GetService("GroupService"):GetGroupRoleListAsync(groupId)
    local staffRankId, developerRankId, moderatorRankId
    for _, rank in ipairs(ranks) do
        if rank.Name == "Staff" then
            staffRankId = rank.Rank
        elseif rank.Name == "Developer" then
            developerRankId = rank.Rank
        elseif rank.Name == "Moderator" then
            moderatorRankId = rank.Rank
        elseif rank.Name == "Partner" then
            partnerRankId = rank.Rank
        end
    end
    return staffRankId, developerRankId, moderatorRankId, partnerRankId
end

-- Test the script
local staffRankId, developerRankId, moderatorRankId = getRankIds(groupId)
if staffRankId and developerRankId and moderatorRankId then
    print("Rank ID for Staff: " .. staffRankId)
    print("Rank ID for Developer: " .. developerRankId)
    print("Rank ID for Moderator: " .. moderatorRankId)
    staffRanks = { staffRankId }
    devRanks = { developerRankId }
    modRanks = { developerRankId }
else
    print("Could not find all required ranks.")
end

-- here
local staffInGame = {}
local devInGame = {}
local modInGame = {}

game.Players.PlayerAdded:Connect(function(player)
    local inGroup = false
    local rank = 0

    local success, result = pcall(function()
        return player:GetRankInGroup(groupId)
    end)

    if success then
        inGroup = true
        rank = result
    end

    if inGroup and table.find(staffRanks, rank) then
        notify(player.Name .. " Staff detected! Disables all commands you run.")
        staffInGame[player] = true
        -- add your code for detecting staff here
    end
    if inGroup and table.find(devRanks, rank) then
        notify(player.Name .. " Owner detected! Disables all commands you run.")
        devInGame[player] = true
        -- add your code for detecting staff here
    end
end)

game.Players.PlayerRemoving:Connect(function(player)
    if staffInGame[player] then
        print(player.Name .. " The staff has left the game.")
        staffInGame[player] = nil
        -- add your code for handling staff leaving here
    end
    if devInGame[player] then
        print(player.Name .. " The owner has left the game.")
        devInGame[player] = nil
        -- add your code for handling staff leaving here
    end
    if modInGame[player] then
        print(player.Name .. " The moderator has left the game.")
        modInGame[player] = nil
        -- add your code for handling staff leaving here
    end
end)

local DevJoin = {"Rivanda_Cheater", "CookieProgamming"} -- Replace with the usernames of your admins
