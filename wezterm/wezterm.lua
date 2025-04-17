-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- this is called by the mux server when it starts up.
-- It makes a window split top/bottom
wezterm.on("mux-startup", function()
	wezterm.mux.spawn_window({})
	pane:split({ direction = "top" })
end)

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Shell config
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	config.default_prog = { "pwsh.exe", "-NoLogo" }
end

-- This is where you actually apply your config choices

config.font_size = 10
config.font = wezterm.font("MonaspiceAr Nerd Font Mono")
config.color_scheme = "Batman"

config.enable_tab_bar = true

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.9
config.initial_cols = 160
config.initial_rows = 58
config.macos_window_background_blur = 10

config.keys = {
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal,
	},
	{
		key = "v",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical,
	},
}

-- and finally, return the configuration to wezterm
return config
