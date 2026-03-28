return {
  {
    'williamboman/mason.nvim',
    config = true,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
    opts = {
      ensure_installed = {
        'pyright',
        'ruff',
        'ts_ls',
        'eslint',
        'gopls',
        'jsonls',
        'yamlls',
        'lua_ls',
        'tailwindcss',
        'emmet_language_server',
        'marksman',
        'lemminx',
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      require('config.lsp')
    end,
  },
  {
    'ray-x/lsp_signature.nvim',
    event = 'VeryLazy',
    opts = {},
  },
}
