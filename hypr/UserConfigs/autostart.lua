-- ══════════════════════════════════════════════════════════════
-- Autostart
-- ══════════════════════════════════════════════════════════════

exec_once = {
  -- Wallpaper
  "hyprpaper",

  -- Status bar
  "waybar",

  -- Notification daemon
  "swaync",

  -- Polkit agent
  "hyprpolkitagent",

  -- Clipboard manager
  "wl-paste --type text --watch cliphist store",
  "wl-paste --type image --watch cliphist store",

  -- Idle daemon
  "hypridle",

  -- Screen shader (blue light filter at night)
  "hyprshade auto",

  -- Blue light filter (enable at night, toggle with keybind)
  -- "hyprsunset -t 4500",

  -- GTK settings
  "gsettings set org.gnome.desktop.interface gtk-theme 'Materia-dark'",
  "gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'",
  "gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'",
  "gsettings set org.gnome.desktop.interface cursor-size 24",
}
