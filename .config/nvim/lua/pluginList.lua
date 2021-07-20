local packer = require("packer")
local use = packer.use

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float {border = "single"}
    end
  },
  git = {
    clone_timeout = 600 -- Timeout, in seconds, for git clones
  }
}

return packer.startup(
function()
  use "wbthomason/packer.nvim"

  use "akinsho/nvim-bufferline.lua"

  use {
    "glepnir/galaxyline.nvim",
    config = function()
      require("plugins.statusline").config()
    end
  }

  -- color related stuff
  use "siduck76/nvim-base16.lua"

  use {
    "norcalli/nvim-colorizer.lua",
    event = "BufRead",
    config = function()
      require("colorizer").setup()
      vim.cmd("ColorizerReloadAllBuffers")
    end
  }

  -- language related plugins
  use {
    "nvim-treesitter/nvim-treesitter",
    event = "BufRead",
    config = function()
      require("plugins.treesitter").config()
    end
  }

  use {
    "kabouzeid/nvim-lspinstall",
    event = "BufRead"
  }

  use {
    "neovim/nvim-lspconfig",
    after = "nvim-lspinstall",
    config = function()
      require("plugins.lspconfig").config()
    end
  }

  use {
    "onsails/lspkind-nvim",
    event = "BufRead",
    config = function()
      require("lspkind").init()
    end
  }

  use {
    "kosayoda/nvim-lightbulb",
    event = "BufRead"     
  }

  use {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require ("lsp_signature").on_attach()
    end
  }

  use {
    "simrat39/symbols-outline.nvim",
    cmd = { "SymbolsOutline" }
  }

  use {
    "RRethy/vim-illuminate",
    event = "CursorHold",
    module = "illuminate",
    config = function()
      vim.g.Illuminate_delay = 1000
    end,
  }

  -- load compe in insert mode only
  use {
    "hrsh7th/nvim-compe",
    event = "InsertEnter",
    config = function()
      require("plugins.compe").config()
    end,
    wants = {"LuaSnip"},
    requires = {
      {
        "L3MON4D3/LuaSnip",
        wants = "friendly-snippets",
        event = "InsertCharPre",
        config = function()
          require("plugins.compe").snippets()
        end
      },
      {
        "rafamadriz/friendly-snippets",
        event = "InsertCharPre"
      }
    }
  }

  use {"sbdchd/neoformat", cmd = "Neoformat"}

  -- file managing , picker etc
  use {
    "kyazdani42/nvim-tree.lua",
    cmd = "NvimTreeToggle",
    config = function()
      require("plugins.nvimtree").config()
    end
  }

  use {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("plugins.icons").config()
    end
  }

  use {
    "nvim-telescope/telescope.nvim",
    requires = {
      {"nvim-lua/popup.nvim"},
      {"nvim-lua/plenary.nvim"}
    },
    cmd = "Telescope",
    config = function()
      require("plugins.telescope").config()
    end
  }

  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make", cmd = "Telescope"}

  use {
    "nvim-telescope/telescope-media-files.nvim",
    cmd = "Telescope"
  }

  -- git stuff
  use {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      require("plugins.gitsigns").config()
    end
  }

  -- misc plugins
  use {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
    config = function()
      require("diffview").setup({})
    end,
  }

  use {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    config = function() vim.g.lazygit_floating_window_use_plenary = 0 end
  }

  use {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope" },
    event = "BufReadPost",
    config = function()
      require("plugins.todo").config()
    end,
  }

  use {
    "windwp/nvim-autopairs",
    after = "nvim-compe",
    config = function()
      require("nvim-autopairs").setup()
      require("nvim-autopairs.completion.compe").setup(
      {
        map_cr = true,
        map_complete = true -- insert () func completion
      }
      )
    end
  }

  use {"andymass/vim-matchup", event = "CursorMoved"}

  use {
    "terrortylor/nvim-comment",
    cmd = "CommentToggle",
    config = function()
      require("nvim_comment").setup()
    end
  }
  use {"tweekmonster/startuptime.vim", cmd = "StartupTime"}

  -- load autosave only if its globally enabled
  use {
    "Pocco81/AutoSave.nvim",
    config = function()
      require("plugins.zenmode").autoSave()
    end,
    cond = function()
      return vim.g.auto_save == true
    end
  }

  -- smooth scroll
  use {
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require("neoscroll").setup()
    end
  }

  use {
    "folke/zen-mode.nvim",
    config = function()
      require("plugins.zenmode").config()
    end
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPre",
    setup = function()
      require("utils").blankline()
    end
  }

  -- Markdown related plugins
  use {
    "iamcco/markdown-preview.nvim",
    run = function()
      vim.fn["mkdp#util#install"]()
    end,
    ft = "markdown",
    cmd = { "MarkdownPreview" },
  }
end
)
