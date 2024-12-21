local M = {
  "Robitx/gp.nvim",
}

function M.config()
  require("gp").setup {
    copilot = {
      endpoint = "https://api.githubcopilot.com/chat/completions",
      secret = {
        "bash",
        "-c",
        "cat ~/.config/github-copilot/hosts.json | sed -e 's/.*oauth_token...//;s/\".*//'",
      },
    },
  }
end

return M
