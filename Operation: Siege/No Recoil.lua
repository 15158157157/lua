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
		if result.MinRecoilPower then
			result.MinRecoilPower = 0
		end
		if result.MaxRecoilPower then
			result.MaxRecoilPower = 0
		end
		if result.RecoilPowerStepAmount then
			result.RecoilPowerStepAmount = 0
		end
	end
	return result
end)
