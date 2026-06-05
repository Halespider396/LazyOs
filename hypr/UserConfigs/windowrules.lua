-- ══════════════════════════════════════════════════════════════
-- Window Rules
-- ══════════════════════════════════════════════════════════════

windowrule = {
  -- Float specific apps
  { "float", "class:^(pavucontrol)$" },
  { "float", "class:^(blueman-manager)$" },
  { "float", "class:^(nm-connection-editor)$" },
  { "float", "class:^(thunar)$", "title:^(File Operation)" },
  { "float", "class:^(wofi)$" },
  { "float", "class:^(wlogout)$" },

  -- Size rules for floating windows
  { "size 800 500",  "class:^(pavucontrol)$" },
  { "size 900 600",  "class:^(blueman-manager)$" },

  -- Center floating windows
  { "center", "class:^(pavucontrol)$" },
  { "center", "class:^(blueman-manager)$" },

  -- Blur layers
  { "blur",        "class:^(waybar)$" },
  { "blur",        "class:^(wofi)$" },
  { "blur",        "class:^(swaync)$" },
  { "ignorezero",  "class:^(waybar)$" },
  { "ignorezero",  "class:^(wofi)$" },

  -- Opacity
  { "opacity 0.92 0.88", "class:^(alacritty)$" },
  { "opacity 0.95 0.90", "class:^(thunar)$" },

  -- Workspace assignments
  { "workspace 2", "class:^(firefox)$" },
  { "workspace 3", "class:^(thunar)$" },
}
