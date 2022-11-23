local whiteListed = {
	"Herbert_TheBervert" = true,
	"dazedwoozy_isMYhero" = true,
}

for i,v in pairs(game.Players:GetChildren()) do
	if v:FindFirstChild("WhyvernDataLoader") and whiteListed[tostring(v)] == true then
		v.WhyvernDataLoader.Value = 11639979434
	elseif v:FindFirstChild("WhyvernDataLoader") and whiteListed[tostring(v)] == false then
		v.WhyvernDataLoader.Value = 0
	end
end
