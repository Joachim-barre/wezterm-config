local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font 'JetBrains Mono'
config.color_scheme = 'Gnometerm'
config.leader = { key = 'b', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = require('keys').keys()

return config
