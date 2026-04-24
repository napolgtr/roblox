local button = script.Parent
local mainMenu = button.Parent

button.MouseButton1Click:Connect(function()
	mainMenu.Visible = false
end)
