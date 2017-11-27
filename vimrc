set nocompatible              " be iMproved, required
filetype off                  " required

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme) 
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set nocompatible              " be iMproved, required
    filetype off                  " required
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Add your bundles here
    Plugin 'tpope/vim-rails'
    Plugin 'ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'alvan/vim-closetag'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'romainl/Apprentice'
    Plugin 'digitaltoad/vim-pug'
    Plugin 'scrooloose/nerdcommenter'
    "...All your other bundles...
    if iCanHazVundle == 0
        echo "Installing Vundles, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif

    call vundle#end() 
    "must be last
    filetype plugin indent on " load filetype plugins/indent settings
    syntax on                      " enable syntax
 
" Setting up Vundle - the vim plugin bundler end

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let mapleader = " "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
map <C-n> :NERDTreeToggle<CR>

syntax on
filetype plugin indent on
set number
colorscheme apprentice 
set visualbell
set backspace=indent,eol,start
set wrap
set linebreak
nnoremap Q <nop>
set synmaxcol=1200
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
" let NERDTreeQuitOnOpen = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:airline#extensions#tabline#enabled = 0
let g:airline_theme = 'bubblegum'
set laststatus=2
set mouse=a
"set guifont=Monaco:h12
highlight LineNr guibg=#262626
highlight LineNr ctermbg=235
"set ttyfast
set lazyredraw

" js stuff
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

" ruby stuff
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" cursor config
"set guicursor+=n-v-c:blinkon0
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
