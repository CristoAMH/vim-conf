filetype on
syntax on
colorscheme dracula

"Set Font and size
set guifont=Menlo\ Regular:h18

"Set relativenumber
set relativenumber 

"Set a mapleader
let mapleader=","

"Reload vim config withot having to restart editor
map <leader>s :source ~/.vimrc<CR>

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent



" searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch " highlight search results
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

"PLUGINS
call plug#begin()


  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb' " hub extension for fugitive
  Plug 'junegunn/gv.vim'
  Plug 'sodapopcan/vim-twiggy'
  Plug 'tpope/vim-surround'
  Plug 'flazz/vim-colorschemes'
  Plug 'kien/ctrlp.vim' 
  Plug 'ap/vim-css-color'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'prettier/vim-prettier'
"  Plug 'valloric/youcompleteme'

call plug#end()

" Add some stuff for plugins
 " toggle nerd tree
        
  nmap <silent> <leader>k :NERDTreeToggle<cr>
  " find the current file in nerdtree without needing to reload the drawer
  nmap <silent> <leader>y :NERDTreeFind<cr>

  let NERDTreeShowHidden=1

  nmap <silent> <leader>gs :Gstatus<cr>
  nmap <leader>ge :Gedit<cr>
  nmap <silent><leader>gr :Gread<cr>
  nmap <silent><leader>gb :Gblame<cr>
 
  let g:airline_theme='night_owl'

" Remap        
 " Remapping scape       
  inoremap jk <esc>
 
" Shortcut to save
  nmap <leader>, :w<cr>
   
" scroll the viewport faster
    nnoremap <C-e> 3<C-e>
    nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
    nnoremap <silent> j gj
    nnoremap <silent> k gk
    nnoremap <silent> ^ g^

