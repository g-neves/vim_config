require("mason").setup()
-- https://github.com/neovim/nvim-lspconfig
require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "jdtls",
    "docker_compose_language_service",
    "html",
    "cssls",
    "clangd",
    "ts_ls"
}

})

local on_attach = function (_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}

-- require("lspconfig").pyright.setup {
--   on_attach = on_attach
-- }

require("lspconfig").jdtls.setup {
  on_attach = on_attach
}

require("lspconfig").docker_compose_language_service.setup {
  on_attach = on_attach
}

require("lspconfig").html.setup {
  on_attach = on_attach
}

require("lspconfig").cssls.setup {
  on_attach = on_attach
}

require("lspconfig").clangd.setup {
  on_attach = on_attach
}

