local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/yuqav/Laze-Hub/refs/heads/main/ui.lua'))()
local window = lib.createWindow("Laze", "Laze - Slide & Fly", true)

local tab1 = window.createTab("Function")

tab1.createButton("Auto Win", function()
    while true do
        local args = {
            [1] = "Area_4"
        }
        
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.5.1").knit.Services.SlideService.RE.FinishFly:FireServer(unpack(args))
        task.wait(0.1)
        end
end)
