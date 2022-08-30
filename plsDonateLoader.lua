repeat
    task.wait()
until 
    game:IsLoaded()

getgenv().Key = ""

loadstring(game:HttpGet("https://scripts.luawl.com/12261/EzScripts.lua"))()
