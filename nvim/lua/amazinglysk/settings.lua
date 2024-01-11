vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false
vim.opt.mouse = 'a'
vim.opt.guicursor= 'a:block'
vim.opt.tabstop=4 
vim.opt.shiftwidth=4
vim.opt.termguicolors = true
vim.cmd.colorscheme "catppuccin"

vim.g.mapleader = " "
vim.g['t_Co'] = 256


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

-- Keymaps
vim.keymap.set('n', '<leader>F', '<cmd> ex .<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd> Telescope find_files<cr>')
vim.keymap.set('n', '<leader>gg', '<cmd> Neogit<cr>')
vim.keymap.set('n', '<C-t>', '<C-w>v')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>h', '<C-w>h')
