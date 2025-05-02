local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
    LastIteration = tick()
    for Index = #FrameUpdateTable, 1, -1 do
        FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
    end
    FrameUpdateTable[1] = LastIteration
    local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
    CurrentFPS = CurrentFPS - CurrentFPS % 1
    FpsLabel.Text = ("灾难用户:"game.Players.LocalPlayer.Character.Name))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "殺脚本"; Text ="殺脚本"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengY6/FengY4/refs/heads/main/Fwngui.lua"))();  
local win = ui:new("殺脚本")

local UITab1 = win:Tab("『脚本通知』",'7733701455')

local about = UITab1:section("通知",true)

about:Label("摧毁Gui")
    about:Button("摧毁Gui",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)

about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)

local UITab1 = win:Tab("『通用』",'6031097229')

local about = UITab1:section("『通用』",true)

about:Slider('修改速度', 'WalkspeedSlider', 16, 16, 99999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

about:Slider('修改跳跃', 'JumpPowerSlider', 50, 50, 99999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

about:Slider('修改重力', 'GravitySlider', 198, 198, 99999,false,function(Value)
    game.Workspace.Gravity = Value
end)

about:Slider('修改高度', 'Slider', 2, 2, 9999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
end)

credits:Slider('健康值上限', 'Sliderflag',  120, 120, 999999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth = Value
end)

about:Slider('玩家健康值', 'Sliderflag',  120, 120, 999999,false, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.Health = Value
end)

local UITab1 = win:Tab("『灾难高级脚本』",'6031097229')

local about = UITab1:section("『灾难脚本』",true)

about:Button("灾难范围",function()
local player = game:GetService("Players").LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

local secretEnabled = false

local screenGui = player:WaitForChild("PlayerGui"):FindFirstChild("AbilityToggles") or Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "AbilityToggles"
screenGui.ResetOnSpawn = false

local secretButton = screenGui:FindFirstChild("SecretButton") or Instance.new("TextButton", screenGui)
secretButton.Name = "SecretButton"
secretButton.Size = UDim2.new(0, 150, 0, 40) -- Smaller size
secretButton.Position = UDim2.new(0, 10, 0, 10)
secretButton.Text = "Toggle OP Hitbox (OFF)"
secretButton.BackgroundColor3 = Color3.new(1, 0, 0)

local sHealButton = screenGui:FindFirstChild("sHealButton") or Instance.new("TextButton", screenGui)
sHealButton.Name = "sHealButton"
sHealButton.Size = UDim2.new(0, 150, 0, 40) -- Smaller size
sHealButton.Position = UDim2.new(0, 10, 0, 60)
sHealButton.Text = "Self Heal (Cream)"
sHealButton.BackgroundColor3 = Color3.new(1, 1, 0)

spawn(function()
    while true do
        if secretEnabled then
            for _, player in pairs(game:GetService("Players"):GetPlayers()) do
                if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                    local args = {
                        [1] = player.Character
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("hitReg"):FireServer(unpack(args))
                end
            end
        end
        wait(0.1)
    end
end)

secretButton.MouseButton1Click:Connect(function()
    secretEnabled = not secretEnabled
    secretButton.Text = "开启范围 (" .. (secretEnabled and "开" or "关") .. ")"
    secretButton.BackgroundColor3 = secretEnabled and Color3.new(0, 1, 0) or Color3.new(1, 0, 0)
end)

sHealButton.MouseButton1Click:Connect(function()
    local args = {
    [1] = "overheal",
    [2] = workspace:WaitForChild(player.Name)
}

game:GetService("ReplicatedStorage"):WaitForChild("remotes"):WaitForChild("abilities"):FireServer(unpack(args))

end)
end)
