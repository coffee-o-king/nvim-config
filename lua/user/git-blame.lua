local M = {
  "f-person/git-blame.nvim",
}

function M.config()
  require("gitblame").setup {
    enabled = true,
    date_format = "%Y-%m-%d %I:%M%p",
  }
end

return M
