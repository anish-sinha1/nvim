local M = {
  {
    "michaelb/sniprun",
    branch = "master",

    build = "sh install.sh",
    -- do 'sh install.sh 1' if you want to force compile locally
    -- (instead of fetching a binary from the github release). Requires Rust >= 1.65

    config = function()
      require("sniprun").setup({
        -- your options

        -- options are "VirtualText", "Terminal", "Classic", "TempFloatingWindow", or "Notification"
        display = { "TempFloatingWindow" },
        -- display_options = {
        --   notification_timeout = 12, -- in seconds
        -- },
      })
    end,
  },
}
return M
