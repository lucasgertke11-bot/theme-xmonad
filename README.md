# DistroForge - Xmonad Themes

Repositório de temas Xmonad para integração com o instalador Calamares do projeto DistroForge.

## Temas Inclusos

- default
- dotfiles-2.0

## Estrutura

```
/
├── themes/           # Arquivos dos temas Xmonad
├── previews/        # Imagens de preview
├── scripts/         # Scripts de instalação
```

## Instalação via Calamares

```bash
sudo ./scripts/[distro]/[tema].sh
```

## Instalação Manual

```bash
git clone https://github.com/lucasgertke11-bot/theme-xmonad.git
cd theme-xmonad
sudo ./scripts/[distro]/[tema].sh
```

## Dependências

Os scripts instalam automaticamente:
- xmonad, xmobar
- dmenu
- stalonetray, trayer
- picom, rofi
- feh, nitrogen
- Nerd Fonts

## Distros Suportadas

Arch Linux, Ubuntu, Fedora, OpenSUSE, Gentoo

---
DistroForge 2026