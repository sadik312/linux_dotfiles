-- return lua table
return {
	"nvim-lualine/lualine.nvim",
	config = function() -- set config attribute
		require('lualine').setup({
			options = {
				theme = 'powerline_dark'
			}
		})
	end
}
