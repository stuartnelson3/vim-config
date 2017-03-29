" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

let g:elm_format_autosave = 1

runtime! common_config/*.vim
runtime! custom_config/*.vim

" color quercus
color solarized
" color twilight

set nohlsearch
set history=10000
set listchars=trail:.,tab:^~
set nolist

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" show relative line numbers
" set rnu

set nonumber
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%h%m%r%y%=%c,%l/%L\ %P

au FileType go,c,cpp setl ts=8 sw=8
au FileType objc,elm setl ts=4 sw=4

" ctrl+l insert hashrocket
imap <c-l> <space>=><space>

" for git, add spell checking and automatic wrapping at 50 columns
autocmd Filetype gitcommit setlocal spell textwidth=50
