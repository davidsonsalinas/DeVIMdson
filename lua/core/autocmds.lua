local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local spell_group = augroup('spell_for_text', { clear = true })
autocmd('FileType', {
  group = spell_group,
  pattern = { 'markdown', 'gitcommit', 'text' },
  callback = function()
    vim.opt_local.spell = true
  end,
})

local lint_group = augroup('lint_on_events', { clear = true })
autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
  group = lint_group,
  callback = function()
    local ok, lint = pcall(require, 'lint')
    if ok then
      lint.try_lint()
    end
  end,
})
