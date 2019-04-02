set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'flazz/vim-colorschemes'
Plugin 'ayu-theme/ayu-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neco-syntax'
Plugin 'Shougo/echodoc.vim'
Plugin 'lervag/vimtex'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" standard stuff
syntax on
filetype indent plugin on
set t_Co=256
colorscheme desert256
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set number
set smartcase
set incsearch
set hlsearch

" Don't show insert mode for echodoc
set noshowmode

" Word wrap when writing LaTeX for problem sets, etc.
autocmd FileType tex setlocal textwidth=79

" Make the linter error background black instead of gray
highlight SignColumn guibg=black

" NERDTree toggling
nnoremap <Leader>e :NERDTreeToggle<CR>
nnoremap <Leader>r :TagbarToggle<CR>

" Useful keybindings
nnoremap <Leader>m :make<CR>

" bear make for YCM compile flags
nnoremap <Leader>b :!bear make<CR>

" change working directory to currently open file and pwd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" Enable deoplete
let g:deoplete#enable_at_startup = 1

" Let Deoplete autocomplete C-family languages
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/'

" Make tabs in autocomplete scroll from the top down rather than bottom up
let g:SuperTabDefaultCompletionType = "<c-n>"

" Set PDF Viewer for vimtex
let g:vimtex_view_general_viewer = 'qpdfview'
let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
let g:vimtex_view_general_options_latexmk = '--unique'

" Close NERDTree after opening a file
let NERDTreeQuitOnOpen = 1
