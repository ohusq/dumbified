--[[
    // Filename: saving stats.lua
    // Version 1.0
    // Notes: {{
        same as saving stat.lua, but with a few changes
        Changes: {{
            Values can be changed with a bindable function (i'm going insane)
            "Simpilified" the code a bit
        }}
    }}
]]

a = 5
s = {}
function c(t,n,p) s = Instance.new(t,p) s.Name = n end
function d(n) return game:GetService("DataStoreService"):GetDataStore(n) end
game.Players.PlayerAdded:Connect(function(z)c("Folder","leaderstats",z) for i=1,a do c("IntValue","Stat"..i,z.leaderstats)end _G.d=d("Stats")s=_G.d:GetAsync(z.UserId) if s then for i=1,a do z.leaderstats["Stat"..i].Value=s[i];end end end)
game.Players.PlayerRemoving:Connect(function(z) s = {} for i = 1,a do s[i] = z.leaderstats["Stat"..i].Value end _G.d:SetAsync(z.UserId,s) end)
script.SC.OnInvoke = function(p,i,s) p.leaderstats["Stat"..i].Value = s _G.d:SetAsync(p.UserId,s) end