" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.

" Plugins requiring no additional configuration or keymaps
  Bundle "git://github.com/terryma/vim-multiple-cursors.git"
  " Bundle "git://github.com/tpope/vim-git.git"
  " Bundle "git://github.com/harleypig/vcscommand.vim.git"
  Bundle "git://github.com/altercation/vim-colors-solarized.git"
  Bundle "git://github.com/tpope/vim-fugitive.git"
  " Bundle "git://github.com/pangloss/vim-javascript.git"
  Bundle "git://github.com/vim-scripts/L9.git"
  " Bundle "git://github.com/vim-ruby/vim-ruby.git"
  Bundle "git://github.com/ervandew/supertab.git"
  Bundle "git://github.com/tomtom/tcomment_vim.git"
  Bundle "git://github.com/michaeljsmith/vim-indent-object.git"
  Bundle "git://github.com/kana/vim-textobj-user.git"
  Bundle "git://github.com/tpope/vim-repeat.git"
  " Bundle "git://github.com/vim-scripts/ruby-matchit.git"


" Elm
  Bundle "git://github.com/ElmCast/elm-vim.git"
  au BufRead,BufNewFile *.elm set ft=elm

" Rust
  " Bundle "git://github.com/rust-lang/rust.vim.git"
  " au BufRead,BufNewFile *.rs set ft=rust

" Fuzzy finder
  Bundle "git://github.com/junegunn/fzf.git"

" Go
  Bundle "git://github.com/fatih/vim-go.git"
    au BufNewFile,BufRead *.go set filetype=go

" NERDTree for project drawer
  Bundle "git://github.com/scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0

    nmap gt :NERDTreeToggle<CR>
    nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>

" Unimpaired for keymaps for quicky manipulating lines and files
  " Bundle "git://github.com/tpope/vim-unimpaired.git"
  "   " Bubble single lines
  "   nmap <C-Up> [e
  "   nmap <C-Down> ]e
  "
  "   " Bubble multiple lines
  "   vmap <C-Up> [egv
  "   vmap <C-Down> ]egv

" Syntastic kills startup time. It adds ~700ms.
" Syntastic for catching syntax errors on save
"   Bundle "git://github.com/scrooloose/syntastic.git"
"     let g:syntastic_enable_signs=1
"     let g:syntastic_quiet_messages = {'level': 'warnings'}
"     let g:syntastic_delayed_redraws=1
" " syntastic is too slow for haml and sass
"     let g:syntastic_mode_map = { 'mode': 'active',
"                                \ 'active_filetypes': [],
"                                \ 'passive_filetypes': ['haml','scss','sass'] }

" surround for adding surround 'physics'
  Bundle "git://github.com/tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"

" .sls files are .yaml
  autocmd BufNewFile,BufRead *.sls set filetype=yaml
