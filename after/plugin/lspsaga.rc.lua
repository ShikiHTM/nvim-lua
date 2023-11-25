local status, lsps = pcall(require, 'lspsaga')

if (not status) then return end

lsps.setup({
	diagnostic = {
		show_code_action = false,
		max_width = 0.6,
		max_height = 0.6,
		show_layout = 'float',
	},
	lightbulb = {
		enable = false
	}
})

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga finder<cr>', opts)
vim.keymap.set('i', '<C-k>', '<cmd>Lspsaga signature_help<cr>', opts)
vim.keymap.set('n', 'gp', '<cmd>Lspsaga preview_definition<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)
