local function override_event()
  return {}
end

return {
  { "nvimdev/dashboard-nvim", enabled = false },
  {
    "LazyVim/LazyVim",
    init = function()
      -- override lazyvim.config.options, the I empties the startscreen:
      vim.opt.shortmess:append({ W = true, I = false, c = true })

      vim.api.nvim_create_autocmd("UIEnter", {
        once = true,
        callback = function()
          -- problematic: lazyvim.config.keymaps L116
          -- if vim.lsp.inlay_hint then
          require("lazyvim.config").load("keymaps")
        end,
      })
    end,
  },
  { -- do not lazyload
    "folke/which-key.nvim",
    lazy = false,
    event = override_event,
  },
  { -- do not lazyload
    -- and don't use default section operators!
    "nvim-lualine/lualine.nvim",
    lazy = false,
    event = override_event,
    opts = function(_, opts)
      opts.options.section_separators = ""
    end,
  },
  { -- do not lazyload
    "akinsho/bufferline.nvim",
    lazy = false,
    event = override_event,
  },
  { -- do not lazyload
    "folke/noice.nvim",
    lazy = false,
    event = override_event,
  },
}
