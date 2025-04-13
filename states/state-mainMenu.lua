local stateManager = require "stateManager"

local mainMenu = {}
local buttons = {}

local states = {}

function mainMenu.setRegistry(r)
    states = r
end


function mainMenu.enter()
    buttons = {
        { text = "Start game", action = function() stateManager.switch(states.overworld) end },
        { text = "Options", action = function() print("Options not implemented.") end },
        { text = "Exit game", action = function() love.event.quit() end }
    }
end

function mainMenu.draw()
    love.graphics.printf("Main Menu", 0, 100, love.graphics.getWidth(), "center")

    for i, btn in ipairs(buttons) do
        love.graphics.printf(btn.text, 0, 150 + i * 40, love.graphics.getWidth(), "center")
    end
end

function mainMenu.mousepressed(x, y, button)
    if button == 1 then
        for i, btn in ipairs(buttons) do
            local bx, by = love.graphics.getWidth()/2 - 100, 150 + i * 40
            local bw, bh = 200, 30
            if x > bx and x < bx + bw and y > by and y < by + bh then
                btn.action()
            end
        end
    end
end

return mainMenu
