set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-speeddating'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-jdaddy'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-rhubarb'
Plugin 'tpope/vim-dadbod'
Plugin 'preservim/NERDTree'
Plugin 'preservim/vim-indent-guides'
Plugin 'shumphrey/fugitive-gitlab.vim'
Plugin 'SirVer/UltiSnips'
Plugin 'puremourning/vimspector'

" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
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
" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" fugitive gitlab options
let g:fugitive_gitlab_domains = ['https://gitlab.com']
let g:gitlab_api_keys = {'gitlab.com': '<token>'}

" vimspector options
let g:vimspector_enable_mappings = 'HUMAN'
" we do not enable vimspector to allow the user to select the mode
" If we want to run it unconditionally, uncomment that line:
" packadd! vimspector

" Enable indent guides
let g:indent_guides_enable_on_vim_startup = 1

" fancy gdb support in Vim
packadd termdebug
