-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ VIM MAPPINGS ❱━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ================================================================ --

local set = vim.keymap.set

-- Format JSON
set('n', '<leader>jfp', ':%!jq --indent 2 \'.\'<CR>', { desc = 'Format JSON in current buffer' })

-- Configured <space-g> to clear the search highlighting, in normal mode
set('n', '<leader>g', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

-- Open up Mini.Tree
set('n', '<leader>r', ':lua MiniFiles.open()<CR>', { desc = 'Toggle MiniFiles' })

-- Vim - Tmux navigation
set('n', "<C-h>", '<Cmd>NvimTmuxNavigateLeft<CR>', { desc = 'Nvim-Tmux navigate left' })
set('n', "<C-j>", '<Cmd>NvimTmuxNavigateDown<CR>', { desc = 'Nvim-Tmux navigate down' })
set('n', "<C-k>", '<Cmd>NvimTmuxNavigateUp<CR>', { desc = 'Nvim-Tmux navigate up' })
set('n', "<C-l>", '<Cmd>NvimTmuxNavigateRight<CR>', { desc = 'Nvim-Tmux navigate right' })

