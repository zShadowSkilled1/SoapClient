local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true

local Window = SoapLibrary:CreateWindow({
	Name = "SoapClient",
	LoadingTitle = "SoapClient",
	LoadingSubtitle = "Loading",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SoapClient", -- Create a custom folder for your hub/game
		FileName = "SoapClientThree"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "SoapClient -- Jump Race",
		Subtitle = "",
		Note = "",
		FileName = "JumpRace",
		SaveKey = true,
		GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like SoapLibrary to get the key from
		Key = "https://raw.githubusercontent.com/zShadowSkilled1/SoapClient/main/key.txt"
	}
})

_G.FH = false
_G.SB = false
_G.IH = false
_G.AW = false
_G.FA = false
_G.AimbotEnabled = false
_G.TeamCheck = false -- If set to true then the script would only lock your aim at enemy team members.
_G.AimPart = "Head" -- Where the aimbot script would lock at.
_G.Sensitivity = 0 -- How many seconds it takes for the aimbot script to officially lock onto the target's aimpart.

_G.CircleSides = 120 -- How many sides the FOV circle would have.
_G.CircleColor = Color3.fromRGB(255, 255, 255) -- (RGB) Color that the FOV circle would appear as.
_G.CircleTransparency = 0.7 -- Transparency of the circle.
_G.CircleRadius = 120 -- The radius of the circle / FOV.
_G.CircleFilled = false -- Determines whether or not the circle is filled.
_G.CircleVisible = false -- Determines whether or not the circle is visible.
_G.CircleThickness = 0 -- The thickness of the circle.


function FH()
    while _G.FH == true do
        wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer("S_Popup",{workspace.World4.__HEART})
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
    end
end

function SB()
    while _G.SB == true do
        if _G.SB == true then
        wait(0.01)
        if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 1
                if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 1
                    if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 1
                        if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 1
            game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 0
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

function SB2()
    while _G.SB == false do
        if _G.SB == false then
        wait(0.01)
        if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
                if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
                    if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 0
                        if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 0
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

function IH()
    while _G.IH == true do
        if _G.IH == true then
            wait(0.01)
            game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
            game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
        end
    end
end

function IH2()
        if _G.IH == false then
            wait(0.01)
            game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
            game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
end

function AW()
    while _G.AW == true do
        if _G.AW == true then
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(1382, 6, 809)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(169, 5, 71)
    end
end
end

function AW2()
        if _G.AW == false then
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end

function FH()
    while _G.FH == true do
        wait(0.0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001)
        game:GetService("ReplicatedStorage").Common.Library.Network.RemoteEvent:FireServer("S_Popup",{workspace.World4.__HEART})
        game.Players.LocalPlayer.Character.Humanoid.Health = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
    end
end

function SB()
    while _G.SB == true do
        if _G.SB == true then
        wait(0.01)
        if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = false
            if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 1
                if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 1
                    if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 1
                        if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 1
            game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = true
            game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 0
            game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 0
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

function SB2()
    while _G.SB == false do
        if _G.SB == false then
        wait(0.01)
        if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).CanCollide = true
            if game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
                if game:GetService("Workspace")["__MAP"].Gates.Hell:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Candy:FindFirstChild(1).Transparency = 0
                    if game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Beach:FindFirstChild(1).Transparency = 0
                        if game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1) then game:GetService("Workspace")["__MAP"].Gates.Void:FindFirstChild(1).Transparency = 0
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

function IH()
    while _G.IH == true do
        if _G.IH == true then
            wait(0.01)
            game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
            game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
        end
    end
end

function IH2()
        if _G.IH == false then
            wait(0.01)
            game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 100
            game.Players.LocalPlayer.Character.Humanoid.Health = 100
    end
end

function AW()
    while _G.AW == true do
        if _G.AW == true then
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(1382, 6, 809)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Position = Vector3.new(169, 5, 71)
    end
end
end

function AW2()
        if _G.AW == false then
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end

function FA2()
    local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false
local FOVCircle = Drawing.new("Circle")

FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness

local function GetClosestPlayer()
	local MaximumDistance = _G.CircleRadius
	local Target = nil

	for _, v in next, Players:GetPlayers() do
		if v.Name ~= LocalPlayer.Name then
			if _G.TeamCheck == true then
				if v.Team ~= LocalPlayer.Team then
					if v.Character ~= nil then
						if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
							if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
								local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
								local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
								
								if VectorDistance < MaximumDistance then
									Target = v
								end
							end
						end
					end
				end
			else
				if v.Character ~= nil then
					if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
						if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
							local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
							local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
							
							if VectorDistance < MaximumDistance then
								Target = v
							end
						end
					end
				end
			end
		end
	end

	return Target
end

UserInputService.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = true
    end
end)

UserInputService.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.MouseButton2 then
        Holding = false
    end
end)

RunService.RenderStepped:Connect(function()
    FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Filled = _G.CircleFilled
    FOVCircle.Color = _G.CircleColor
    FOVCircle.Visible = _G.CircleVisible
    FOVCircle.Radius = _G.CircleRadius
    FOVCircle.Transparency = _G.CircleTransparency
    FOVCircle.NumSides = _G.CircleSides
    FOVCircle.Thickness = _G.CircleThickness

    if Holding == true and _G.AimbotEnabled == true then
        TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
    end
end)
end

function FA()
    while _G.FA == true do
        wait(0.5)
        if game.Players.LocalPlayer.Character:FindFirstChild("ClassicSword") and game.Players.LocalPlayer.Character["ClassicSword"]:IsA("Tool") and _G.FA == true then
            wait(0.5)
            _G.AimbotEnabled = true
            _G.CircleVisible = true
            FA2()
            game.Players.LocalPlayer.Character["ClassicSword"].Unequipped:Connect(function()
                _G.AimbotEnabled = false
                _G.CircleVisible = false
                end)
    end
end
end

local CharTab = Window:CreateTab("Game", 0) -- Title, Image

local FH = CharTab:CreateToggle({
	Name = "FastHeal",
	CurrentValue = false,
	Flag = "FH", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.FH = Value
        FH()
	end,
})

local SB = CharTab:CreateToggle({
	Name = "SkipBarriers",
	CurrentValue = false,
	Flag = "SB", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.SB = Value
        SB()
        SB2()
	end,
})

local IH = CharTab:CreateToggle({
	Name = "InfiniteHealth",
	CurrentValue = false,
	Flag = "IH", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.IH = Value
        IH()
        IH2()
	end,
})

local AW = CharTab:CreateToggle({
	Name = "AutoWin",
	CurrentValue = false,
	Flag = "AW", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AW = Value
        AW()
        AW2()
	end,
})

local FA = CharTab:CreateToggle({
	Name = "FightAssist",
	CurrentValue = false,
	Flag = "FA", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.FA = Value
        FA()
	end,
})