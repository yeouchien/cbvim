" required by vundle
set nocompatible

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()
Bundle 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 0. general
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = "\<Space>"
set noshowmode
set laststatus=2
set encoding=utf-8

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Sets how many lines of history VIM has to remember
set history=700

" Turn on the WiLd menu
set wildmenu
set wildmode=list:longest,full
set wildignore+=*/tmp/*

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase
"
" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=5

" Add a bit extra margin to the left
set foldcolumn=1

" Enable syntax highlighting
syntax enable
set background=dark
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-solarized

set cursorline
set cursorcolumn

" Toggle paste mode
set pastetoggle=<F2>

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Line number
set nu

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" use system clipboard
if $TMUX == ''
  set clipboard+=unnamed
endif

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap linebreak textwidth=0 "Wrap lines

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f', '')<CR>
vnoremap <silent> # :call VisualSelection('b', '')<CR>

" persistent undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Map jk to esc
imap jk <esc>
imap Jk <esc>

" To save, space w
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :wq<CR>

" Syntastic Checker for React JSX files
let g:syntastic_javascript_checkers = ['eslint']

" It deletes the selected content and drops it in the black hole register
nnoremap d "xd
vnoremap d "xd
nnoremap y "xy
vnoremap y "xy
nnoremap p "xp
vnoremap p "xp

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. ctrlp.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-f>'
map <c-b> :CtrlPBuffer<CR>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. nerdtree.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdtree'
map <Leader>n :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
au VimEnter *  NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2. ag.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "rking/ag.vim"
map <Leader>f :Ag<space>
let g:ackprg = 'ag --nogroup --nocolor --column'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3. vim-rails
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-rails'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4. vim-surround
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'tpope/vim-surround'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 5. base16-vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'chriskempson/base16-vim'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 6. nerdcommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 7. syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle 'scrooloose/syntastic'
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 8. vim-javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Bundle "pangloss/vim-javascript"
"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1 = "inc"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 9. vim-fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "tpope/vim-fugitive"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 10. vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "fatih/vim-go"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_errcheck_bin = "errcheck"
let g:go_list_type = "quickfix"

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

au FileType go nmap <leader>ga :GoAlternate<cr>
au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 11. vim-expand-region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "terryma/vim-expand-region"
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 12. javascript-libraries-syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "othree/javascript-libraries-syntax.vim"
let g:used_javascript_libs = 'react,flux,requirejs'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 13. ervandew/supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "ervandew/supertab"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 14. ntpeters/vim-better-whitespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "ntpeters/vim-better-whitespace"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 15. tomlion/vim-solidity
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "tomlion/vim-solidity"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 16. nsf/gocode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "nsf/gocode", {'rtp': 'vim/'}
:inoremap <C-b> <C-x><C-o>


Bundle "slim-template/vim-slim"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" *. filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.less set filetype=css
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.sol set filetype=solidity
au BufNewFile,BufRead *.slim set filetype=slim
au FileType go set nolist textwidth=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" *. helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'gv'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.' . a:extra_filter)
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

" Remove trailing whitespace on save
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
function! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
