# .dotfiles

This repository contains an assortment of all my dotfiles.

NOTE: **DON'T USE STOW FOR 'kde-keyboard-shortcuts', KDE DOESN'T LIKE SYMLINKS**

# Installation Guide

## Linux

1. Clone repo into new hidden directory.
```
git clone https://github.com/hazveg/hazveg_dotfiles ~/.dotfiles
```

2. Run the installation script
```
~/.dotfiles/install.sh
```

## Windows

1. Clone repo into new hidden directory.
```
git clone https://github.com/hazveg/hazveg_dotfiles $Env:USERPROFILE\.dotfiles
```

2. Run the installation script **AS ADMINISTRATOR!**
```
$Env:USERPROFILE\.dotfiles\install.ps1
```

# Misc.

## Nvim Config

### Clipboard

This config uses the system clipboard.

On linux, this requires a clipboard tool for the respective display server.

#### X11
```
sudo apt install xsel
```
```
sudo apt install xclip
```

#### Wayland
```
sudo apt install wl-clipboard
```
