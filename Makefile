.PHONY: self help install-linux sync

self:
	cat Makefile

help: self

sync:
	mkdir -p ~/.config/nvim
	cp -r ./.config/nvim/* ~/.config/nvim/ && echo "Synched Nvim configs."

install-linux:
	# Install common packages
	sudo apt-get install -y build-essential curl git wget

	# Ripgrep
	sudo apt-get install -y ripgrep

	# Lazygit
	# soon
