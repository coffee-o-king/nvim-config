local M = {
  "zbirenbaum/copilot-cmp",
}

function M.config()
  require("copilot_cmp").setup({
    suggestion = { enabled = false },
    panel = { enabled = false },
  })
end

return M
