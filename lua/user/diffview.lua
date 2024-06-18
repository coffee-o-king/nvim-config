local M = {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles" },
}

function M.config()
  require("diffview").setup {
    enhanced_diff_hl = true,
    view = {
      diff_view = {
        layout = "diff2_horizontal",
      },
      history_view = {
        layout = "diff2_vertical",
      },
      merge_tool = {
        layout = "diff3_mixed",
      },
    },
  }
end

return M
