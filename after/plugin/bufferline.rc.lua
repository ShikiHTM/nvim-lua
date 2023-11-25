local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

bufferline.setup {
	options = {
		mode = 'tabs',
		separator_style = 'slant',
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
	},
	highlights = {
		separator = {
			guifg = '#ebdbb2',
			guibg = '#282828',
		},
		separator_selected = {
			guifg = '#ebdbb2',
		},
		background = {
			guifg = '#3c3836',
			guibg = '#bdae93'
		},
		buffer_selected = {
			guifg = '#fe8019',
			gui = 'bold'
		}
	}
}

vim.api.nvim_set_keymap('n', '<Tab>', '<cmd>BufferLineCycleNext<cr>', {})
vim.api.nvim_set_keymap('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<cr>', {})
