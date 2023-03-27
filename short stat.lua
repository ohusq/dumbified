--[[
    // Filename: short stat.lua
    // Version 1.0
    // Notes: {{
        The script creates a leaderstats folder
        The function cS is used to create a new stat in the folder
            (n)ame of the stat
            (a)mount of the stat
            (p)arent of the stat instance
            (t)ype of the stat instance
    }}
]]

a = 5;s = _G.s
function c(t,n,p) s = Instance.new(t,p) s.Name = n end
game.Players.PlayerAdded:Connect(function(z) c("Folder","leaderstats",z) for i=1,a do c("IntValue","Stat"..i,z.leaderstats) end end)