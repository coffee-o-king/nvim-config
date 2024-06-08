local M = {
  -- "navarasu/onedark.nvim",
  -- "ray-x/aurora",
  "rose-pine/neovim",
  -- "folke/tokyonight.nvim",
  -- "catppuccin/nvim",
  -- "EdenEast/nightfox.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- Ensure it loads first
}

-- somewhere in your config:
function M.config()
  -- require("onedark").setup {
  --   style = "darker"
  -- }
  -- vim.cmd.colorscheme("onedark")

  -- vim.cmd "let g:aurora_italic = 1"
  -- -- vim.cmd("let g:aurora_bold = 1")
  -- vim.cmd "let g:aurora_transparent = 1"
  -- vim.cmd "let g:aurora_darker = 1"
  -- vim.cmd "colorscheme aurora"

  require("rose-pine").setup {
    variant = "moon",
    styles = { transparency = true },
    -- dim_inactive_windows = true,
  }
  vim.cmd "colorscheme rose-pine"
  vim.o.cursorline = false

  -- require("tokyonight").setup {
  --   style = "night",
  --   transparent = true,
  -- }
  -- vim.cmd "colorscheme tokyonight"

  -- require("catppuccin").setup {
  --   flavour = "mocha",
  --   transparent_background = true,
  -- }
  -- vim.cmd.colorscheme "catppuccin"

  vim.o.cursorline = false
  vim.opt.titlestring = "neovim"
  vim.opt.title = true
end

return M
