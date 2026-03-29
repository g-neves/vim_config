local ok, copilot_chat = pcall(require, "CopilotChat")
if not ok then
  return
end

copilot_chat.setup({
  model = "claude-sonnet-4",         -- or "claude-sonnet-4-5", etc.
  window = {
    layout = "vertical",
    width = 0.4,
  },
  auto_insert_mode = true,
  sticky = { "#buffer:active" },  -- always includes the focused buffer
  headers = {
    user = "    User",
    assistant = "    Copilot",
  },
})

-- Optional keymaps
local keymap = vim.keymap.set
keymap("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Toggle Copilot Chat" })
keymap("v", "<leader>ce", "<cmd>CopilotChatExplain<cr>", { desc = "Explain selection" })
keymap("v", "<leader>cf", "<cmd>CopilotChatFix<cr>", { desc = "Fix selection" })
keymap("v", "<leader>cr", "<cmd>CopilotChatReview<cr>", { desc = "Review selection" })
keymap("v", "<leader>ci", "<cmd>CopilotChat<cr>", { desc = "Chat about selection" })
