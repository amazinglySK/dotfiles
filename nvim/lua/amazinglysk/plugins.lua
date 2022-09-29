vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'folke/tokyonight.nvim' 
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'
	use 'ap/vim-css-color'
	use 'neovim/nvim-lspconfig'
end)
