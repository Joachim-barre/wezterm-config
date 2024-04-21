local M = {}

function M.keys()
    local wezterm = require('wezterm')
    return {
        {
            key = 'r',
            mods = 'LEADER',
            action = wezterm.action.ReloadConfiguration,
        },
    }
end

return M
