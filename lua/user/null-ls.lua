local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting
  local diagnostics = null_ls.builtins.diagnostics

  null_ls.setup {
    sources = {
      -- -- sql -- --
      formatting.sqlfmt.with {
        filetypes = { "sql" },
        extra_args = {
          -- "--dialect=clickhouse",
          "--line-length=120",
        },
      },
      -- formatting.sql_formatter.with {
      --   filetypes = { "sql" },
      --   command = { "sleek" },
      -- },

      -- -- golang -- --
      formatting.goimports,
      -- diagnostics.gopls, -- installed with golang

      -- -- lua -- --
      formatting.stylua,

      -- -- javascript -- --
      -- formatting.prettier,
      formatting.prettierd.with {
        -- get configuration from project directory
        condition = function(utils)
          return utils.root_has_file ".prettierrc.js"
        end,
        extra_filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      },
      diagnostics.eslint_d,

      -- -- python -- --
      formatting.isort,
      formatting.black.with {
        extra_args = { "--line-length=100" },
      },

      -- -- code completion -- --
      null_ls.builtins.completion.spell,
    },
  }
end

return M
