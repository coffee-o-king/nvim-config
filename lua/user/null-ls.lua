local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      -- formatting.eslint,
      formatting.eslint.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
        },
      },
      formatting.sqlfmt.with {
        filetypes = { "sql" },
        extra_args = {
          "--line-length=100",
        },
      },
      formatting.gofumpt,
      formatting.stylua,
      formatting.prettier.with {
        filetypes = {
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
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
        extra_filetypes = { "toml" },
        extra_args = { "--no-bracket-spacing" },
      },
      formatting.isort,
      formatting.black,
      formatting.black.with {
        extra_args = { "--line-length=100" },
      },
      null_ls.builtins.completion.spell,
      null_ls.builtins.diagnostics.eslint,
    },
  }
end

return M
