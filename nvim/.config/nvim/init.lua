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

