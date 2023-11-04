local M = {
  {
    "benfowler/telescope-luasnip.nvim",
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions = {
        luasnip = {},
      },
    },
  },
}
return M
