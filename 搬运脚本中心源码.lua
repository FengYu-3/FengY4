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
    FpsLabel.Text = ("时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "开杀"; Text ="开杀"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengY6/FengY4/refs/heads/main/FengYulibrary"))();  
local win = ui:new("风御")

local UITab1 = win:Tab("『信息』",'81336126823321')

local about = UITab1:section("查看作者信息",true)

about:Label("作者：风御")
local about = UITab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
about:Label("你现在的服务器名称:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
about:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    about:Button("关闭脚本",function()
        game:GetService("CoreGui")["frosty"]:Destroy()
    end)
    
local UITab2 = win:Tab("『公告』",'81336126823321')

local about = UITab2:section("『公告』",true)

about:Label("风御")
about:Label("111")

local UITab3 = win:Tab("通用",'81336126823321')

local about = UITab3:section("『通用』",true)

about:Slider("步行速度!", "WalkSpeed", game.Players.LocalPlayer.Character.Humanoid.WalkSpeed, 16, 400, false, function(Speed)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed end end)
end)

about:Slider("跳跃高度!", "JumpPower", game.Players.LocalPlayer.Character.Humanoid.JumpPower, 50, 400, false, function(Jump)
  spawn(function() while task.wait() do game.Players.LocalPlayer.Character.Humanoid.JumpPower = Jump end end)
end)

about:Slider('设置重力', 'Sliderflag', 196.2, 196.2, 1000,false, function(Value)
        game.Workspace.Gravity = Value
    end)

about:Toggle("夜视","Toggle",false,function(Value)
if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)

		end
end)

about:Toggle("穿墙", "NoClip", false, function(NC)
  local Workspace = game:GetService("Workspace") local Players = game:GetService("Players") if NC then Clipon = true else Clipon = false end Stepped = game:GetService("RunService").Stepped:Connect(function() if not Clipon == false then for a, b in pairs(Workspace:GetChildren()) do if b.Name == Players.LocalPlayer.Name then for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do if v:IsA("BasePart") then v.CanCollide = false end end end end else Stepped:Disconnect() end end)
end)

about:Toggle("人物显示", "RWXS", false, function(RWXS)
    getgenv().enabled = RWXS getgenv().filluseteamcolor = true getgenv().outlineuseteamcolor = true getgenv().fillcolor = Color3.new(1, 0, 0) getgenv().outlinecolor = Color3.new(1, 1, 1) getgenv().filltrans = 0.5 getgenv().outlinetrans = 0.5 loadstring(game:HttpGet("https://raw.githubusercontent.com/Vcsk/RobloxScripts/main/Highlight-ESP.lua"))()
end)

about:Button("自杀",function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
end)

local UITab4 = win:Tab("『💫灾难最高级💫』",'81336126823321')

local about = UITab4:section("『灾难脚本』",true)

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
secretButton.Text = "开启范围(关)"
secretButton.BackgroundColor3 = Color3.new(1, 0, 0)

local sHealButton = screenGui:FindFirstChild("sHealButton") or Instance.new("TextButton", screenGui)
sHealButton.Name = "sHealButton"
sHealButton.Size = UDim2.new(0, 150, 0, 40) -- Smaller size
sHealButton.Position = UDim2.new(0, 10, 0, 60)
sHealButton.Text = "风御翻译"
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