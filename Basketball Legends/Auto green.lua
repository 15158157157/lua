local uis = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer
local bar = player:WaitForChild("PlayerGui"):WaitForChild("Visual"):WaitForChild("Shooting"):WaitForChild("Bar")

uis.InputBegan:Connect(function(input, gp)
    if not gp then
        if input.KeyCode == Enum.KeyCode.E then
            bar:TweenSize(UDim2.new(1, 0, 0.999, 0), nil, nil, true)
        end
    end
end)
