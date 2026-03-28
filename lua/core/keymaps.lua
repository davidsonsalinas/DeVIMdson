local map = vim.keymap.set

map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save file' })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit window' })
map('n', '<Esc>', '<cmd>nohlsearch<cr>', { desc = 'Clear search highlight' })

map('n', '<leader>?', function()
  local ok, wk = pcall(require, 'which-key')
  if ok then
    wk.show({ global = true })
  else
    vim.cmd('map')
  end
end, { desc = 'Lembrete de keymaps' })

map('n', '<leader>sv', '<cmd>vsplit<cr>', { desc = 'Split vertical' })
map('n', '<leader>sh', '<cmd>split<cr>', { desc = 'Split horizontal' })
map('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = 'Delete buffer' })

map('n', '<leader>tt', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Toggle terminal' })
map('t', '<Esc><Esc>', [[<C-\><C-n>]], { desc = 'Exit terminal mode' })

map('n', '<leader>f', function()
  require('conform').format({ async = true, lsp_fallback = true })
end, { desc = 'Format buffer' })

map('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Toggle diagnostics list' })
map('n', '<leader>xq', '<cmd>Trouble qflist toggle<cr>', { desc = 'Toggle quickfix list' })

map('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Prev diagnostic' })
