" plugin/geovim.vim
if exists('g:loaded_geovim') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

hi def link GeovimHeader      Number
hi def link GeovimSubHeader   Identifier

command! Geovim lua require'geovim'.geovim()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_geovim = 1
