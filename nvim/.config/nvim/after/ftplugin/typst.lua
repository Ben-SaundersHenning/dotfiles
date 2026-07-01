local opt = vim.opt_local

-- Make autoindent count as 2 spaces (default is 8)
opt.shiftwidth = 2

-- Make tabs count as 2 spaces (default is 8)
opt.tabstop = 2

-- wrap lines at 80 chars, or the nearest word.
opt.textwidth = 80
opt.wrapmargin = 0
-- opt.formatoptions:append { 't' }
opt.formatoptions = opt.formatoptions + 't'
