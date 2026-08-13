-- ══════════════════════════════════════════════════════════════
-- Window Rules
-- ══════════════════════════════════════════════════════════════

--Float specific apps
hl.window_rule({ match = { class = "pavucontrol" }, float = true })
hl.window_rule({ match = { class = "blueman-manager" }, float = true })
hl.window_rule({ match = { class = "nm-connection-editor" }, float = true })
hl.window_rule({ match = { class = "thunar", title = "File Operation" }, float = true })
hl.window_rule({ match = { class = "wofi" }, float = true })
hl.window_rule({ match = { class = "wlogout" }, float = true })

--Size rules for floating windows
hl.window_rule({ match = { class = "pavucontrol" }, size = { 800, 500 } })
hl.window_rule({ match = { class = "blueman-manager" }, size = { 900, 600 } })

--Center floating windows
hl.window_rule({ match = { class = "pavucontrol" }, center = true })
hl.window_rule({ match = { class = "blueman-manager" }, center = true })

--Opacity
hl.window_rule({ match = { class = "alacritty" }, opacity = "0.92 0.88" })
hl.window_rule({ match = { class = "thunar" }, opacity = "0.95 0.90" })

--Workspace assignments
hl.window_rule({ match = { class = "zen" }, workspace = "2" })
hl.window_rule({ match = { class = "thunar" }, workspace = "3" })

--Layer rules
hl.layer_rule({ match = { namespace = "waybar" }, blur = true })
hl.layer_rule({ match = { namespace = "wofi" }, blur = true })
hl.layer_rule({ match = { namespace = "swaync" }, blur = true })

hl.layer_rule({ match = { namespace = "wlogout" }, blur = true, animation = "slide" })
