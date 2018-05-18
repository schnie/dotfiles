"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'chr4/nginx.vim'
    Plug 'corntrace/bufexplorer'
    Plug 'easymotion/vim-easymotion'
    Plug 'fatih/vim-go'
    Plug 'groenewege/vim-less'
    Plug 'hashivim/vim-terraform'
    Plug 'isRuslan/vim-es6'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'kien/ctrlp.vim'
    Plug 'mxw/vim-jsx'
    Plug 'mileszs/ack.vim'
    " Plug 'othree/es.next.syntax.vim'
    " Plug 'pangloss/vim-javascript'
    Plug 'rbgrouleff/bclose.vim'
    " Plug 'scrooloose/syntastic'
    Plug 'terryma/vim-multiple-cursors'
    " Plug 'towolf/vim-helm'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    " Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-vinegar'
    Plug 'Valloric/YouCompleteMe'
    Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'w0ng/vim-hybrid'
    Plug 'w0rp/ale'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/vimrcs/custom.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
