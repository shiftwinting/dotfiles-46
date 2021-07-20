local M = {}

M.config = function()
  require("todo-comments").setup({ keywords = { TODO = { alt = { "WIP" } } } })
end

return M
