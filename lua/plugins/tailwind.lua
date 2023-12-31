local M = {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_exclude = { "markdown", "rust", "python", "go" },
        },

        cssls = {
          settings = {
            css = { validate = true, lint = {
              unknownAtRules = "ignore",
            } },
            scss = { validate = true, lint = {
              unknownAtRules = "ignore",
            } },
            less = { validate = true, lint = {
              unknownAtRules = "ignore",
            } },
          },
        },
      },

      -- setup = {
      --   tailwindcss = function(_, opts)
      --     local tw = require("lspconfig.server_configurations.tailwindcss")
      --     --- @param ft string
      --     opts.filetypes = vim.tbl_filter(function(ft)
      --       return not vim.tbl_contains(opts.filetypes_exclude or {}, ft)
      --     end, tw.default_config.filetypes)
      --   end,
      -- },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    -- config = function()
    --   require("colorizer").setup({ user_default_options = { tailwind = true } })
    -- end,
    opts = {
      filetypes = { "css", "scss", "javascriptreact", "typescriptreact", "javascript", "typescript" },
      rgb_fn = true,
      hsl_fn = true,
      css = true,
      css_fn = true,
      RRGGBBAA = true,
      AARRGGBB = true,
      user_default_options = {
        tailwind = true,
      },
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = {
  --     { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
  --   },
  --   opts = function(_, opts)
  --     -- original LazyVim kind icon formatter
  --     local format_kinds = opts.formatting.format
  --     opts.formatting.format = function(entry, item)
  --       format_kinds(entry, item) -- add icons
  --       return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --     end
  --   end,
  -- },
  -- { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
}
return M
