local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt,false)

mt.__namecall = function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FireServer" and self.Name == "nya" then
        local data = args[1]
        if typeof(data) == "table" and data.t == "metrics" then
            data.fps = 6700
            data.mem = 41
            data.res = Vector2.new(1440,1920)
        end
    end
    return old(self, unpack(args))
end

setreadonly(mt,true)
