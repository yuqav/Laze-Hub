local lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/yuqav/Laze-Hub/refs/heads/main/ui.lua'))()
local window = lib.createWindow("Laze", "Laze - Kick Friend", true)

local tab1 = window.createTab("Function")

tab1.createButton("Auto Win", function()
    while true do
        local args = {
            [1] = "2"
        }
        
        game:GetService("ReplicatedStorage").Library.Knit.Services.KickService.RE.Start:FireServer(unpack(args))
        local args = {
            [1] = 10000
        }
        
        game:GetService("ReplicatedStorage").Library.Knit.Services.KickService.RE.End:FireServer(unpack(args))
        task.wait()
        end
end)

tab1.createButton("Auto Train", function()
    while true do
        local args = {
            [1] = "2"
        }
        
        game:GetService("ReplicatedStorage").Library.Knit.Services.TrainingService.RE.Click:FireServer(unpack(args))
        task.wait()
        end
end)
