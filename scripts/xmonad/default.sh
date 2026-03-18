#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_PATH="$SCRIPT_DIR/../../../../themes/xmonad"

echo "Installing Xmonad on Gentoo"

sudo emerge --ask --noreplace x11-wm/xmonad x11-misc/xmobar x11-misc/dmenu x11-misc/stalonetray x11-misc/trayer x11-misc/picom x11-misc/rofi media-gfx/feh media-gfx/nitrogen

mkdir -p "$HOME/.xmonad"
mkdir -p "$HOME/.config/xmobar"
mkdir -p "$HOME/.config/rofi"
mkdir -p "$HOME/.local/share/fonts"

if [ -d "$THEME_PATH/config" ]; then
    cp -r "$THEME_PATH/config"/* "$HOME/.xmonad/"
fi

if [ -d "$THEME_PATH/fonts" ]; then
    cp -r "$THEME_PATH/fonts"/* "$HOME/.local/share/fonts/" 2>/dev/null || true
fi

if [ -d "$THEME_PATH/wallpapers" ]; then
    cp -r "$THEME_PATH/wallpapers" "$HOME/.config/" 2>/dev/null || true
fi

if ! grep -q "exec xmonad" "$HOME/.xinitrc" 2>/dev/null; then
    echo "exec xmonad" >> "$HOME/.xinitrc"
fi

echo "Xmonad installed!"
