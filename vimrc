" Indentation
set expandtab
set softtabstop=4
set shiftwidth=4
filetype plugin indent on

" Tabs
nnoremap tt :tabnext<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

" Line numbers
set number

" Highlight search matches
set hlsearch

" Syntax highlighting
syntax on

" Mouse
set mouse=a

" Plugins
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
