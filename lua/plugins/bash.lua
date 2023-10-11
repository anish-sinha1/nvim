local M = {}

function M.list_insert_unique(tbl, vals)
  if type(vals) ~= "table" then
    vals = { vals }
  end
  for _, val in ipairs(vals) do
    if not vim.tbl_contains(tbl, val) then
      table.insert(tbl, val)
    end
  end
end

return {

  -- Add Bash to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        M.list_insert_unique(opts.ensure_installed, "bash")
      end
    end,
  },

  -- Ensure Bash linter and formatter are installed
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        M.list_insert_unique(opts.ensure_installed, { "shellcheck", "shfmt" })
      end
    end,
  },

  -- Ensure Bash debugger is installed
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        M.list_insert_unique(opts.ensure_installed, "bash")
      end
    end,
  },

  -- Correctly setup lspconfig for Bash 🚀
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Ensure mason installs the server
        bashls = {},
      },
      settings = {
        bashls = {},
      },
    },
  },
}
