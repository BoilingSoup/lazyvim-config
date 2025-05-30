return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
      lsp = {
        hover = {
          silent = true, -- hide pop up if no info available
        },
      },
    },
  },
}
