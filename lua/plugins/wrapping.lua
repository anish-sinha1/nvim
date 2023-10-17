local M = {
  {
    {
      "andrewferrier/wrapping.nvim",
      config = function()
        require("wrapping").setup({
          auto_set_mode_filetype_allowlist = {
            "asciidoc",
            "gitcommit",
            "latex",
            "mail",
            "markdown",
            "rst",
            "tex",
            "text",
            "txt",
          },
          softener = {},
        })
      end,
    },
  },
}

return M
