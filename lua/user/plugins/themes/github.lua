return {
  "projekt0n/github-nvim-theme",
  lazy = true, -- make sure we load this during startup if it is your main colorscheme
  config = function()
    require("github-theme").setup {
      options = {
        -- transparent = true,
      }, -- ...
    }
  end,
}
