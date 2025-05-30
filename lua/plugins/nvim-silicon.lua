-- create code images
local opts = {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  opts = {
    disable_defaults = true,
  },
  config = function()
    require("silicon").setup({
      font = "Berkeley Mono",
      theme = "gruvbox-dark",
      background = "#fefefe",
      pad_horiz = 140,
      pad_vert = 120,
      line_pad = 2,
      no_line_number = true,
      no_window_controls = true,
      -- to_clipboard = true,
    })
  end,
}
return opts
