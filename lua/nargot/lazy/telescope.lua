return {
    'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		require('telescope').setup({})

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<C-f>', builtin.git_files, {})
		vim.keymap.set('n', '<leader>ps', builtin.live_grep,{})
	end
}
