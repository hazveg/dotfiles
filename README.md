# .dotfiles

This repository contains an assortment of all my dotfiles.

# Installation Guide

## Linux

1. Clone repo into new hidden directory.
```bash
git clone https://github.com/hazveg/dotfiles ~/.dotfiles
```

2. Use GNU stow for singular components
```bash
stow alacritty
stow bashrc
stow gitconfig
stow konsole
stow nvim
stow qimgv
stow tmux
stow zathura
```
NOTE: DON'T USE STOW FOR 'kde-keyboard-shortcuts', **KDE DOESN'T LIKE SYMLINKS**
NOTE2: lnx_install.sh is deprecated, don't use it.

## Windows
1. Clone repo into new directory
```powershell
git clone https://github.com/hazveg/dotfiles $Env:USERPROFILE\.dotfiles
```
2. Switch to windows branch
```powershell
git switch win
```
3. Follow the instructions there.

# Misc.

## tmux

Before usage clone TPM:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Also make sure to add the following to **~/.bash_aliases**:
```bash
alias tmux='tmux -u'
```

That last one is a bit of a necessity lest you wanna be hit with Unicode bruh moments.

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
