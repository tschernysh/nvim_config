local status, vm = pcall(require, "vim-visual-multi")
if not status then return end

-- Configure vim-visual-multi
vim.g.VM_maps = {
  ['Find Under'] = '<C-d>',
  ['Find Subword Under'] = '<C-d>',
  ['Select All'] = '<C-n>',
  ['Skip Region'] = '<C-x>',
  ['Remove Region'] = '<C-z>',
  ['Add Cursor Down'] = '<C-Down>',
  ['Add Cursor Up'] = '<C-Up>',
}

-- Key mappings for multiple cursors
vim.keymap.set('n', '<C-d>', '<Plug>(VM-Find-Under)', {})
vim.keymap.set('x', '<C-d>', '<Plug>(VM-Find-Under)', {})
vim.keymap.set('n', '<C-d>', '<Plug>(VM-Select-All)', {})
vim.keymap.set('x', '<C-d>', '<Plug>(VM-Select-All)', {})
