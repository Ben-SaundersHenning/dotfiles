-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ VIM MAPPINGS ❱━━━━━━━━━━━━━━━━━━━━━━━━ --
--                                                                  --
-- Any custom mappings                                              --
-- ================================================================ --

local set = vim.keymap.set
local del = vim.keymap.del

-- Remaps <SPACE> in normal mode (n) to have no operation (Nop)
-- Just a 'safe' reset of whatever may use the <SPACE> key
set('n', '<SPACE>', '<Nop>')

-- Make the space key the mapleader
vim.g.mapleader = " " -- space is the leader key

-- Open up Mini.Tree
set('n', '<leader>r', ':lua MiniFiles.open()<CR>', { desc = 'Toggle MiniFiles' })

-- Vim - Tmux navigation
set('n', "<C-h>", '<Cmd>NvimTmuxNavigateLeft<CR>', { desc = 'Nvim-Tmux navigate left' })
set('n', "<C-j>", '<Cmd>NvimTmuxNavigateDown<CR>', { desc = 'Nvim-Tmux navigate down' })
set('n', "<C-k>", '<Cmd>NvimTmuxNavigateUp<CR>', { desc = 'Nvim-Tmux navigate up' })
set('n', "<C-l>", '<Cmd>NvimTmuxNavigateRight<CR>', { desc = 'Nvim-Tmux navigate right' })
