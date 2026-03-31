local players = game:GetService('Players')
local rs = game:GetService('RunService')

rs.Heartbeat:Connect(function()
    for _, player in players:GetPlayers()do
        local char = player.Character
        if char then
            char:SetAttribute('Stamina', 100)
        end
    end
end)
