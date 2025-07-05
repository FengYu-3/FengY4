local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengY4/refs/heads/main/%E6%B1%BD%E6%B0%B4ui.lua", true))()
----------------------------------------------------------------------------------------------------------------------------------------
local window = library:new("汽水脚本")--V1
----------------------------------------------------------------------------------------------------------------------------------------

local creds = window:Tab("关于", "6031097229")
    local bin = creds:section("信息", true)
    
    bin:Label("作者神青")    
    bin:Label("神青脚本V6")
    bin:Label("作者师傅：叶")
    bin:Label("永久免费")
    bin:Label("帮助者：鹤")
    bin:Label("做完这个我绝定不更新去学艺了，下次不知道什么时候更新")
    bin:Label("禁止倒卖")
    bin:Label("感谢支持")
    bin:Label("欢迎你的使用")
    bin:Label("神青大王nb")
    bin:Label("原来的神青脚本已经发展了")
    
    bin:Button("复制神青脚本主群", function()
    setclipboard("1003591865")
end)
    bin:Button("复制神青脚本副群", function()
    setclipboard("1015840930")
end)
    

    local credits = creds:section("Ul设置", true)

credits:Toggle("移除UI辉光", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = false
        else
            game:GetService("CoreGui")["frosty is cute"].Main.DropShadowHolder.Visible = true
        end
    end)

    credits:Toggle("彩虹UI", "", false, function(state)
        if state then
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty is cute"].Main.Style = "Custom"
        end
    end)
credits:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    
        credits:Button("摧毁GUI",function()
            game:GetService("CoreGui")["frosty is cute"]:Destroy()
        end)

local creds = window:Tab("通用",'7733765398')

local credits = creds:section("通用脚本",true)
credits:Textbox("快速跑步(推荐调2)", "tpwalking", "输入", function(king)
local tspeed = king
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)
