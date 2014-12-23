" =============================================================================
"        << 判断操作系统是 Windows 还是 Linux 和判断是终端还是 Gvim >>
" =============================================================================
 
" -----------------------------------------------------------------------------
"  < 判断操作系统是否是 Windows 还是 Linux >
" -----------------------------------------------------------------------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif
 
" -----------------------------------------------------------------------------
"  < 判断是终端还是 Gvim >
" -----------------------------------------------------------------------------
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
 
 
" =============================================================================
"                          << 以下为软件默认配置 >>
" =============================================================================
 
" -----------------------------------------------------------------------------
"  < Windows Gvim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
" if (g:iswindows && g:isGUI)
"    source $VIMRUNTIME/vimrc_example.vim
"    source $VIMRUNTIME/mswin.vim
"    behave mswin
"    set diffexpr=MyDiff()
" 
"    function MyDiff()
"        let opt = '-a --binary '
"        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"        let arg1 = v:fname_in
"        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"        let arg2 = v:fname_new
"        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"        let arg3 = v:fname_out
"        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"        let eq = ''
"        if $VIMRUNTIME =~ ' '
"            if &sh =~ '\<cmd'
"                let cmd = '""' . $VIMRUNTIME . '\diff"'
"                let eq = '"'
"            else
"                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"            endif
"        else
"            let cmd = $VIMRUNTIME . '\diff'
"        endif
"        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"    endfunction
"endif
 
" -----------------------------------------------------------------------------
"  < Linux Gvim/Vim 默认配置> 做了一点修改
" -----------------------------------------------------------------------------
"if g:islinux
"    set hlsearch        "高亮搜索
"    set incsearch       "在输入要搜索的文字时，实时匹配
" 
"    " Uncomment the following to have Vim jump to the last position when
"    " reopening a file
"    if has("autocmd")
"        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"    endif
" 
"    if g:isGUI
"        " Source a global configuration file if available
"        if filereadable("/etc/vim/gvimrc.local")
"            source /etc/vim/gvimrc.local
"	endif
"    else
"        " This line should not be removed as it ensures that various options are
"        " properly set to work with the Vim-related packages available in Debian.
"        runtime! debian.vim
" 
"        " Vim5 and later versions support syntax highlighting. Uncommenting the next
"        " line enables syntax highlighting by default.
"        if has("syntax")
"            syntax on
"        endif
" 
"        set mouse=a                    " 在任何模式下启用鼠标
"        set t_Co=256                   " 在终端启用256色
"        set backspace=2                " 设置退格键可用
" 
"        " Source a global configuration file if available
"        if filereadable("/etc/vim/vimrc.local")
"            source /etc/vim/vimrc.local
"        endif
"    endif
"endif

" =============================================================================
"                          << 以下为用户自定义配置 >>
" =============================================================================
 
" -----------------------------------------------------------------------------
"  < Vundle 插件管理工具配置 >
" -----------------------------------------------------------------------------
" 用于更方便的管理vim插件，具体用法参考 :h vundle 帮助
" Vundle工具安装方法为在终端输入如下命令
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" 如果想在 windows 安装就必需先安装 "git for window"，可查阅网上资料
 
set nocompatible                                      "禁用 Vi 兼容模式
filetype off                                          "禁用文件类型侦测
 
if g:islinux
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
else
    set rtp+=$VIM_HOME/vimfiles/bundle/vundle/
    call vundle#rc()
endif

 
" 使用Vundle来管理插件，这个必须要有。
Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'

imap <F3> <Esc>:NERDTreeToggle<cr>
nmap <F3> :NERDTreeToggle<cr>

Bundle 'Emmet.vim'

"===主题 molokai ===
Bundle 'tomasr/molokai'

" 设置molokai主题
" colorscheme molokai

" 设置desert沙漠主题
colorscheme desert

" 指定配色方案为256色
set t_Co=256

" 设置背景色
set background=dark

"配置backspace键工作方式
set backspace=indent,eol,start


set tags=tags
set autochdir

let mapleader = ","
let g:mapleader = ","


"显示行号
set number

"设置在编辑过程中右下角显示光标的行列信息
set ruler

"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=10000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列、高亮当前行列
set cursorline
hi cursorline guibg=NONE gui=underline
" set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
"set cindent

"开启语法高亮功能
syntax enable
syntax on

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
" set mouse=a

" 在所有模式下都允许使用鼠标，还可以是n,v,i,c等
set mouse=n

"设置Tab宽度
set tabstop=4

"设置自动对齐空格数
set shiftwidth=4

"设置按退格键时可以一次删除4个空格
set softtabstop=4

"设置按退格键时可以一次删除4个空格
set smarttab

"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 文件格式，默认 ffs=dos,unix
set fileformat=unix             "设置新（当前）文件的<EOL>格式，可以更改，如：dos（windows系统常用）
set fileformats=unix,dos,mac    "给出文件的<EOL>格式类型

if (g:iswindows && g:isGUI)
    "解决菜单乱码
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
 
    "解决consle输出乱码
    language messages zh_CN.utf-8
endif


"检测文件类型
filetype on

"针对不同的文件采用不同的缩进方式
filetype indent on

"允许插件
filetype plugin on

"启动智能补全
filetype plugin indent on

" set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menu
autocmd BufWritePre *.go :Fmt
" set ruler

"=========================================================
" Key Mapings
" =======================================================
" Ctrl + K 插入模式下光标向上移动
map <C-k> <C-W>k
imap <C-k> <Up>
 
" Ctrl + J 插入模式下光标向下移动
map <C-j> <C-W>j
imap <C-j> <Down>
 
" Ctrl + H 插入模式下光标向左移动
map <C-h> <C-W>h
imap <C-h> <Left>
 
" Ctrl + L 插入模式下光标向右移动
map <C-l> <C-W>l
imap <C-l> <Right>

" 以下为要安装或更新的插件，不同仓库都有（具体书写规范请参考帮助）
Bundle 'a.vim'
Bundle 'Align'
Bundle 'jiangmiao/auto-pairs'
Bundle 'bufexplorer.zip'
Bundle 'ccvext.vim'
Bundle 'cSyntaxAfter'
Bundle 'mattn/emmet-vim'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-javacompleteex'
Bundle 'Mark--Karkat'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'OmniCppComplete'
Bundle 'Lokaltog/vim-powerline'
Bundle 'repeat.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'wesleyche/SrcExpl'
Bundle 'std_c.zip'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'taglist.vim'
Bundle 'TxtBrowser'
Bundle 'ZoomWin'
Bundle 'vimwiki'
Bundle 'c.vim'
Bundle 'winmanager'
Bundle 'matrix.vim--Yang'
Bundle 'FencView.vim'
Bundle 'Markdown'
Bundle 'humiaozuzu/TabBar'
Bundle 'matchit.zip'
Bundle 'Tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'nvie/vim-togglemouse'

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles

