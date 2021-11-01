local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("RFA Project", "Synapse")

local AutoFarm = Window:NewTab("AutoFarm")

local Section = AutoFarm:NewSection("Auto Money")

_G.AutoStrength = false
_G.SitUp = false
_G.AutoSquats = false


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
    
    if _G.AutoStrength == false then
        _G.AutoStrength = true
        AutoStrength()
        else
           _G.AutoStrength = false
           AutoStrength()
       end
end)

Section:NewButton("SitUp Farm", "Auto Farm for you SitUp at GYM", function()
    
    if _G.SitUp == false then
        _G.SitUp = true
        AutoSitUp()
        else
           _G.SitUp = false
           AutoSitUp()
       end
end)

Section:NewButton("Squats Farm", "Auto Farm for you Squats at GYM", function()
    
    if _G.AutoSquats == false then
        _G.AutoSquats = true
        AutomSquats()
        else
           _G.AutoSquats = false
           AutomSquats()
       end
end)



function AutoStrength()
    while true do wait()
        
        if _G.AutoStrength == true then
            local clicked = false
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100 and clicked == false then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.PushUp.Part.ClickDetector)
                clicked = true
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
                clicked = false
            break
            
           end --Auto Strength
        
        
        end
     
    
    
end

function AutoSitUp()
    while true do wait()
       
        if _G.SitUp == true then
            local clicked = false
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100 and clicked == false then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.SitUp.Part.ClickDetector)
                clicked = true
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
                clicked = false
            break
            
           end --Auto SitUp
        
        
        end
  
end

function AutomSquats()
    while true do wait()
        
        if _G.AutoSquats == true then
            local clicked = false
            if game.Players.LocalPlayer.Stats.Stamina.Value >= 100 and clicked == false then    
                fireclickdetector(game:GetService("Workspace").Game.WorkOut.Squats.Part.ClickDetector)
                clicked = true
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
                clicked = true
            break
            
           end --Auto SitUp
        
        
        end
  
end









