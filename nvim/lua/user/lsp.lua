local cmp = require('cmp')
local lspconfig = require('lspconfig')
local luasnip = require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
})

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    'ast_grep', -- JSX
    'bashls', --bash
    'cssls', --CSS
    'dockerls', -- Docker
    'graphql', -- GraphQL
    'eslint', -- JavaScript
    'jsonls', -- JSON
    'lua_ls', --LUA
    'jedi_language_server', -- Python
    'html', -- HTML
    'terraformls', --Terraform
    'tsserver'
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

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig['lua_ls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['terraformls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['ast_grep'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['bashls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['cssls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['dockerls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['graphql'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['jsonls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['lua_ls'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['html'].setup { on_attach = on_attach , capabilities = capabilities }
lspconfig['gdscript'].setup { on_attach = on_attach , capabilities = capabilities }

lspconfig['tsserver'].setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' }
}

vim.diagnostic.config({
  virtual_text = false
})

