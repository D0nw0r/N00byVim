#!/bin/bash

echo "[!] Please make sure to have a backup of your current Neovim config!"

read -r -p "Proceed with installing N00byVim? (y/n) " reply

if [[ $reply =~ ^[Yy]$ ]]; then
    echo "[+] Proceeding..."

    # Optional: Backup existing config if it exists
    # if [ -d "$HOME/.config/nvim" ]; then
    #     echo "[*] Backing up existing config to ~/.config/nvim.bak"
    #     mv ~/.config/nvim ~/.config/nvim.bak
    # fi

    # Clone the repo
    git clone https://github.com/D0nw0r/N00byVim ~/.config/nvim

    # Launch nvim
    echo "[*] Launching Neovim..."
    nvim
else
    echo "[-] Aborted. No changes made."
    exit 0
fi

