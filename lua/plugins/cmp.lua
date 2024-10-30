return {
  {
    "fbuchlak/cmp-symfony-router",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "symfony_router",
        option = {
          console_command = { "ddev", "exec", "php", "bin/console" },
          cwd = nil,
          cwd_files = { "composer.json", "bin/console" },
          filetypes = { "php", "twig" },
        },
        group_index = 1,
        priority = 100,
      })
    end,
  },
  {
    "hrsh7th/cmp-cmdline",
    config = function(_, opts)
      local cmp = require("cmp")

      -- `/` cmdline setup.
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      -- `:` cmdline setup.
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },
}
