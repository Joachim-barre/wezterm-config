local M = {}

function M.keys()
    local wezterm = require('wezterm')
    act = wezterm.action
    local keys =  {
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
        { key = '(', mods = 'LEADER', action = act.ActivateTabRelative(-1) },
        { key = ')', mods = 'LEADER', action = act.ActivateTabRelative(1) },
        { key = ':', mods = 'LEADER', action = act.ActivateCommandPalette },
        { key = 'c', mods = 'LEADER', action = act.SpawnTab('CurrentPaneDomain') }
    }

    for i = 1, 8 do
        table.insert(keys, {
            key = tostring(i),
            mods = 'LEADER',
            action = act.ActivateTab(i - 1),
        })
    end

    return keys
end

return M
