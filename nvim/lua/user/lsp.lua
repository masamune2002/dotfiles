require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'ast_grep', -- JSX
    'bashls', --bash
    'cssls', --CSS
    'dockerls', -- Docker
    'graphql', -- GraphQL
    'harper_ls', --C, C++, C#, and Markdown
    'eslint', -- JavaScript
    'jsonls', -- JSON
    'lua_ls', --LUA
    'jedi_language_server', -- Python
    'html', -- HTML
    'terraformls' --Terraform
  },
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

lspconfig['lua_ls'].setup { on_attach = on_attach }
lspconfig['terraformls'].setup { on_attach = on_attach }
lspconfig['ast_grep'].setup { on_attach = on_attach }
lspconfig['bashls'].setup { on_attach = on_attach }
lspconfig['cssls'].setup { on_attach = on_attach }
lspconfig['dockerls'].setup { on_attach = on_attach }
lspconfig['graphql'].setup { on_attach = on_attach }
lspconfig['harper_ls'].setup { on_attach = on_attach }
lspconfig['eslint'].setup { on_attach = on_attach }
lspconfig['jsonls'].setup { on_attach = on_attach }
lspconfig['lua_ls'].setup { on_attach = on_attach }
lspconfig['html'].setup { on_attach = on_attach }
lspconfig['terraformls'].setup { on_attach = on_attach }

vim.diagnostic.config({
  virtual_text = false
})

