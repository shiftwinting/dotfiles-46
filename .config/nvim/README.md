## Config structure
```
     ~/.config/nvim
      ├──init.lua
      └──lua
          └──feature_name.lua
```

* The `init.lua` is used instead of `init.vim`.
* The `lua/` folder contains the "module", or you can call them "config files", like `feature_name.lua` in the above structure.
* Once you load a plugin in `pluginList.lua`, say `folke/todo-comments.nvim`, you can write its config in `lua/` with the file named anything you want, I generally like to keep the file based of the plugin I am writing the config for.
* Once you have added your config, you now need to load it in the `init.lua`, this can be done by adding a line `require "feature_name"`, where `feature_name` is your file name.
* Wohooo! You have completely learned about this module now.

## Setup

* Install neovim nightly (>= `0.5`), the instructions are present [here](https://github.com/neovim/neovim#install-from-package) on their repo.
* Install any nerdfonts, I prefer FiraCode.
* Install `ripgrep` , `fd` , `ueberzug` for telescope media extension to work.
* I am using `packer.nvim` as the package manager, easy to use and just awesome

  ```bash
  git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```
* Copy this directory (https://github.com/Shivansh-007/dotfiles/tree/main/.config/nvim) into your `!/.config/nvim` folder.
* Run `nvim +PackerInstall` and `nvim +PackerCompile` in your terminal.
* Install the language servers - https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

## Features
Todo...
