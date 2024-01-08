require("toggleterm").setup{
	direction = 'float'
}

-- Toggle Terminal showing/hiding
vim.keymap.set('n', '<C-j>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
