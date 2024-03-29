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
  \ 'dir':  '\v[\/](\.(git|hg|svn|DS_Store)|\_site|node_modules|vendor)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
  \}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
" nmap <leader>p :CtrlP<cr>
nmap <leader>p :ClearCtrlPCache<cr>\|:CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>pb :CtrlPBuffer<cr>
nmap <leader>pm :CtrlPMixed<cr>
nmap <leader>ps :CtrlPMRU<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='one'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Airline fonts
let g:airline_powerline_fonts = 1

let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" let g:airline_symbols.maxlinenr=''
let g:airline_symbols.linenr=''


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set updatetime=750
let g:gitgutter_enabled=1
" let g:gitgutter_highlight_lines = 1
let g:gitgutter_terminal_reports_focus=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set diffopt+=vertical

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Asynchronous Lint Engine (ALE)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Temporarily removed go vet
" https://github.com/w0rp/ale/pull/1356
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'go': ['gofmt', 'golint'],
  \}

let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \}

let g:ale_fix_on_save = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_type_info = 1

nnoremap <leader>a :cclose<CR>
au FileType go nmap <F12> <Plug>(go-def)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
