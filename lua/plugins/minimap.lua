local M = {
  "gorbit99/codewindow.nvim",
  config = function()
    local codewindow = require("codewindow")
    codewindow.setup({
      auto_enable = true,
    })
    codewindow.apply_default_keybinds()
  end,
}

return M
