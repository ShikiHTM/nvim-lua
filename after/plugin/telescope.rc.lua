local status, tl = pcall(require, 'telescope')
if (not status) then return end
local actions = require('telescope.actions')

local fb_actions = require 'telescope'.extensions.file_browser.actions
tl.setup {
	defaults = {
		mapping = {
			n = {
				["q"] = actions.close,
			}
		}
	},

	extensions = {
		file_browser = {
			theme = 'dropdown',

			hijack_netrw = true,
			['i'] = {
				['<C-w>'] = function() vim.cmd('normal vbd') end,
			},
			['n'] = {
				['N'] = fb_actions.create,
				['h'] = fb_actions.goto_parent_dir,
				['/'] = function()
					vim.cmd('startinsert')
				end
			}
		}
	}
}


tl.load_extension('file_browser')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', ';f',
	'<cmd>lua require("telescope.builtin").find_files({ no_ignore = false, hidden = true })<cr>', opts)
vim.keymap.set('n', ';r',
	'<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
vim.keymap.set('n', '\\\\',
	'<cmd>lua require("telescope.builtin").buffers()<cr>', opts)
vim.keymap.set('n', 'sf',
	'<cmd>lua require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", respect_git_ignore = false, hidden = true, grouped = true, previewer = false, initial_mode = "normal", layout_config = {height=40} })<cr>')
