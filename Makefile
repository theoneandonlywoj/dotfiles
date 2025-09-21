.PHONY: self help install-on-linux push-configs

self:
	cat Makefile

help: self

push-configs: push-nvim

push-nvim:
	mkdir -p ~/.config/nvim
	mv ~/.config/nvim ~/.config/nvim-backup-$(date +%Y%m%d-%H%M%S) && echo "Nvim configs backed up."
	cd ~/Desktop/Repos/dotfiles
	cp -r ./.config/nvim/* ~/.config/nvim/ && echo "Synched Nvim configs."

push-doom-emacs:
	mkdir -p ~/.config/doom
	mv ~/.config/doom ~/.config/doom-backup-$(date +%Y%m%d-%H%M%S) && echo "Doom Emacs configs backed up."
	cd ~/Desktop/Repos/dotfiles
	cp -r ./.config/doom/* ~/.config/doom/ && echo "Synched Doom Emacs configs."

pull-doom-emacs:
	# Ensure the target directories exist
	mkdir -p ~/.config/doom
	cd ~/Desktop/Repos/dotfiles
	mkdir -p ./.config/doom

	# Copy the Doom config
	cp -r ~/.config/doom/* ./.config/doom/

	# Print a message after copying
	echo "Doom Emacs configs pulled into dotfiles repository."

clear-doom-emacs:
	rm -rf ~/.config/doom/

install-on-linux:
	# Install common packages
	sudo apt-get install -y build-essential curl git wget

	# Ripgrep
	sudo apt-get install -y ripgrep

	# Lazygit
	# soon

