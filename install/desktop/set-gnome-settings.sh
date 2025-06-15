gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface gtk-theme "Yaru-purple-dark"
gsettings set org.gnome.desktop.interface icon-theme "Yaru-purple"
gsettings set org.gnome.desktop.interface accent-color "purple" 2>/dev/null || true
gsettings set org.gnome.desktop.interface monospace-font-name 'CaskaydiaMono Nerd Font 10'

# Reveal week numbers in the Gnome calendar
gsettings set org.gnome.desktop.calendar show-weekdate true

# Turn off ambient sensors for setting screen brightness (they rarely work well!)
gsettings set org.gnome.settings-daemon.plugins.power ambient-enabled false

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "setting wallpaper to ${SCRIPT_DIR}/wallpaper.jpeg"
gsettings set org.gnome.desktop.background picture-uri-dark "file://${SCRIPT_DIR}/../../config/gnome/wallpaper.jpeg"
gsettings set org.gnome.desktop.background picture-options 'zoom'
