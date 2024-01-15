return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "php",
        "sql",
        "tsx",
        "twig",
        "typescript",
        "yaml",
      })
    end,
  },
}
