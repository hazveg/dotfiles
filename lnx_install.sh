#! /bin/bash

echo "DO NOT RUN THIS WITH SUDO"
echo "Overwrite existing configuration files? (y/N)"
read confirmation

if [ "$confirmation" = "y" ] || [ "$confirmation" = "Y" ]
then
	echo "Deleting .bashrc"
	rm ~/.bashrc

	echo "Creating symlink for ~/.bashrc"
	ln -s ~/.dotfiles/.bashrc ~/.bashrc

	echo "Creating symlink for ~/.gitconfig"
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

	echo "Creating symlink for ~/.config/nvim"
	ln -s ~/.dotfiles/nvim ~/.config/nvim

	echo "Checking wether konsole dir exists already"
	if [ -d ~/.local/share/konsole ]; then
		echo "~/.local/share/konsole exists, deleting now"
		rm -r ~/.local/share/konsole
	fi

	echo "Creating symlink for ~.config/zathura"
	ln -s ~/.dotfiles/zathura ~/.config/zathura

	echo "Creating symlink for ~/.local/share/konsole"
	ln -s ~/.dotfiles/konsole ~/.local/share/konsole

	echo "Copying user.js to ~/user.js"
	cp ~/.dotfiles/user.js ~/user.js

	echo "Copying stylus.json to ~/stylus.json"
	cp ~/.dotfiles/stylus.json ~/stylus.json
else
	echo "Installation cancelled by user"
fi
