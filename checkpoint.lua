local checkpoint = script.Parent

checkpoint.Touched:Connect(function(hit)
	local character = hit.Parent
	local player = game.Players:GetPlayerFromCharacter(character)

	if player then
		local stage = player.leaderstats.Stage
		local checkpointNumber = tonumber(checkpoint.Name)
		stage.Value = checkpointNumber
	end
end)
