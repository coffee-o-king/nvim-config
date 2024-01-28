local M = {
  "Robitx/gp.nvim",
}

function M.config()
  require("gp").setup {
    openai_api_key = os.getenv("OPENAI_API_KEY"),
  }
end

return M
