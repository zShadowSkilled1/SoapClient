local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true

SoapLibrary:LoadConfiguration()

local Window = SoapLibrary:CreateWindow({
	Name = "SoapClient",
	LoadingTitle = "SoapClient",
	LoadingSubtitle = "Loading",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SoapClient", -- Create a custom folder for your hub/game
		FileName = "SoapClientTwo"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "SoapClient -- Tapping Legends X",
		Subtitle = "",
		Note = "",
		FileName = "",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like SoapLibrary to get the key from
		Key = ""
	}
})

_G.AC = false
_G.AEB = false
_G.Speed = false
_G.JumpPower = false

function AC()
    while _G.AC == true do
        wait(0.00000000000000000000000000000000000000000000000000001)
        game:GetService("ReplicatedStorage").Remotes.Tap:FireServer()
    end
end

function AEB()
    while _G.AEB == true do
        wait(1)
            game:GetService("ReplicatedStorage").Remotes.EquipBest:InvokeServer()
    end
end

local CharTab = Window:CreateTab("Game", 0) -- Title, Image
local PetsTab = Window:CreateTab("Pets", 0) -- Title, Image
local CharacterTab = Window:CreateTab("Character", 0)
local Sets = Window:CreateTab("Settings", 0) -- Title, Image

local ACT = CharTab:CreateToggle({
	Name = "AutoClick",
	CurrentValue = false,
	Flag = "AC", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AC = Value
        AC()
	end,
})

local AEB = PetsTab:CreateToggle({
	Name = "Auto Equip Best",
	CurrentValue = false,
	Flag = "AEB", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AEB = Value
        AEB()
	end,
})

local SSlider = CharacterTab:CreateSlider({
	Name = "WalkSpeed",
	Range = {0, 100},
	Increment = 1,
	Suffix = "WalkSpeed",
	CurrentValue = 16,
	Flag = "WSSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        while _G.Speed == true do
            wait(0.00000000000000000000000000000000000000000000000000000000000000001)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
	end,
})

local SpeedEnabled = CharacterTab:CreateToggle({
	Name = "Speed",
	CurrentValue = false,
	Flag = "SpeedEnabled", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.Speed = Value
	end,
})

local JSlider = CharacterTab:CreateSlider({
	Name = "JumpPower",
	Range = {0, 100},
	Increment = 1,
	Suffix = "JumpPower",
	CurrentValue = 16,
	Flag = "JPowerSlider", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        while _G.JumpPower == true do
            wait(0.00000000000000000000000000000000000000000000000000000000000000001)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
	end,
})

local SpeedEnabled = CharacterTab:CreateToggle({
	Name = "JumpPower",
	CurrentValue = false,
	Flag = "JPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.JumpPower = Value
	end,
})