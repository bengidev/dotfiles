--------------------------------------------------------------------------------
-- Conform.nvim - Format on Save
--------------------------------------------------------------------------------
-- Auto-formats files on save using various formatters
-- Install formatters as needed:
--   brew install swiftformat stylua shfmt
--   npm install -g prettier
--   pip install black isort
--------------------------------------------------------------------------------

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      -- Swift
      swift = { "swiftformat" },
      -- Lua
      lua = { "stylua" },
      -- Python
      python = { "isort", "black" },
      -- JavaScript/TypeScript
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      -- Web
      html = { "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      -- Data formats
      json = { "prettier" },
      jsonc = { "prettier" },
      yaml = { "prettier" },
      -- Markdown
      markdown = { "prettier" },
      -- Shell
      sh = { "shfmt" },
      bash = { "shfmt" },
      zsh = { "shfmt" },
    },
    -- NOTE: format_on_save is handled automatically by LazyVim
    -- If you need to ignore certain filetypes, use LazyVim's configuration
    log_level = vim.log.levels.ERROR,
  },
}
