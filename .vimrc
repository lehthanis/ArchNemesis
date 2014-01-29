set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

set backspace=indent,eol,start  "allow backspacing over everything in insert mode
set whichwrap+=<,>,h,l
set history=50                  "keep 50 lines of command line history
set ruler                       "show the cursor position all the time
set showcmd                     "display incomplete commands
set incsearch                   "do incremental searching
set nu                          "show line numbers
set expandtab                   "use spaces instead of tabs
set smarttab
set tabstop=4                   "insert 4 spaces whenever the tab key is pressed
set shiftwidth=4                "set indentation to 4 spaces
set hlsearch                    "highlight search terms
set ic                          "Ignore Case during searches
set autoindent                  "start new line at the same indentation level
syntax enable                   "syntax highlighting
set cmdheight=1                 "The commandbar height
set showmatch                   "Show matching bracets when text indicator is over them
set nobackup                    " do not keep backup files, it's 70's style cluttering
set noswapfile                  " do not write annoying intermediate swap files,
colorscheme default             " Original colorscheme on the bash shell... I got used to it
set ttimeoutlen=50              "Solves: there is a pause when leaving insert mode
set splitbelow                  " Horizontal splits open below current file
set splitright                  " Vertical splits open to the right of the current file
set wildmode=longest,list       " Pressing <Tab> shows command suggestions similar to pressing <Tab> in bash
set wildmenu                    " Turn on the WiLd menu
set so=7                        " Set 7 lines for j/k navigation
set magic
set mat=2
set encoding=utf8
set ffs=unix,dos,mac

map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" Always show the status line
set laststatus=2
