return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- color/UI related stuff
        use "folke/tokyonight.nvim"
        use "norcalli/nvim-colorizer.lua"

        -- lang/lsp stuff
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "onsails/lspkind-nvim"
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"
        use "kabouzeid/nvim-lspinstall"
        use "folke/trouble.nvim"
        use "folke/lsp-colors.nvim"
        use "kosayoda/nvim-lightbulb"
        use "ray-x/lsp_signature.nvim"

        use "lewis6991/gitsigns.nvim"
        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- snippet support
        -- use "hrsh7th/vim-vsnip"
        -- use "rafamadriz/friendly-snippets"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"

        -- misc
        use "sudormrfbin/cheatsheet.nvim"
        use "907th/vim-auto-save"
        use "karb94/neoscroll.nvim"
        use "folke/zen-mode.nvim"
        use "folke/which-key.nvim"
        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}

        -- Configure and list todo-comments	
        use {
          "folke/todo-comments.nvim", 
          config = function()	
            require("todo-comments").setup()	
          end
        }

        use {
          "ahmedkhalf/lsp-rooter.nvim",
          config = function()
            require("lsp-rooter").setup{}
          end
        }

    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
