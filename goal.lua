local gameend = false

local function onGoal(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	local player = game.Players:GetPlayerFromCharacter(character)
	
	if player and gameend == false then
		gameend = true
		local playerGui = player:WaitForChild("PlayerGui")
		local screenGui = playerGui:FindFirstChild("ScreenGui")
		if screenGui then
			screenGui.Enabled = true
		end
		task.wait(2)
		humanoid.Health = 0
		gameend = false
	end
end

script.Parent.Touched:Connect(onGoal)
