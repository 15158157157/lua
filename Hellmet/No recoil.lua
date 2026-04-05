local lp = game.Players.LocalPlayer

local function recoil(char)
    char.AttributeChanged:Connect(function(attr)
        if attr:find("Recoil_CameraOffset") then
            char:SetAttribute(attr, CFrame.new())
        end
    end)
end

recoil(lp.Character or lp.CharacterAdded:Wait())
lp.CharacterAdded:Connect(recoil)
