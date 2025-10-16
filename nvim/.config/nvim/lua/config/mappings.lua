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

-- Commenting
-- See the plugins/editor.lua file.
-- <leader>i -> line comment
-- <leader>u -> block comment
-- <leader>n -> line comment at the end of the line

-- Format JSON
set('n', '<leader>jfp', ':%!jq --indent 2 \'.\'<CR>', { desc = 'Format JSON in current buffer' })

-- Configured <space-g> to clear the search highlighting, in normal mode
set('n', '<leader>g', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

-- Open up Trouble diagnostics page
set('n', '<leader>p', ':Trouble diagnostics toggle<CR>', { desc = 'Toggle Trouble diagnostics page' })

-- Open up Trouble symbols page
set('n', '<leader> ', ':Trouble symbols toggle<CR>', { desc = 'Toggle Trouble symbols page' })

-- Open up Trouble TODO page
set('n', '<leader>f', ':Trouble todo toggle<CR>', { desc = 'Toggle Trouble todo page' })
