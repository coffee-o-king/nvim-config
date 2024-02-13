local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}

function M.config()
  local harpoon = require "harpoon"
  harpoon:setup {}

  vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
  vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)


  vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
  vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
  vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
  vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
  vim.keymap.set("n", "<C-y>", function() harpoon:list():select(5) end)
  vim.keymap.set("n", "<C-u>", function() harpoon:list():select(6) end)
  vim.keymap.set("n", "<C-i>", function() harpoon:list():select(7) end)
  vim.keymap.set("n", "<C-o>", function() harpoon:list():select(8) end)

  -- Toggle previous & next buffers stored within Harpoon list
  vim.keymap.set("n", "<S-P>", function() harpoon:list():prev() end)
  vim.keymap.set("n", "<S-N>", function() harpoon:list():next() end)

end

return M
