local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RFA Project - 0.07", "Synapse")

local AutoFarm = Window:NewTab("AutoFarm")

local Section = AutoFarm:NewSection("#LevelUpALot")

local AutoStrengthValue = false
local SitUp = false
local AutoSquats = false


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

Section:NewButton("Strength Farm", "Auto Farm for you Strength at GYM", function()
    
    if AutoStrengthValue == false then
        AutoStrengthValue = true
        AutoStrength()
        else
           AutoStrengthValue = false
           AutoStrength()
       end
end)

Section:NewButton("SitUp Farm", "Auto Farm for you SitUp at GYM", function()
    
    if SitUp == false then
        SitUp = true
        AutoSitUp()
        else
           SitUp = false
           AutoSitUp()
       end
end)

Section:NewButton("Squats Farm", "Auto Farm for you Squats at GYM", function()
    
    if AutoSquats == false then
        AutoSquats = true
        AutomSquats()
        else
           AutoSquats = false
           AutomSquats()
       end
end)



function AutoStrength()
    while true do wait()
        
        if AutoStrengthValue == true then
            
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100  then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.PushUp.Part.ClickDetector)
               print("Clickadoooo")
             end

    if game.Players.LocalPlayer.Stats.Fatigue.Value >= 80 or game.Players.LocalPlayer.Stats.Hunger.Value <= 30 then
           
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
        
        
    end

            
            
            else
               
            break
            
           end --Auto Strength
        
        
        end
     
    
    
end

function AutoSitUp()
    while true do wait()
       
        if SitUp == true then
           
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100 then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.SitUp.Part.ClickDetector)
                
             end

    if game.Players.LocalPlayer.Stats.Fatigue.Value >= 80 or game.Players.LocalPlayer.Stats.Hunger.Value <= 30 then
           
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
        
        
    end

            
            
            else
               
            break
            
           end --Auto SitUp
        
        
        end
  
end

function AutomSquats()
    while true do wait()
        
        if AutoSquats == true then
           
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100 then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.Squats.Part.ClickDetector)
               
             end

    if game.Players.LocalPlayer.Stats.Fatigue.Value >= 80 or game.Players.LocalPlayer.Stats.Hunger.Value <= 30 then
           
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
        
        
    end

            
            
            else
                
            break
            
           end --Auto SitUp
        
        
        end
  
end









