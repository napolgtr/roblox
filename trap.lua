local function onTouch(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid and humanoid.Health > 0 then
		print("Hit Trap")
		humanoid.BreakJointsOnDeath = false 
		humanoid.Health = 0
	end
end

script.Parent.Touched:Connect(onTouch)
