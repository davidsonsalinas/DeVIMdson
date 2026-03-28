require('gitsigns').setup({
  current_line_blame = true,
  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns
    local map = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
    end

    map(']h', gs.next_hunk, 'Next hunk')
    map('[h', gs.prev_hunk, 'Previous hunk')
    map('<leader>hs', gs.stage_hunk, 'Stage hunk')
    map('<leader>hr', gs.reset_hunk, 'Reset hunk')
    map('<leader>hp', gs.preview_hunk, 'Preview hunk')
    map('<leader>hb', gs.blame_line, 'Blame line')
  end,
})

vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<cr>', { desc = 'Open Neogit' })
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>', { desc = 'Open Diffview' })
vim.keymap.set('n', '<leader>gD', '<cmd>DiffviewClose<cr>', { desc = 'Close Diffview' })
vim.keymap.set('n', '<leader>gH', '<cmd>DiffviewFileHistory %<cr>', { desc = 'File history' })
