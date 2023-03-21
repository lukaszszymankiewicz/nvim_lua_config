-- show only file name on global status line

vim.o.statusline = "%f"
vim.o.laststatus = 3
vim.api.nvim_set_hl(0, 'WinSeparator', { guibg = None })
