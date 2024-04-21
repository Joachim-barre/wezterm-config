local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font 'Hack'
config.font_size = 11.0
config.color_scheme = 'Kgx'
config.leader = { key = 'x', mods = 'CTRL', timeout_milliseconds = 1000 }
config.keys = require('keys').keys()

return config
