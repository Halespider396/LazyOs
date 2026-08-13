-- ══════════════════════════════════════════════════════════════
-- Monitors
-- Edit this file to match your display setup
-- ══════════════════════════════════════════════════════════════

  -- Format: hl.monitor({ output, mode, position, scale })
  -- Use "hyprctl monitors" to list your displays

  -- Single monitor (default)
  hl.monitor({
	  output ="",
	  mode ="preferred",
	  position ="auto",
	  scale ="auto",
  })

  -- Examples:
  -- hl.monitor({outpput = "DP-1",mode = "1920x1080@144",position = "0x0",scale = 1})
  -- hl.monitor({outpput = "HDMI-A-1",mode = "1920x1080@600",position = "1920x0",scale = 1})

