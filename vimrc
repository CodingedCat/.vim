"配置

set nu!
if has("gui_running")
    "colorscheme zk
    "colorscheme molokai
    "colorscheme wombat
    "colorscheme rainbow_neon
    "colorscheme motus
    "colorscheme lucius
    "colorscheme DarkZ
    "colorscheme blackbeuty
    "colorscheme zk
    "colorscheme candy

    set background=dark
    colorscheme solarized

    winpos 0 0
    set lines=55 columns=200
else
    colorscheme desert
    set lines=40 columns=120
endif

set nocompatible
filetype off

"Vundle location
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'

"win manage
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'fholgado/minibufexpl.vim'
"Plugin 'Valloric/ListToggle'
Plugin 'mileszs/ack.vim'                "code searchx
Plugin 'ag.vim'                         "ag searche
Plugin 'dyng/ctrlsf.vim'                "search
Plugin 'kien/ctrlp.vim'                 "file name search

"code edit view verify
Plugin 'msanders/snipmate.vim'          "code complete
Plugin 'sjl/gundo.vim'                  "file history
Plugin 'scrooloose/syntastic'           "syntax check
if has("gui_running")
Plugin 'Valloric/YouCompleteMe'         "auto complete
endif
Plugin 'tpope/vim-commentary'           "comment
Plugin 'terryma/vim-multiple-cursors'   
"Plugin 'ervandew/eclim'                 "java ide
Plugin 'davidhalter/jedi-vim'           "python ide
Plugin 'fs111/pydoc.vim'                "python doc
Plugin 'pep8'                           "python style check
Plugin 'c.vim'
Plugin 'tpope/vim-surround'             "replace quoting"
Plugin 'chrisbra/csv.vim'
Plugin 'easymotion/vim-easymotion'

"git
"Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'

"org-mode
Plugin 'hsitz/VimOrganizer'
Plugin 'chrisbra/NrrwRgn'
Plugin 'utl.vim'                        "org-mode need
Plugin 'itchyny/calendar.vim'


"theme
Plugin 'bling/vim-airline'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}


"Plugin 'altercation/vim-colors-solarized'
"Plugin 'candy.vim'
"Plugin 'jonathanfilip/vim-lucius'
"Plugin 'tomasr/molokai'
"Plugin 'cschlueter/vim-wombat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"youcompleteme
"autocmd FileType python setlocal completeopt-=preview
let g:jedi#auto_close_doc=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nmap <F5> :YcmDiags<CR>

"minibufexpl
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplorerMoreThanOne=0

"tagbar
set tags=tags
set autochdir
"let Tlist_Ctags_Cmd='~/Work/tools/ctags5.8/bin/ctags'
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1
let g:tagbar_ctags_bin='~/Work/tools/ctags5.8/bin/ctags'
nmap <F8> :TagbarToggle<CR>

"NERD_tree
nmap <F2> :NERDTree<CR>
let NERDTreeIgnore=['\.vim$','\~$']
let NERDTreeShowHidden=0
let NERDTreeSortOrder=['"$','\.sql$','\.sh$','\.pl$','*']
let NERDTreeCaseSensitiveSort=0
let NERDTreeWinSize=35
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0   
let NERDTreeHighlightCursorline=1
"nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>

"ctrlp
nmap <leader>p <Esc>:CtrlP<CR>
nmap <leader>r <Esc>:CtrlPMRU<CR>
"let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"Gundo
map <leader>g :GundoToggle<CR>

"Ack
"nmap <leader>a <Esc>:Ack!
"ag
nmap <leader>a <Esc>:Ag!

"easymotion"
map <Leader> <Plug>(easymotion-prefix)

"listtoggle
"let g:lt_location_list_toggle_map = '<leader>l'
"let g:lt_quickfix_list_toggle_map = '<leader>q'

"vim-commentary"
autocmd FileType apache setlocal commentstring=#\ %s

"CtrlSF"
nmap     <leader>f <Plug>CtrlSFPrompt
vmap     <leader>f <Plug>CtrlSFVwordPath
vmap     <leader>F <Plug>CtrlSFVwordExec
nmap     <leader>e <Plug>CtrlSFCwordPath
nmap     <leader>ep <Plug>CtrlSFPwordPath
nnoremap <leader>eo :CtrlSFOpen<CR>
nnoremap <leader>et :CtrlSFToggle<CR>
inoremap <leader>et <Esc>:CtrlSFToggle<CR>


"eclim"
"let g:EclimCompletionMethod = 'omnifunc'

"pep8"
let g:pep8_map='<leader>8'

"vim-multiple-cursors
"let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"org-mode"
let g:org_command_for_emacsclient ='emacsclient'
au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org call org#SetOrgFileType()

"calendar"
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

set laststatus=2
set statusline=%F%m%r%h%w\ [%Y,%{&ff},%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ [L=%L\ %l,%v][%p%%]\ 
"git-fugitive: 
"set statusline+= %{fugitive#statusline()}
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff},%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"nmap <F9> :lclose<CR>

"airline powerline statusline
"let g:airline_powerline_fonts = 1
"let g:Powerline_symbols='unicode'
"let g:Powerline_symbols = 'fancy'
"let g:Powerline_stl_path_style = 'relative'
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h12
set t_Co=256
set noshowmode
set showtabline=2


"set go=Tm
"set go=m
set go=

syntax enable

set showmatch

set foldenable
set foldmethod=indent
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i

"set smartindent
"set autoindent
set shiftwidth=4
set cindent

set expandtab
set tabstop=4
set softtabstop=4

set ignorecase
set smartcase

au BufRead,BufNewFile,BufEnter * cd %:p:h

set nowrap

set writebackup

set display=lastline

nmap <CR> :nohl<CR>

"function InsertStatuslineColor(mode)
"    if a:mode == 'i'
"        hi statusline guibg=red
"    elseif a:mode == 'r'
"        hi statusline guibg=orange
"    else
"        hi statusline guibg=blue
"    endif
"endfunction
"
"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertChange * call InsertStatuslineColor(v:insertmode)
"au InsertLeave * hi statusline guibg=#002B36
"hi statusline guibg=black


"autocmd VimLeave * nested | execute "mksession! " . $HOME . "/.vim_session"
"autocmd VimEnter * nested if argc() == 0 && filereadable($HOME ."/.vim_session") | execute "source " . $HOME . "/.vim_session"

autocmd VimLeave * set lines=40 | set columns=120


if has("multi_byte")
    set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
    if v:lang =~ "^zh_CN"
        set encoding=cp936
        set termencoding=cp936
        set fileencoding=cp936
    elseif v:lang =~ "^zh_TW"
        set encoding=big5
        set termencoding=big5
        set fileencoding=big5
    elseif v:lang =~ "^ko"
        set encoding=euc-kr
        set termencoding=euc-kr
        set fileencoding=euc-kr
    elseif v:lang =~ "^ja_JP"
        set encoding=euc-jp
        set termencoding=euc-jp
        set fileencoding=euc-jp
    endif
    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
        set encoding=utf-8
        set termencoding=utf-8
        set fileencoding=utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif


set diffexpr=MyDiff()
function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
        if &sh =~ '\<cmd'
            let cmd = '""' . $VIMRUNTIME . '\diff"'
            let eq = '"'
        else
            let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
        endif
    else
        let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction
