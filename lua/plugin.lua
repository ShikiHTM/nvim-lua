local status, packer = pcall(require, 'packer')

if (not status) then
	print("Packer is not installed")
	return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	-- Plugin Manager
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
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'https://github.com/nvim-telescope/telescope-file-browser.nvim'

	-- Code Commentary
	use 'tpope/vim-commentary'

	-- HTML Emmet
	use 'mattn/emmet-vim'
	
	-- Live Server
	use 'https://github.com/barrett-ruth/live-server.nvim'
end)
