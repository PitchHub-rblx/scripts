local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PitchyATree/roblox-exploit-library/main/turtle%20library%20red%20version"))()
local window = library:Window("PitchHub - esygw")
window:Toggle("wins", false, function(bool)
getgenv().wins = bool
while wait() do
    if getgenv().wins == true then


local pl = game.Players.LocalPlayer.Character.HumanoidRootPart
local location = CFrame.new(8770, -2.02801, 2985.82 )
local humanoid = game.Players.LocalPlayer.Character.Humanoid
humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
wait(0.1)
pl.CFrame = location
    end
    end
end)

window:Toggle("rebirth", false, function(bool)
getgenv().rebirth = bool
while wait() do
    if getgenv().rebirth == true then
game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
        end
    end
end)


window:Button("anti afk", function()  
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   end)
   end)
