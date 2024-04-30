return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {"lua", "javascript", "html", "css", "c_sharp"},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end
}
