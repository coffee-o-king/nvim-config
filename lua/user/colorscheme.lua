local M = {
  -- "navarasu/onedark.nvim",
  -- "ray-x/aurora",
  -- "rose-pine/neovim",
  -- "folke/tokyonight.nvim",
  "catppuccin/nvim",
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

  -- require("rose-pine").setup {
  --   variant = "moon",
  --   styles = { transparency = true },
  -- }
  -- vim.cmd "colorscheme rose-pine"

  -- require("tokyonight").setup {
  --   style = "night",
  --   transparent = true,
  -- }
  -- vim.cmd "colorscheme tokyonight"

  require("catppuccin").setup {
    flavour = "mocha",
    transparent_background = true,
    color_overrides = {
      mocha = {
        rosewater = "#ffc9c9",
        flamingo = "#ff9f9a",
        pink = "#ffa9c9",
        mauve = "#e68ad2",
        lavender = "#ba8ae6",
        red = "#ba3f1d",
        maroon = "#fd6592",
        peach = "#f89595",
        yellow = "#ffbe69",
        green = "#afc3ac",
        teal = "#44909c",
        sky = "#a0d0c0",
        sapphire = "#8dd1da",
        blue = "#7ba2e0",
        text = "#ebc0ff",
        subtext1 = "#a6b0d8",
        subtext0 = "#959ec2",
        overlay2 = "#848cad",
        overlay1 = "#717997",
        overlay0 = "#63677f",
        surface2 = "#505469",
        surface1 = "#3e4255",
        surface0 = "#2c2f40",
        base = "#151515",
        mantle = "#0e0e0e",
        crust = "#080808",
      },
    },
    term_colors = true,
  }
  vim.cmd.colorscheme "catppuccin"

  vim.o.cursorline = false
  vim.opt.titlestring = "neovim"
  vim.opt.title = true
end

return M
