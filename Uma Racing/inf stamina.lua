local rs = game:GetService("ReplicatedStorage")
local sprint = rs.remotes.RequestSprintAction

if identifyexecutor and (identifyexecutor() == "Xeno" or identifyexecutor() == "Solara") then
    game:GetService("Players").LocalPlayer:Kick("trash exec")
    return
end

local old
old = hookmetamethod(game,"__namecall",function(self,...)
    if not checkcaller() and self == sprint and getnamecallmethod() == "FireServer" then
        return
    end
    return old(self,...)
end)
