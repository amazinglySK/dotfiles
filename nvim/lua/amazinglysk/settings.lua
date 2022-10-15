vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.mouse = 'a'
vim.opt.guicursor= ''
vim.opt.tabstop=4 
vim.opt.shiftwidth=4
vim.opt.termguicolors = true
vim.cmd[[colorscheme tokyonight-moon]]

vim.g.mapleader = "@"
vim.g['t_Co'] = 256
vim.g['airline_theme']='base16'
vim.g['airline#extensions#whitespace#enabled']= 0

vim.keymap.set('n', '<leader>F', '<cmd> ex .<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd> Telescope find_files<cr>')

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold

vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

require("mason").setup()
