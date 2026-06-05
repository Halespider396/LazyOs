-- ══════════════════════════════════════════════════════════════
-- Animations — clean and snappy, not overdone
-- ══════════════════════════════════════════════════════════════

animations = {
  enabled = true,

  bezier = {
    { "easeOut",     0.16, 1,    0.3,  1    },
    { "easeIn",      0.7,  0,    0.84, 0    },
    { "easeInOut",   0.87, 0,    0.13, 1    },
    { "snappy",      0.25, 0.46, 0.45, 0.94 },
  },

  animation = {
    { "windows",     true, 3,  "easeOut",   "slide"  },
    { "windowsOut",  true, 2,  "easeIn",    "slide"  },
    { "border",      true, 5,  "easeInOut"           },
    { "borderangle", true, 8,  "easeInOut"           },
    { "fade",        true, 4,  "easeInOut"           },
    { "workspaces",  true, 4,  "snappy",    "slide"  },
    { "layers",      true, 3,  "easeOut",   "fade"   },
  },
}
