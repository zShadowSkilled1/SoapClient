local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true

SoapLibrary:LoadConfiguration()

local Window = SoapLibrary:CreateWindow({
	Name = "SoapClient",
	LoadingTitle = "SoapClient",
	LoadingSubtitle = "Loading",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SoapClient", -- Create a custom folder for your hub/game
		FileName = "SoapClient"
	},
        Discord = {
        	Enabled = false,
        	Invite = "", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = false, -- Set this to true to use our key system
	KeySettings = {
		Title = "SoapClient -- Doors But Bad V6",
		Subtitle = "",
		Note = "",
		FileName = "",
		SaveKey = false,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like SoapLibrary to get the key from
		Key = ""
	}
})

_G.EV = false
_G.GM = false

function EVENT()
    while _G.EV == true do
        wait(1)
local RP = game.Workspace.RUSH1
    if RP.Sound.Playing == true then
        print("Rush has spawned , notifying the user...")
        _G.EV = false
        SoapLibrary:Notify({
            Title = "New Event",
            Content = "Rush has spawned, find a hidding spot.",
            Duration = 5,
            Image = 4483362458,
            Actions = {
                Ok = {
                    Name = "Okay!",
                    Callback = function()
                        print("Okay!")
                    end
                },
            },
        })
        wait(15)
        _G.EV = true
    end
end
end

function GM()
    while _G.GM == true do
        wait(0.01)
local HiddingCheck = game.Workspace.HiddingCheck
if HiddingCheck.CanCollide == true and _G.GM == true then
       HiddingCheck.CanCollide = false
elseif _G.GM == false then
    HiddingCheck.CanCollide = true
    end
end
end

local CharacterTab = Window:CreateTab("Character", 0) -- Title, Image
local CharTab = Window:CreateTab("Game", 0) -- Title, Image

local GM = CharacterTab:CreateToggle({
	Name = "GodMod",
	CurrentValue = false,
	Flag = "GM", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.GM = Value
        GM()
	end,
})

local EV = CharTab:CreateToggle({
	Name = "Notify Events",
	CurrentValue = false,
	Flag = "EV", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.EV = Value
        EVENT()
	end,
})