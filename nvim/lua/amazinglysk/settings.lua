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


