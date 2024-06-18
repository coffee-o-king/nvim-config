local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

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
      -- formatting.gofumpt,
      formatting.goimports,
      null_ls.builtins.diagnostics.gopls,

      -- -- lua -- --
      formatting.stylua,

      -- -- javascript -- --
      -- formatting.prettier,
      formatting.prettier.with {
        -- get configuration from project directory
        condition = function(utils)
          return utils.root_has_file ".prettierrc.js"
        end,
        extra_filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
      },
      null_ls.builtins.diagnostics.eslint_d,

      -- -- rust -- --
      formatting.rustfmt,

      -- -- python -- --
      formatting.isort,
      formatting.black.with {
        extra_args = { "--line-length=100" },
      },
      null_ls.builtins.completion.spell,
    },
  }
end

return M
