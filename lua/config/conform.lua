require('conform').setup({
  formatters_by_ft = {
    python = { 'ruff_fix', 'ruff_format', 'black' },
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },
    json = { 'prettier' },
    yaml = { 'prettier' },
    markdown = { 'prettier' },
    go = { 'gofmt', 'goimports' },
    lua = { 'stylua' },
    xml = { 'xmlformat' },
  },
  format_on_save = function(bufnr)
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 1500, lsp_fallback = true }
  end,
})
