local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RFA Project", "Synapse")

local AutoFarm = Window:NewTab("AutoFarm")

local Section = AutoFarm:NewSection("Auto Money")

Section:NewButton("Money", "Make a lot of money, automatic.", function()
 function FinishQuest()
        local cratepoint = workspace.Game.JobStuff.CratePoint
        local sconstruction = 2048
        cratepoint.Size = Vector3.new(sconstruction,sconstruction,sconstruction)
       end 
  
   local function GetMission()
        local args = {
    [1] = "kaoru",
    [2] = "take"
}

game:GetService("ReplicatedStorage").Events.DialogueAnswer:InvokeServer(unpack(args))
     game.Players.LocalPlayer:WaitForChild("GetCrates")
     fireclickdetector(game:GetService("Workspace").Game.JobStuff.Crates.ClickDetector,5000)
      FinishQuest()  
    end
        GetMission()
end)


Section:NewButton("Rest", "Restore your Hungry and Fatigue. It Costs 600",function()
    
    
    local args = {
    [1] = "register",
    [2] = "take1"
}

game:GetService("ReplicatedStorage").Events.DialogueAnswer:InvokeServer(unpack(args))
 

local args = {
    [1] = "register",
    [2] = "rest"
}

game:GetService("ReplicatedStorage").Events.DialogueAnswer:InvokeServer(unpack(args))
    
    
end)






