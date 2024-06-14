require("toggleterm").setup{
	direction = 'float'
}

-- Toggle Terminal showing/hiding
vim.keymap.set('n', '<C-j>', ':ToggleTerm<CR>i')
-- vim.keymap.set('t', '<C-j>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<C-j>', [[<C-\><C-n>:ToggleTerm<CR>]])
