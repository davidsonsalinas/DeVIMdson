local telescope = require('telescope')
telescope.setup({
  defaults = {
    layout_strategy = 'horizontal',
    sorting_strategy = 'ascending',
    prompt_prefix = '   ',
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buffers' })
vim.keymap.set('n', '<leader>fr', builtin.oldfiles, { desc = 'Recent files' })
vim.keymap.set('n', '<leader>fs', builtin.lsp_document_symbols, { desc = 'Document symbols' })
vim.keymap.set('n', '<leader>fS', builtin.lsp_workspace_symbols, { desc = 'Workspace symbols' })
