local M = {}

M.config = function()
    local zen = require("zen-mode")

    zen.setup({
      window = {
        backdrop = 0.95, -- shade the backdrop of the Zen window.

        -- * an absolute number of cells when > 1
        -- * a percentage of the width / height of the editor when <= 1
        width = 150, -- width of the Zen window
        height = 1, -- height of the Zen window

        options = {
          -- signcolumn = "no", -- disable signcolumn
          -- number = false, -- disable number column
          -- relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
        },
        twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
        gitsigns = { enabled = true },
      },
    })
  end

return M
