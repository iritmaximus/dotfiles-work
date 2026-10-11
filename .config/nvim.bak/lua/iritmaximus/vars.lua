-- All of the variables that need to be set
--
--

vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.cursorline = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true

vim.opt.scrolloff=3

vim.opt.wrap = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.splitright = true

-- vim.api.nvim_create_user_command('ConfigReload', function()
--   require('iritmaximus.utils').reload_config()
-- end, { desc = 'Reload vim config' })
