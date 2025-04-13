local stateManager = {}

local currentState = nil

function stateManager.switch(newState)
    if currentState and currentState.exit then
        currentState.exit()
    end

    currentState = newState

    if currentState.enter then
        currentState.enter()
    end
end

function stateManager.update(dt)
    if currentState and currentState.update then
        currentState.update(dt)
    end
end

function stateManager.draw()
    if currentState and currentState.draw then
        currentState.draw()
    end
end

function stateManager.keypressed(key)
    if currentState and currentState.keypressed then
        currentState.keypressed(key)
    end
end

function stateManager.mousepressed(x, y, button)
    if currentState and currentState.mousepressed then
        currentState.mousepressed(x, y, button)
    end
end

return stateManager
