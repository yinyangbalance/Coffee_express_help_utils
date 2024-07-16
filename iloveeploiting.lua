--//Enquire\\--
local discord = ".gg/ycnQB28JMV"
---//gg\\--
--\\ Dependencies //--
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local LocalizationService = game:GetService("LocalizationService")


--\\ Main //--
local Window = OrionLib:MakeWindow({
    Name = "Iloveexploiting Client",
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "IloveexploitingFolder",
    IntroEnabled = true,
    IntroText = "Iloveexploiting Client",
    Icon = "rbxassetid://12359799931"
})


local UniversalTab = Window:MakeTab({
    Name = "Universal Stuff",
    Icon = "rbxassetid://12359799931",
    PremiumOnly = false
})


local HubsTab = Window:MakeTab({
    Name = "Bedwars",
    Icon = "rbxassetid://12359799931",
    PremiumOnly = false
})


local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://12359799931",
    PremiumOnly = false
})


local TimeSection = UniversalTab:AddSection({
    Name = "Time and Server Location"
})


local timeLabel = TimeSection:AddLabel("00:00:00")
local locationLabel = TimeSection:AddLabel("Location: Unknown")


--\\ Time Update //--
spawn(function()
    local player = game.Players.LocalPlayer
    local locale = LocalizationService.RobloxLocaleId


    while true do
        local TimeInUnix = os.time()
        local stringToFormat = "%I:%M:%S %p"
        local result = os.date(stringToFormat, TimeInUnix)


        timeLabel:Set(result)
        locationLabel:Set("Server Location: " .. locale)


        wait(0.01) -- Update every second
    end
end)


--\\ [UNIVERSAL] //--
UniversalTab:AddButton({
    Name = "Infinite Jump",
    Callback = function()
        _G.infinjump = true
        local Player = game:GetService("Players").LocalPlayer
        local Mouse = Player:GetMouse()


        Mouse.KeyDown:Connect(function(k)
            if _G.infinjump and k:byte() == 32 then
                local Character = Player.Character
                if Character then
                    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
                    if Humanoid then
                        Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                        wait()
                        Humanoid:ChangeState(Enum.HumanoidStateType.Seated)
                    end
                end
            end
        end)
    end    
})


UniversalTab:AddButton({
    Name = "Aimbot V3",
    Callback = function()
        Aimbot.Load()
    end
})

UniversalTab:AddButton({
    Name = "Infite yeild",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})

UniversalTab:AddButton({
    Name = "Hitbox Expander V2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RectangularObject/Roblox-Hitbox-Expander/main/HitboxExtenderv2.lua",true))()
    end
})


--\\ HUBS //---
HubsTab:AddButton({
    Name = "Voidware",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Erchobg/vapevoidware/main/NewMainScript.lua", true))()
    end
})        


HubsTab:AddButton({
    Name = "Alsploit",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/AlSploit/Bedwars/Loader.lua",true))()
    end
})


HubsTab:AddButton({
    Name = "Vape V4",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))() 
    end
})


HubsTab:AddButton({
    Name = "Godsploit",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/MainScript",true))()
    end
})


HubsTab:AddButton({
    Name = "Aurora",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/cocotv666/Aurora/main/Aurora_Loader"))()
    end
})

HubsTab:AddButton({
    Name = "Auntumn",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/0x0xLol/Autumn/main/MainScript.lua", true))()
    end
})

HubsTab:AddButton({
    Name = "Velocity installer",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Copiums/Copium/main/Installer.lua", true))()
    end
})        


HubsTab:AddButton({
    Name = "Velocity script",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Copiums/Velocity/main/NewMainScript.lua", true))()
    end
})


HubsTab:AddButton({
    Name = "AeolusV2",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ohmygodiloveketamine/aeolusv2/main/script", true))()
    end
})


HubsTab:AddButton({
    Name = "Rise",
    Callback = function() 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/RiseForRoblox/main/main.lua", true))()
    end
})


HubsTab:AddButton({
    Name = "Raven B4",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Near-B4/Raven-B4-For-Roblox/main/Raven%20B4%20Loader"))()
    end
})

HubsTab:AddButton({
    Name = "CoCoPaste",
    Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/CoCoPaste"))()
    end
})

HubsTab:AddButton({
    Name = "CoCOSkid",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/QP-Community/Roblox/main/CoCoSkid"))()
    end
})

HubsTab:AddButton({
    Name = "Aristois",
    Callback = function()
    shared.ReadFile = true
pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/XzynAstralz/Aristois/main/NewMainScript.lua'))() end)
    end
})

HubsTab:AddButton({
    Name = "Lunar client",
    Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/yinyangbalance/LunarClient/main/MainScript"))()
    end
})





--\\ CREDITS //--
local sc = CreditsTab:AddSection({
    Name = "Lucid and coffee_express"
})
sc:AddLabel(discord)
print(discord)


