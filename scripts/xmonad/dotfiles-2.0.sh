#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEME_PATH="$SCRIPT_DIR/../../../../themes/xmonad/dotfiles-2.0"

echo "Installing Xmonad (dotfiles-2.0) on Gentoo"

sudo emerge -av xmonad xmobar dmenu stalonetray trayer picom rofi feh nitrogen

mkdir -p "$HOME/.xmonad"
mkdir -p "$HOME/.config/xmobar"
mkdir -p "$HOME/.config/rofi"
mkdir -p "$HOME/.local/share/fonts"

if [ -d "$THEME_PATH" ]; then
    cp -r "$THEME_PATH"/* "$HOME/.xmonad/" 2>/dev/null || true
fi

if [ -d "$THEME_PATH/../fonts" ]; then
    cp -r "$THEME_PATH/../fonts"/* "$HOME/.local/share/fonts/" 2>/dev/null || true
fi

if ! grep -q "exec xmonad" "$HOME/.xinitrc" 2>/dev/null; then
    echo "exec xmonad" >> "$HOME/.xinitrc"
fi

echo "Xmonad dotfiles-2.0 installed!"
