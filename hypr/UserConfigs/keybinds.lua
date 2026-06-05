-- ══════════════════════════════════════════════════════════════
-- Keybinds
-- MOD = Super key
-- ══════════════════════════════════════════════════════════════

local MOD = "SUPER"

bind = {
  -- ── Apps ───────────────────────────────────────────────────
  { MOD, "Return",     "exec", "alacritty" },
  { MOD, "E",          "exec", "thunar" },
  { MOD, "B",          "exec", "firefox" },
  { MOD, "R",          "exec", "wofi --show drun" },
  { MOD, "L",          "exec", "hyprlock" },
  { MOD, "V",          "exec", "cliphist list | wofi --dmenu | cliphist decode | wl-copy" },
  { MOD, "N",          "exec", "swaync-client -t" },

  -- ── Screenshots ────────────────────────────────────────────
  { "",        "Print",       "exec", "hyprshot -m output" },
  { MOD,       "Print",       "exec", "hyprshot -m region" },
  { MOD.."SHIFT", "Print",    "exec", "hyprshot -m window" },

  -- ── Window management ──────────────────────────────────────
  { MOD,        "Q",          "killactive" },
  { MOD,        "F",          "fullscreen", 0 },
  { MOD,        "T",          "togglefloating" },
  { MOD,        "P",          "pseudo" },
  { MOD,        "J",          "togglesplit" },

  -- ── Focus ──────────────────────────────────────────────────
  { MOD, "left",  "movefocus", "l" },
  { MOD, "right", "movefocus", "r" },
  { MOD, "up",    "movefocus", "u" },
  { MOD, "down",  "movefocus", "d" },
  { MOD, "H",     "movefocus", "l" },
  { MOD, "L",     "movefocus", "r" },
  { MOD, "K",     "movefocus", "u" },
  { MOD, "J",     "movefocus", "d" },

  -- ── Move windows ───────────────────────────────────────────
  { MOD.."SHIFT", "left",  "movewindow", "l" },
  { MOD.."SHIFT", "right", "movewindow", "r" },
  { MOD.."SHIFT", "up",    "movewindow", "u" },
  { MOD.."SHIFT", "down",  "movewindow", "d" },

  -- ── Resize ─────────────────────────────────────────────────
  { MOD.."CTRL", "left",  "resizeactive", "-40 0" },
  { MOD.."CTRL", "right", "resizeactive", "40 0" },
  { MOD.."CTRL", "up",    "resizeactive", "0 -40" },
  { MOD.."CTRL", "down",  "resizeactive", "0 40" },

  -- ── Workspaces ─────────────────────────────────────────────
  { MOD, "1", "workspace", 1 },
  { MOD, "2", "workspace", 2 },
  { MOD, "3", "workspace", 3 },
  { MOD, "4", "workspace", 4 },
  { MOD, "5", "workspace", 5 },
  { MOD, "6", "workspace", 6 },
  { MOD, "7", "workspace", 7 },
  { MOD, "8", "workspace", 8 },
  { MOD, "9", "workspace", 9 },

  -- Move window to workspace
  { MOD.."SHIFT", "1", "movetoworkspace", 1 },
  { MOD.."SHIFT", "2", "movetoworkspace", 2 },
  { MOD.."SHIFT", "3", "movetoworkspace", 3 },
  { MOD.."SHIFT", "4", "movetoworkspace", 4 },
  { MOD.."SHIFT", "5", "movetoworkspace", 5 },
  { MOD.."SHIFT", "6", "movetoworkspace", 6 },
  { MOD.."SHIFT", "7", "movetoworkspace", 7 },
  { MOD.."SHIFT", "8", "movetoworkspace", 8 },
  { MOD.."SHIFT", "9", "movetoworkspace", 9 },

  -- Scroll through workspaces
  { MOD, "mouse_down", "workspace", "e+1" },
  { MOD, "mouse_up",   "workspace", "e-1" },

  -- ── Audio ──────────────────────────────────────────────────
  { "", "XF86AudioRaiseVolume",  "exec", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+" },
  { "", "XF86AudioLowerVolume",  "exec", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" },
  { "", "XF86AudioMute",         "exec", "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" },
  { "", "XF86AudioMicMute",      "exec", "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" },

  -- ── Brightness ─────────────────────────────────────────────
  { "", "XF86MonBrightnessUp",   "exec", "brightnessctl set 5%+" },
  { "", "XF86MonBrightnessDown", "exec", "brightnessctl set 5%-" },

  -- ── Exit ───────────────────────────────────────────────────
  { MOD.."SHIFT", "E", "exec", "wlogout" },
}

-- Mouse binds
bindm = {
  { MOD, "mouse:272", "movewindow" },
  { MOD, "mouse:273", "resizewindow" },
}

-- ── Hypr ecosystem extras ──────────────────────────────────
-- Color picker (copies to clipboard)
  { MOD, "C", "exec", "hyprpicker -a" },
-- Hyprshade toggle
  { MOD, "S", "exec", "hyprshade toggle blue-light-filter" },
