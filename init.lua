-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("cmp").setup({
  formatting = { format = require("tailwindcss-colorizer-cmp").formatter },
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2B2B2B", nocombine = true })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#2B2B2B", nocombine = true })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#1c3d73", fg = "NONE", nocombine = true })
  end,
})

vim.cmd([[colorscheme fruitypebbles]])
