set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)



"""" PLUGINS VUNDLE  -----------------------------------------------------------
" File explorer with tree
Plugin 'scrooloose/nerdtree'

" File explorer icons - font
Plugin 'ryanoasis/nerd-fonts'

" Different colors for brackets
Plugin 'frazrepo/vim-rainbow'

" Lightline, statusline tabline for vim
Plugin 'itchyny/lightline.vim'

" Insert or delete brackets in pairs
Plugin 'jiangmiao/auto-pairs'

" Todo Highlight
Plugin 'sakshamgupta05/vim-todo-highlight'

" Bookmarks in code
Plugin 'mattesgroeger/vim-bookmarks'

" Multiple cursors for vim
Plugin 'terryma/vim-multiple-cursors'

" Indent guides for vim
Plugin 'nathanaelkane/vim-indent-guides'

" Super searching
Plugin 'ctrlpvim/ctrlp.vim'

" Sintax checking
Plugin 'scrooloose/syntastic'

" GDScript 3 tools
Plugin 'calviken/vim-gdscript3'

" Supertab TAB autocompletion
Plugin 'ervandew/supertab'

" Browse tags of current filetype
Plugin 'majutsushi/tagbar'

" Display function signatures from completions in commandline
Plugin 'shougo/echodoc'

" Virtual environment for Python
Plugin 'jmcantrell/vim-virtualenv'

" Vim-code-dark (VSCode dark theme style for Vim)
Plugin 'tomasiser/vim-code-dark'

" Awesome color schemes for Vim
Plugin 'rafi/awesome-vim-colorschemes'


" File explorer icons
Plugin 'ryanoasis/vim-devicons'


" All of your Plugins must be added before the following line
call vundle#end()            " required



"""" VIM-PLUG PLUGINS ----------------------------------------------------------
" Calling vim-plug plugins
call plug#begin('~/.vim/plugged')

" Python-mode for vim
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

call plug#end()
" End of vim-plug plugins

filetype plugin indent on    " required





"""" DISPLAY SETTINGS ----------------------------------------------------------
" - - - - - - theme
"colorscheme evening             " set default color scheme to 'evening'
colorscheme codedark            " set default color scheme to 'codedark'
"colorscheme paramount            " set default color scheme to 'paramount'
"colorscheme roired
set number                      " set line numbering on
"set relativenumber
set ruler                       " show cursor position at all times
set colorcolumn=80              " show line at 80 columns to show wrap limit
set showmatch                   " highlight matching braces
set cursorline                  " highlight current line
set wildmenu                    " visual autocomplete for command menu
set encoding=UTF-8              " dev icons setup
set lines=83 columns=300        " set size of startup window
set showcmd                     " shows command in bottom bar

set scrolloff=10                 " number of lines to keep above and below cursor

set guioptions-=T               " hides the GVim toolbar


set guifont=Monoid\ Nerd\ Font\ Mono\ Regular\ 9


" - - - - - - coding stuff
syntax enable                   " set sintax highlight
"set autoindent                  " set automatic indent
set tabstop=4                   " number of visual spaces per TAB
set softtabstop=4               " number of spaces in TAB when editing
set shiftwidth=4                " set indent to 4 spaces too
set expandtab                   " make TAB to be just spaces
set textwidth=80                " wrap lines bigger than 80 characters
set wrap                        " do wrap
set confirm                     " display confirmation dialog when closing unsaved file

set foldenable                  " enable folding when coding
set foldmethod=indent           " fold method is based on indent level

set backspace=indent,eol,start  " bring backspace to life

set ignorecase                  " ignore case when searching


" - - - - - - searching
set incsearch                   " search as characters are entered
set hlsearch                    " highlight matches in searches


" - - - - - - backup
set backup
set backupdir=~/.vim/vim-temp
set writebackup


" - - - - - - splits
set splitbelow                  " horizontal split goes below active
set splitright                  " vertical split goes to right of active

nnoremap <C-J> <C-W><C-J>       " change split focus by just ctrl-jklh
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" - - - - - - buffers
map <C-right> <ESC>:bn<CR>
map <C-left> <ESC>:bp<CR>



" - - - - - - redraw
set lazyredraw                  " redraw only when needed


" - - - - - - no swapfile
set noswapfile



" - - - - - - NERDTreeToggle
map <C-n> :NERDTreeToggle<CR>


" - - - - - - Ctrl-i for ESC
nnoremap <C-space> i
imap <C-space> <Esc>





"""" STARTUP AUTOLOAD ----------------------------------------------------------

" nerdtree autoload on startup
autocmd vimenter * NERDTree

" change focus to the code window
autocmd vimenter * wincmd w

" show indent guides
let g:indent_guides_enable_on_vim_startup = 1




" Add Python library
set pythondll=libpython3.8.so
