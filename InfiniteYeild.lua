
local StarterGui = game:GetService("StarterGui")

-- Show one notification
task.spawn(function()
    for _ = 1, 10 do
        local ok = pcall(function()
            StarterGui:SetCore("SendNotification", {
                Title = "WeAreDevs API",
                Text = "https://wearedevs.net",
                Icon = "rbxassetid://138098424594329",
                Duration = 4
            })
        end)

        if ok then break end
        task.wait(1)
    end
end)

-- Load Infinite Yield
local ok, err = pcall(function()
    loadstring(game:HttpGet(
        "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"
    ))()
end)

if not ok then
    warn("Infinite Yield failed:", err)
end
