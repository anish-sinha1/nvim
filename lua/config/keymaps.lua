-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
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
vim.keymap.set("n", "<leader>sp", "<CMD>Telescope media_files<CR>")
