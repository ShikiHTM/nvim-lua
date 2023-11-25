local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment / Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tabs
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})

-- Move Window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sl', '<C-w>l')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
