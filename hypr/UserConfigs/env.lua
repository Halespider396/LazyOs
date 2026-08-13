-- ══════════════════════════════════════════════════════════════
-- Environment Variables
-- ══════════════════════════════════════════════════════════════

--Qt
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR","1")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")

--GTK
hl.env("GDK_BACKEND","wayland,x11")

--Cursor
hl.env("XCURSOR_SIZE","24")
hl.env("XCURSOR_THEME","Bibata-Modern-Ice")

--Nvidia(uncomment if needed)
--hl.env("LIBVA_DRIVER_NAME","nvidia")
--hl.env("GBM_BACKEND","nvidia-drm")
--hl.env("_GLX_VENDOR_LIBRARY_NAME","nvidia")
--hl.env("NVD_BACKEND","direct")
