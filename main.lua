local stateManager = require "stateManager"
local states = require "stateRegistry"

function love.load()
    stateManager.switch(states.mainMenu)
end

function love.update(dt)
    stateManager.update(dt)
end

function love.draw()
    stateManager.draw()
end

function love.keypressed(key)
    stateManager.keypressed(key)
end

function love.mousepressed(x, y, button)
    stateManager.mousepressed(x, y, button)
end
