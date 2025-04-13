local stateManager = require "stateManager"

local overworld = {}

local states = {}

function overworld.setRegistry(r)
    states = r
end

function overworld.enter()
    print("Enter Overworld")
end

function overworld.update(dt)
    -- Bewegung oder Weltlogik hier
end

function overworld.draw()
    love.graphics.print("You are in the overworld", 10, 10)
    love.graphics.print("Press 'b' for battle or 'esc' to pause", 10, 30)
end

function overworld.keypressed(key)
    if key == "b" then
        stateManager.switch(states.battle)
    elseif key == "escape" then
        stateManager.switch(states.pauseMenu)
    end
end

return overworld
