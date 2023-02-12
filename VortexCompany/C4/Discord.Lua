local cmds = {}
local speaker = game.Players.LocalPlayer
local Players = game.Players
local _GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local COREGUI = game:GetService("CoreGui")
local ESPenabled = false
local Mouse = speaker:GetMouse()

function Notify(text,delay)
    remgui()
    local sc = Instance.new("ScreenGui")
    sc.Parent = me.PlayerGui
    sc.Name = "Modeshow"
    local bak = Instance.new("Frame",sc)
    bak.BackgroundColor3 = Color3.new(1,1,1)
    bak.Size = UDim2.new(0.94,0,0.1,0)
    bak.Position = UDim2.new(0.03,0,0.037,0)
    bak.BorderSizePixel = 0
    local gi = Instance.new("TextLabel",sc)
    gi.Size = UDim2.new(0.92,0,0.09,0)
    gi.BackgroundColor3 = Color3.new(0,0,0)
    gi.Position = UDim2.new(0.04,0,0.042,0)
    gi.TextColor3 = Color3.new(1,1,1)
    gi.FontSize = "Size14"
    gi.Text = text
    coroutine.resume(coroutine.create(function()
        wait(delay)
        sc:remove()
    end))
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
							TextLabel.Text = 'Name: '..plr.Name..' \nHealth: '..round(plr.Character:FindFirstChildOfClass('Humanoid').Health, 1)..' \nStuds: '..pos..' Meters'
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
end
if cmd == "unrotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
end
if cmd == "rotate" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
end
if cmd == "stun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
end
if cmd == "unstun" then
game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
end
if cmd == "kill" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

speaker.Character.Humanoid:UnequipTools()
local Humanoid = speaker.Character.Humanoid:Clone()
local Target = var
local Tool = speaker.Backpack:FindFirstChildOfClass("Tool")
 
speaker.Character.Animate.Disabled = true
speaker.Character.Humanoid:Destroy()
Humanoid.Parent = speaker.Character
Tool.Parent = speaker.Character
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);
end
if cmd == "inspect" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

_GuiService:CloseInspectMenu()
		GuiService:InspectPlayerFromUserId(Players[var].UserId)
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
end
if cmd == "esp" then
ESPenabled = true
		for i,v in pairs(Players:GetChildren()) do
			if v.ClassName == "Player" and v.Name ~= speaker.Name then
				ESP(v)
			end
		end
end
if cmd == "unesp" then
ESPenabled = false
	for i,c in pairs(COREGUI:GetChildren()) do
		if string.sub(c.Name, -4) == '_ESP' then
			c:Destroy()
		end
	end
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
end
if cmd == "clip" then
if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
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
speaker.Character.HumanoidRootPart.CFrame = Players[var].Character.HumanoidRootPart.CFrame - Players[var].Character.HumanoidRootPart.CFrame.LookVector*0
end
    RapeStart = RunService.Stepped:Connect(Looptp)
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
end
if cmd == "unfollow" then
if Follow then
		Follow:Disconnect()
end
end
if cmd == "unloopgoto" then
if Loopgoto then
		Loopgoto:Disconnect()
end
end
if cmd == "unlooptween" then
if LoopTween then
		LoopTween:Disconnect()
end
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
Notify("Spying '" .. Players[var].Name .. "'",3)
end
if cmd == "spy" then
if viewing ~= nil then
		viewing = nil
	end
	if viewDied then
		viewDied:Disconnect()
		viewChanged:Disconnect()
	end
	workspace.CurrentCamera.CameraSubject = speaker.Character
Notify("Spy turned off",3)
end
if cmd == "stare" then
local var = string.sub(msg,space+1)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(var))) == string.lower(var) then
var = v.Name
end
end

if stareLoop then
			stareLoop:Disconnect()
		end
		if not Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and Players[var].Character:FindFirstChild("HumanoidRootPart") then return end
		local function stareFunc()
			if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(v) and Players[var].Character ~= nil and Players[var].Character:FindFirstChild("HumanoidRootPart") then
				local chrPos=Players.LocalPlayer.Character.PrimaryPart.Position
				local tPos=Players[var].Character:FindFirstChild("HumanoidRootPart").Position
				local modTPos=Vector3.new(tPos.X,chrPos.Y,tPos.Z)
				local newCF=CFrame.new(chrPos,modTPos)
				Players.LocalPlayer.Character:SetPrimaryPartCFrame(newCF)
			elseif not Players:FindFirstChild(var) then
				stareLoop:Disconnect()
			end
		end

		stareLoop = RunService.RenderStepped:Connect(stareFunc)
	end
end
if cmd == "unstare" then
if stareLoop then
		stareLoop:Disconnect()
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

for v = 1, #cmds do
-- for _,v in next, #cmds do
       warn(tostring(cmds[v].Text) .. " (" .. tostring(cmds[v].Title) .. ")")
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

Notify("Loaded | Commands list in console",3)
