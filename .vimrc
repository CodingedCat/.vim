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

    syntax enable
    set background=dark
    colorscheme solarized
    " 设置 gVim 窗口初始位置及大小
    "指定窗口出现的位置，坐标原点在屏幕左上角
    winpos 0 0
    "指定窗口大小，lines为高度，columns为宽度
    set lines=55 columns=200
else
    colorscheme desert
    set lines=40 columns=80
endif

if (has("win32") || has("win95") || has("win64") || has("win16")) 
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

set nocompatible
filetype off
" 此处规定Vundle的路径
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin('~/.vim/bundle')
Plugin 'VundleVim/Vundle.vim'

" vim-scripts repos
Plugin 'L9'
Plugin 'The-NERD-tree'
Plugin 'The-NERD-Commenter'
Plugin 'taglist.vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'c.vim'
Plugin 'CodingedCat/winmanager'
Plugin 'msanders/snipmate.vim'          "code complete"
Plugin 'sjl/gundo.vim'                  "file history"
Plugin 'mitechie/pyflakes-pathogen'     "python code validation"
Plugin 'fs111/pydoc.vim'                "python doc"
Plugin 'pep8'                           ""
Plugin 'ervandew/supertab'              ""
Plugin 'tpope/vim-git'                  "git"
Plugin 'tpope/vim-fugitive'             "git"
"Plugin 'FuzzyFinder'                   "find and open files
"Plugin 'wincent/command-t'             "
"Plugin 'sontek/rope-vim'               "code review
Plugin 'kien/ctrlp.vim'					"file name search"
"Plugin 'mileszs/ack.vim'               "code search
"Plugin 'ag.vim'                        "code search
Plugin 'dyng/ctrlsf.vim'				"search"
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'statusline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'hsitz/VimOrganizer'
Plugin 'Conque-Shell'
Plugin 'itchyny/calendar.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'utl.vim'


"Plugin 'bufexplorer.zip'
"Plugin 'Mark'
"Plugin 'matrix.vim'
"Plugin 'closetag.vim'
"Plugin 'matchit.zip'
"Plugin 'AutoComplPop'
"Plugin 'jsbeautify'
"Plugin 'YankRing.vim'

"color"
Plugin 'altercation/vim-colors-solarized'
Plugin 'candy.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'tomasr/molokai'
Plugin 'cschlueter/vim-wombat'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"minibufexpl
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplMapWindowsNavVim=1
let g:miniBufExplMapWindowNavArrows=1
"let g:miniBufExplorerMoreThanOne=0

"taglist
set tags=tags
set autochdir
let Tlist_Ctags_Cmd='~/Work/tools/ctags5.8/bin/ctags'
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

"winmanager
"let g:explShowHiddenFiles = 1
let g:NERDTree_title='NERDTree'
let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWidth=30
nmap <F2> :WMToggle<cr>
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"NERD_tree配置
"禁用
"let loaded_nerd_tree=1
"nmap <F2> :NERDTreeToggle<CR>
" 不显示指定的类型的文件
let NERDTreeIgnore=['\.vim$','\~$']
" 不显示隐藏文件(好像只在linux环境中有效)
let NERDTreeShowHidden=0
" 排序
let NERDTreeSortOrder=['"$','\.sql$','\.sh$','\.pl$','*']
" 不分大小写排序
let NERDTreeCaseSensitiveSort=0
let NERDTreeWinSize=30
let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=0   
let NERDTreeHighlightCursorline=1
"nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>

"Gundo
map <leader>g :GundoToggle<CR>

"superTab"
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"Repo
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

"Ack"
nmap <leader>a <Esc>:Ack!

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

"pep8"
let g:pep8_map='<leader>8'

"statusline
"let g:Powerline_symbols='fancy'

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


"set go=Tm
"set go=m
set go=
set showtabline=0

syntax on

"显示括号配对情况
set showmatch

"启用折叠
set foldenable
"indent 折叠方式
set foldmethod=indent

"智能缩进
"set smartindent
"set autoindent
set shiftwidth=4
set cindent

"将Tab键转换为空格
set expandtab
" 设定 tab 长度为 4
set tabstop=4
" 设置按BackSpace的时候可以一次删除掉4个空格
set softtabstop=4

"搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set ignorecase
set smartcase

"切换到buff文件所在目录
au BufRead,BufNewFile,BufEnter * cd %:p:h

" 不自动换行
set nowrap

"保存文件前建立备份，保存成功后删除该备份
set writebackup

" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题
set display=lastline

"字体设置
set guifont=Consolas:h13

"映射键
nmap <CR> :nohl<CR>

"状态栏设置
set laststatus=2
set statusline=%F%m%r%h%w\ [%Y,%{&ff},%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ [L=%L\ %l,%v][%p%%]\ %{fugitive#statusline()}
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff},%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

function InsertStatuslineColor(mode)
    if a:mode == 'i'
        hi statusline guibg=red
    elseif a:mode == 'r'
        hi statusline guibg=blue
    else
        hi statusline guibg=orange
    endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertChange * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=#002B36
"hi statusline guibg=black


"启动恢复
"autocmd VimLeave * nested | execute "mksession! " . $HOME . "/.vim_session"

"autocmd VimEnter * nested if argc() == 0 && filereadable($HOME ."/.vim_session") | execute "source " . $HOME . "/.vim_session"


"UTF8乱码处理
"if has("multi_byte")
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
"if v:lang =~ "^zh_CN"
"set encoding=cp936
""set termencoding=cp936
""set fileencoding=cp936
"elseif v:lang =~ "^zh_TW"
"set encoding=big5
""set termencoding=big5
""set fileencoding=big5
"elseif v:lang =~ "^ko"
"set encoding=euc-kr
""set termencoding=euc-kr
""set fileencoding=euc-kr
"elseif v:lang =~ "^ja_JP"
"set encoding=euc-jp
""set termencoding=euc-jp
""set fileencoding=euc-jp
"endif
"if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
"set encoding=utf-8
"set termencoding=utf-8
"set fileencoding=utf-8
"endif
"else
"echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
"endif


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


"compile(F5) and run(F6) program 
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpicc "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc
func! CompileGpp()
    exec "w"
    let compilecmd="!g++ "
    let compileflag="-o %< "
    if search("mpi\.h") != 0
        let compilecmd = "!mpic++ "
    endif
    if search("glut\.h") != 0
        let compileflag .= " -lglut -lGLU -lGL "
    endif
    if search("cv\.h") != 0
        let compileflag .= " -lcv -lhighgui -lcvaux "
    endif
    if search("omp\.h") != 0
        let compileflag .= " -fopenmp "
    endif
    if search("math\.h") != 0
        let compileflag .= " -lm "
    endif
    exec compilecmd." % ".compileflag
endfunc

func! RunPython()
    exec "!python %"
endfunc
func! CompileJava()
    exec "!javac %"
endfunc


func! CompileCode()
    exec "w"
    if &filetype == "cpp"
        exec "call CompileGpp()"
    elseif &filetype == "c"
        exec "call CompileGcc()"
    elseif &filetype == "python"
        exec "call RunPython()"
    elseif &filetype == "java"
        exec "call CompileJava()"
    endif
endfunc

func! RunResult()
    exec "w"
    if search("mpi\.h") != 0
        exec "!mpirun -np 4 ./%<"
    elseif &filetype == "cpp"
        exec "! ./%<"
    elseif &filetype == "c"
        exec "! ./%<"
    elseif &filetype == "python"
        exec "call RunPython"
    elseif &filetype == "java"
        exec "!java %<"
    endif
endfunc

map <F5> :call CompileCode()<CR>
imap <F5> <ESC>:call CompileCode()<CR>
vmap <F5> <ESC>:call CompileCode()<CR>

map <F6> :call RunResult()<CR>
