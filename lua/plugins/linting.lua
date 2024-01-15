return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        --php = { "phpcs" },
        twig = { "twigcs" },
      },
      linters = {
        phpcs = {
          args = {
            "--standard=Drupal",
          },
        },
      },
    },
  },
}
