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

		read -p "[ ${to_remove[*]} ] > " input

		if [ "$input" = "commit" ]
		then
			break
		fi

		to_remove+=($input)
	done
fi

echo "Overwrite existing configuration files? (y/N)"
read confirmation

if [ "$confirmation" = "y" ] || [ "$confirmation" = "Y" ]
then
	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '1') ]; then
		echo "Deleting .bashrc"
		rm ~/.bashrc
		echo "Creating symlink for ~/.bashrc"
		ln -s ~/.dotfiles/.bashrc ~/.bashrc
	fi

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '2') ]; then
		echo "Creating symlink for ~/.gitconfig"
		ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
	fi

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '3') ]; then
		echo "Creating symlink for ~/.config/nvim"
		ln -s ~/.dotfiles/nvim ~/.config/nvim
	fi

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '4') ]; then
		echo "Checking whether konsole dir exists already"
		if [ -d ~/.local/share/konsole ]; then
			echo "~/.local/share/konsole exists, deleting now"
			rm -r ~/.local/share/konsole
		fi
		echo "Creating symlink for ~/.local/share/konsole"
		ln -s ~/.dotfiles/konsole ~/.local/share/konsole
	fi
	
	echo "Creating symlink for ~/.config/alacritty"
	ln -s ~/.dotfiles/alacritty ~/.config/alacritty

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '5') ]; then
		echo "Creating symlink for ~.config/zathura"
		ln -s ~/.dotfiles/zathura ~/.config/zathura
	fi

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '6') ]; then
		echo "Creating symlink for ~.config/qimgv"
		ln -s ~/.dotfiles/qimgv ~/.config/qimgv
	fi

	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '7') ]; then
		echo "Creating symlink for ~/.tmux.conf"
		ln -s ~/.dotfiles/.tmux.conf ~/.tmux.conf
	fi
	
	if ! [ $(printf '%s\0' "${to_remove[@]}" | grep -Fxqz -- '8') ]; then
		echo "Copying user.js to ~/user.js"
		cp ~/.dotfiles/user.js ~/user.js

		echo "Copying stylus.json to ~/stylus.json"
		cp ~/.dotfiles/stylus.json ~/stylus.json
	fi
else
	echo "Installation cancelled by user"
fi
