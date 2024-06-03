g = game
p = g.Players
w = workspace

function u(l, s)
	l = p[l]
	if l and l:FindFirstChild("leaderstats") then
		l.leaderstats.Score.Value = s
	end
end

function s(n, a)
	local f = Instance.new("Folder", a)
	f.Name = "leaderstats"
	local v = Instance.new("IntValue", f)
	v.Name = n
	v.Value = 0
end

p.PlayerAdded:Connect(function(a)
	s("Score", a)
end)

for _, o in pairs(w.cp:GetChildren()) do
	o.Touched:Connect(function(t)
		local h = t.Parent:FindFirstChild("Humanoid")
		if h then
			u(h.Parent.Name, tonumber(o.Name))
		end
	end)
end
