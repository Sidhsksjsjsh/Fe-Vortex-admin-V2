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

function copy(txt)
       setclipboard(txt)
end

function ProtocolSave(FileName, Config)
         writefile(FileName, Config)
end

function ProtocolRead(FileName)
        readfile(FileName)
end

function ProtocolCheck(FileName)
    isfile(FileName)     
end

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
Domain.Textjoin.Size = UDim2.new(0.685603261, 0, 0.5, 0)
Domain.Textjoin.Font = Enum.Font.GothamBold
Domain.Textjoin.Text = "Your friend, usernameusername has joined the server"
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
Domain.Avatarjoin.Size = UDim2.new(0.150188312, 0, 0.606190205, 0)
Domain.Avatarjoin.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
Domain.Avatarjoin.Visible = false

Domain.UICorner_67.CornerRadius = UDim.new(1, 20)
Domain.UICorner_67.Parent = Domain.Avatarjoin

function notify(A1)
Domain.FriendJoined.Visible = true
    Domain.FriendJoined.Size = UDim2.new(0,0,0.195,0)
    Domain.FriendJoined.Textjoin.Text = A1
    Domain.FriendJoined.Textjoin.TextTransparency = 1
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

notify("welcome, " .. speaker.DisplayName .. " To vortex admin")
wait(1)
notify("The command list is in the console.")

local IP_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"}

local IP_one_number = {"1", "2", "3", "4", "5", "6", "7", "8", "9"}

function IP(country)
     notify("Currently getting " .. country .. " country IP... please wait")
       local IP_Address = IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "" .. IP_number[math.random(1, #IP_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)] .. "." .. IP_one_number[math.random(1, #IP_one_number)]
        copy(IP_Address)
     notify("IP code: '" .. IP_Address .. "', country: '" .. country .. "'. The IP has been copied to your keyboard")
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

local MusicName = ""
function music(idmusic)
sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://" .. idmusic
sound.Volume = 1
sound.Parent = game:GetService("SoundService")
sound.Looped = true
sound:Play()
local id = string.match(sound.SoundId, "rbxasset://sounds.+") or string.match(sound.SoundId, "&hash=.+") or string.match(sound.SoundId, "%d+")

Asset = game:GetService("MarketplaceService"):GetProductInfo(id)

MusicName = Asset.Name
end

local _AnimName = ""
function _Anims(id)
AnimService = Instance.new("Animation")
AnimService.AnimationId = "rbxassetid://" .. id
ServiceStart = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(AnimService)
ServiceStart:Play()
ServiceStart:AdjustSpeed(1)
local id = string.match(AnimService.AnimationId, "rbxasset://sounds.+") or string.match(AnimService.AnimationId, "&hash=.+") or string.match(AnimService.AnimationId, "%d+")

Asset = game:GetService("MarketplaceService"):GetProductInfo(id)

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

local prefix = "/"
local LPlayer = game.Players.LocalPlayer
LPlayer.Chatted:Connect(function(msg)
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

Target = var

NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
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


{CFrame = CFrame.new(Players[var].Character.humanoidRootPart.Position)}):Play()
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


{CFrame = CFrame.new(Players[var].Character.humanoidRootPart.Position)}):Play()
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
NOFLY()
	wait()
	sFLY()
notify("FLY enabled")
end
if cmd == "unfly" then
NOFLY()
notify("FLY disabled")
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
notify("Spying turned off")
end
if cmd == "cmds" then
SourceUITemplate.Visible = true
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
notify("Rejoining...")
wait(1)
RejoinServer()
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
if cmd == "swim" then
Workspace.Gravity = 0
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
notify("swimming enabled")
end
if cmd == "unswim" then
Workspace.Gravity = 198
speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
notify("swimming disabled")
end
if cmd == "music" then
local var = string.sub(msg,space+1)
music(var)
notify("now playing " .. var .. " (" .. tostring(MusicName) .. ")")
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
				return error("Expected ':' not '.' calling member function Kick", 2)
			elseif method == "TeleportToPlaceInstance" then
				return error("Expected ':' not '.' calling member function TeleportToPlaceInstance", 2)
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
prefix = var
end
if cmd == "saveprefix" then
if ProtocolCheck("Vortex-Prefix.json") then
notify("file save failed because previous file already exists.")
else
ProtocolSave("Vortex-Prefix.json", prefix)
end
end
if cmd == "antifling" then
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
							notify("Fling Exploit detected, Player: " .. tostring(Player))
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
					notify("You were flung. Neutralizing velocity.")
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
-- limits
end
end)
-- + 1
cmds[#cmds + 1] = {Text = "[1] /print [text]",Title = "useless"}
cmds[#cmds + 1] = {Text = "[2] /unrotate",Title = "disable view"}
cmds[#cmds + 1] = {Text = "[3] /rotate",Title = "enable view"}
cmds[#cmds + 1] = {Text = "[4] /stun",Title = "enable PlatformStand"}
cmds[#cmds + 1] = {Text = "[5] /unstun",Title = "disable PlatformStand"}
cmds[#cmds + 1] = {Text = "[6] /kill [username]",Title = "kill nigga🤑😍😍"}
cmds[#cmds + 1] = {Text = "[7] /inspect [username]",Title = "view item"}
cmds[#cmds + 1] = {Text = "[8] /bring [username]",Title = "bring nigga to ur position"}
cmds[#cmds + 1] = {Text = "[9] /esp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[10] /unesp",Title = "know where a nigga hide"}
cmds[#cmds + 1] = {Text = "[11] /noclip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[12] /clip",Title = "everyone: Happymod LOL🤡"}
cmds[#cmds + 1] = {Text = "[13] /bang [username]",Title = "make bitches pregnant"}
cmds[#cmds + 1] = {Text = "[13] /unbang",Title = "make bitches pregnant"}
cmds[#cmds + 1] = {Text = "[14] /follow [username]",Title = "follow nigga or bitches"}
cmds[#cmds + 1] = {Text = "[15] /loopgoto [username",Title = "loop tp to nigga or bitches"}
cmds[#cmds + 1] = {Text = "[16] /looptween [username]",Title = "loop tween to bitches or nigga"}
cmds[#cmds + 1] = {Text = "[17] /goto",Title = "tp to nigga"}
cmds[#cmds + 1] = {Text = "[18] /walkto",Title = "moving to nigga"}
cmds[#cmds + 1] = {Text = "[19] /tweento",Title = "tween to nigga"}
cmds[#cmds + 1] = {Text = "[20] /unloopgoto",Title = "stop teleporting"}
cmds[#cmds + 1] = {Text = "[21] /unfollow",Title = "stop following"}
cmds[#cmds + 1] = {Text = "[22] /unlooptween",Title = "stop tweening"}
cmds[#cmds + 1] = {Text = "[23] /spy [username]",Title = "spy nigga"}
cmds[#cmds + 1] = {Text = "[24] /unspy",Title = "stop spying"}
cmds[#cmds + 1] = {Text = "[25] /stare [username]",Title = "stare."}
cmds[#cmds + 1] = {Text = "[26] /unstare",Title = "stop staring"}
cmds[#cmds + 1] = {Text = "[27] /fly [speed]",Title = "Fly! WOHOO"}
cmds[#cmds + 1] = {Text = "[28] /unfly",Title = "stop flying"}
cmds[#cmds + 1] = {Text = "[29] /speed [speed]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[30] /jump [jump]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[31] /loopspeed [speed]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[32] /unloopspeed",Title = "no text"}
cmds[#cmds + 1] = {Text = "[31] /loopjump [jump]",Title = "no text"}
cmds[#cmds + 1] = {Text = "[32] /unloopjump",Title = "no text"}
cmds[#cmds + 1] = {Text = "[33] /fling",Title = "Troll"}
cmds[#cmds + 1] = {Text = "[33] /unfling",Title = "stop flinging"}
cmds[#cmds + 1] = {Text = "[34] /headsit [username]",Title = "sit at nigga head🤡🤙"}
cmds[#cmds + 1] = {Text = "[35] /nosit",Title = "disable sit"}
cmds[#cmds + 1] = {Text = "[36] /unnosit",Title = "enable sit"}
cmds[#cmds + 1] = {Text = "[37] /sit",Title = "sit"}
cmds[#cmds + 1] = {Text = "[38] /helicopter [none or fling or swim]",Title = "become a helicopter and destroy 2 towers😍👌"}
cmds[#cmds + 1] = {Text = "[39] /attach [username]",Title = "attach."}
cmds[#cmds + 1] = {Text = "[40] /enablestate [state type]",Title = "enable state like 15 (tonumber)"}
cmds[#cmds + 1] = {Text = "[41] /disablestate [state type]",Title = "disable state like 15 (tonumber)"}
cmds[#cmds + 1] = {Text = "[42] /rejoin",Title = "rejoin server"}
cmds[#cmds + 1] = {Text = "[43] /delete [ra, la, rl, ll, and nolimbs]",Title = "being a person without limbs😍🤫😜"}
cmds[#cmds + 1] = {Text = "[44] /music [id]",Title = "play music"}
cmds[#cmds + 1] = {Text = "[45] /nomusic",Title = "stop music"}
cmds[#cmds + 1] = {Text = "[46] /anim [id]",Title = "use ur animation"}
cmds[#cmds + 1] = {Text = "[47] /noanim",Title = "stop ur animation"}
cmds[#cmds + 1] = {Text = "[48] /joindate [username]",Title = "join date"}
cmds[#cmds + 1] = {Text = "[49] /blockhats",Title = "turn all your hats and hair into squares"}
cmds[#cmds + 1] = {Text = "[50] /blocktools",Title = "turn all your tools into squares"}
cmds[#cmds + 1] = {Text = "[51] /faceless",Title = "remove ur face"}
cmds[#cmds + 1] = {Text = "[52] /grabtools",Title = "Picking up any dropped tools"}
cmds[#cmds + 1] = {Text = "[53] /ungrabtools",Title = "Picking up any dropped tools"}
cmds[#cmds + 1] = {Text = "[54] /loopoof",Title = "spamming oof sound"}
cmds[#cmds + 1] = {Text = "[55] /unloopoof",Title = "unspamming oof sound"}
cmds[#cmds + 1] = {Text = "[56] /enablesl",Title = "enable shift lock"}
cmds[#cmds + 1] = {Text = "[57] /setfpscap [number]",Title = "set fps cap"}
cmds[#cmds + 1] = {Text = "[58] /antiteleport",Title = "enable anti teleport bypass"}
cmds[#cmds + 1] = {Text = "[59] /support",Title = "copy discord invite"}
cmds[#cmds + 1] = {Text = "[60] /ip [country]",Title = "sshhhttt, I tracked this code using my website's server🤫🤫"}
cmds[#cmds + 1] = {Text = "[61] /antifling",Title = "Prevents you from being hit by a fling"}
cmds[#cmds + 1] = {Text = "[62] /cammode [tpp or fpp]",Title = "Camera mode."}
cmds[#cmds + 1] = {Text = "[63] /usetool",Title = "hold the objects in your inventory"}
cmds[#cmds + 1] = {Text = "[64] /unusetool",Title = "{}"}
cmds[#cmds + 1] = {Text = "[65] /clogs",Title = "u can see all private message"}
cmds[#cmds + 1] = {Text = "[66] /datalimit [number]",Title = "set data limit"}
cmds[#cmds + 1] = {Text = "[67] /noprompt",Title = "hide all purchase prompt"}
cmds[#cmds + 1] = {Text = "[68] /prompt",Title = "show all purchase prompt"}
cmds[#cmds + 1] = {Text = "[69] /lay",Title = "sleep"}
cmds[#cmds + 1] = {Text = "[70] /replicationlag",Title = "set IncomingReplicationLag"}
cmds[#cmds + 1] = {Text = "[71] /compliment [username]",Title = "Compliment someone you like😍❤️🥰"}
cmds[#cmds + 1] = {Text = "[72] /insult [username]",Title = "insult someone you hate😡😠🤬"}
cmds[#cmds + 1] = {Text = "[73] /reach",Title = "increase the range of your sword"}
cmds[#cmds + 1] = {Text = "[74] /unreach",Title = "Returns the range of the sword to its original range"}
cmds[#cmds + 1] = {Text = "[75] /grippos [Vector2]",Title = "set GripPos tools (exp: /grippos 0,0,0)"}
cmds[#cmds + 1] = {Text = "[76] /hovername",Title = "enable player name"}
cmds[#cmds + 1] = {Text = "[77] /unhovername",Title = "disable player name"}

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
}

local staff = {
      _staff_Title = "staff:";
      _staff_1 = "i forgor💀#4109";
      _staff_2 = "Riri#0337";
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

local content_credit = Developer.Title .. "\n" .. Developer.Rivanda_Cheater .. "\n" .. Developer.CookieProgamming .. "\n\n" .. friend.Title .. "\n" .. friend.Daffy .. "\n" .. friend.anikazila .. "\n" .. friend.vilobatir .. "\n\n" .. CrV .. "" .. partner.Title .. "\n" .. partner._A .. "\n" .. partner._B .. "\n" .. partner._C ..  "\n" .. partner._D

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

if ProtocolCheck("Vortex-Prefix.json") then
   prefix = ProtocolRead("Vortex-Prefix.json")
    wait(1.5)
   notify("prefix successfull loaded! Prefix: " .. prefix)
else
   prefix = "/"
   notify("[missing ProtocolSave] Prefix setting file not found, prefix: '/'")
end
wait(1)
notify("last update: 21/02/2023")
