--==================================================
-- SERVICES
--==================================================

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local SoundService = game:GetService("SoundService")
local Lighting = game:GetService("Lighting")

local player = Players.LocalPlayer

--==================================================
-- SETTINGS
--==================================================

local LINKS = "https://t.me/dxlrob\nhttps://t.me/mmcmy"
local REAL_KICK_AFTER = 20 -- وقت الكيك

--==================================================
-- NOTIFICATION + AUTO COPY
--==================================================

setclipboard(LINKS)

StarterGui:SetCore("SendNotification",{
 Title = "تم تحديث السكربت",
 Text = "تم نسخ الرابط تلقائياً",
 Duration = 4
})

--==================================================
-- SOUND FUNCTION
--==================================================

local function playSound(id)
	local s = Instance.new("Sound")
	s.SoundId = "rbxassetid://"..id
	s.Volume = 1
	s.Parent = SoundService
	s:Play()
	game.Debris:AddItem(s,3)
end

playSound(6895079853)

--==================================================
-- GUI BASE
--==================================================

local gui = Instance.new("ScreenGui")
gui.IgnoreGuiInset = true
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Blur
local blur = Instance.new("BlurEffect")
blur.Size = 0
blur.Parent = Lighting
TweenService:Create(blur,TweenInfo.new(0.4),{Size = 24}):Play()

-- Background
local bg = Instance.new("Frame")
bg.Size = UDim2.new(1,0,1,0)
bg.BackgroundColor3 = Color3.fromRGB(25,25,25)
bg.BackgroundTransparency = 1
bg.Parent = gui

TweenService:Create(bg,TweenInfo.new(0.4),{
 BackgroundTransparency = 0
}):Play()

--==================================================
-- MAIN BOX
--==================================================

local box = Instance.new("Frame")
box.Size = UDim2.new(0,520,0,380)
box.Position = UDim2.new(.5,-260,.5,-190)
box.BackgroundColor3 = Color3.fromRGB(40,40,40)
box.Parent = bg
Instance.new("UICorner",box).CornerRadius = UDim.new(0,12)

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1,0,0,50)
title.BackgroundTransparency = 1
title.Text = "🤖 DEV AXL"
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.TextColor3 = Color3.new(1,1,1)
title.Parent = box

-- Chat Frame
local chatFrame = Instance.new("Frame")
chatFrame.Size = UDim2.new(1,-20,1,-110)
chatFrame.Position = UDim2.new(0,10,0,50)
chatFrame.BackgroundTransparency = 1
chatFrame.Parent = box

local layout = Instance.new("UIListLayout",chatFrame)
layout.Padding = UDim.new(0,8)

-- Countdown Text
local countdown = Instance.new("TextLabel")
countdown.Size = UDim2.new(1,0,0,30)
countdown.Position = UDim2.new(0,0,1,-30)
countdown.BackgroundTransparency = 1
countdown.TextColor3 = Color3.fromRGB(255,80,80)
countdown.Font = Enum.Font.GothamBold
countdown.TextScaled = true
countdown.Parent = box

-- Copy Button
local copy = Instance.new("TextButton")
copy.Size = UDim2.new(0.4,0,0,40)
copy.Position = UDim2.new(.3,0,1,-70)
copy.Text = "نسخ الرابط"
copy.BackgroundColor3 = Color3.fromRGB(0,170,255)
copy.TextColor3 = Color3.new(1,1,1)
copy.TextScaled = true
copy.Parent = box
Instance.new("UICorner",copy).CornerRadius = UDim.new(0,8)

copy.MouseButton1Click:Connect(function()
	setclipboard(LINKS)
	copy.Text = "تم النسخ ✓"
	playSound(6895079853)
end)

--==================================================
-- CHAT MESSAGE FUNCTION
--==================================================

local function addMessage(textMsg,isBot)
	local msg = Instance.new("TextLabel")
	msg.Size = UDim2.new(1,0,0,30)
	msg.BackgroundTransparency = 1
	msg.Font = Enum.Font.Gotham
	msg.TextScaled = true
	msg.TextWrapped = true
	msg.TextXAlignment = Enum.TextXAlignment.Left
	
	if isBot then
		msg.TextColor3 = Color3.fromRGB(0,200,255)
	else
		msg.TextColor3 = Color3.fromRGB(255,255,255)
	end
	
	msg.Text = textMsg
	msg.Parent = chatFrame
	
	playSound(6895079853)
	task.wait(.5)
end

--==================================================
-- AUTO CHAT BOT
--==================================================

task.wait(1)

addMessage("تنبيه: السكربت تم تحديثه",true)

task.wait(1)
addMessage("ليش تم تحديث السكربت؟",false)

task.wait(1)
addMessage("لان حيصير السكربت اقوى و امان اكثر",true)

task.wait(1)
addMessage("هل السكربت مفتاح؟",false)

task.wait(1)
addMessage("لا — قررت اسويه مجاني",true)

task.wait(1)
addMessage("كيف اشتري السورس؟",false)

task.wait(1)
addMessage("عن طريق التليكرام:",true)
addMessage(LINKS,true)

--==================================================
-- COUNTDOWN + REAL KICK
--==================================================

for i = REAL_KICK_AFTER,1,-1 do
	countdown.Text = "سيتم الخروج خلال "..i.." ثانية"
	task.wait(1)
end

player:Kick("تم تحديث السكربت — ادخل الرابط الجديد:\n"..LINKS)
