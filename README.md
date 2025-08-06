# Neovim config

## What is it
This repo contains my neovim config, based on Kickstarter https://github.com/nvim-lua/kickstart.nvim
I also recommend watching TJ's videos: https://www.youtube.com/@teej_dv/videos

While based on it I did a few tweaks for my personal taste/organization.

## Install
Easy bash/powershell script installation on :https://d0nw0r.github.io/N00byVim/


## Folder structure

The repo contains a root level ``init.lua`` file which is the principal source of configuration used on Kickstart.
However, for some organization and modularity I have decided to split the config into several folders.

The ``lua`` folder contains folders that represent parts of the configuration. 
Inside, the ``kickstart`` folder was already present. The ``custom`` is where I added my own files and is the focus of this repo.


## Features
Pretty standard config, I left most of kickstart intact, added some stuff like neo-tree, lazygit, window-picker and toggleterm for QOL.
Also made the config more modular by creating a ``configs/conform-formatters.lua`` file that allows to specify a list of formatters to be loaded by conform, without cluttering the main ``init.lua`` file.
The same logic applies to the  ``keymaps``, ``opts``, ``plugins``, ``configs/ensure-installed`` and ``clipboard`` folders.


### How to expand on this
Feel free to expand this config by loading more plugins in the ``custom/plugins`` folder.
Or just add them to the main ``init.lua`` file, but I think it's ugly and the neovim gods will judge you.

### The ``testing-file-extensions`` folder:
This folder is just to make it easy to test configs with different file extensions :)
Configuring neovim can be a pain, so I thought I'd include this because it can save you some* time.


* a lot.

## Where can I run this
This config should be able to run on Windows, Mac or Linux.

## Debugging
I recommend doing ``:MasonLog`` or ``:LspLog`` to see if anything is failing

