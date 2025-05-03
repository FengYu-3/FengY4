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
    FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "IIF死铁轨"; Text ="感谢大家使用IIF死铁轨脚本"; Duration = 2; })
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/IIFNGZ2099/IIF-/refs/heads/main/IIF%E7%9A%84Ui%E6%BA%90%E7%A0%81(1).lua"))();  
local win = ui:new("IIF死铁鬼脚本中心")

local UITab1 = win:Tab("『信息』",'6031097229')

local about = UITab1:section("查看作者信息",true)

about:Label("IIF死铁轨脚本中心")
about:Label("『IIF死铁轨脚本作者』")
about:Button("点击复制作者的QQ号",function()
setclipboard("991829714")
end)
about:Label("风御QQ号")
about:Button("点击复制QQ号",function()
setclipboard("1926190957")
end)
about:Label("作者：我也觉得好巧")
about:Label("感谢大家游玩IIF脚本更感谢我的导师叉烧包")
about:Label("本脚本持续更新")
about:Label("感谢大家支持IIF脚本👍")
about:Label("已经更新了好几次了，可是还是没有什么人玩，能不能帮忙推荐一下呀")

local about = UITab1:section("查看玩家信息",true)

about:Label("你的账号年龄:"..player.AccountAge.."天")
about:Label("你的注入器:"..identifyexecutor())
about:Label("你的用户名:"..game.Players.LocalPlayer.Character.Name)
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
    
local UITab2 = win:Tab("『公告』",'6031097229')

local about = UITab2:section("『公告』",true)

about:Label("感谢所有支持IIF脚本的人")
about:Label("主脚本作者『我也觉得很巧』")
about:Label("副作者『叉烧包(风御 X』")

local UITab1 = win:Tab("『死铁轨』",'6031097229')

local about = UITab1:section("『文字』",true)

about:Button("最新刷票子",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ArdyBotzz/NatHub/refs/heads/master/NatHub.lua"))();
end)

about:Button("某蓝色有飞行带卡密",function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Dead-Rails-Alpha-Dead-Rails-OP-KiciaHook-Script-Fastest-Auto-Farm-35961"))()
end)

about:Button("飞行不拉回",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yes1nt/yes/refs/heads/main/DeadrailsTrial/Deadrails%20Trial%20V2"))()
end)