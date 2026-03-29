require("nvim-treesitter.configs").setup({
  ensure_installed = { "python", "lua", "javascript", "typescript", "java", "c", "cpp", "html", "css", "markdown_inline" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})
