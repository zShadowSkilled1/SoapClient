local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true

SoapLibrary:LoadConfiguration()

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

_G.AF = false
_G.AH = false
_G.AR = false
_G.FOV = 90
_G.AEBest = false
_G.AAFK = true
_G.AKick = false
_G.NWM = false
_G.World = "Earth"
ETH = "Starter Egg"

local AdminTable = {
    "422797741",
    "8008645",
    "20532808",
    "948539870",
    "24897460",
    "1222788331"
}

function AF()
    if _G.AF == true then
    SoapLibrary:Notify({
        Title = "SoapClient",
        Content = "We just freeze your character movements to avoid breaking this feature. AutoFarming process will start soon.",
        Duration = 5,
        Image = 4483362458,
        Actions = { -- Notification Actions
            Ignore = {
                Name = "Ok !",
                Callback = function()
                    --Script to do when clicked here
                end
            },
        },
    })
end
    char = game.Players.LocalPlayer.Character
pathFinder = game:GetService("PathfindingService")

path = pathFinder:CreatePath()

path:ComputeAsync(char.HumanoidRootPart.Position, game:GetService("Workspace").Earth.Jump.Hexagon.Position)
--Vector3.new(-0, 1, -1)
    while _G.AF == true do
        local player = game.Players.LocalPlayer
        local playerScripts = player:WaitForChild("PlayerScripts")
        local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
        local Controls = PlayerModule:GetControls()

        Controls:Disable()
        for i, wayPoint in pairs(path:GetWaypoints()) do
	char.Humanoid:MoveTo(wayPoint.Position)

	
	if wayPoint.Action == Enum.PathWaypointAction.Jump then
		char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
	
	char.Humanoid.MoveToFinished:wait()
    wait(game:GetService("Players").LocalPlayer.PlayerGui.Main.Training.Visible == true)
end
    end
end

function AF3()
    if _G.AF == true then
    SoapLibrary:Notify({
        Title = "SoapClient",
        Content = "We just freeze your character movements to avoid breaking this feature. AutoFarming process will start soon.",
        Duration = 5,
        Image = 4483362458,
        Actions = { -- Notification Actions
            Ignore = {
                Name = "Ok !",
                Callback = function()
                    --Script to do when clicked here
                end
            },
        },
    })
end
    char = game.Players.LocalPlayer.Character
pathFinder = game:GetService("PathfindingService")

path = pathFinder:CreatePath()

path:ComputeAsync(char.HumanoidRootPart.Position, game.Workspace.Space.Jump.JumpPad.Position)
--Vector3.new(-0, 1, -1)
    while _G.AF == true do
        local player = game.Players.LocalPlayer
        local playerScripts = player:WaitForChild("PlayerScripts")
        local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
        local Controls = PlayerModule:GetControls()

        Controls:Disable()
        for i, wayPoint in pairs(path:GetWaypoints()) do
	char.Humanoid:MoveTo(wayPoint.Position)

	
	if wayPoint.Action == Enum.PathWaypointAction.Jump then
		char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
	
	char.Humanoid.MoveToFinished:wait()
    wait(game:GetService("Players").LocalPlayer.PlayerGui.Main.Training.Visible == true)
end
    end
end
function AF5()
    if _G.AF == true then
    SoapLibrary:Notify({
        Title = "SoapClient",
        Content = "We just freeze your character movements to avoid breaking this feature. AutoFarming process will start soon.",
        Duration = 5,
        Image = 4483362458,
        Actions = { -- Notification Actions
            Ignore = {
                Name = "Ok !",
                Callback = function()
                    --Script to do when clicked here
                end
            },
        },
    })
end
    char = game.Players.LocalPlayer.Character
pathFinder = game:GetService("PathfindingService")

path = pathFinder:CreatePath()

path:ComputeAsync(char.HumanoidRootPart.Position, game:GetService("Workspace").Underwater.Jump.JumpPad.Position)
--Vector3.new(-0, 1, -1)
    while _G.AF == true do
        local player = game.Players.LocalPlayer
        local playerScripts = player:WaitForChild("PlayerScripts")
        local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
        local Controls = PlayerModule:GetControls()

        Controls:Disable()
        for i, wayPoint in pairs(path:GetWaypoints()) do
	char.Humanoid:MoveTo(wayPoint.Position)

	
	if wayPoint.Action == Enum.PathWaypointAction.Jump then
		char.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
	end
	
	char.Humanoid.MoveToFinished:wait()
    wait(game:GetService("Players").LocalPlayer.PlayerGui.Main.Training.Visible == true)
end
    end
end

function AF2()
    while _G.AF == false do
        wait(1)
        local player = game.Players.LocalPlayer
        local playerScripts = player:WaitForChild("PlayerScripts")
        local PlayerModule = require(playerScripts:WaitForChild("PlayerModule"))
        local Controls = PlayerModule:GetControls()

        Controls:Enable()
    end
end

function AF4()
    while _G.AF == true do
        wait(1)
            if not WalkToPoint == Vector3.new(0, 0, 0) then
                print("AutoFarming Started")
            else
                _G.AF = false
                _G.AF = true
                SoapLibrary:Notify({
                    Title = "SoapClient",
                    Content = "Error : SoapClient is not able to make your charcter move, retrying.",
                    Duration = 5,
                    Image = 4483362458,
                    Actions = {
                        Ignore = {
                            Name = "Ok !",
                            Callback = function()

                            end
                        },
                    },
                })
            end   
    end
end

function AH()
    while _G.AH == true do
            game:GetService("ReplicatedStorage").Events.HatchPet:FireServer(ETH,1)
        wait(10)
    end
end

function AR()
    while _G.AR == true do
        wait(1)
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer()
    end
end

function FOV()
    game.Workspace.CurrentCamera.FieldOfView  = _G.FOV
end

function AEBest()
    while _G.AEBest == true do
        wait(1)
        game:GetService("ReplicatedStorage").Events.EquipBestPets:InvokeServer()
    end
end

function AAFK()
    while _G.AAFK == true do
        wait(1)
        local VUser = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:Connect(function()
            VUser:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            VUser:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
    end
end

function AKick()
    if _G.AKick == true then
        SoapLibrary:Notify({
            Title = "Warning",
            Content = "AutoKick kick you when a staff member join your server, it can kick you anytime.",
            Duration = 5,
            Image = 4483362458,
            Actions = {
                Ignore = {
                    Name = "Ok !",
                    Callback = function()

                    end
                },
            },
        })
    end
    while _G.AKick == true do
        wait(1)
        if _G.AKick == true then
        game.Players.PlayerAdded:Connect(function(player)
            if player.UserId == 422797741 then
                game.Players.LocalPlayer:Kick("A staff member has joined your game.")
            elseif player.UserId == 24897460 then
                game.Players.LocalPlayer:Kick("A staff member has joined your game.")
            elseif player.UserId == 948539870 then
                game.Players.LocalPlayer:Kick("A staff member has joined your game.")
            elseif player.UserId == 20532808 then
                game.Players.LocalPlayer:Kick("A staff member has joined your game.")
            elseif player.UserId == 8008645 then
                game.Players.LocalPlayer:Kick("A staff member has joined your game.")
            end
        end)
    end
end
    end

function NWM()
    if _G.NWM == true then
    SoapLibrary:Notify({
        Title = "Warning",
        Content = "Enabling the NoWalls mod can make your game lag.",
        Duration = 5,
        Image = 4483362458,
        Actions = { -- Notification Actions
            Ignore = {
                Name = "Ok !",
                Callback = function()
                    --Script to do when clicked here
                end
            },
        },
    })
        game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer("StudWalls")
elseif _G.NWM == false then
    game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer("StudWalls")
end
end

function HBlur()
   while _G.HBlur == true do
    wait(0.01)
        game.Lighting.EggDepth.Enabled = false
        game:GetService("Players").LocalPlayer.PlayerGui.Main.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.UIScripts.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Eggs.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Pets.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Settings.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Rebirth.Enabled = true
        game:GetService("Players").LocalPlayer.PlayerGui.Shop.Enabled = true
   end
end

function AF0()
    if _G.World == "Earth" then
        game:GetService("ReplicatedStorage").Events.UpdateWorld:FireServer(1)
        AF()
    elseif _G.World == "Space" then
        game:GetService("ReplicatedStorage").Events.UpdateWorld:FireServer(2)
            AF3()
        elseif _G.World == "Sea" then
            game:GetService("ReplicatedStorage").Events.UpdateWorld:FireServer(3)
                AF5()
    end
end

local CharTab = Window:CreateTab("Game", 0) -- Title, Image
local PetsTab = Window:CreateTab("Pets", 0) -- Title, Image
local CharacterTab = Window:CreateTab("Utilities", 0)
local Sets = Window:CreateTab("Settings", 0) -- Title, Image

local ACT = CharTab:CreateToggle({
	Name = "AutoFarm",
	CurrentValue = false,
	Flag = "AF", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AF = Value
        AF0()
	end,
})

local AMode = CharTab:CreateDropdown({
	Name = "AutoFarm World",
	Options = {"Earth","Space","Sea"},
	CurrentOption = "Earth",
	Flag = "EDropdown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		_G.World = Option
	end,
})

local AR = CharTab:CreateToggle({
	Name = "AutoRebirth",
	CurrentValue = false,
	Flag = "AR", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AR = Value
        AR()
	end,
})

local AAFK = CharTab:CreateToggle({
	Name = "AntiAfk",
	CurrentValue = false,
	Flag = "AAFK", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AAFK = Value
        AAFK()
	end,
})

local AH = PetsTab:CreateToggle({
	Name = "AutoHatch",
	CurrentValue = false,
	Flag = "AH", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AH = Value
        AH()
	end,
})

local AEBest = PetsTab:CreateToggle({
	Name = "Auto Equip Best",
	CurrentValue = false,
	Flag = "AEBest", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AEBest = Value
        AEBest()
	end,
})

local HBlur = PetsTab:CreateToggle({
	Name = "Bypass Egg Hatch",
	CurrentValue = false,
	Flag = "HBlur", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.HBlur = Value
        HBlur()
	end,
})

local ED = PetsTab:CreateDropdown({
	Name = "Egg To Hatch (AutoHatch)",
	Options = {"Starter Egg","Striped Egg","Royal Egg"},
	CurrentOption = "Starter Egg",
	Flag = "EDropdown", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
		ETH = Option
	end,
})

local FOVSlider = CharacterTab:CreateSlider({
	Name = "FOV",
	Range = {0, 180},
	Increment = 1,
	Suffix = "FOV",
	CurrentValue = 90,
	Flag = "FOVSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.FOV = Value
        FOV()
	end,
})

local RFOV = CharacterTab:CreateButton({
	Name = "Reset FOV",
	Callback = function()
		FOVSlider:Set(90)
	end,
})

local NoWallsMod = CharacterTab:CreateToggle({
	Name = "NoWalls",
	CurrentValue = false,
	Flag = "NoWallsMod", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        _G.NWM = Value
		NWM()
	end,
})

local LoadConfigsButton = Sets:CreateButton({
	Name = "Load Configs",
	Callback = function()
		SoapLibrary:LoadConfiguration()
	end,
})

local AKick = Sets:CreateToggle({
	Name = "AutoKick",
	CurrentValue = false,
	Flag = "AKick", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AKick = Value
        AKick()
	end,
})
