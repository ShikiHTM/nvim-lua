local status, packer = pcall(require, 'packer')

if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	-- Plugin Manager
<<<<<<< HEAD
	use 'https://github.com/wbthomason/packer.nvim'

	-- Utils
	use 'https://github.com/jiangmiao/auto-pairs'
	use 'https://github.com/nvim-tree/nvim-web-devicons'

	-- Status Line
	use 'https://github.com/nvim-lualine/lualine.nvim'

	-- BufferTab
	use 'https://github.com/akinsho/bufferline.nvim'

	-- Theme
	use 'https://github.com/ellisonleao/gruvbox.nvim'

	-- LSP
	use 'https://github.com/L3MON4D3/LuaSnip'
	use 'https://github.com/neovim/nvim-lspconfig'
	use 'https://github.com/hrsh7th/nvim-cmp'
	use 'https://github.com/hrsh7th/cmp-nvim-lsp'
	use 'https://github.com/hrsh7th/cmp-buffer'
	use 'https://github.com/onsails/lspkind.nvim'

	-- Code highlight
	use {
		'https://github.com/nvim-treesitter/nvim-treesitter',
=======
	use 'wbthomason/packer.nvim'

	-- Utils
	use 'jiangmiao/auto-pairs'
	use 'nvim-tree/nvim-web-devicons'

	-- Status Line
	use 'nvim-lualine/lualine.nvim'

	-- BufferTab
	use 'akinsho/bufferline.nvim'

	-- Theme
	use 'ellisonleao/gruvbox.nvim'

	-- LSP
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'onsails/lspkind.nvim'
	use 'nvimdev/lspsaga.nvim'

	-- Code highlight
	use {
		'nvim-treesitter/nvim-treesitter',
>>>>>>> becf857 (re-Config LSPSaga)
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	-- File Manager
	use {
<<<<<<< HEAD
		'https://github.com/nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'https://github.com/nvim-telescope/telescope-file-browser.nvim'
end)

-- Theme Settings
vim.cmd [[colorscheme gruvbox]]
=======
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'nvim-telescope/telescope-file-browser.nvim'
end)
>>>>>>> becf857 (re-Config LSPSaga)
