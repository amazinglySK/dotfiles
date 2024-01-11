vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Package manager
	use 'wbthomason/packer.nvim'

	-- Popup windows
	use 'nvim-lua/plenary.nvim'

	-- Ricing
	use { "catppuccin/nvim", as = "catppuccin" }
	use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}
	use 'ap/vim-css-color'
	
	-- Fuzzy finder
	use 'nvim-telescope/telescope.nvim'

	-- Code highlighting
	use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'simrat39/rust-tools.nvim'
	use 'williamboman/mason.nvim'    
    use 'williamboman/mason-lspconfig.nvim'

	 -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

	-- Git Client
	use {
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
	}
end)
