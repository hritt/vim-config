"todo CtrlP的使用；NEADTree；vim-instant-markdown;mac

"""""""""" Vundle """"""""""
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'kien/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required

"""""""""" key mapping """"""""""
"vmap <C-c> y
"vmap <C-v> p

"""""""""" others """"""""""
"set compatible     "工作在兼容(vi)模式下,存在vimrc文件时缺省关闭
 set history=100    "历史命令保存行数，默认为20
"set showmatch      "在输入括号时光标会短暂地跳到与之相匹配的括号处
 set whichwrap=b,s,h,l,<,>,[,] "允许左右移动和删除跨行
"set spell          "打开拼写检查,有错单词显示为红色长块.将光标放在单词上，按 z= 出现拼写建议
"set fillchars=vert:\ ,stl:\ ,stlnc:\  "设置分割窗口时边界的样子
 set scrolloff=2    "光标移动到buffer的顶部和底部时的距离
"set autochdir      "自动切换当前目录为当前文件所在的目录
"set clipboard=unnamed  "默认使用选择缓冲区寄存器*，使用系统粘贴板，但需要编译VIM时打开+clipborad选项
autocmd BufWritePre * :%s/\s\+$//e  "保存文件时自动删除行尾空格或Tab

"""""""""" language """"""""""
"set helplang=cn          "使用中文帮助文档，要先下载中文文档
"set encoding=utf-8       "Vim内部使用编码格式
"set langmenu=zh_CN.UTF-8 "使用中文菜单，并使用UTF-8编码
"language message zh_CN.UTF-8  "使用中文提示信息，并使用UTF-8编码
 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "编码的自动识别

"""""""""" display """"""""""
 set lines=40 "columns=100  "设置窗口高和宽，Ubuntu默认为80*24
 set number                "显示行号
"set cursorline            "高亮光标所在行
"set cursorcolumn          "高亮光标所在列
 syntax on                 "语法高亮，ubuntu中/etc/vim/vimrc中已开，但mac没

 set t_Co=256          "256色
 set background=dark   "背景色,对于有些配色方案无效
 colorscheme mustang      "配色方案,自带配色推荐torte

 set title          "标题栏显示 filename [+=-] (path) - VIM
"set laststatus=2   "总是显示状态行(状态栏会显示文件名)
"set showcmd        "命令行显示命令,Visual模式显示选择区域大小，缺省打开
"set showmode       "命令行显示vim当前模式，缺省打开
"set cmdheight=3    "设置命令行高度
"set ruler          "标尺功能，显示当前光标所在行列号

"set textwidth=78   "设置光标折行宽度,会被本配置文件之后读取的配置文件覆盖而失效
 set linebreak      "不在单词中间断行
"set wrapmargin=30  "行边距,Vi compatible时才有效
if (has("gui_running"))
    set nowrap            "指定不折行
    set guioptions+=b     "添加水平滚动条,只在GUI版本Vim有效
endif

 set foldlevel=99        "启动时不要自动折叠代码
 set foldmethod=indent   "折叠,zc关闭当前打开的折叠,zo打开当前的折叠,zm关闭所有折叠,zr打开所有折叠

 set tabstop=4      "tab宽度为4个空格
"set expandtab      "使用空格代替tab
 set shiftwidth=4   "自动缩进宽度，默认值是8
"set smarttab       "只在行首用tab，其他地方的tab都用一个空格代替
"set autoindent     "自动缩进(把当前行的对起格式应用到下一行)
"set smartindent    "智能缩进
 set cindent        "C语言方式缩进，缩进量是shiftwidth选项的值.C语言文件自动开启
 set cino=g0        "设定C/C++风格自动缩进的选项,g0为“public:”等相对class、struct等所在的块缩进0个空格

"""""""""" search  """"""""""
 set hlsearch       "搜索时高亮显示被找到的文本
 set incsearch      "搜索时在未完全输入完毕要检索的文本时就开始检索
 set ignorecase     "在搜索的时候忽略大小写

"""""""""" edit  """"""""""
 set autoread       "当文件被外部改变时自动读取
 set autowrite      "当离开修改过的buffer时自动保存，如运行命令(如：make)前自动保存
 set backup         "重写文件前保存备份，命名为filename～，缺省关闭
"set noswapfile     "对于buffer是否使用swapfile,命名为filename.swp，当未保存就被关闭时swapfile有用

 filetype plugin indent on       "启用文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
"autocmd FileType c set omnifunc=ccomplete#Complete  "filetype开启后，对各种支持的文件类型自动支持
 set completeopt=longest,menu    "智能补全显示形式

 set mouse=a                   "使用鼠标点击定位，但是会导致鼠标右键在对应模式无法复制
"set selection=exclusive       "选择的形式
 set selectmode=mouse,key      "何中情况用Select模式替换Visual模式
 set keymodel=startsel,stopsel "使用“Shift+方向键”选择文本

"""""""""" session """"""""""
"set sessionoptions-=curdir   "session中去除当前目录
"set sessionoptions+=sesdir   "session文件所在目录成为当前目录
"autocmd VimLeave * mksession! mysession.vim  "退出vim时创建session，使用 :source mysession.vim加载

"""""""""" Tag list """"""""""
 let Tlist_Show_One_File=1       "不同时显示多个文件的tag，只显示当前文件的
 let Tlist_Exit_OnlyWindow=1     "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window=1    "在右侧窗口中显示taglist窗口，缺省显示在左侧
"let Tlist_Auto_Open=1           "启动VIM后自动打开taglist窗口

"""""""""" WinManager """"""""""
"查看帮助文档 :help winmanager
"如果想显示taglist（即tagexplorer）窗口，必须先有taglist插件
 let g:winManagerWindowLayout='FileExplorer|TagList'  "显示的窗口和布局
 let g:persistentBehaviour=0     "若是最后一个窗口，则退出vim
"nmap wm :WMToggle<cr>           "在normal状态下输入 wm 开启
"map <c-w><c-f> :FirstExplorerWindow<cr>  "打开文件浏览器中第一个文件夹
"map <c-w><c-b> :BottomExplorerWindow<cr> 
 map <c-w><c-t> :WMToggle<cr> 

"""""""""" CtrlP """"""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
