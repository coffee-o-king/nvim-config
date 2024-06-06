local M = {
  "folke/zen-mode.nvim",
}

function M.config()
  require("zen-mode").setup {
    window = { width = 120 },
  }
end

return M
