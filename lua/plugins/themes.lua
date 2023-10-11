local M = {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      -- transparent = true,
      styles = {
        -- sidebars = "transparent",
        -- floats = "transparent",
      },
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    -- lazy = false,
    -- event = "User ColorSchemeLoad",
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
    -- lazy = false,
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
      custom_highlights = {} or function(highlights, palette)
        return {}
      end, -- extend highlights
      custom_palette = {} or function(palette)
        return {}
      end, -- extend palette
      terminal_colors = true, -- enable terminal colors
    },
    -- config = function(_, opts)
    --   require("tokyodark").setup(opts) -- calling setup is optional
    --   vim.cmd([[colorscheme tokyodark]])
    -- end,
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false,
    opts = {
      -- transparent_bg = true,
      italic_comment = true,
    },
  },
  -- {
  --   "VDuchauffour/neodark.nvim",
  --   lazy = false,
  --   opts = {
  --     theme_style = "neodarker",
  --     transparent_bg = true,
  --   },
  -- },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    opts = {
      -- compile = false, -- enable compiling the colorscheme
      -- undercurl = true, -- enable undercurls
      -- commentStyle = { italic = true },
      -- functionStyle = {},
      -- keywordStyle = { italic = true },
      -- statementStyle = { bold = true },
      -- typeStyle = {},
      -- transparent = false, -- do not set background color
      -- dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      -- terminalColors = true, -- define vim.g.terminal_color_{0,17}
      -- colors = { -- add/modify theme and palette colors
      --   palette = {},
      --   theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      -- },
      -- overrides = function(colors) -- add/modify highlights
      --   return {}
      -- end,
      -- theme = "wave", -- Load "wave" theme when 'background' option is not set
      -- background = { -- map the value of 'background' option to a theme
      --   dark = "wave", -- try "dragon" !
      --   light = "lotus",
      -- },
    },
  },
}

return M
