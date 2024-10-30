return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {},
      emmet_language_server = {},
      intelephense = {},
      phpactor = {
        autostart = false,
      },
      twiggy_language_server = {
        twiggy = {
          framework = "symfony",
          phpExecutable = "/opt/homebrew/bin/php",
          symfonyConsolePath = "bin/console",
        },
      },
    },
    setup = {
      emmet_language_server = function(_, opts)
        local emmet = require("lspconfig.configs.emmet_language_server")
        opts.filetypes = emmet.default_config.filetypes
        vim.list_extend(opts.filetypes, { "twig" })
      end,
    },
  },
}
