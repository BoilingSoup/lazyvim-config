return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        -- golangci_lint_ls = {
        --             init_options = {
        --                 command = {"golangci-lint", "run", }
        --             }
        --         },
        gopls = {
          settings = {
            gopls = {
              -- gofumpt = true,
              -- codelenses = {
              --   gc_details = false,
              --   generate = true,
              --   regenerate_cgo = true,
              --   run_govulncheck = true,
              --   test = true,
              --   tidy = true,
              --   upgrade_dependency = true,
              --   vendor = true,
              -- },
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = true,
              },
              analyses = {
                fieldalignment = false,
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = false,
              -- completeUnimported = true,
              -- staticcheck = true,
              -- directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
              semanticTokens = false,
            },
          },
        },
      },
    },
  },
}
