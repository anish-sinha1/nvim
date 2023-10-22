-- Keymaps are automatically loaded on the VeryLazy event
-- Default Keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional Keymaps here
--
-- Lua

vim.g.maplocalleader = ";"

-- Glance
vim.keymap.set("n", "<leader>gd", "<CMD>Glance definitions<CR>")
vim.keymap.set("n", "<leader>gr", "<CMD>Glance references<CR>")
vim.keymap.set("n", "<leader>gy", "<CMD>Glance type_definitions<CR>")
vim.keymap.set("n", "<leader>gm", "<CMD>Glance implementations<CR>")

-- ToggleTerm
vim.keymap.set("n", "<leader>ra", "<CMD>ToggleTermToggleAll<CR>")
vim.keymap.set("n", "<leader>rs", "<CMD>TermSelect<CR>")
vim.keymap.set("n", "<leader>rn", "<CMD>ToggleTermSetName<CR>")

-- Image Preview
-- vim.keymap.set("n", "<leader>sp", "<CMD>Telescope media_files<CR>")

-- Searchbox
vim.keymap.set("n", "/", "<CMD>SearchBoxIncSearch title='Find'<CR>", { noremap = true })
vim.keymap.set("n", "/r", "<CMD>SearchBoxReplace title='Find and replace'<CR>", { noremap = true })
vim.keymap.set("n", "/s", "<CMD>SearchBoxMatchAll<CR> title='Find'", { noremap = true })

-- Overseer
vim.keymap.set("n", "<leader>o", "<CMD>OverseerRun<CR>", { noremap = true })

-- Neogen
vim.keymap.set("n", "<leader>cg", "<CMD>lua require('neogen').generate()<CR>", { noremap = true })

-- Carbon Now
vim.keymap.set("v", "<leader>ci", "<CMD>CarbonNow<CR>")

-- Invert
vim.keymap.set("n", "<leader>iw", require("nvim-toggler").toggle)

-- Sniprun
vim.keymap.set("n", "<leader>ix", "<CMD>lua require('sniprun').run()<CR>", { noremap = true, desc = "Run line" })
vim.keymap.set(
  "v",
  "<leader>ib",
  "<CMD>lua require('sniprun').run('v')<CR>",
  { noremap = true, desc = "Run selected block" }
)
vim.keymap.set(
  "n",
  "<leader>ic",
  "<CMD>lua require('sniprun.display').close_all()<CR>",
  { noremap = true, desc = "Close sniprun display" }
)
