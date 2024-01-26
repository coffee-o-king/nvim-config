local M = {
  "Exafunction/codeium.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
}

function M.config()
  require("codeium").setup({})
end

return M
