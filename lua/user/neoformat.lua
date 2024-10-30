local M = {
  "sbdchd/neoformat",
}

function M.config()
  -- vim.g.neoformat_verbose = 1
  vim.g.neoformat_run_all_formatters = 1
  vim.g.neoformat_enabled_python = { "black", "isort", "docformatter" }
  vim.g.neoformat_sql_sleek = { exe = "sleek", args = { "--indent-spaces", 2 }, replace = 1 }
  vim.g.neoformat_enabled_sql = { "sleek" }
end

return M
