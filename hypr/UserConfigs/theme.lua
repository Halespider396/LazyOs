-- ══════════════════════════════════════════════════════════════
-- Theme — LazyOS Nordic
-- Dark, clean, sharp nordic aesthetic
--
-- Palette:
--   bg:        #1a1e2e  dark navy
--   surface:   #1e2235  slightly lighter
--   border:    #3b4261  muted blue-grey
--   accent:    #7aa2f7  nordic blue
--   highlight: #bb9af7  nordic purple
--   frost:     #7dcfff  icy cyan
--   white:     #c0caf5  soft white
-- ══════════════════════════════════════════════════════════════

hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 8,
		border_size = 2,
		col = {
			active_border = { colors = { "rgba(7aa2f7ff)", "rgba(bb9af7ff)" }, angle = 45 },
			inactive_border = "rgba(3b4261aa)",
		},
		layout = "dwindle",
		resize_on_border = true,
	},

	decoration = {
		rounding = 8,
		active_opacity = 1.0,
		inactive_opacity = 0.93,
		fullscreen_opacity = 1.0,

		blur = {
			enabled = true,
			size = 6,
			passes = 3,
			new_optimizations = true,
			xray = false,
			noise = 0.015,
			contrast = 0.95,
			brightness = 0.8,
			vibrancy = 0.12,
			vibrancy_darkness = 0.1,
		},
		shadow = {
			enabled = true,
			range = 25,
			render_power = 4,
			color = "rgba(1a1e2ecc)",
			color_inactive = "rgba(1a1e2e88)",
		},
	},

	input = {
		kb_layout = "us",
		follow_mouse = 1,
		sensitivity = 0,
		touchpad = {
			natural_scroll = true,
			disable_while_typing = true,
			tap_to_click = true,
		},
	},

	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = false,
	},

	master = {
		new_status = "master",
		new_on_top = true,
		mfact = 0.5,
	},

	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,
		vrr = 0,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		animate_manual_resizes = true,
		animate_mouse_windowdragging = true,
	},

	debug = {
		vfr = true,
	},

	hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" }),
})
