Presence = require("presence"):setup({
    auto_update       = true,
    editing_text      = "Editing %s",
    workspace_text    = "Working on %s",
    neovim_image_text = "The One True Text Editor",
    main_image        = "neovim",
    -- Main image display (either "neovim" or "file")
    log_level         = nil,
    -- one of the following: "debug", "info", "warn", "error"
    debounce_timeout  = 15,
    -- calls to `:lua Presence:update(<buf>, true)`
})
