local M = {
  "nvimtools/none-ls.nvim",
}

function M.config()
  local null_ls = require "null-ls"

  local formatting = null_ls.builtins.formatting

  null_ls.setup {
    sources = {
      formatting.sqlfmt.with {
        filetypes = { "sql" },
        extra_args = {
          "--line-length=100",
        },
      },
      formatting.gofumpt,
      formatting.stylua,
      formatting.prettier.with {
        condition = function(utils)
          return utils.root_has_file ".prettierrc" or utils.root_has_file ".prettierrc.js"
        end,
      },
      formatting.isort,
      formatting.black.with {
        extra_args = { "--line-length=100" },
      },
      null_ls.builtins.completion.spell,
      null_ls.builtins.diagnostics.eslint,
    },
  }
end

return M
