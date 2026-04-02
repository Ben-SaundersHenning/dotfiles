-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ NVIM CONFIG ❱━━━━━━━━━━━━━━━━━━━━━━━━━ --
-- ================================================================ --

local set = vim.keymap.set

-- Remaps <SPACE> in normal mode (n) to have no operation (Nop)
 -- - Just a 'safe' reset of whatever may use the <SPACE> key
set('n', '<SPACE>', '<Nop>')

-- Make the space key the mapleader
vim.g.mapleader = ' ' -- space is the leader key
vim.g.maplocalleader = ' ' -- space is the leader key

require('options')

vim.pack.add({
  'https://github.com/ellisonleao/gruvbox.nvim.git',
  'https://github.com/alexghergh/nvim-tmux-navigation.git',
  'https://github.com/nvim-tree/nvim-web-devicons.git',
  'https://github.com/rachartier/tiny-inline-diagnostic.nvim.git',
  'https://github.com/nvim-lualine/lualine.nvim.git'
})

require('nvim-tmux-navigation').setup({})
require("tiny-inline-diagnostic").setup({})
vim.diagnostic.config({ virtual_text = false }) -- disable default virtual text

local function getWords()
  -- the third string here is the string for visual-block mode (^V)
  if vim.fn.mode() == "v" or vim.fn.mode() == "V" or vim.fn.mode() == "" then
    return "Selected: " .. vim.fn.wordcount().visual_words .. " words"
  else
    return vim.fn.wordcount().words .. " words"
  end
end

require('lualine').setup {
  options = {
    theme = "gruvbox",
  },
  sections = {
    lualine_x = { getWords, "encoding", "fileformat", "filetype" },
  },
}

require('mappings')

vim.o.background = 'dark'
vim.cmd.colorscheme('gruvbox')
