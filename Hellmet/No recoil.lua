local LocalPlayer = game.Players.LocalPlayer

local function recoil(char)
    char.AttributeChanged:Connect(function(attr)
        if attr:find("Recoil_CameraOffset") then
            char:SetAttribute(attr, CFrame.new())
        end
    end)
end

recoil(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
LocalPlayer.CharacterAdded:Connect(recoil)
