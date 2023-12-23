local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/MxTQ99un"))()
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
local Window = OrionLib:MakeWindow({Name = "VL脚本2.0", HidePremium = false, SaveConfig = true,IntroText = "VL脚本2.0", ConfigFolder = "VL脚本2.0"})

local about = Window:MakeTab({
    Name = "vil制作",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
about:AddParagraph("请勿盗用")
about:AddParagraph("作者:vil.")
about:AddParagraph("支持脚本")
about:AddParagraph("测试员尘墨 ")
about:AddParagraph(" 诈尸哥迷你世界玩多了")
about:AddParagraph(" qwq撸管撸多了")
about:AddParagraph(" vil太帅了")
about:AddParagraph(" 尘墨恶俗磨针了")
about:AddParagraph(" boy装逼装多了")
about:AddParagraph(" 骨盗勾史小学生")
about:AddParagraph(" gnb寄吧讨口子")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph(" ")
about:AddParagraph("迷你世界太厉害了")

OrionLib:MakeNotification({
	Name = "脚本",
	Content = "欢迎使用脚本",
	Image = "rbxassetid://13708514549",
	Time = 1
})

local Tab = Window:MakeTab({
	Name = "人物",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "整合",
	Callback = function()
     local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local window = kavoUi.CreateLib("整合","BloodTheme")

---Tabs

local Tab1 = window:NewTab("首页")
local Tab1Section = Tab1:NewSection("首页")
local Tab2 = window:NewTab("开发&汉化")
local Tab2Section = Tab2:NewSection("Made By JN HH Gaming 汉化by:vil")
local Tab2Section = Tab2:NewSection("给JN HH GAMING点点关注随然不认识这人")

---Buttons

Tab1Section:NewButton("攻击体积","修改攻击体积",function()
_G.HeadSize = 25
_G.Disabled = true

game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

Tab1Section:NewToggle("无限跳跃"," 我要飞的更高～",function()
local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
end)

Tab1Section:NewButton("速度","修改速度",function()
function isNumber(str)
  if tonumber(str) ~= nil or str == 'inf' then
    return true
  end
end
local tspeed = 1
local hb = game:GetService("RunService").Heartbeat
local tpwalking = true
local player = game:GetService("Players")
local lplr = player.LocalPlayer
local chr = lplr.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
while tpwalking and hb:Wait() and chr and hum and hum.Parent do
  if hum.MoveDirection.Magnitude > 0 then
    if tspeed and isNumber(tspeed) then
      chr:TranslateBy(hum.MoveDirection * tonumber(tspeed))
    else
      chr:TranslateBy(hum.MoveDirection)
    end
  end
end
end)

Tab1Section:NewButton("穿墙","老熟人不多介绍",function()
local StealthMode = true -- If game has an anticheat that checks the logs

local Indicator

if not StealthMode then
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    print("穿墙: 电脑端按住键盘E")
    Indicator = Instance.new("TextLabel", ScreenGui)
    Indicator.AnchorPoint = Vector2.new(0, 1)
    Indicator.Position = UDim2.new(0, 0, 1, 0)
    Indicator.Size = UDim2.new(0, 200, 0, 50)
    Indicator.BackgroundTransparency = 1
    Indicator.TextScaled = true
    Indicator.TextStrokeTransparency = 0
    Indicator.TextColor3 = Color3.new(0, 0, 0)
    Indicator.TextStrokeColor3 = Color3.new(1, 1, 1)
    Indicator.Text = "穿墙:运行成功"
end

local noclip = false
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local mouse = player:GetMouse()

mouse.KeyDown:Connect(function(key)
    if key == "e" then
        noclip = not noclip

        if not StealthMode then
            Indicator.Text = "Noclip: " .. (noclip and "Enabled" or "Disabled")
        end
    end
end)

while true do
    player = game.Players.LocalPlayer
    character = player.Character

    if noclip then
        for _, v in pairs(character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end)
        end
    end

    game:GetService("RunService").Stepped:wait()
end
end)
	end    
})


local Section = Tab:AddSection({
	Name = "需要搭配键盘e使用穿墙"
})

Tab:AddButton({
	Name = "彩虹",
	Callback = function()
      	--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("MeshPart") then
        v.Material = "ForceField"
        spawn(function()
            while wait() do
                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("MeshPart") then
                        v.Color = Color3.fromHSV(tick()%5/5,1,1)
                        wait()
                    end
                end 
            end
        end)
    end
end
  	end    
})

Tab:AddButton({
	Name = "飞行",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt"))()
  	end    
})

Tab:AddTextbox({
	Name = "移动速度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	 
})
 
Tab:AddTextbox({
	Name = "跳跃高度",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	 
})

Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
	end
})

Tab:AddButton({
	Name = "人物无敌",
	Callback = function()
     loadstring(game:HttpGet('https://pastebin.com/raw/H3RLCWWZ'))()
	end    
})

Tab:AddButton({
	Name = "变成蛇",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})

Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})

Tab:AddButton({
  Name = "自瞄机器人",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/noobvil/aimbot/main/Aimbot.lua"))()
  end
})

Tab:AddButton({
	Name = "爬墙",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
end
})



Tab:AddButton({
	Name = "防止掉线（反挂机）",
	Callback = function()
	print("Anti Afk On")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
  	end
})

Tab:AddButton({
	Name = "甩飞别人",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddParagraph("您的用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("您的注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddButton({
	Name = "光影",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end
})

Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})

Tab:AddButton({
  Name = "最强透视",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/uw2P2fbY"))()
  end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
	Name = "转起来",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})

Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end
})

Tab:AddButton({
	Name = "鼠标（手机非常不建议用）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})

Tab:AddButton({
	Name = "隐身（😇",
	Callback = function()
      	loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)",true))()
  	end
})

Tab:AddButton({
  Name = "指令挂",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  end
})


Tab:AddButton({
	Name = "替身",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
  	end
})

Tab:AddButton({
	Name = "伪别人说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})

Tab:AddButton({
	Name = "子弹追踪部分游戏不通用",
	Callback = function()
     local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()
       
       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)

setreadonly(GameMetaTable, true)
	end    
})

local Tab = Window:MakeTab({
	Name = "游戏脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "刀刃球",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/xdevslasher/xyz.BB/main/xyz.bb.lua",true))()
  end
})

Tab:AddButton({
  Name = "黑火药",
  Callback = function ()
    local scriptUrl = "https://raw.githubusercontent.com/EnableDev1/kitten/main/fdsasd9ujiofsdiufu9834u89fu389-obfuscated.lua"

local function loadAndExecuteScript(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)

    if success then
        local loadedFunction, loadError = loadstring(response)
        if loadedFunction then
            local executionSuccess, executionerror = pcall(loadedFunction)
            if not executionSuccess then
                warn("Error executing the loader dm o9am. " .. executionerror)
            end
        else
            warn("" .. loadError)
        end
    else
        warn("" .. response)
    end
end

loadAndExecuteScript(scriptUrl)
  end
})

Tab:AddButton({
  Name = "ohio",
  Callback = function ()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\99\114\105\112\116\115\46\118\105\115\117\114\117\115\46\100\101\118\47\111\104\105\111\47\115\111\117\114\99\101"))()
  end
})

Tab:AddButton({
  Name = "mad city",
  Callback = function ()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
_G.serverhop = true --true > Auto Execute Folder
_G.wait = 5 --Time after its Starting to Rob
loadstring(game:HttpGet("https://raw.githubusercontent.com/aymarko/Autorob-Loadstring/main/Code", true))()
  end
})

Tab:AddButton({
  Name = "元素地下城",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/elemental/main/Dungeons"))()
  end
})

Tab:AddButton({
  Name = "自然灾害",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/9NLK7/93qjoadnlaknwldk/main/main'))()
  end
})

Tab:AddButton({
  Name = "我的世界",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0craftblox", true))()
  end
})

Tab:AddButton({
  Name = "宠物模拟器99",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/PetSimulator99/main/redz9999.lua"))()
  end
})

Tab:AddButton({
  Name = "战争大亨",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/q94czk7E",true))()
  end
})

Tab:AddButton({
  Name = "战斗勇士",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SussyImposterRed/Scripts/main/NOVA_HUB_SOURCE"))()
  end
})

Tab:AddButton({
  Name = "武器库",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/F2B-HUB/F2B/main/HUB"))()
  end
})

Tab:AddButton({
  Name = "一路向西",
  Callback = function ()
    loadstring(game:GetObjects("rbxassetid://10040701935")[1].Source)()
  end
})

Tab:AddButton({
  Name = "the mimic",
  Callback = function ()
    loadstring(game:HttpGet("https://scriptblox.com/raw/UPDATE-The-Mimic-Instant-Finish-Nightmare-Normal-TWT-And-Halloween-Trials-6497"))()
  end
})

Tab:AddButton({
  Name = "the rake",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CHEATERFUN/The-Rake-REMASTERED-Script/main/Source.lua"))()
  end
})

Tab:AddButton({
  Name = "扣篮模拟器",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/RiyazDE/RiyazHub/main/Dunking%20Simulator%20RiyazHub'))();
  end
})

Tab:AddButton({
  Name = "只因剑",
  Callback = function ()
    loadstring(game:HttpGet(('https://gist.githubusercontent.com/blox-hub-roblox/021bad62bbc6a0adc4ba4e625f9ad7df/raw/c89af6e1acf587d09e4ce4bc7510e7100e0c0065/swordWarrior.lua'),true))()
  end
})

local Tab = Window:MakeTab({
	Name = "游戏脚本1.5",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "进击的僵尸",
  Callback = function ()
    loadstring(game:HttpGet('https://ghost-storage.7m.pl/scripts/ghosthublauncher.lua'))()
  end
})

Tab:AddButton({
  Name = "越狱",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Pxsta72/ProjectAuto/main/free"))()
  end
})

Tab:AddButton({
  Name = "blox fruits",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
  end
})

Tab:AddButton({
  Name = "僵尸起义",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/xSyon/ZombieAttack/main/engine.lua'),true))()
  end
})

Tab:AddButton({
  Name = "自行车obby",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/romkich09/keySystem/main/mainKey'),true))()
  end
})

Tab:AddButton({
  Name = "michaelzombie",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MichaelZombies.lua"))()
  end
})

Tab:AddButton({
  Name = "蜂群模拟器",
  Callback = function ()
    loadstring(game:HttpGet("https://rahttps://rahttps://raw.githubusercontent.com/USA868/USA--/main/.github/%E5%B7%A5%E4%BD%9C%E6%B5%81%E7%A8%8B/1%E6%9D%96%E4%BA%BA%E4%BD%BF%E7%94%A8?token=GHSAT0AAAAAACB6LLQWA5JNQNNWTP47AOWSZCLYRTQ"))()
  end
})

Tab:AddButton({
  Name = "evade",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
  end
})

Tab:AddButton({
  Name = "动感星期五",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ShowerHead-FluxTeam/scripts/main/funky-friday-autoplay'))()
  end
})

Tab:AddButton({
  Name = "极速传奇",
  Callback = function ()
    loadstring(game:HttpGet('\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\98\111\121\115\99\112\47\98\101\116\97\47\109\97\105\110\47\37\69\57\37\56\48\37\57\70\37\69\53\37\66\65\37\65\54\37\69\55\37\56\50\37\66\56\37\69\56\37\66\53\37\66\55\46\108\117\97'))()
  end
})

Tab:AddButton({
  Name = "造船刷金不可取消",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/Lyy77rnr",true))()
  end
})

Tab:AddButton({
  Name = "doors",
  Callback = function ()
    loadstring(game:HttpGet(('https://pastebin.com/raw/R8QMbhzv')))()
  end
})

Tab:AddButton({
  Name = "饥饿艺术家",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SuperRegex/RobloxScripts/main/DrawingScript.lua"))()
  end
})

Tab:AddButton({
  Name = "回答或死亡",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/jaeelin/S-Ware/main/S-WARE'))()
  end
})

Tab:AddButton({
  Name = "鲨口求生",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/YYVLbzVg", true))()
  end
})

Tab:AddButton({
  Name = "兵工厂",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Storm99999/whitelistkeys/main/SCRIPT_VIP.lua"))()
  end
})

Tab:AddButton({
  Name = "技能大战2卡密：lMXJsryGVIajsQrMJmaVde3MIUoHCa",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/VxleLUA/Dynamic-Offical/main/System/GameChecker.lua"))()
  end
})

Tab:AddButton({
  Name = "派系防御大亨",
  Callback = function ()
    game:GetService("ReplicatedStorage").PlayerMoneyUpdate[game:GetService("Players").LocalPlayer.Name]:FireServer(999999999)
  end
})

Tab:AddButton({
  Name = "导弹模拟器",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/NukeSim/main/Main'))()
  end
})

Tab:AddButton({
  Name = "伐木大亨2",
  Callback = function ()
    loadstring(game:HttpGet('http://pan.rlyun.asia/api/v3/file/get/15754/%E4%BC%90%E6%9C%A8?sign=cLaJaGOk-K27o0mPP7U3iELEvkgLCTCbTO90pUdHlBk%3D%3A0'))()
  end
})

Tab:AddButton({
  Name = "旗帜大战",
  Callback = function ()
    loadstring(game:HttpGet("https://www.textbin.online/paste.php?raw&id=214", true))()
  end
})

Tab:AddButton({
  Name = "凹凸世界",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/KissxTay/caramelldansen/main/chinese%20event", true))()
  end
})

Tab:AddButton({
  Name = "健壮传奇",
  Callback = function ()
    loadstring(game:HttpGet('https://ghostbin.co/paste/ctpa/raw'))()
  end
})

Tab:AddButton({
  Name = "鲨口求生2",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Sw1ndlerScripts/RobloxScripts/main/Misc%20Scripts/sharkbite2.lua",true))()
  end
})

Tab:AddButton({
  Name = "break in",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/28Z4ExEn", true))()
  end
})

Tab:AddButton({
  Name = "变异微笑",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Nicuse/RobloxScripts/main/InfectiousSmile.lua", true))()
  end
})

Tab:AddButton({
  Name = "nico bot",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/tYERh8pe"))()
  end
})

Tab:AddButton({
  Name = "生存杀手",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Kiroftt/Survive-The-Killer/main/Simple'))();
  end
})

Tab:AddButton({
  Name = "杀手vs警长",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0murder", true))()
  end
})

local Tab = Window:MakeTab({
	Name = "游戏脚本2",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "3008",
  Callback = function ()
    loadstring(game:HttpGet'https://raw.githubusercontent.com/RunDTM/scripts/main/3008.lua')()
  end
})

Tab:AddButton({
  Name = "在51区生存",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ZONE100/ZoneHub/main/MultiGames"))()
  end
})

Tab:AddButton({
  Name = "能力大战",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/castycheat/abilitywars/main/Protected%20(29).lua"))()
  end
})

Tab:AddButton({
  Name = "起床战争",
  Callback = function ()
    loadstring(game:HttpGet('https://load.newvape.dev/', true))()
  end
})

Tab:AddButton({
  Name = "我的餐厅",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Rafacasari/roblox-scripts/main/mr.lua"))()
  end
})

Tab:AddButton({
  Name = "入侵者伪人",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/FGjjwm6W"))()
  end
})

Tab:AddButton({
  Name = "核弹模拟器",
  Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/KodaLINEN/NukeSim/main/Main'))()
  end
})

Tab:AddButton({
  Name = "骨折4",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingResources/GamingResources-Script-Hub/main/Key%20System", true))()
  end
})

Tab:AddButton({
  Name = "查尔斯小火车",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe2/ToraIsMe2/main/0edward", true))()
  end
})

Tab:AddButton({
  Name = "克隆大亨2",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/HELLLO1073/RobloxStuff/main/CT-Destroyer"))()
  end
})

Tab:AddButton({
  Name = "战斗大亨",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/megamoeus/UI-Engine-V2/main/OWTPublic"))()
  end
})

Tab:AddButton({
  Name = "枪械模拟器/",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TrixAde/Proxima-Hub/main/Main.lua"))()
  end
})

Tab:AddButton({
  Name = "杀手谜团",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ihaveash0rtnamefordiscord/Releases/main/MurderMystery2HighlightESP"))(' Watermelon ?')
  end
})

Tab:AddButton({
  Name = "鱿鱼游戏",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LilFrench21/Hecta/main/Script/Squid%20Game"))()
  end
})

Tab:AddButton({
  Name = "犯罪",
  Callback = function ()
    loadstring(game:HttpGet(string.reverse("aul.niam/d2cdf8ce4833d4a4d10e3f89c90f312296b07841/war/be031eb234a882ecb50f2015f5be9592/gnimagdahcagemo/moc.tnetnocresubuhtig.tsig//:sptth")))()
  end
})

Tab:AddButton({
  Name = "火箭模拟器",
  Callback = function ()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/dizyhvh/rbx_scripts/main/321_blast_off_simulator')))()
  end
})

Tab:AddButton({
  Name = "最强战场",
  Callback = function ()
    jianke_V3 = "作者_初夏"jianke = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
  end
})

Tab:AddButton({
  Name = "忍者传奇",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
  end
})

Tab:AddButton({
  Name = "胭脂模拟器",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/USA868/USA--/main/%E5%8C%97%E7%BA%A6%E8%84%82%E8%82%AA?token=GHSAT0AAAAAACB6LLQXW62E3GRGCTS3O4RCZCMUN2Q"))()
  end
})

Tab:AddButton({
  Name = "帝国中心",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/aerocontentdeliverynetwork/3456465f7453x447r76h86856233423645756354b/master/loader.lua"))()
  end
})

local Tab = Window:MakeTab({
	Name = "FE脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "长jb（可能有些用不了）",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
  end
})

Tab:AddButton({
  Name = "钢铁侠 有惊喜",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PSXhuge/1/114514/sb2"))()
  end
})

Tab:AddButton({
  Name = "动作",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/HrXgGiND"))()
  end
})

Tab:AddButton({
  Name = "coolgui",
  Callback = function ()
    loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  end
})

Tab:AddButton({
  Name = "1x1x1",
  Callback = function ()
    loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  end
})

Tab:AddButton({
  Name = "工具包",
  Callback = function ()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))(
  end
})

local Tab = Window:MakeTab({
	Name = "创作者脚本",
	Icon = "rbxassetid://13519683179",
	PremiumOnly = false
})

Tab:AddButton({
  Name = "西脚本",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/WxumTKLD"))()
  end
})

Tab:AddButton({
  Name = "林脚本卡密林帅比",
  Callback = function ()
    lin = "林天帝nb"lin ="林QQ群 759054392"loadstring(game:HttpGet("https://raw.githubusercontent.com/linnblin/linnb/main/linnb"))()
  end
})

Tab:AddButton({
  Name = "皇v5",
  Callback = function ()
    loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/8577/皇v5.txt?sign=ToDT3Udyh4r3WwDu_yVblRL849qC2GJjjjQ7FTidF_w=:0"))()
  end
})

Tab:AddButton({
  Name = "剑客v3",
  Callback = function ()
    jianke_V3 = "作者_初夏"jianke = "剑客QQ群601704430"loadstring(game:HttpGet(('https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/jianke_V3')))()
  end
})

Tab:AddButton({
  Name = "北极脚本",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
  end
})

Tab:AddButton({
  Name = "鲨脚本",
  Callback = function ()
    loadstring(game:HttpGet("https://pastebin.com/raw/wQjdbYXE", true))()
  end
})

Tab:AddButton({
  Name = "脚本中心",
  Callback = function ()
    loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\103\101\109\120\72\119\65\49"))()
  end
})

Tab:AddButton({
  Name = "云脚本",
  Callback = function ()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/XiaoYun_currentedition_beta.lua"))()
  end
})