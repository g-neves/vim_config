require("mason").setup()
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

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

-- Configuração dos LSP servers usando a nova API
local servers = {
  "lua_ls",
  "jdtls",
  "docker_compose_language_service",
  "html",
  "cssls",
  "clangd",
  "ts_ls",
  "pyright"
}

for _, server in ipairs(servers) do
  vim.lsp.config[server] = {
    on_attach = on_attach,
  }
  vim.lsp.enable(server)
end

vim.lsp.config["pyright"] = {
  on_attach = on_attach,
  before_init = function(_, config)
    config.settings = config.settings or {}
    config.settings.python = config.settings.python or {}
  end,
}
vim.lsp.enable("pyright")
