local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/yuqav/Laze-Hub/refs/heads/main/ui.lua'))()
local window = lib.createWindow("Laze", "Laze - Go Fishing", true)
local tab1 = window.createTab("Main")

local antiAfk = false
local player = game.Players.LocalPlayer

local function antiafk()
    local VirtualUser = game:GetService("VirtualUser")
    player.Idled:Connect(function()
        if antiAfk then
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end
    end)
end

tab1.createToggle("Auto Fish", false, function(v)
    if v then
        game:GetService("Players").LocalPlayer.gui.autofishing.Value = v
    end
end)

tab1.createToggle("Anti Afk", false, function(v)
    antiAfk = v
    if antiAfk then
        task.spawn(antiafk)
    end
end)

tab1.createDropdown("Teleport to", {"Default Isle", "Vulcano Isle", "Snowy Biome", "Deep Waters", "Ancient Ocean", "High Field", "Toxic Zone"}, "Default Isle", function(v)
    if v == "Default Isle" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(779, 125, -216))
    elseif v == "Vulcano Isle" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(230, 126, 911))
    elseif v == "Snowy Biome" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(2304, 127, 358))
    elseif v == "Deep Waters" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(-987, 124, -1564))
    elseif v == "Ancient Ocean" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(566, 125, -2889))
    elseif v == "High Field" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(2596, 123, -3445))
    elseif v == "Toxic Zone" then
        player.Character:SetPrimaryPartCFrame(CFrame.new(4692, 128, -2471))
    end
end)
