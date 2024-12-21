local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  commit = "cfc6f2c117aaaa82f19bcce44deec2c194d900ab",
  build = ":TSUpdate",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      event = "VeryLazy",
      commit = "ad8f0a472148c3e0ae9851e26a722ee4e29b1595",
    },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
      commit = "1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f",
    },
    {
      "windwp/nvim-ts-autotag",
      event = "VeryLazy",
      commit = "1cca23c9da708047922d3895a71032bc0449c52d",
    },
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      commit = "b464658e9b880f463b9f7e6ccddd93fb0013f559",
    },
  },
}
function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = "all",
    ignore_install = { "" },
    auto_install = true,
    sync_install = false,
    modules = {},
    highlight = {
      enable = true,
      -- disable = { "markdown" },
      additional_vim_regex_highlighting = false,
    },

    matchup = {
      enable = { "astro" },
      disable = { "lua" },
    },

    autotag = { enable = true },

    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },

    autopairs = { enable = true },

    indent = true,

    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["at"] = "@class.outer",
          ["it"] = "@class.inner",
          ["ac"] = "@call.outer",
          ["ic"] = "@call.inner",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["ai"] = "@conditional.outer",
          ["ii"] = "@conditional.inner",
          ["a/"] = "@comment.outer",
          ["i/"] = "@comment.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
          ["as"] = "@statement.outer",
          ["is"] = "@scopename.inner",
          ["aA"] = "@attribute.outer",
          ["iA"] = "@attribute.inner",
          ["aF"] = "@frame.outer",
          ["iF"] = "@frame.inner",
        },
      },
    },
  }

  -- local configs = require "nvim-treesitter.configs"
  -- configs.setup {
  --   -- modules = {
  --   --   rainbow = {
  --   --     enable = false,
  --   --     query = {
  --   --       "rainbow-parens",
  --   --     },
  --   --     strategy = require("ts-rainbow").strategy.global,
  --   --     hlgroups = {
  --   --       -- "TSRainbowRed",
  --   --       "TSRainbowBlue",
  --   --       -- "TSRainbowOrange",
  --   --       -- "TSRainbowCoral",
  --   --       "TSRainbowPink",
  --   --       "TSRainbowYellow",
  --   --       -- "TSRainbowViolet",
  --   --       -- "TSRainbowGreen",
  --   --     },
  --   --   },
  --   -- },
  -- }
end

return M
