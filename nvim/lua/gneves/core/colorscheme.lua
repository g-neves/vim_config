local status, _ = pcall(vim.cmd, "colorscheme everforest")
if not status then
  vim.cmd 'colorscheme default'
  print("Colorscheme not found!")
end

