local bufferline = require("bufferline")

bufferline.setup{
	options = {
		style_preset = bufferline.style_preset.minimal,
		diagnostics = "nvim_lsp",
		numbers = "ordinal"
	}
}

vim.keymap.set('n', '<C-Tab>', '<Cmd>BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<C-S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', opts)

vim.keymap.set('n', '<C-w>', '<Cmd>BufferLinePickClose<CR>', opts)
