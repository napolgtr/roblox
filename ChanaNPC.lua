local chana = workspace.Chana --Change to your NPC
local dialog = chana.Head.Dialog


dialog.DialogChoiceSelected:Connect(function(player, choice)
	print("PlayerChoice: ",player, "choice:", choice.Name)
	if choice.Name == "BadChoice" then
		print("Bad")
	else
		print("Good")
	end
	dialog.InitialPrompt = "Have a nice day."
	for _, child in pairs(dialog:GetChildren()) do
		if child:IsA("DialogChoice") then
			child:Destroy()
		end
	end
	
end)
