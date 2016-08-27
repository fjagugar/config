" #### General Config ####

set runtimepath^=~/.vim/bundle/ctrlp.vim
set runtimepath^=~/.vim/bundle/vim-coffee-script.vim
set runtimepath^=~/.vim/bundle/fugitive.vim

set number                      "Show line numbers
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set ruler                       "Show colum and line in the bottom right corner
syntax on                       "turn on syntax highlighting
set spell spelllang=en_us       "Spell check

set hidden

" ################ Turn Off Swap Files ##############

set noswapfile
set nobackup
set nowb

" ############## Persistent Undo ##############
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" ################ Indentation ######################

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

set list listchars=tab:\ \ ,trail:· " Display tabs and trailing spaces visually

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ################ Folds ############################

"set foldmethod=indent   "fold based on indent
"set foldnestmax=3       "deepest fold is 3 levels
"set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
