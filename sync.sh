#!/bin/bash
echo "Execute this script from the repo folder."

# Craete the nvim folder if it doesn't exist.
if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim;
fi
cp -r ./.config/nvim/* ~/.config/nvim/ && echo "Synched Nvim configs."
