local players = game:GetService("Players")
local rs = game:GetService("RunService")
local lp = players.LocalPlayer
local weapon = require(lp.PlayerScripts:WaitForChild("WeaponClient"):WaitForChild("WeaponObject"))

rs.RenderStepped:Connect(function()
    local char = lp.Character
    if not char then return end
    local tool = char:FindFirstChildOfClass("Tool")
    if not tool then return end
    if weapon:exists(tool) then
        local obj = weapon.new(tool)
        obj:setAmmo(obj:getMaxAmmo())
        obj:setStoredAmmo(obj:getMaxStoredAmmo())
    end
end)
