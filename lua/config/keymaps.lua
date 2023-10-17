-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Lua

vim.g.maplocalleader = ";"
vim.keymap.set("n", "<leader>gd", "<CMD>Glance definitions<CR>")
vim.keymap.set("n", "<leader>gr", "<CMD>Glance references<CR>")
vim.keymap.set("n", "<leader>gy", "<CMD>Glance type_definitions<CR>")
vim.keymap.set("n", "<leader>gm", "<CMD>Glance implementations<CR>")
