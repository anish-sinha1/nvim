local M = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      -- transparent = true,
      style = "night",
      light_style = "day",
      transparent = false,
      terminal_colors = true,
      day_brightness = 0.3,
      hide_inactive_statusline = false,
      dim_inactive = false,
      lualine_bold = false,
      -- on_colors = function(colors) end,
      -- on_highlights = function(highlights, colors) end,
      styles = {
        -- sidebars = "transparent",
        -- floats = "transparent",
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
      sidebars = { "qf", "help", "terminal", "vista_kind" },
    },
  },
  {
    "olimorris/onedarkpro.nvim",
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    opts = {
      -- transparent_background = true,
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "projekt0n/github-nvim-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    config = function()
      require("github-theme").setup({
        options = {
          -- transparent = true,
        }, -- ...
      })
    end,
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- transparent_background = true, -- set background to transparent
      gamma = 1.00, -- adjust the brightness of the theme
      styles = {
        comments = { italic = true }, -- style for comments
        keywords = { italic = true }, -- style for keywords
        identifiers = { italic = true }, -- style for identifiers
        functions = {}, -- style for functions
        variables = {}, -- style for variables
      },
      -- custom_highlights = {} or function(highlights, palette)
      --   return {}
      -- end, -- extend highlights
      -- custom_palette = {} or function(palette)
      --   return {}
      -- end, -- extend palette
      terminal_colors = true, -- enable terminal colors
    },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },
  {
    "tanvirtin/monokai.nvim",
    lazy = true,
  },
  {
    "colevoss/nvimpire",
    lazy = false,
  },
  {
    "iagorrr/noctishc.nvim",
    lazy = true,
  },
  {
    "cpea2506/one_monokai.nvim",
    lazy = false,
    opts = {
      -- transparent = true,
    },
  },
  {
    "JoosepAlviste/palenightfall.nvim",
    lazy = false,
    opts = {
      transparent = false,
    },
  },
}

return M
