-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ NVIM CONFIG ❱━━━━━━━━━━━━━━━━━━━━━━━━━ --
--                                                                  --
-- General Config for NVIM - This file should call upon other,      --
-- specific files.                                                  --
-- ================================================================ --

local set = vim.keymap.set

-- Remaps <SPACE> in normal mode (n) to have no operation (Nop)
-- Just a 'safe' reset of whatever may use the <SPACE> key
set('n', '<SPACE>', '<Nop>')

-- Make the space key the mapleader
vim.g.mapleader = " " -- space is the leader key

-- Directory containing any settings/options/tweaks.
require('config.options')

-- Adds explicit filetype detection based on file extensions.
-- require('config.filetype')

-- Custom mappings (built in vim features).
-- require('config.vimmappings')

-- Custom mappings (for plugins).
require('config.mappings')

-- Lazy, the package manager for this
-- config. It gets loaded first. Contains
-- list of package calls.
require('config.lazy')

vim.o.background = "dark"
vim.g.gruvbox_material_enable_italic = true
vim.cmd('colorscheme gruvbox-material')

