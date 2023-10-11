local M = {
  {
    "stevearc/conform.nvim",
    opts = {

      formatters = {
        sqlformat = {
          command = "sql-formatter --fix -l postgresql",
        },
      },

      format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        -- Use a sub-list to run only the first available formatter
        javascript = { { "prettierd", "prettier" } },

        sql = { "sql-formatter" },

        ["_"] = { "trim_whitespace" },
      },

      -- config = function(_, opts)
      --   local util = require("conform.util")
      --   require("conform").setup(opts)
      -- end,
    },
  },
}

return M
