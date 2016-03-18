" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.

" Plugins requiring no additional configuration or keymaps
  Bundle "git://github.com/terryma/vim-multiple-cursors.git"
  Bundle "git://github.com/tpope/vim-git.git"
  Bundle "git://github.com/harleypig/vcscommand.vim.git"
  Bundle "git://github.com/altercation/vim-colors-solarized.git"
  Bundle "git://github.com/tpope/vim-cucumber.git"
  Bundle "git://github.com/tpope/vim-fugitive.git"
  Bundle "git://github.com/pangloss/vim-javascript.git"
  Bundle "git://github.com/vim-scripts/L9.git"
  Bundle "git://github.com/vim-ruby/vim-ruby.git"
  Bundle "git://github.com/ervandew/supertab.git"
  Bundle "git://github.com/tomtom/tcomment_vim.git"
  Bundle "git://github.com/michaeljsmith/vim-indent-object.git"
  Bundle "git://github.com/kana/vim-textobj-user.git"
  Bundle "git://github.com/tpope/vim-repeat.git"
  Bundle "git://github.com/vim-scripts/ruby-matchit.git"


" Elm
  Bundle "git://github.com/lambdatoast/elm.vim.git"
  au BufRead,BufNewFile *.elm set ft=elm

" Rust
  Bundle "git://github.com/rust-lang/rust.vim.git"
  au BufRead,BufNewFile *.rs set ft=rust

" CtrlP - with FuzzyFinder compatible keymaps
  Bundle "git://github.com/kien/ctrlp.vim.git"
    nnoremap <Leader>b :<C-U>CtrlPBuffer<CR>
    nnoremap <Leader>t :<C-U>CtrlP<CR>
    nnoremap <Leader>T :<C-U>CtrlPTag<CR>
    let g:ctrlp_prompt_mappings = {
        \ 'PrtSelectMove("j")':   ['<down>'],
        \ 'PrtSelectMove("k")':   ['<up>'],
        \ 'AcceptSelection("h")': ['<c-j>'],
        \ 'AcceptSelection("v")': ['<c-k>', '<RightMouse>'],
        \ }
    " respect the .gitignore
    let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']

" Go
  Bundle "git://github.com/fatih/vim-go.git"
    au BufNewFile,BufRead *.go set filetype=go

" Scala
  Bundle "git://github.com/derekwyatt/vim-scala.git"
    au BufNewFile,BufRead *.scala set filetype=scala

" Mustache
  " Bundle "git://github.com/juvenn/mustache.vim.git"
    " Copied from the plugin; not sure why it isn't working normally
    " au BufNewFile,BufRead *.mustache,*.handlebars,*.hbs set filetype=mustache

" Slim
  " Bundle "git://github.com/slim-template/vim-slim.git"
    " au BufNewFile,BufRead *.slim set filetype=slim

" Less
  " Bundle "git://github.com/groenewege/vim-less.git"
  "   au BufNewFile,BufRead *.less set filetype=less

" Handlebars
  " Bundle "git://github.com/nono/vim-handlebars.git"
  "   au BufNewFile,BufRead *.hbs set filetype=handlebars

" Stylus
  " Bundle "git://github.com/wavded/vim-stylus.git"
  "   au BufNewFile,BufRead *.styl set filetype=stylus

" Coffee script
  Bundle "git://github.com/kchmck/vim-coffee-script.git"
    au BufNewFile,BufRead *.coffee set filetype=coffee


" Tagbar for navigation by tags using CTags
  " Bundle "git://github.com/majutsushi/tagbar.git"
  "   let g:tagbar_autofocus = 1
  "   map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
  "   map <Leader>. :TagbarToggle<CR>

" Markdown syntax highlighting
  " Bundle "git://github.com/tpope/vim-markdown.git"
  "   augroup mkd
  "     autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "     autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "     autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "   augroup END

" Markdown preview to quickly preview markdown files
  " Bundle "git://github.com/maba/vim-markdown-preview.git"
  " map <buffer> <Leader>mp :Mm<CR>

" NERDTree for project drawer
  Bundle "git://github.com/scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0

    nmap gt :NERDTreeToggle<CR>
    nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>

" Unimpaired for keymaps for quicky manipulating lines and files
  Bundle "git://github.com/tpope/vim-unimpaired.git"
    " Bubble single lines
    nmap <C-Up> [e
    nmap <C-Down> ]e

    " Bubble multiple lines
    vmap <C-Up> [egv
    vmap <C-Down> ]egv

" Syntastic for catching syntax errors on save
  Bundle "git://github.com/scrooloose/syntastic.git"
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warnings'}
    let g:syntastic_delayed_redraws=1
" syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }

" surround for adding surround 'physics'
  Bundle "git://github.com/tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"

" Clojure Highlighting"
  " Bundle "https://github.com/vim-scripts/VimClojure.git"
  " autocmd BufNewFile,BufRead *.clj set filetype=clojure

" Jade Highlighting"
  " Bundle "git://github.com/digitaltoad/vim-jade.git"
  " autocmd BufNewFile,BufRead *.jade set filetype=jade
