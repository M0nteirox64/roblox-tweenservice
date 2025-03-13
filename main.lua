local proximityPrompt = script.Parent
local TS = game:GetService("TweenService")

local Part = game.Workspace.Mov

proximityPrompt.Triggered:Connect(function(player)
	local TI = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
	print("[ + ] O jogador " .. player.Name .. " interagiu com a part")
	local tween = TS:Create(game.Workspace.Mov,TI, {CFrame = CFrame.new(12, 8.5, 32)}):Play()
	print("[ + ] Posição da part: ".. tostring(Part.Position))
end)
