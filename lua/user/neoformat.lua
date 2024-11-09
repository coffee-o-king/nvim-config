local M = {
  "sbdchd/neoformat",
}

function M.config()
  vim.g.neoformat_verbose = 1
  -- vim.g.neoformat_run_all_formatters = 1
  -- vim.g.neoformat_sql_sleek = { exe = "sleek", args = { "--indent-spaces", 2 }, replace = 1 }
  -- vim.g.neoformat_sql_sqlformat = { exe = "sqlformat", replace = 1 }
  -- vim.g.neoformat_sql_sql_formatter = { exe = "sql-formatter" }
  vim.g.neoformat_sql_sqlfmt = { exe = "sqlfmt", replace = 1 }
  vim.g.neoformat_enabled_sql = {
    -- "sql_formatter",
    -- " sqlformat",
    "sqlfmt",
  }
  vim.g.neoformat_python_black = { exe = "black", args = { "-l", "100" }, replace = 1 }
  vim.g.neoformat_enabled_python = { "black", "isort", "docformatter" }
  vim.g.neoformat_enabled_go = { "gofmt", "goimports" }
  vim.g.neoformat_enabled_html = { "prettierd" }
end

return M
