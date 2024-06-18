local M = {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed, not both.
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = true,
}

function M.config()
  local icons = require "user.icons"
  require("neogit").setup {
    -- window options
    kind = "floating",
    popup = { kind = "floating" },
    commit_editor = { kind = "floating", show_staged_diff = false },
    -- integrations
    integrations = {
      diffview = true,
    },
    -- icon customizations
    signs = {
      section = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      item = { icons.ui.ChevronRight, icons.ui.ChevronShortDown },
      hunk = { "", "" },
    },
  }
end

return M
