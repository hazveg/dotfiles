vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.mouse = 'a'
vim.opt.cursorline = true

vim.keymap.set('n', '<C-h>', '<C-W>h', {})
vim.keymap.set('n', '<C-j>', '<C-W>j', {})
vim.keymap.set('n', '<C-k>', '<C-W>k', {})
vim.keymap.set('n', '<C-l>', '<C-W>l', {})

vim.keymap.set('n', '<C-W>b', '<C-W>s', {})
vim.keymap.set('n', '<C-W>v', '<C-W>v', {})

vim.g.mapleader = " "
vim.opt.clipboard = 'unnamedplus'
