local M = {
  "olimorris/onedarkpro.nvim",
  priority = 1000 -- Ensure it loads first
}

-- somewhere in your config:
function M.config()
  vim.cmd("colorscheme onedark_dark")
end

return M
