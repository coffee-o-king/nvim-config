local M = {
  "fatih/vim-go",
}

function M.config()
  vim.cmd.GoUpdateBinaries()
end

return M
