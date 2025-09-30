local opt = vim.opt

-- Make autoindent count as 2 spaces (default is 8)
opt.shiftwidth = 2

-- Make tabs count as 2 spaces (default is 8)
opt.tabstop = 2

opt.textwidth = 100
opt.wrapmargin = 0
opt.formatoptions:append { 't' }
opt.linebreak = true
