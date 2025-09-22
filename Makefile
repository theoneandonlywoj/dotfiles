.PHONY: self help install-on-linux push-configs push-nvim sync-nvim \
        push-doom-emacs pull-doom-emacs clear-doom-emacs sync-doom-emacs

# Define the directory where your dotfiles are located.
DOTFILES_DIR = ~/Desktop/Repos/dotfiles

# Show the contents of the Makefile itself.
self:
	@cat Makefile

# Alias for 'self' target.
help: self

# Alias for pushing both nvim and doom emacs configs.
push-configs: push-nvim push-doom-emacs

# Backs up and syncs Nvim configs from dotfiles to ~/.config/nvim.
push-nvim:
	@echo "--- Pushing Nvim configs ---"
	@mkdir -p ~/.config/nvim
	@if [ -d "~/.config/nvim" ]; then \
		mv ~/.config/nvim ~/.config/nvim-backup-$(shell date +%Y%m%d-%H%M%S) && echo "Nvim configs backed up."; \
	fi
	@mkdir -p ~/.config/nvim
	@cp -r $(DOTFILES_DIR)/.config/nvim/* ~/.config/nvim/
	@echo "Nvim configs synced from dotfiles."

# Installs tree-sitter-cli and syncs Nvim plugins with LazyVim.
sync-nvim:
	@echo "--- Syncing Nvim plugins ---"
	# Install tree-sitter CLI.
	sudo apt install -y tree-sitter-cli
	# Install a full Nerd Font for proper glyph rendering.
	@echo "--- Installing Nerd Font ---"
	@mkdir -p ~/.local/share/fonts
	@wget -P ~/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
	@unzip -o -d ~/.local/share/fonts/ ~/.local/share/fonts/FiraCode.zip
	@rm ~/.local/share/fonts/FiraCode.zip
	@fc-cache -fv
	# Run Neovim in headless mode to sync plugins with LazyVim.
	nvim --headless "+Lazy! sync" +qa
	@echo "LazyVim plugins synced."

# Backs up and syncs Doom Emacs configs.
push-doom-emacs:
	@echo "--- Pushing Doom Emacs configs ---"
	@if [ -d "~/.config/doom" ]; then \
		mv ~/.config/doom ~/.config/doom-backup-$(shell date +%Y%m%d-%H%M%S) && echo "Doom Emacs configs backed up."; \
	fi
	@mkdir -p ~/.config/doom
	@cp -r $(DOTFILES_DIR)/.config/doom/* ~/.config/doom/
	@echo "Doom Emacs configs synced from dotfiles."

# Pulls Doom Emacs configs from system into the dotfiles repository.
pull-doom-emacs:
	@echo "--- Pulling Doom Emacs configs ---"
	@mkdir -p ~/.config/doom
	@mkdir -p $(DOTFILES_DIR)/.config/doom
	@cp -r ~/.config/doom/* $(DOTFILES_DIR)/.config/doom/
	@echo "Doom Emacs configs pulled into dotfiles repository."

# Removes all Doom Emacs configs from the system. (DANGEROUS!)
clear-doom-emacs:
	@echo "--- Clearing Doom Emacs configs ---"
	@echo "Warning: This will permanently delete ~/.config/doom/."
	@rm -rf ~/.config/doom/
	@echo "Doom Emacs configs have been removed."

# Syncs Doom Emacs.
sync-doom-emacs:
	@echo "--- Syncing Doom Emacs ---"
	doom sync

# Installs essential development packages on a Linux system.
install-on-linux:
	@echo "--- Installing essential packages ---"
	sudo apt-get update
	sudo apt-get install -y build-essential curl git wget ripgrep
	@echo "Common packages installed."
	@echo "Lazygit: Please install manually from the official website."

