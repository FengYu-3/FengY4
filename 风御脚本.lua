if getgenv().ED_AntiKick then
	return
end

getgenv().ED_AntiKick = {
	Enabled = true, -- Set to false if you want to disable the Anti-Kick.
	SendNotifications = true, -- Set to true if you want to get notified for every event
	CheckCaller = true -- Set to true if you want to disable kicking by other executed scripts
}
                warn("Anti afk running")
game:GetService("Players").LocalPlayer.Idled:connect(function()
warn("Anti afk ran")
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
local drop
local function dealerships()
local tables = {"Dealerships"}
for i,v in pairs(workspace.Etc.Dealership:GetChildren()) do
    if v.ClassName == "Model" then
    table.insert(tables,v.Name)
end
end
return tables
end
getfenv().grav = workspace.Gravity
local bai = {
    axedupe = false,
    soltnumber = "1",
    waterwalk = false,
    awaysday = false,
    awaysdnight = false,
    nofog = false,
    axeflying = false,
    playernamedied = "",
    tptree = "",
    moneyaoumt = 1,
    moneytoplayername = "",
    donationRecipient = tostring(game.Players.LocalPlayer),
    autodropae = false,
    farAxeEquip = nil,
    cuttreeselect = "Generic",
    autofarm = false,
    PlankToBlueprint = nil,
    plankModel = nil,
    blueprintModel = nil,
    saymege = "",
    autosay = false,
    saymount = 1,
    sayfast = false,
    autofarm1 = false,
    bringamount = 1,
    bringtree = false,
    dxmz = "",
    color = 0,
    0,
    0,
    zlwjia = "",
    mtwjia = nil,
    zix = 1,
    zlz = 3,
    axeFling = nil,
    itemtoopen = "",
    openItem = nil,
    car = nil,
    load = false,
    autobuyamount = 1,
    autopick = false,
    loaddupeaxewaittime = 3.1,
    walkspeed = 16,
    JumpPower = 50,
    pickupaxeamount = 1,
    whthmose = false,
    itemset = nil,
    LoneCaveAxeDetection = nil,
    cuttree = false,
    LoneCaveCharacterAddedDetection = nil,
    LoneCaveDeathDetection = nil,
    lovecavecutcframe = nil,
    lovecavepast = nil,
    zlmt = nil,
    shuzhe = false,
    modwood = false,
    tchonmt = nil,
    cskais = false,
    dledetree = false,
    delereeset = nil,
    treecutset = nil,
    autobuyset = nil,
    wood = 7,
    cswjia = nil,
    boxOpenConnection = nil,
    autobuystop = flase,
    dropdown = {},
    autocsdx = nil,
    kuangxiu = nil,
    xzemuban = false,
    daiwp = false,
    stopcar = false
}
 
local dropdown = {}
local playernamedied = ""

for i, player in pairs(game.Players:GetPlayers()) do
    dropdown[i] = player.Name
end

function Notify(top, text, ico, dur)
  game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = top,
    Text = text,
    Icon = ico,
    Duration = dur,
  })
end

getgenv().SheriffAim = false;
getgenv().GunAccuracy = 25;

local GunHook
GunHook = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        local args = { ... }
        if not checkcaller() then
                if typeof(self) == "Instance" then
                        if self.Name == "ShootGun" and method == "InvokeServer" then
                                if getgenv().SheriffAim and getgenv().GunAccuracy then
                                        if Murderer then
                                                local Root = Players[tostring(Murder)].Character.PrimaryPart;
                                                local Veloc = Root.AssemblyLinearVelocity;
                                                local Pos = Root.Position + (Veloc * Vector3.new(getgenv().GunAccuracy / 200, 0, getgenv().GunAccuracy/ 200));
                                                args[2] = Pos;
                                        end;
                                end;
                        end;
                end;
        end;
        return GunHook(self, unpack(args));
end);
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FengYu-3/FengY4/refs/heads/main/%E6%B1%BD%E6%B0%B4ui.lua", true))()
----------------------------------------------------------------------------------------------------------------------------------------
local window = library:new("汽脚本")--V1
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

local creds = window:Tab("通用",'6031097229')

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
    
credits:Toggle("穿山甲", "NoClip", false, function(NC)
  local Workspace = game:GetService("Workspace") local Players = game:GetService("Players") if NC then Clipon = true else Clipon = false end Stepped = game:GetService("RunService").Stepped:Connect(function() if not Clipon == false then for a, b in pairs(Workspace:GetChildren()) do if b.Name == Players.LocalPlayer.Name then for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do if v:IsA("BasePart") then v.CanCollide = false end end end end else Stepped:Disconnect() end end)
    end)

