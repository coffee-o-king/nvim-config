local M = {
  "Exafunction/codeium.vim",
  "nvim-lua/plenary.nvim",
  event = "BufEnter",
}

function M.config()
  require "plenary"
  require("codeium").setup {}
end

return M
