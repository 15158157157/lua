if identifyexecutor and (identifyexecutor() == "Solara" or identifyexecutor() == "Xeno") then
	game:GetService("Players").LocalPlayer:Kick("garbage")
	return
end

local oldRequire
oldRequire = hookfunction(require,function(module)
	local result = oldRequire(module)
	if type(result) == "table" then
		if result.camRecoil then
			result.camRecoil.camRecoilUp = {0,0}
			result.camRecoil.camRecoilTilt = {0,0}
			result.camRecoil.camRecoilLeft = {0,0}
			result.camRecoil.camRecoilRight = {0,0}
		end
		if result.gunRecoil then
			result.gunRecoil.gunRecoilUp = {0,0}
			result.gunRecoil.gunRecoilTilt = {0,0}
			result.gunRecoil.gunRecoilLeft = {0,0}
			result.gunRecoil.gunRecoilRight = {0,0}
		end
	end
	return result
end)
