require('telescope').setup{
  defaults = {
	mappings = {
	  i = {
		["<esc>"] = "close"
	  }
	}
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.live_grep, {})
