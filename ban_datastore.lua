g=game
p=g.Players
g=g.DataStoreService:GetDataStore(".")
p.PlayerAdded:Connect(function(l)
	b=g:GetAsync(l.UserId)
	if b then
		l:Kick()
	end
end)
