local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-Tab>', '<Cmd>BufferNext<CR>', opts)
vim.keymap.set('n', '<C-S-Tab>', '<Cmd>BufferPrevious<CR>', opts)

vim.keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', opts)
