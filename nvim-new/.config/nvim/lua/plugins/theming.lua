return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme "catppuccin"
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			config.setup({
        ensure_installed = { "lua", "c", "rust" },
        highlight = { enable = true },
        indent = { enable = true }
      })
		end
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require('lualine').setup({
				options = {
					theme = 'catppuccin-mocha',
					section_separators = '',
					component_separators = '',
				}
			})
		end
	}
}
