vim.cmd('autocmd!')

vim.opt.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.shiftwidth = 4

<<<<<<< HEAD
vim.opt.shell = 'fish'
=======
vim.opt.shell = 'PowerShell'
>>>>>>> becf857 (re-Config LSPSaga)

vim.api.nvim_create_autocmd("InsertLeave", {
	pattern = '*',
	command = "set nopaste"
})
<<<<<<< HEAD
=======

vim.cmd [[autocmd BufNewFile, BufRead * setLocal formatoptions+=cqn]]
>>>>>>> becf857 (re-Config LSPSaga)
