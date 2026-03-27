require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "lua", "javascript", "typescript", "java", "c", "html", "css" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})
