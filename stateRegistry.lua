-- Empty Registry
local registry = {}

-- Load States
registry.mainMenu = require "states/state-mainMenu"
registry.overworld = require "states/state-overworld"
registry.battle = require "states/state-battle"
registry.pauseMenu = require "states/state-pauseMenu"

-- Give state registry to every state
for _, state in pairs(registry) do
    if state.setRegistry then
        state.setRegistry(registry)
    end
end

return registry
