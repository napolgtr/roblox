game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local stage = Instance.new("IntValue")
	stage.Name = "Stage"
	stage.Value = 1 
	stage.Parent = leaderstats


	player.CharacterAdded:Connect(function(character)
		task.wait(0.1) 
		local checkpoint = game.Workspace.Checkpoints:FindFirstChild(tostring(stage.Value))
		if checkpoint then
			character:MoveTo(checkpoint.Position + Vector3.new(0, 3, 0))
		end
	end)
end)
