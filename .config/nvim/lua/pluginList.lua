local packer = require("packer")
local use = packer.use

-- using { } for using different branch , loading plugin with certain commands etc
return require("packer").startup(
    function()
        use "wbthomason/packer.nvim"

        -- color related stuff
        use "folke/tokyonight.nvim"
        use "siduck76/nvim-base16.lua"
        use "shaunsingh/nord.nvim"
        use "norcalli/nvim-colorizer.lua"

        -- lsp stuff
        use "nvim-treesitter/nvim-treesitter"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-compe"
        use "onsails/lspkind-nvim"
        use "sbdchd/neoformat"
        use "nvim-lua/plenary.nvim"
        use "folke/trouble.nvim"
        use "folke/lsp-colors.nvim"
        use "kosayoda/nvim-lightbulb"
        use "glepnir/lspsaga.nvim"
        use "ray-x/lsp_signature.nvim"
        use "folke/lua-dev.nvim"

        -- Debugging stuff
        use {"mfussenegger/nvim-dap", opt = true} --TODO: Configure nvim-dap with UI and python.

        -- GitHub related
        use "lewis6991/gitsigns.nvim"
        use "pwntester/octo.nvim"

        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"
        use "windwp/nvim-autopairs"
        use "alvan/vim-closetag"

        -- snippet support
        use "hrsh7th/vim-vsnip"
        use "rafamadriz/friendly-snippets"

        -- file managing , picker etc
        use "kyazdani42/nvim-tree.lua"
        use "kyazdani42/nvim-web-devicons"
        use "ryanoasis/vim-devicons"
        use "nvim-telescope/telescope.nvim"
        use "nvim-telescope/telescope-media-files.nvim"
        use "nvim-lua/popup.nvim"

        -- misc
        use "907th/vim-auto-save"
        use "karb94/neoscroll.nvim"
        use "folke/zen-mode.nvim"
        use "folke/which-key.nvim"
        use "sindrets/diffview.nvim"
        use {"markdown-preview.nvim", config = "vim.call('mkdp#util#install')"}     

        -- COnfigure and list todo-comments
        use { "folke/todo-comments.nvim", config = function()
          require("todo-comments").setup()
        end}


        use {"lukas-reineke/indent-blankline.nvim", branch = "lua"}
    end,
    {
        display = {
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
        }
    }
)

