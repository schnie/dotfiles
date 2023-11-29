"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter', { 'branch': 'main' }
    Plug 'corntrace/bufexplorer'
    Plug 'easymotion/vim-easymotion'
    Plug 'fatih/vim-go'
    Plug 'kien/ctrlp.vim'
    Plug 'mileszs/ack.vim'
    Plug 'rakr/vim-one'
    Plug 'rbgrouleff/bclose.vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-vinegar'
    Plug 'vim-airline/vim-airline'
    Plug 'w0ng/vim-hybrid'
call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/vimrcs/custom.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins.vim
