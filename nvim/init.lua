vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader=" "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- tuples
local plugins = {
	{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}
}
local opts = {}

require("lazy").setup(plugins, opts)
local builtin = require('telescope.builtin') -- Usage for Telescope
vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- Enables fuzzy finding
vim.keymap.set('n', '<leader>g', builtin.live_grep, {}) -- Enables live grep

-- treesitter configs
local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = {"lua", "javascript", "html", "css"},
	highlight = { enable = true },
	indent = { enable = true },

})
