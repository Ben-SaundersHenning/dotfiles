-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ NVIM CONFIG ❱━━━━━━━━━━━━━━━━━━━━━━━━━ --
--                                                                  --
-- General Config for NVIM - This file should call upon other,      --
-- specific files.                                                  --
-- ================================================================ --

-- Directory containing any settings/options/tweaks.
require('config.options')

-- Custom mappings. Does not include any
-- filetype specific mappings.
require('config.mappings')

-- Lazy, the package manager for this
-- config. It gets loaded first. Contains
-- list of package calls.
require('config.lazy')

-- plenary
-- nvim-web-devicons
-- nvim-lspconfig
-- mason.nvim
-- mason-lspconfig.nvim
-- trouble.nvim
-- goto-preview nvim-navic
-- lsp_signature.nvim
-- null-ls_nvim
-- nvim-treesitter
-- nvim-cmp
-- luasnip
--
-- cmp-nvim-lsp
-- cmp-nvim-lua
-- cmp-buffer
-- cmp-path
-- cmp_luasnip
--
-- telescope
-- nvim-colorizer
