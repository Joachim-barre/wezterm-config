local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font 'Hack'
config.font_size = 11.5
config.color_scheme = 'Gnometerm (terminal.sexy)'
config.leader = { key = 'x', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = require('keys').keys()

config.colors = {
    background = ' #151515 ',
}

return config
