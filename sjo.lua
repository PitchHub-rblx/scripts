local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/roblox-exploit-library/main/turtle%20library%20red%20version"))()
local window = library:Window("PitchHub - SJO")
window:Button("normal obby", function()     
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203"))()  --6.30000496, 1.60271573, 3.31895161, 1, 0, 0, 0, 1, 0, 0, 0, 1
end)
window:Button("easy obby", function()     
loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%201"))()
end)
window:Button("medium obby", function()     
loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%202"))()
end)

window:Button("spawn", function()     

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new( 6.30000496, 1.60271573, 3.31895161, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

window:Button("?", function()     

local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(349.635, -155.254, 6637.63 )
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location

end)

window:Toggle("auto rebirth", true, function(bool)  -- you can change window to the ui you want the toggle in 
    getgenv().autorebirth_00 = bool
    while wait(0.5) do 
        if getgenv().autorebirth_00 == true then 
            
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 32
           
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_1"))()

wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_2"))()

wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_ToRebirth"))()
            
        end
        end-- bool is true or false depending on the state of the toggle
end)

window:Toggle("auto reset", true, function(bool)  -- you can change window to the ui you want the toggle in 
    getgenv().autoreset_00 = bool
    while wait(0.5) do 
        if getgenv().autoreset_00 == true then 
            
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 32
           
            loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_1"))()

wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_2"))()

wait(0.1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/myscript/main/sjo%20obby%203_ToReset"))()
            
        end
        end-- bool is true or false depending on the state of the toggle
end)

window:Slider("Jump",0,1000,20, function(value)
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

window:Button("anti afk", function()  
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
end)
