print("V2 Updated")

--"Herbert_TheBervert" fly high, little bervert :(
local whiteListed = {
	"DazedWoozy_isMYhero",
	"NotWhyvernLol"
}

local function checkWhitelist(p)
	for count = 1,#whiteListed,1 do
		if tostring(p) == whiteListed[count] then
			--print(true)
			return true
		--[[else
			print(false)]]
		end
	end
	return false
end

local currentId=11655013143--11645531966 fly high, little bervert :,(

for i,v in pairs(game.Players:GetChildren()) do

	if v:FindFirstChild("WhyvernDataLoader") and checkWhitelist(v) == true then
		v.WhyvernDataLoader.Value = currentId

	elseif v:FindFirstChild("WhyvernDataLoader") and checkWhitelist(v) == false then
		local val = v["WhyvernDataLoader"]
		val.Value = 5
		
	end
end
