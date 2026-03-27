local Stamina = game:GetService("Players").LocalPlayer:WaitForChild("ServerVariables"):WaitForChild("Sprint"):WaitForChild("Stamina")

Stamina.Changed:Connect(function()
    if Stamina.Value == 0 then
        Stamina.Value = 100
    end
end)
