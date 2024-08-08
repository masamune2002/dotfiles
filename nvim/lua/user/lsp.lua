require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'terraformls' },
  automatic_installation = true
})

local on_attach = function(_,_)
  -- LSP
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {}) -- Rename variable
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {}) -- Code Actions
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  on_attach = on_attach
}

lspconfig['terraformls'].setup { on_attach = on_attach }

vim.diagnostic.config({
  virtual_text = false
})

