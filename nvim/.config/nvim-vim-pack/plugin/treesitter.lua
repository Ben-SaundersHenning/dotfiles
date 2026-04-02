-- INFO: formatting and syntax highlighting
vim.pack.add(
  { 'https://github.com/nvim-treesitter/nvim-treesitter' }, { confirm = false }
)

vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter-textobjects.git',
  'https://github.com/nvim-treesitter/nvim-treesitter-context.git',
})

require('nvim-treesitter-textobjects').setup({
  select = {
    lookahead = true,
  },
  move = {
    set_jumps = true,
  },
})

local map = vim.keymap.set

map('n', '[c', function()
  require('treesitter-context').go_to_context(vim.v.count1)
end, { silent = true })

-- Textobject selections
map({ 'x', 'o' }, 'af', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@function.outer', 'textobjects')
end, { desc = 'outer function' })
map({ 'x', 'o' }, 'if', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@function.inner', 'textobjects')
end, { desc = 'inner function' })
map({ 'x', 'o' }, 'ac', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@class.outer', 'textobjects')
end, { desc = 'outer class' })
map({ 'x', 'o' }, 'ic', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@class.inner', 'textobjects')
end, { desc = 'inner class' })
map({ 'x', 'o' }, 'aa', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@parameter.outer', 'textobjects')
end, { desc = 'outer argument' })
map({ 'x', 'o' }, 'ia', function()
  require('nvim-treesitter-textobjects.select').select_textobject('@parameter.inner', 'textobjects')
end, { desc = 'inner argument' })

-- Movement
map({ 'n', 'x', 'o' }, ']f', function()
  require('nvim-treesitter-textobjects.move').goto_next_start('@function.outer', 'textobjects')
end, { desc = 'next function start' })
map({ 'n', 'x', 'o' }, '[f', function()
  require('nvim-treesitter-textobjects.move').goto_previous_start('@function.outer', 'textobjects')
end, { desc = 'previous function start' })
map({ 'n', 'x', 'o' }, ']F', function()
  require('nvim-treesitter-textobjects.move').goto_next_end('@function.outer', 'textobjects')
end, { desc = 'next function end' })
map({ 'n', 'x', 'o' }, '[F', function()
  require('nvim-treesitter-textobjects.move').goto_previous_end('@function.outer', 'textobjects')
end, { desc = 'previous function end' })
map({ 'n', 'x', 'o' }, ']k', function()
  require('nvim-treesitter-textobjects.move').goto_next_start('@class.outer', 'textobjects')
end, { desc = 'next class start' })
map({ 'n', 'x', 'o' }, '[k', function()
  require('nvim-treesitter-textobjects.move').goto_previous_start('@class.outer', 'textobjects')
end, { desc = 'previous class start' })
map({ 'n', 'x', 'o' }, ']K', function()
  require('nvim-treesitter-textobjects.move').goto_next_end('@class.outer', 'textobjects')
end, { desc = 'next class end' })
map({ 'n', 'x', 'o' }, '[K', function()
  require('nvim-treesitter-textobjects.move').goto_previous_end('@class.outer', 'textobjects')
end, { desc = 'previous class end' })


-- equivalent to :TSUpdate
require('nvim-treesitter.install').update('all')

--require('nvim-treesitter.configs').setup({
--  auto_install = true, -- autoinstall languages that are not installed yet
--})
