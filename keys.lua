local M = {}

function M.keys()
    local wezterm = require('wezterm')
    act = wezterm.action
    return {
        {
            key = 'r',
            mods = 'LEADER',
            action = act.ReloadConfiguration,
        },
        {
            key = 's',
            mods = 'LEADER',
            action = act.SplitVertical { domain = 'CurrentPaneDomain' }
        },
        {
            key = 'v',
            mods = 'LEADER',
            action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
        },
        {
            key = 'LeftArrow',
            mods = 'LEADER',
            action = act.ActivatePaneDirection 'Left',
        },
        {
            key = 'RightArrow',
            mods = 'LEADER',
            action = act.ActivatePaneDirection 'Right',
        },
        {
            key = 'UpArrow',
            mods = 'LEADER',
            action = act.ActivatePaneDirection 'Up',
        },
        {
            key = 'DownArrow',
            mods = 'LEADER',
            action = act.ActivatePaneDirection 'Down',
        },
    }
end

return M
