-- ================================================================ --
-- ━━━━━━━━━━━━━━━━━━━━━━━━❰ LAZY CONFIG ❱━━━━━━━━━━━━━━━━━━━━━━━━━ --
--                                                                  --
-- Lazy is the package manager used by this config. This file       --
-- installs Lazy, and also calls all of the plugins being used      --
-- in the config.                                                   --
-- ================================================================ --

-- Install lazy.nvim, a modern package manager by Folke
-- Note that this is copied from lazy.nvim, and it safely
-- installs Lazy if it is not already installed.
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git',
        '--branch=stable', -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

-- Setup for Lazy plugin manager.
-- The plugins directory contains the 
-- configs for each plugin, organized
-- into types (utility plugins, UI plugins,
-- completion stuff, etc..)
require('lazy').setup('plugins')
