""""""""""""""""""""""""""""""
" => goyo + limelight plugins
""""""""""""""""""""""""""""""""
function! s:goyo_enter()
    Limelight
    set nolist
endfunction

function! s:goyo_leave()
    Limelight!
    set list
    hi Normal ctermbg=None
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:limelight_conceal_ctermfg = 'gray'


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""""

let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""""
" let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_height = 20
" let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn|DS_Store)|\_site|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>pb :CtrlPBuffer<cr>
nmap <leader>pm :CtrlPMixed<cr>
nmap <leader>ps :CtrlPMRU<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='hybridline'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Was getting errors opening python files. Disable syntastic for python for now.
" let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" Python
let g:syntastic_python_checkers=['']

" Javascript
let g:syntastic_javascript_checkers = ['eslint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Easy Motion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Leader-f {char}
nmap f <Plug>(easymotion-bd-f)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => You Complete Me
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
