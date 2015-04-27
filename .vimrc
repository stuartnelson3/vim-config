" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

runtime! common_config/*.vim
runtime! custom_config/*.vim

" color quercus
color solarized
syntax off

set cursorline
set nohlsearch
set history=10000
set listchars=trail:.,tab:^~
set nolist
set rnu
set nonumber
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%h%m%r%y%=%c,%l/%L\ %P

au FileType go,c,cpp setl ts=4 sw=4

" auto resize focused window
let &winheight = &lines * 6 / 10
let &winwidth = &columns * 6 / 10

map <leader>r :ClearCtrlPCache<cr>
" ctrl+l insert hashrocket
imap <c-l> <space>=><space>

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72
