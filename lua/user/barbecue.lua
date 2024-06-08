local M = {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  dependencies = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
}

function M.config()
  require("barbecue").setup {
    theme = "auto",
    show_modified = true,
    -- attach_navic = true,
  }
end

return M
