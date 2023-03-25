--[[
    // Filename: kill brick.lua
    // Version 1.0
    // Notes: {{
        The script kills the player when they touch the brick

        The script is a bit messy, but it works.
        h = h.Parent['Humanoid'] is used to get the humanoid of the player (throws an error if its not a player)
    }}
]]

script.Parent.Touched:Connect(function(h)
    h = h.Parent['Humanoid']
    if h then
        h.Health=0
    end
end)