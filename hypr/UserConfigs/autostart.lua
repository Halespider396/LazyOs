-- ══════════════════════════════════════════════════════════════
-- Autostart
-- ══════════════════════════════════════════════════════════════
hl.on("hyprland.start", function()
	hl.exec_cmd(" waybar & hyprpaper & swaync & hypridle ")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Materia-dark'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Papirus-Dark'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'Bibata-Modern-Ice'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
end)
