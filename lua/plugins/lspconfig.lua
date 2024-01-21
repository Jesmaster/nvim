return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {},
      emmet_language_server = {},
      htmx = {},
      phpactor = {
        keys = {
          { "<leader>[d", "vim.diagnostic.goto_prev", desc = "Go to previous diagnostic" },
          { "<leader>]d", "vim.diagnostic.goto_next", desc = "Go to next diagnostic" },
        },
      },
    },
    setup = {
      emmet_language_server = function(_, opts)
        local emmet = require("lspconfig.server_configurations.emmet_language_server")
        opts.filetypes = emmet.default_config.filetypes
        vim.list_extend(opts.filetypes, { "twig" })
      end,
      htmx = function(_, opts)
        local htmx = require("lspconfig.server_configurations.htmx")
        opts.filetypes = htmx.default_config.filetypes
        vim.list_extend(opts.filetypes, { "twig" })
      end,
    },
  },
}
