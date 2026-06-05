-- ══════════════════════════════════════════════════════════════
-- Environment Variables
-- ══════════════════════════════════════════════════════════════

env = {
  -- Wayland
  { "WAYLAND_DISPLAY", "wayland-1" },
  { "XDG_SESSION_TYPE", "wayland" },
  { "XDG_SESSION_DESKTOP", "Hyprland" },
  { "XDG_CURRENT_DESKTOP", "Hyprland" },

  -- Qt
  { "QT_QPA_PLATFORM", "wayland" },
  { "QT_WAYLAND_DISABLE_WINDOWDECORATION", "1" },
  { "QT_AUTO_SCREEN_SCALE_FACTOR", "1" },

  -- GTK
  { "GDK_BACKEND", "wayland,x11" },

  -- Cursor
  { "XCURSOR_SIZE", "24" },
  { "XCURSOR_THEME", "Bibata-Modern-Ice" },

  -- Nvidia (uncomment if needed)
  -- { "LIBVA_DRIVER_NAME", "nvidia" },
  -- { "GBM_BACKEND", "nvidia-drm" },
  -- { "__GLX_VENDOR_LIBRARY_NAME", "nvidia" },
  -- { "NVD_BACKEND", "direct" },
}
