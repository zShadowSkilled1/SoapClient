local SoapLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/zShadowSkilled1/SoapLibrary/main/main.lua'))()getgenv().SecureMode = true --Here we boot the library !

local Window = SoapLibrary:CreateWindow({
	Name = "SoapClient",
	LoadingTitle = "Loading Text Here",
	LoadingSubtitle = "Text Here",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "SoapClient", -- Create a custom folder for your script
		FileName = "PLSDonate"
	},
 Discord = {
 	Enabled = false,
 	Invite = "", -- The Discord invite code, do not include discord.gg/
 	RememberJoins = false -- Set this to false to make them join the discord every time they load it up
 },
	KeySystem = false, -- Set this to true to use the key system
	KeySettings = {
		Title = "SoapLibrary",
		Subtitle = "Key System",
		Note = "Welcome",
		FileName = "Key",
		SaveKey = true,
		GrabKeyFromSite = false, -- This is experimental
		Key = "KeyHere"
	}
})

local queueonteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
local httpservice = game:GetService('HttpService')
queueonteleport("https://raw.githubusercontent.com/zShadowSkilled1/SoapClient/main/PDONATE.lua")

--Values

_G.AutoAsk = false
_G.Delay = 60
_G.Text = "Message"
_G.ThanksMessage = "Message"
_G.AutoThanks = false
_G.ThanksDelay = 3
_G.AutoNearReply = false
_G.Spin = false

function AutoAsk()
    while _G.AutoAsk == true do
        wait(_G.Delay)
		game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.Text, "All")
    end
end

game.Players.LocalPlayer.leaderstats.Raised.Changed:Connect(function()
    if _G.AutoThanks == true then
		wait(_G.ThanksDelay)
    game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(_G.ThanksMessage, "All")
    end
end)

local msgdone = game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.OnMessageDoneFiltering
local randommsgs = {'yes','ok','alr','yeah'}
local messageRequest = game:GetService('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest
msgdone.OnClientEvent:Connect(function(msgdata)
	local speaker = msgdata.FromSpeaker
	local message = string.lower(msgdata.Message)
	task.wait(1.2)
	local plrChatted = game:GetService('Players')[speaker]
	if plrChatted == game:GetService('Players').LocalPlayer or _G.AutoNearReply == false then return end
	local chatChar = plrChatted.Character
	if (plrChatted.Character and plrChatted.Character.Humanoid.RootPart) then
		local root = chatChar.Humanoid.RootPart
		if (root.Position - game:GetService('Players').LocalPlayer.Character.Humanoid.RootPart.Position).Magnitude < 15 then
			if message == 'hello' or message == 'hi' or message == 'sup' then
				messageRequest:FireServer("hello", 'All')
			elseif string.find(message, 'jump') then
				messageRequest:FireServer('ok','All')
				game.Players.LocalPlayer.Character.Humanoid.Jump = true
			elseif string.find(message,'follow me') then
				messageRequest:FireServer('why','All')
			elseif string.find(message,'donate') then
				messageRequest:FireServer('Sorry but i cannot donate..','All')
			--else
				--messageRequest:FireServer(randommsgs[math.random(1,#randommsgs)],'All')
			end
		end
	end
end)

function Spin()
	if _G.Spin == true then
		local root = game.Players.LocalPlayer.Character.Humanoid.RootPart
		local Spin = Instance.new("BodyAngularVelocity")
		Spin.Name = "Spin"
		Spin.Parent = root
		Spin.MaxTorque = Vector3.new(0, math.huge, 0)
		Spin.AngularVelocity = Vector3.new(0, 0.25 * Options.spinSpeeder.Value, 0)
	elseif _G.Spin == false and game.Players.LocalPlayer.Character.Humanoid.RootPart:FindFirstChild('Spin') then
		game.Players.LocalPlayer.Character.Humanoid.RootPart.Spin:Destroy()
	end
end

local FarmTab = Window:CreateTab("Farm", 0) -- Title and Image

local AutoAsk = FarmTab:CreateToggle({
	Name = "AutoAsk",
	CurrentValue = false,
	Flag = "AutoAsk", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you are using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AutoAsk = Value
		AutoAsk()
	end,
})

local AutoThanks = FarmTab:CreateToggle({
	Name = "AutoThanks",
	CurrentValue = false,
	Flag = "AutoThanks", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you are using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AutoThanks = Value
		AutoThanks()
	end,
})

local AutoNearReply = FarmTab:CreateToggle({
	Name = "AutoNearReply",
	CurrentValue = false,
	Flag = "AutoNearReply", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you are using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.AutoNearReply = Value
	end,
})

local Spin = FarmTab:CreateToggle({
	Name = "Spin",
	CurrentValue = false,
	Flag = "Spin", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you are using configuration saving to ensure no overlaps
	Callback = function(Value)
		_G.Spin = Value
	end,
})

local SliderName = FarmTab:CreateSlider({
	Name = "Delay",
	Range = {1, 300}, --Minimum Value | Max Value
	Increment = 1,
	Suffix = "Delay (S)",
	CurrentValue = 16,
	Flag = "Delay", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	    _G.Delay = Value
	end,
})

local ThanksDelay = FarmTab:CreateSlider({
	Name = "ThanksDelay",
	Range = {1, 60}, --Minimum Value | Max Value
	Increment = 1,
	Suffix = "Delay (S)",
	CurrentValue = 3,
	Flag = "Delay", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
	    _G.ThanksDelay = Value
	end,
})

local Message = FarmTab:CreateInput({
	Name = "Message",
	PlaceholderText = "Message",
	RemoveTextAfterFocusLost = false, --Set to true if you want the textbox / input to clear after used it
	Callback = function(Text)
		_G.Text = Text
	end,
})

local ThanksMessage = FarmTab:CreateInput({
	Name = "AutoThanksMessage",
	PlaceholderText = "AutoThanksMessage",
	RemoveTextAfterFocusLost = false, --Set to true if you want the textbox / input to clear after used it
	Callback = function(Text)
		_G.ThanksMessage = Text
	end,
})
