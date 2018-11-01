" bring in the bundles for mac and windows
set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()

runtime! common_config/*.vim
runtime! custom_config/*.vim

" color quercus
" color solarized
" color twilight
color default

set nohlsearch
set history=10000
set listchars=trail:.,tab:^~
set nolist

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" show relative line numbers
" set rnu

" Use .vimlocal to override .vimrc settings. If .vimlocal doesn't exist, don't
" output a warning.
" http://vim.wikia.com/wiki/Project_specific_settings
silent! so .vimlocal

" Disable default elm-vim key bindings. I really only want to disable
" <Leader>t since it hijacks fzf.
let g:elm_setup_keybindings = 0
let g:elm_format_autosave = 1

let g:rustfmt_autosave = 1
let g:terraform_fmt_on_save = 1

set nonumber
set statusline=%t[%{strlen(&fenc)?&fenc:'none'}]%h%m%r%y%=%c,%l/%L\ %P

au FileType go,c,cpp setl ts=8 sw=8
au FileType objc,elm setl ts=4 sw=4
au FileType yaml setl sts=2

" ctrl+l insert hashrocket
imap <c-l> <space>=><space>

" rust racer
set hidden
let g:racer_cmd = "/home/stuart/.cargo/bin/racer"
au FileType rust nmap gd <Plug>(rust-def)

" for git, add spell checking and automatic wrapping at 50 columns
autocmd Filetype gitcommit setlocal spell textwidth=50
