require('lualine').setup({
  options = {
    theme = 'dracula-nvim',
    globalstatus = true,
  },
})

require('bufferline').setup({
  options = {
    diagnostics = 'nvim_lsp',
    show_close_icon = false,
  },
})

require('ibl').setup()
require('which-key').setup()

vim.notify = require('notify')
require('noice').setup({
  presets = {
    lsp_doc_border = true,
  },
})
