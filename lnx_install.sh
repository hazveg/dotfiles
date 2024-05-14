#! /bin/bash

echo "DO NOT RUN THIS WITH SUDO"

echo "Would you like to customize the installation? (y/N)"
read customize

if [ "$customize" = "y" ] || [ "$customize" = "Y" ]
then
	to_remove=()
	while :
	do
		echo "Listed are all the components that will be installed."
		echo "To remove any of these, enter a number."
		# echo "If you wish to remove multiple at once; you can enter a list seperated by commas e.g. [1, 5, 6]."
		echo "Once you are satisfied with your selection, enter 'commit' to begin installation."

		echo "[1] ~/.bashrc"
		echo "[2] ~/.gitconfig"
		echo "[3] ~/.config/nvim"
		echo "[4] ~/.local/share/konsole"
		echo "[5] ~/.config/zathura"
		echo "[6] ~/.config/qimgv"
		echo "[7] ~/.tmux.conf"
		echo "[8] Firefox Settings"

		read selection
		to_remove+=($selection)

		echo ${to_remove[*]}
	done
fi

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

	echo "Checking whether konsole dir exists already"
	if [ -d ~/.local/share/konsole ]; then
		echo "~/.local/share/konsole exists, deleting now"
		rm -r ~/.local/share/konsole
	fi
	echo "Creating symlink for ~/.local/share/konsole"
	ln -s ~/.dotfiles/konsole ~/.local/share/konsole

	echo "Creating symlink for ~.config/zathura"
	ln -s ~/.dotfiles/zathura ~/.config/zathura

	echo "Creating symlink for ~.config/qimgv"
	ln -s ~/.dotfiles/qimgv ~/.config/qimgv

	echo "Creating symlink for ~/.tmux.conf"
	ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf

	echo "Copying user.js to ~/user.js"
	cp ~/.dotfiles/user.js ~/user.js

	echo "Copying stylus.json to ~/stylus.json"
	cp ~/.dotfiles/stylus.json ~/stylus.json
else
	echo "Installation cancelled by user"
fi
