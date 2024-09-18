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

require("vim-options")

-- Load all plugin specs from the plugins directory
local plugin_files = vim.fn.globpath(vim.fn.stdpath("config") .. "/lua/plugins", "*.lua", false, true)
local plugins = {}

for _, file in ipairs(plugin_files) do
  local plugin = dofile(file)
  if plugin then
    table.insert(plugins, plugin)
  end
end

require("lazy").setup(plugins)

