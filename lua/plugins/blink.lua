return {
  {
    "saghen/blink.compat",
  },
  {
    "saghen/blink.cmp",
    dependencies = { "fbuchlak/cmp-symfony-router", "nvim-lua/plenary.nvim" },
    opts = function(_, opts)
      vim.list_extend(opts.sources.default, { "symfony_router" })
      opts.sources.providers["symfony_router"] = {
        name = "symfony_router",
        module = "blink.compat.source",
        option = {
          console_command = { "ddev", "exec", "php", "bin/console" },
          cwd = nil,
          cwd_files = { "composer.json", "bin/console" },
          filetypes = { "php", "twig" },
        },
        group_index = 1,
        priority = 100,
      }
    end,
  },
}
