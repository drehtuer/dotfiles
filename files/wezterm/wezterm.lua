local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Solarized (dark) (terminal.sexy)'
config.window_background_opacity = 0.90
config.font = wezterm.font_with_fallback{
  {
    family = 'JetBrainsMono Nerd Font Mono',
    weight = 'Medium',
  },
  {
    family = 'Fira Code',
    weight = 'Medium',
  },
  {
    family = 'monospace',
    weight = 'Medium',
  },
}
--config.default_prog = { 'wsl', '-d', 'Ubuntu' }
--config.default_prog = { 'powershell' }

return config
