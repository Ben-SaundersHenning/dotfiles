local wezterm = require('wezterm')

local config = {};

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'GruvboxDark'

config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true

config.font = wezterm.font("Hasklug Nerd Font", { weight="Regular", stretch="Normal", style="Normal" }) -- FOR SUSE
-- config.font = wezterm.font("Iosevka Nerd Font", { weight="Regular", stretch="Normal", style="Normal" }) -- FOR MAC
config.font_size = 14.0

return config
