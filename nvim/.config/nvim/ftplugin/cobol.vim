" NO CURRENT PURPOSE.

" Prevents Vim from treating Cobol
" with the legacy syntax.

" Only do this when not done yet for this buffer
" if exists ("b:did_ftplugin") || version < 700
"    finish
" endif

" Don't load another plugin for this buffer
" let b:did_ftplugin = 45
" let cobol_legacy_code = 45
" let b:cobol_legacy_code = 45
" unlet cobol_legacy_code

finish
