local M = {
  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    opts = {
      base_url = "https://carbon.now.sh/",
      -- open_cmd = "open -a 'google-chrome'",

      open_cmd = "open -a 'google chrome'",
      options = {
        bg = "gray",
        drop_shadow_blur = "68px",
        drop_shadow = false,
        drop_shadow_offset_y = "20px",
        font_family = "Hack",
        font_size = "18px",
        line_height = "133%",
        line_numbers = true,
        theme = "monokai",
        titlebar = "Image",
        watermark = false,
        width = "680",
        window_theme = "sharp",
      },
    },
  },
}

return M
