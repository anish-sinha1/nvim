local M = {
  {
    "mrjones2014/legendary.nvim",
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
    opts = {
      extensions = {
        lazy_nvim = {
          auto_register = true,
        },
      },
      select_prompt = "Command Palette",
      icons = {
        -- keymap items list the modes in which the keymap applies
        -- by default, you can show an icon instead by setting this to
        -- a non-nil icon
        -- keymap = nil,
        keymap = nil,
        command = "",
        fn = "󰡱",
        itemgroup = "",
      },
    },
  },
  {
    "folke/flash.nvim",
    keys = {
      {
        "s",
        function()
          require("flash").jump()
        end,
        mode = { "n", "x", "o" },
        desc = "Jump forwards",
      },
      {
        "S",
        function()
          require("flash").jump({ search = { forward = false } })
        end,
        mode = { "n", "x", "o" },
        desc = "Jump backwards",
      },
    },
  },
}

return M
