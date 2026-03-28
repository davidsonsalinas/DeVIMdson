require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'bash',
    'go',
    'javascript',
    'jsdoc',
    'json',
    'lua',
    'markdown',
    'markdown_inline',
    'python',
    'tsx',
    'typescript',
    'vim',
    'xml',
    'yaml',
  },
  auto_install = true,
  highlight = { enable = true },
  indent = { enable = true },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
      },
    },
  },
})
