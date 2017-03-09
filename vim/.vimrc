"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'corntrace/bufexplorer'
    Plug 'easymotion/vim-easymotion'
    Plug 'fatih/vim-go'
    Plug 'flazz/vim-colorschemes'
    Plug 'groenewege/vim-less'
    Plug 'isRuslan/vim-es6'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'kien/ctrlp.vim'
    Plug 'othree/es.next.syntax.vim'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'scrooloose/syntastic'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-surround'
    Plug 'Valloric/YouCompleteMe'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/vimrcs/custom.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/plugins.vim
