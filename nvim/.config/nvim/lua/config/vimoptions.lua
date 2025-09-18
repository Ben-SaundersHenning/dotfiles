-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━❰ VIM OPTIONS CONFIG ❱━━━━━━━━━━━━━━━━━━━━━ --
--                                                                  --
-- These are options set from internal vim variables/switches (see) --
-- https://neovim.io/doc/user/options.html#options for more details --
-- ================================================================ --

local opt = vim.opt

-- When starting a newline, copy the indent from the previous line
-- If you type a <BS> (backspace) or CTRL-D, the indent is deleted
opt.autoindent = true

-- If a file changed outside of NVim while being open in NVim,
-- read and update the changes. Does not apply if the file has
-- been deleted while being open in NVim.
opt.autoread = true

-- Write to a file, if it has been modified, if one of many
-- commands have been run. The 'autowrite' / 'aw' option is
-- implied in 'autowriteall'. This ensures the file is written
-- before a :q.
opt.autowriteall = true

-- Set default background to dark theme
opt.background = "dark"

-- <BS>, <Del>, CRTL-W and CRTL-U behavior in insert mode.
-- Backspace-ing goes over auto-indents, line breaks, and
-- is allowed over the start of insert mode. 2 is just the
-- preset config for those options
opt.backspace = 'indent,eol,start'

-- Uses the clipboard registor "+" - instead of "*". As far
-- as I am aware, the "+" clipboard is specialized to connect
-- directly to the system clipboard.
vim.o.clipboard = 'unnamedplus'

-- Show whitespace
opt.list = true

-- Enable mouse support in Normal Mode and Visual Mode
opt.mouse = "a"

-- Print the line numbers
opt.number = true

-- Line numbers will take up 2 spaces at minimum when printing
opt.numberwidth = 2

-- Briefly jump to the matching bracket, if its on screen.
opt.showmatch = true

-- Use spaces in place of tabs
opt.expandtab = true

-- Make autoindent count as 2 spaces (default is 8)
opt.shiftwidth = 2

-- Make tabs count as 2 spaces (default is 8)
opt.tabstop = 2

-- Enable GUI colors for terminal
opt.termguicolors = true

-- Turn on autocompletion of matches when using the command-line in Vim.
-- An "Enhanced mode"
opt.wildmenu = true

-- Open splits below exisiting windows.
opt.splitbelow = true

-- Disable netrw, the default Vim file exploerer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

