-- Champus Inc..
for _, x in ipairs(game.workspace:GetDescendants()) do
  if x:IsA('LocalScript') and (x:FindFirstChild('RemoteEvent') or x:FindFirstChild("Event")) then
    local clone = Instance.new('LocalScript'); clone.Name = x.Name
    clone.Parent = x.Parent
    x:Destroy()
  end
end
--/ ...
