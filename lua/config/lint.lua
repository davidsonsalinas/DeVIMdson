local lint = require('lint')

lint.linters_by_ft = {
  python = { 'ruff', 'mypy' },
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescript = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  go = { 'golangcilint' },
  markdown = { 'markdownlint' },
}

vim.keymap.set('n', '<leader>ll', function()
  lint.try_lint()
end, { desc = 'Run lint now' })
