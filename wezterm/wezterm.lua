local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.enable_scroll_bar = false
config.window_padding = {
    left = 32,
    right = 32,
    top = 32,
    bottom = 32
}
config.font = wezterm.font_with_fallback({
  "Cartograph CF",
  "Twemoji",
  "Symbols Nerd Font Mono",
})
config.font_size = 11.5
config.enable_tab_bar = false
config.default_cursor_style = 'BlinkingBar'
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 700
config.hyperlink_rules = wezterm.default_hyperlink_rules()

return config
