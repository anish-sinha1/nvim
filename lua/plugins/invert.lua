local M = {
  {
    "nguyenvukhang/nvim-toggler",
    opts = {
      -- your own inverses
      inverses = {
        ["true"] = "false",
        ["True"] = "False",
      },
      -- removes the default <leader>i keymap
      remove_default_keybinds = true,
      -- removes the default set of inverses
      remove_default_inverses = true,
    },
  },
}
return M
