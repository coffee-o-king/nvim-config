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
        "cat ~/.config/github-copilot/apps.json | sed -e 's/.*oauth_token...//;s/\".*//'",
      },
    },
    providers = {
      openai = { disable = true },
      copilot = { disable = false },
    },
    agents = {
      {
        provider = "copilot",
        name = "CodeCopilot",
        chat = false,
        command = true,
        model = { model = "gpt-4o", temperature = 0.8, top_p = 1, n = 1 },
        system_prompt = require("gp.defaults").code_system_prompt,
      },
    },
  }
end

return M
