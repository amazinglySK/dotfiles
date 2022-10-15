require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "go", "javascript", "python"},
  sync_install = false,
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('telescope').setup{
	defaults = {
		file_ignore_patterns = {"node_modules", ".git", "__pycache__", "target"}
	}
}
