-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_set_hl(0, "IblIndent", { fg = "#2B2B2B", nocombine = true })
    vim.api.nvim_set_hl(0, "IblScope", { fg = "#2B2B2B", nocombine = true })
    vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#1c3d73", fg = "NONE", nocombine = true })

    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#000000", fg = "NONE", nocombine = true })
  end,
})

vim.cmd([[colorscheme fruitypebbles]])
