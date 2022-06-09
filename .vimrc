"" enconding
set fileencodings=utf-8
set ambiwidth=double

"" vi compatible set nocompatible

"" colorscheme
set t_Co=256
colorscheme molokai

"" normal mode
set number
set ruler "col,row
set title
set laststatus=2
set wrap
set list
set listchars=tab:^_

"" insert mode
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set incsearch "incremental search on
" beep
set vb t_vb=
set novisualbell
" match pair
set matchpairs& matchpairs+=<:>
set showmatch

"" search
set hlsearch
set ignorecase
set smartcase
set wrapscan
nmap <silent> <Esc><Esc> :nohlsearch<CR>

"" tab settings... WIP

"" syntax
syntax on "syntax

"" file
autocmd FileType html,xhtml,css,javascript,yaml,ruby,coffee setlocal ts=2 sts=2 sw=2
autocmd BufNewFile,BufRead *.js setlocal ft=javascript
autocmd BufNewFile,BufRead *.py setlocal ft=python
autocmd BufNewFile,BufRead *.rb setlocal ft=ruby
autocmd BufNewFile,BufRead *.erb setlocal ft=ruby
autocmd BufNewFile,BufRead Gemfile setlocal ft=ruby
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd BufNewFile,BufRead *.yml setlocal ft=yaml
autocmd BufNewFile,BufRead *.php setlocal ft=php
autocmd BufNewFile,BufRead *.sql setlocal ft=sql

""dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/watahari/dev/dotfiles/./.vim/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/watahari/dev/dotfiles/./.vim')

" Let dein manage dein
" Required:
call dein#add('/Users/watahari/dev/dotfiles/./.vim/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

