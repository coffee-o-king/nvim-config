local M = {
  -- "navarasu/onedark.nvim",
  "ray-x/aurora",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000 -- Ensure it loads first
}

-- somewhere in your config:
function M.config()
  -- require("onedark").setup {
  --   style = "darker"
  -- }
  -- vim.cmd.colorscheme("onedark")

  vim.cmd("let g:aurora_italic = 1")
  -- vim.cmd("let g:aurora_bold = 1")
  vim.cmd("let g:aurora_transparent = 1")
  vim.cmd("let g:aurora_darker = 1")
  vim.cmd("colorscheme aurora")
end

return M
