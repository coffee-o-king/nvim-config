local M = {
  "jose-elias-alvarez/null-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.stylua,
      formatting.prettier,
      formatting.prettier.with {
        filetypes = {
          "javascript",
          "typescript",
          "css",
          "scss",
          "html",
          "json",
          "yaml",
          "markdown",
          "graphql",
          "md",
          "txt",
        },
        extra_filtyeps = { "toml" },
        extra_args = { "--no-bracket-spacing" },
      },
      formatting.isort,
      formatting.black,
      formatting.black.with {
        extra_args = { "--line-length=100" },
      },
      null_ls.builtins.completion.spell,
      -- null_ls.builtins.diagnostics.eslint,
    },
  }
end

return M
