return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set('n', '<C-p>', builtin.find_files, {})
			vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		end
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
					require("telescope.themes").get_dropdown {}
				}
			}
		})
		require("telescope").load_extension("ui-select")
    end
	},
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup { view = { side = 'right' } }

			vim.keymap.set('n', '<C-b>', ':NvimTreeFindFileToggle<CR>', {})
		end
	}
--	{
--		"nvim-neo-tree/neo-tree.nvim",
--		branch = "v3.x",
--		dependencies = {
--			"nvim-lua/plenary.nvim",
--			"nvim-tree/nvim-web-devicons",
--			"MunifTanjim/nui.nvim",
--		},
--		config = function()
--			vim.g.loaded_netrw = 1
--			vim.g.loaded_netrwPlugin = 1
--			vim.keymap.set('n', '<C-b>', ':Neotree filesystem toggle right<CR>', {})
--		end
--	}
}
