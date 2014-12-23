set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
imap <F3> <Esc>:NERDTreeToggle<cr>
nmap <F3> :NERDTreeToggle<cr>

Bundle 'Emmet.vim'

Bundle 'tomasr/molokai'

colorscheme molokai

Bundle 'Auto-Pairs'
Bundle 'matchit.zip'
Bundle 'Tabular'

"=============================================================
"=============================================================
"
"    Vim基本配置
"
"=============================================================
"=============================================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

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

"指定背景色
set background=dark

"指定配色方案为256色
set t_Co=256

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
"自动判断编码时 依次尝试一下编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

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
set ruler

"=========================================================
" Key Mapings
" =======================================================

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" insert mode cursor move
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

"=============================================================
"
"    vimscript repo
"
"=============================================================
Bundle 'taglist.vim'
Bundle 'c.vim'
Bundle 'vimwiki'
Bundle 'winmanager'
Bundle 'bufexplorer.zip'
Bundle 'matrix.vim--Yang'
Bundle 'FencView.vim'
Bundle 'Vimpress'
Bundle 'Conque-Shell'
Bundle 'snipMate'
Bundle 'Markdown'

" ============= Javascript dev ==============

Bundle 'jelera/vim-javascript-syntax'
Bundle 'vim-scripts/JavaScript-Indent'

"--------------
" IDE features
"--------------

Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
Bundle 'humiaozuzu/fcitx-status'
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

"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'tpope/vim-rails'
Bundle 'lepture/vim-jinja'
Bundle 'digitaltoad/vim-jade'


"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'

Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nono/jquery.vim'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'nono/vim-handlebars'


Bundle 'a.vim'
Bundle 'Align'
Bundle 'ccvext.vim'
Bundle 'cSyntaxAfter'
Bundle 'Yggdroot/indentLine'
Bundle 'vim-javacompleteex'
Bundle 'Mark--Karkat'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'OmniCppComplete'
Bundle 'repeat.vim'
Bundle 'wesleyche/SrcExpl'
Bundle 'std_c.zip'
Bundle 'tpope/vim-surround'
Bundle 'TxtBrowser'
Bundle 'ZoomWin'

" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!) - confirm(or auto-approve) removal of unused bundles
