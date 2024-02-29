" This file prevents the global ada plugin from loading
" for ada buffers. Some of the keybindings there are
" interfering with the mapleader key of this config.

" Only do this when not done yet for this buffer
if exists ("b:did_ftplugin") || version < 700
   finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 45

finish
