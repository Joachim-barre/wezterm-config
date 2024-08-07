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
        { key = 'Tab', mods = 'LEADER|ALT', action = act.ActivateTabRelative(-1) },
        { key = 'Tab', mods = 'LEADER', action = act.ActivateTabRelative(1) },
        { key = ':', mods = 'LEADER', action = act.ActivateCommandPalette },
        { key = 'c', mods = 'LEADER', action = act.SpawnTab('CurrentPaneDomain') },
        { key = '>', mods = 'LEADER|SHIFT', action = act.AdjustPaneSize{ 'Right', 5 } },
        { key = '<', mods = 'LEADER', action = act.AdjustPaneSize{ 'Left', 5 } },
        { key = '+', mods = 'LEADER', action = act.AdjustPaneSize{ 'Up', 5 } },
        { key = '-', mods = 'LEADER', action = act.AdjustPaneSize{ 'Down', 5 } },
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
