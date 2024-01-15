return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      djlint = {
        prepend_args = { "--profile=nunjucks" },
      },
      php_cs_fixer = {
        prepend_args = { "--rules=@Symfony" },
      },
      phpcbf = {
        prepend_args = { "--standard=Drupal", "--extensions=php,module,inc,install,theme" },
      },
    },
    formatters_by_ft = {
      ["pcss"] = { "prettierd" },
      ["lua"] = { "stylua" },
      ["php"] = { "php_cs_fixer" }, -- Symfony
      -- ["php"] = { "phpcbf" }, -- Drupal
      ["twig"] = { "djlint" },
    },
  },
}
