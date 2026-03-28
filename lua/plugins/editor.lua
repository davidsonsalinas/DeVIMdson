return {
  {
    'nvim-telescope/telescope.nvim',
    cmd = 'Telescope',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
    },
    build = 'make',
    config = function()
      require('config.telescope')
      pcall(require('telescope').load_extension, 'fzf')
    end,
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    cmd = 'Neotree',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    opts = {},
    keys = {
      { '<leader>e', '<cmd>Neotree toggle<cr>', desc = 'Toggle file tree' },
    },
  },
  {
    'stevearc/aerial.nvim',
    cmd = 'AerialToggle',
    opts = {},
    keys = {
      { '<leader>o', '<cmd>AerialToggle right<cr>', desc = 'Symbols outline' },
    },
  },
  {
    'folke/trouble.nvim',
    cmd = 'Trouble',
    opts = {},
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      direction = 'float',
      shade_terminals = false,
    },
  },
}
