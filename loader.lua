repeat
    task.wait()
until 
    game:IsLoaded()

-- if writefile then
--     writefile("EzScripts.win-key", "")
-- end

local library = loadstring(game:HttpGet(("https://raw.githubusercontent.com/TurfuFrogy/EzScripts/main/ui.lua")))()

library:MakeNotification({
    Name = "EzScripts.win",
    Content = "Thanks for using our script!",
    Image = "rbxassetid://10715004387",
    Time = 5
})

local window = library:MakeWindow({
    Name = "EzScripts.win - Loader",
    HidePremium = true, 
    SaveConfig = false, 
    ConfigFolder = "EzScripts/",
    IntroEnabled = true,
    IntroText = "EzScripts.win",
    IntroIcon = "rbxassetid://10715004387",
    Icon = "rbxassetid://10715004387",
})

local homeTab = window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://10715004387",
    PremiumOnly = false
})

local alreadyExecuted = false
homeTab:AddButton({
    Name = "Load EzScripts.win!",
    Callback = function()
        if not alreadyExecuted then
            library:MakeNotification({
                Name = "EzScripts.win",
                Content = "Loading. This can take some times.",
                Image = "rbxassetid://10715004387",
                Time = 5
            })

            alreadyExecuted = true
    
            -- if readfile then
            --     getgenv().Key = readfile("EzScripts.win-key")
            -- else
            getgenv().Key = ""
            -- end
    
            loadstring(game:HttpGet("https://scripts.luawl.com/12261/EzScripts.lua"))()
        else
            library:MakeNotification({
                Name = "EzScripts.win",
                Content = "You can only execute EzScripts.win one time.",
                Image = "rbxassetid://10715004387",
                Time = 5
            })
        end
    end
})

library:Init()
