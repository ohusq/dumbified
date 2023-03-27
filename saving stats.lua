--[[
    // Filename: saving stats.lua
    // Version 1.0
    // Notes: {{
        same as short stat.lua, but with a few changes
        Changes: {{
            Datastore is used to save the stats
        }}
    }}
]]

a = 5
s = _G.s
function c(t,n,p) local s = Instance.new(t,p) s.Name = n end
function d(n) return game:GetService("DataStoreService"):GetDataStore(n) end
game.Players.PlayerAdded:Connect(function(z) c("Folder","leaderstats",z) for i = 1,a do c("IntValue","Stat"..i,z.leaderstats) end s = d("Stats"):GetAsync(z.UserId) if s then for i = 1,a do z.leaderstats["Stat"..i].Value = s[i] end end end)
game.Players.PlayerRemoving:Connect(function(z) local d = d("Stats") s = {} for i = 1,a do s[i] = z.leaderstats["Stat"..i].Value end d:SetAsync(z.UserId,s) end)