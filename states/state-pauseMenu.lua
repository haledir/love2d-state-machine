local stateManager = require "stateManager"

local pauseMenu = {}

local states = {}

function pauseMenu.setRegistry(r)
    states = r
end

function pauseMenu.draw()
    love.graphics.printf("Paused!", 0, 100, love.graphics.getWidth(), "center")
    love.graphics.printf("Press 'space' to go back", 0, 140, love.graphics.getWidth(), "center")
    love.graphics.printf("Press 'esc' to return to the main menu", 0, 180, love.graphics.getWidth(), "center")
end

function pauseMenu.keypressed(key)
    if key == "space" then
        stateManager.switch(states.overworld)
    end
    if key == "escape" then
        stateManager.switch(states.mainMenu)
    end
end

return pauseMenu
