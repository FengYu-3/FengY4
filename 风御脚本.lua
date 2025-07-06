local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengY4/refs/heads/main/%E6%B1%BD%E6%B0%B4ui.lua", true))()
----------------------------------------------------------------------------------------------------------------------------------------
local window = library:new("汽水脚本")--V1
----------------------------------------------------------------------------------------------------------------------------------------

local creds = window:Tab("关于", "6031097229")
    local bin = creds:section("信息", true)
    
    bin:Label("作者：齐静春")    
    
    bin:Button("QQ号", function()
    setclipboard("1599267691")
end)
    

    bin:Label("副作者：风御 X")
    
    bin:Button("QQ号", function()
    setclipboard("风御 X：不处谢谢")
end)
    

    bin:Label("禁止倒卖")
    bin:Label("感谢支持")
    
    bin:Button("脚本主群", function()
    setclipboard("1009641699")
end)
    

    local credits = creds:section("Ul设置", true)

credits:Toggle("脚本框架变小一点", "", false, function(state)
        if state then
        game:GetService("CoreGui")["frosty"].Main.Style = "DropShadow"
        else
            game:GetService("CoreGui")["frosty"].Main.Style = "Custom"
        end
    end)
    
        credits:Button("扔出去",function()
            game:GetService("CoreGui")["frosty"]:Destroy()
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
    
