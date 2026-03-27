-- Change this number to switch colorscheme: 1 = everforest, 2 = gruvbox, 3 = vscode
local selected = 1

local colorschemes = {
  [1] = function()
    vim.g.everforest_background = "hard"
    vim.g.everforest_better_performance = 1
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_diagnostic_text_highlight = 1
    vim.g.everforest_diagnostic_virtual_text = "colored"
    vim.g.everforest_current_word = "bold"
    vim.cmd("colorscheme everforest")
  end,
  [2] = function()
    require("gruvbox").setup({
      contrast = "hard",
      bold = true,
      italic = {
        strings = true,
        comments = true,
        keywords = true,
      },
      undercurl = true,
      underline = true,
    })
    vim.cmd("colorscheme gruvbox")
  end,
  [3] = function()
    require("vscode").setup({
      style = "dark",           -- 'dark' or 'light'
      transparent = false,
      italic_comments = true,
      disable_nvimtree_bg = true,
    })
    vim.cmd("colorscheme vscode")
  end,
}

local status, err = pcall(colorschemes[selected])
if not status then
  vim.cmd("colorscheme default")
  print("Colorscheme not found!: " .. err)
end
