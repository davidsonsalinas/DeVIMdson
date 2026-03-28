vim.cmd.colorscheme('dracula')

local c = {
  bg = '#11111b',
  fg = '#f8f8f2',
  comment = '#6c7086',
  purple = '#bd93f9',
  cyan = '#8be9fd',
  pink = '#ff79c6',
  green = '#50fa7b',
}

vim.api.nvim_set_hl(0, 'Normal', { fg = c.fg, bg = c.bg })
vim.api.nvim_set_hl(0, 'Comment', { fg = c.comment, italic = true })
vim.api.nvim_set_hl(0, 'Function', { fg = c.cyan })
vim.api.nvim_set_hl(0, 'Keyword', { fg = c.pink, italic = true })
vim.api.nvim_set_hl(0, 'Type', { fg = c.purple })
vim.api.nvim_set_hl(0, 'String', { fg = c.green })
