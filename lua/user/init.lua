require "user.plugins.dotfiles"
require "user.plugins.themes"
require "user.plugins.icons"
require "user.plugins.neogen"
require "user.plugins.conform"
require "user.plugins.telescope-luasnip"
require "user.plugins.minimap"
require "user.plugins.tmux"
require "user.plugins.autotags"
require "user.plugins.tailwind-rename"

vim.filetype.add {
  filename = {
    zsh = "sh",
    [".zshrc"] = "sh",
    [".env.example"] = "sh",
    -- "zsh" = "shell",
    -- [".env"] = "dotenv",
    -- ["env"] = "dotenv",
    -- ["tsconfig.json"] = "jsonc",
  },
}

return {
  colorscheme = "catppuccin-mocha",
  options = {
    opt = {
      showtabline = 0,
    },
  },

  lsp = {
    servers = {
      "ocamllsp",
      -- "prolog_lsp",
      "cssls",
    },
    config = {
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
      -- prolog_lsp = function()
      --   local lsp = require "lspconfig"
      --   vim.filetype.add { extension = { pro = "prolog" } }
      --   return {
      --     cmd = {
      --       "swipl",
      --       "-g",
      --       "use_module(library(lsp_server)).",
      --       "-g",
      --       "lsp_server:main",
      --       "-t",
      --       "halt",
      --       "--",
      --       " stdio",
      --     },
      --     filetypes = { "prolog", "pro" },
      --
      --     root_dir = lsp.util.root_pattern "pack.pro",
      --   }
      -- end,
      ocamllsp = function()
        local lsp = require "lspconfig"

        local c = vim.lsp.protocol.make_client_capabilities()
        c.textDocument.completion.completionItem.snippetSupport = true
        c.textDocument.completion.completionItem.resolveSupport = {
          properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
          },
        }

        local on_attach = function(client, bufnr)
          -- enable completion triggered by <C-x><C-o>
          vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

          -- TODO: remove the following block (unnecessary since conform is configured with ocamlformat now)
          --
          -- if client.server_capabilities.documentFormattingProvider then
          --   vim.api.nvim_create_autocmd("BufWritePre", {
          --     group = vim.api.nvim_create_augroup("Format", { clear = true }),
          --     buffer = bufnr,
          --     callback = function() vim.lsp.buf.formatting_seq_sync() end,
          --   })
          -- end
          --
          -- code lens
          if client.resolved_capabilities.code_lens then
            local codelens = vim.api.nvim_create_augroup("LSPCodeLens", { clear = true })
            vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "CursorHold" }, {
              group = codelens,
              callback = function() vim.lsp.codelens.refresh() end,
              buffer = bufnr,
            })
          end
        end

        local capabilities = require("cmp_nvim_lsp").default_capabilities(c)

        return {
          cmd = { "ocamllsp" },
          filetypes = { "ocaml", "ocaml.menhir", "ocaml.interface", "ocaml.ocamllex", "reason", "dune" },
          root_dir = lsp.util.root_pattern(
            "*.opam",
            "esy.json",
            "package.json",
            ".git",
            "dune-project",
            "dune-workspace"
          ),
          on_attach = on_attach,
          capabilities = capabilities,
        }
      end,
    },
  },

  -- custom telescope theme
  highlights = {
    init = function()
      local get_hlgroup = require("astronvim.utils").get_hlgroup
      -- get highlights from highlight groups
      local normal = get_hlgroup "Normal"
      local fg, bg = normal.fg, normal.bg
      -- local bg_alt = get_hlgroup("Visual").bg
      -- local green = get_hlgroup("String").fg
      -- local red = get_hlgroup("Error").fg

      local border_color = "#585b70"
      -- local red = "#f38ba8"
      local mauve = "#cba6f7"
      local peach = "#fab387"
      local pink = "#f5c2e7"
      -- return a table of highlights for telescope based on colors gotten from highlight groups
      return {
        TelescopeBorder = { fg = border_color, bg = bg },
        TelescopeNormal = { bg = bg },
        TelescopePreviewBorder = { fg = border_color, bg = bg },
        TelescopePreviewNormal = { bg = bg },
        TelescopePreviewTitle = { fg = bg, bg = peach },
        TelescopePromptBorder = { fg = border_color, bg = bg },
        TelescopePromptNormal = { fg = fg, bg = bg },
        TelescopePromptPrefix = { fg = pink, bg = bg },
        TelescopePromptTitle = { fg = bg, bg = mauve },
        TelescopeResultsBorder = { fg = border_color, bg = bg },
        TelescopeResultsNormal = { bg = bg },
        TelescopeResultsTitle = { fg = bg, bg = pink },
      }
    end,
  },

  mappings = {
    n = {
      ["<leader>fT"] = { "<cmd>TodoTelescope<cr>", desc = "Find todo comments" },
      ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },
      ["<leader>o"] = { "<cmd>OverseerRun<cr>", desc = "Run task" },
      ["<leader>g"] = { "<cmd>lua require'neogen'.generate()<cr>", desc = "Create doc comment" },
      ["<leader>fs"] = { "<cmd>lua require'telescope'.extensions.luasnip.luasnip{}<cr>", desc = "Search snippets" },
      ["<leader>ta"] = { "<cmd>ToggleTermToggleAll<cr>", desc = "Toggle all terminal sessions" },
      ["<leader>ts"] = { "<cmd>TermSelect<cr>", desc = "Select a terminal session" },
      ["<leader>tr"] = { "<cmd>ToggleTermSetName<cr>", desc = "Rename a terminal session" },
      ["<leader>sr"] = { "<cmd>lua require'sniprun'.run()<cr>", desc = "Run a line of code" },
      ["<leader>sc"] = { "<cmd>lua require'sniprun.display'.close_all()<cr>", desc = "Close sniprun windows" },
      ["<leader>M"] = { "<cmd>lua require'codewindow'.toggle_minimap()<cr>", desc = "Toggle minimap" },
      ["<leader>i"] = {
        function()
          if vim.bo.filetype == "neo-tree" then
            vim.cmd.wincmd "p"
          else
            vim.cmd.Neotree "focus"
          end
        end,
        desc = "Toggle Explorer Focus",
      },
      ["<C-h"] = { "<cmd>" },
    },
    v = {
      ["<leader>sr"] = { "<cmd>lua require'sniprun'.run('v')<cr>", desc = "Run block" },
    },
  },
}
