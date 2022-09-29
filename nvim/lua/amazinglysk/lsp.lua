require'lspconfig'.gopls.setup{
	on_attach = function()
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
	vim.keymap.set("n", "F", vim.lsp.buf.formatting, {buffer = 0})
	vim.keymap.set("n", "D", vim.lsp.buf.definition, {buffer = 0})
	end
}