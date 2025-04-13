local stateManager = require "stateManager"

local battle = {}

local states = {}

function battle.setRegistry(r)
    states = r
end

function battle.draw()
    love.graphics.print("Battle!", 10, 10)
    love.graphics.print("Press 'f' to run away", 10, 30)
end

function battle.keypressed(key)
    if key == "f" then
        stateManager.switch(states.overworld)
    end
end

return battle
