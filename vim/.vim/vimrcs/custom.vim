" Set some defaults
set nofoldenable
set noshowmode
set number
set list
set listchars=tab:▸\ ,space:·,eol:¬
set nowrap

" Map leader
nnoremap <Leader>i i
inoremap <Leader>i <Esc>

" Setup tab and shift-tab to cycle buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" More mappings
nnoremap <silent><leader>nt :set relativenumber!<cr>

let g:enable_bold_font = 1

" Set up some colors
hi LineNr ctermfg=grey
hi NonText ctermfg=8
hi SpecialKey ctermfg=8
hi TabLineFill term=bold cterm=bold ctermbg=None
hi VertSplit cterm=None ctermbg=None ctermfg=None
hi FoldColumn ctermbg=None

" Close preview window after auto completion
autocmd CompleteDone * pclose

" Set F2 to toggle paste mode
set pastetoggle=<F2>

" Vertical splits go to right
set splitright
