local M = {
  "Exafunction/codeium.vim",
  "nvim-lua/plenary.nvim",
}

function M.config()
  require("plenary")
  require("codeium").setup {}
end

return M
