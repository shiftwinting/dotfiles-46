-- load all plugins
require "pluginList"
require "file-icons"

require "misc-utils"
require "top-bufferline"
require "statusline"
require "whichkey"

require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff start
cmd "syntax on"

-- Tokynight Configuration
g.tokyonight_style = "storm"
g.tokyonight_italic_functions = true
g.tokyonight_transparent = true
cmd[[colorscheme tokyonight]]

-- Base16 Configuration
-- local base16 = require "base16"
-- base16(base16.themes["onedark"], true)

-- Material Deep Ocean Configuration
-- g.material_style = "deep ocean"
-- g.material_italic_functions = true
-- g.material_disable_background = true
-- require('material').set()

require "custom_highlights"

-- colorscheme related stuff end

-- blankline

local indent = 2

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree"

-- git related , lsp symbols etc
require "gitsigns-nvim"
require "diffview-git"
require "git-octo"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- setup for TrueZen.nvim
require "zenmode"

