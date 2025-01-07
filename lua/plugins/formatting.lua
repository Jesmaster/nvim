return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      php_cs_fixer = {
        prepend_args = { "--rules=@Symfony" },
      },
      phpcbf = {
        prepend_args = { "--standard=Drupal", "--extensions=php,module,inc,install,theme" },
      },
    },
    formatters_by_ft = {
      ["pcss"] = { "prettierd" },
      ["php"] = { "php_cs_fixer" }, -- Symfony
      -- ["php"] = { "phpcbf" }, -- Drupal
      ["twig"] = { "twig-cs-fixer" },
    },
  },
}
