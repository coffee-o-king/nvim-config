local M = {
  "nvim-lualine/lualine.nvim",
  commit = "7533b0ead663d80452210c0c089e5105089697e5",
}

function M.config()
  require("lualine").setup {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          separator = { left = "", right = "" },
          right_padding = 2,
        },
      },
      lualine_b = {},
      lualine_c = {
        { "branch", icon = "", color = { fg = "#fafafa" } },
        "diff",
        "diagnostics",
      },
      lualine_x = {
        { "filetype", color = { fg = "#fafafa" } },
        { "progress", color = { fg = "#fafafa" } },
        { "location", color = { fg = "#fafafa" } },
      },
      lualine_y = {},
      lualine_z = {},
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
