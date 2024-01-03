-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go", "javascript", "python", "vimdoc"},
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Telescope
require('telescope').setup{
	defaults = {
		file_ignore_patterns = {"node_modules", ".git", "__pycache__", "target"}
	}
}

-- Neogit
local neogit = require'neogit'
neogit.setup({})

-- Mason
require("mason").setup()
