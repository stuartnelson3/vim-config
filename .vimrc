" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

runtime! common_config/*.vim
runtime! custom_config/*.vim

color quercus
set cursorline

set listchars=trail:.
set rnu
set nonumber
au FileType go,c,cpp setl ts=4 sw=4

" auto resize focused window
let &winheight = &lines * 7 / 10
let &winwidth = &columns * 6 / 10

map <leader>r :ClearCtrlPCache<cr>

" for git, add spell checking and automatic wrapping at 72 columns
autocmd Filetype gitcommit setlocal spell textwidth=72
