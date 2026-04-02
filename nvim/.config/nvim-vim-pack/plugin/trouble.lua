vim.pack.add({
  'https://github.com/nvim-lua/plenary.nvim.git',
  'https://github.com/folke/todo-comments.nvim.git',
  'https://github.com/folke/trouble.nvim.git'
})

require('trouble').setup()

local set = vim.keymap.set

-- Open up Trouble diagnostics page
set('n', '<leader>p', ':Trouble diagnostics toggle<CR>', { desc = 'Toggle Trouble diagnostics page' })

-- Open up Trouble symbols page
set('n', '<leader> ', ':Trouble symbols toggle<CR>', { desc = 'Toggle Trouble symbols page' })

-- Open up Trouble TODO page
set('n', '<leader>f', ':Trouble todo toggle<CR>', { desc = 'Toggle Trouble todo page' })
