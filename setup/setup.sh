#!/bin/bash

echo "[!] Please make sure to have a backup of your current config!"

echo "Proceed? (y/n)"

read reply

if [[ $reply == "y" || $reply == "Y" ]]; then
	
    echo "[+] Proceeding..."
    git clone https://github.com/D0nw0r/N00byvim ~/.config.nvim
    nvim
else
    echo "[-] Thought so! See ya next time!"
    exit 0 
fi


