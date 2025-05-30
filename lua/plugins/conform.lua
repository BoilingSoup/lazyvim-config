return {
  {
    "stevearc/conform.nvim",

    opts = {
      formatters_by_ft = {
        -- lua = { "stylua" },
        -- fish = { "fish_indent" },
        -- sh = { "shfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        html = { "prettierd" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        json = { "prettierd" },
      },
      formatters = {
        clang_format = {
          prepend_args = { "-style={BasedOnStyle: llvm, ColumnLimit: 120}" },
        },
      },
    },
  },
}
