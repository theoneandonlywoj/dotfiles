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

install-on-linux:
	# Install common packages
	sudo apt-get install -y build-essential curl git wget

	# Ripgrep
	sudo apt-get install -y ripgrep

	# Lazygit
	# soon

