local whiteListed = {
	"Herbert_TheBervert",
	"DazedWoozy_isMYhero"
}
--test
local function checkWhitelist(p)
	for count = 1,#whiteListed,1 do
		if tostring(p) == whiteListed[count] then
			print(true)
			return true
		else
			print(false)
		end
	end
	return false
end

local currentId = 11645531966

for i,v in pairs(game.Players:GetChildren()) do
	if v:FindFirstChild("WhyvernDataLoader") and checkWhitelist(v) == true then
		v.WhyvernDataLoader.Value = currentId
	elseif v:FindFirstChild("WhyvernDataLoader") and checkWhitelist(v) == false then
		v.WhyvernDataLoader.Value = 0
	end
end
