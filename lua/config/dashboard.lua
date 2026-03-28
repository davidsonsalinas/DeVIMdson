local dashboard = require('alpha.themes.dashboard')

-- stylua: ignore start
local header = {
  '██████╗ ███████╗██╗   ██╗██╗███╗   ███╗',
  '██╔══██╗██╔════╝██║   ██║██║████╗ ████║',
  '██║  ██║█████╗  ██║   ██║██║██╔████╔██║',
  '██║  ██║██╔══╝  ╚██╗ ██╔╝██║██║╚██╔╝██║',
  '██████╔╝███████╗ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '╚═════╝ ╚══════╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
  '',
  '        ██████╗ ███████╗ ██████╗ ███╗   ██╗',
  '        ██╔══██╗██╔════╝██╔═══██╗████╗  ██║',
  '        ██║  ██║███████╗██║   ██║██╔██╗ ██║',
  '        ██║  ██║╚════██║██║   ██║██║╚██╗██║',
}
-- stylua: ignore end

dashboard.section.header.val = header
dashboard.section.buttons.val = {
  dashboard.button('e', '  Novo arquivo', '<cmd>ene<cr>'),
  dashboard.button('f', '󰈞  Buscar arquivo', '<cmd>Telescope find_files<cr>'),
  dashboard.button('g', '󰊄  Buscar texto', '<cmd>Telescope live_grep<cr>'),
  dashboard.button('q', '󰅚  Sair', '<cmd>qa<cr>'),
}

dashboard.section.footer.val = {
  'DeVIMdson • Python-first • Full-stack',
}

require('alpha').setup(dashboard.opts)
