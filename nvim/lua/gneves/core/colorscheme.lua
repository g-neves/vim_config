-- Change this number to switch colorscheme: 1 = everforest, 2 = gruvbox, 3 = vscode, 4 = rose-pine, 5 = sonokai
local selected = 5

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
    end, [3] = function() require("vscode").setup({
            style = "dark",           -- 'dark' or 'light'
            transparent = false,
            italic_comments = true,
            disable_nvimtree_bg = true,
        })
        vim.cmd("colorscheme vscode")
    end,
    [4] = function()
        require("rose-pine").setup({
            variant = "main",  -- "main", "moon", or "dawn"
            dark_variant = "main",
            dim_inactive_windows = false,
            extend_background_behind_borders = true,
            styles = {
                bold = true,
                italic = true,
                transparency = false,
            },
        })
        vim.cmd("colorscheme rose-pine")
    end,
    [5] = function()
        vim.g.sonokai_style = "default"
        vim.g.sonokai_better_performance = 1
        vim.g.sonokai_enable_italic = 1
        vim.cmd("colorscheme sonokai")
    end,
}

local status, err = pcall(colorschemes[selected])
if not status then
  vim.cmd("colorscheme default")
  print("Colorscheme not found!: " .. err)
end
