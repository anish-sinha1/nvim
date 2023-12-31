-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.cmd("nnoremap <leader>fl <CMD>Legendary<CR>")

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

-- hack
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.sql" },
  command = "silent! !npx --quiet psqlformat --write --spaces=2 --keywordCase=lowercase --noSpaceFunction % &> /dev/null ",
})

vim.api.nvim_create_autocmd("BufWritePost", { pattern = { "*.hs" }, command = "silent! !fourmolu -i % &> /dev/null" })

vim.api.nvim_create_autocmd("BufEnter", { pattern = { "*" }, command = "set nornu" })
