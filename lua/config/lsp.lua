local lspconfig = require('lspconfig')

local on_attach = function(client, bufnr)
  if client.name == 'ts_ls' or client.name == 'jsonls' then
    client.server_capabilities.documentFormattingProvider = false
  end

  local map = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
  end

  map('n', 'gd', vim.lsp.buf.definition, 'Go to definition')
  map('n', 'gr', vim.lsp.buf.references, 'References')
  map('n', 'gi', vim.lsp.buf.implementation, 'Implementation')
  map('n', 'K', vim.lsp.buf.hover, 'Hover')
  map('n', '<leader>ca', vim.lsp.buf.code_action, 'Code action')
  map('n', '<leader>rn', vim.lsp.buf.rename, 'Rename symbol')
  map('n', '<leader>ds', vim.lsp.buf.document_symbol, 'Document symbols')
  map('n', '<leader>ws', vim.lsp.buf.workspace_symbol, 'Workspace symbols')
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local servers = {
  pyright = {},
  ruff = {},
  ts_ls = {},
  eslint = {},
  gopls = {},
  jsonls = {},
  yamlls = {},
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = { globals = { 'vim' } },
        workspace = { checkThirdParty = false },
      },
    },
  },
  tailwindcss = {},
  emmet_language_server = {
    filetypes = { 'css', 'eruby', 'html', 'javascriptreact', 'less', 'sass', 'scss', 'pug', 'typescriptreact' },
  },
  marksman = {},
  lemminx = {},
}

for server, config in pairs(servers) do
  config.on_attach = on_attach
  config.capabilities = capabilities
  lspconfig[server].setup(config)
end
