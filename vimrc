"***  双引号后无空格，注释的是命令
" *** 双引号后有空格，注释的是说明

"""""""""" vim-plug """"""""""
call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
" Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
" Press <c-f> and <c-b> to cycle between modes.
" Press <c-d> to switch to filename only search instead of full path

Plug 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Plug 'godlygeek/tabular'  " tabular plugin must come before vim-markdown
"Plugin 'plasticboy/vim-markdown'

Plug 'iamcco/markdown-preview.vim'
" :MarkdownPreview

Plug 'scrooloose/nerdcommenter'
" [count]<leader>cc Comment out the current line or text selected in visual mode.
" <leader>ca        Switches to the alternative set of delimiters.
" [count]<leader>cu Uncomments the selected line(s).

Plug 'vim-syntastic/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1  " 打开时检查
let g:syntastic_check_on_wq = 0

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'  " SnipMate depends on vim-addon-mw-utils and tlib
"Plug 'honza/vim-snippets'  " don't use it, just use your snippets files

"Plug 'vim-airline/vim-airline'
"set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1 " use powerline symbols, see :help airline-customization
"let g:airline_left_sep = '▶'      " if not use powerline symbols, can use these
"let g:airline_right_sep = '◀'

call plug#end()

"""""""""" base """"""""""
"set compatible     " 工作在兼容(vi)模式下,存在vimrc文件时缺省关闭
 set history=100    " 历史命令保存行数，默认为20
"set showmatch      " 在输入括号时光标会短暂地跳到与之相匹配的括号处
 set whichwrap=b,s,h,l,<,>,[,] " 允许左右移动和删除跨行
"set spell          " 打开拼写检查,有错单词显示为红色长块.将光标放在单词上，按 z= 出现拼写建议
"set fillchars=vert:\ ,stl:\ ,stlnc:\  " 设置分割窗口时边界的样子
 set scrolloff=2    " 光标移动到buffer的顶部和底部时的距离
"set autochdir      " 自动切换当前目录为当前文件所在的目录
"set clipboard=unnamed  " 默认使用选择缓冲区寄存器*，使用系统粘贴板，但需要编译VIM时打开+clipborad选项
 autocmd BufWritePre * :%s/\s\+$//e  " 保存文件时自动删除行尾空格或Tab

"""""""""" language """"""""""
"set helplang=cn          " 使用中文帮助文档，要先下载中文文档
"set encoding=utf-8       " Vim内部使用编码格式
"set langmenu=zh_CN.UTF-8 " 使用中文菜单，并使用UTF-8编码
"language message zh_CN.UTF-8  " 使用中文提示信息，并使用UTF-8编码
 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 " 编码的自动识别

"""""""""" display """"""""""
 set lines=40 columns=100 " 设置窗口高和宽，Ubuntu默认为80*24
 set number                " 显示行号
"set cursorline            " 高亮光标所在行
"set cursorcolumn          " 高亮光标所在列
 syntax on                 " 语法高亮，ubuntu中/etc/vim/vimrc中已开，但mac没

 set t_Co=256          " 256色
 set background=dark   " 背景色,对于有些配色方案无效
 colorscheme mustang   " 配色方案,自带配色推荐torte
 
 set title          " 标题栏显示 filename [+=-] (path) - VIM
"set showcmd        " 命令行显示命令,Visual模式显示选择区域大小，缺省打开
"set showmode       " 命令行显示vim当前模式，缺省打开
"set cmdheight=3    " 设置命令行高度
"set ruler          " 标尺功能，显示当前光标所在行列号

 set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)
 set statusline =%2*%-3.3n%0*\      " buffer number
 set statusline+=%F\                " full file path
 set statusline+=%h%1*%m%r%w%0*     " flag
 set statusline+=[%{&fileencoding}, " encoding
 set statusline+=%{&fileformat}]    " file format
 set statusline+=%=                 " right align
 set statusline+=%-20{strftime(\"<%y-%m-%d\ %H:%M>\",getftime(expand(\"%\")))}  " modify time
 set statusline+=0x%-4B\            " current char
 set statusline+=%-10.(%lL,%c%VC%)\ %<%P   " offset

" for vim-syntastic/syntastic
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

" maybe cover colorscheme
"hi StatusLine   term=bold,reverse cterm=bold,reverse
"hi StatusLineNC term=reverse      cterm=reverse
 hi User1        term=inverse,bold cterm=inverse,bold ctermfg=Red
"hi User2        term=bold         cterm=bold         ctermfg=Yellow
"hi User3        term=inverse,bold cterm=inverse,bold ctermfg=Blue
"hi User4        term=inverse,bold cterm=inverse,bold ctermfg=LightBlue
"hi User5        term=inverse,bold cterm=inverse,bold ctermfg=Red       ctermbg=Green
"hi Folded       term=standout     cterm=bold         ctermfg=Blue      ctermbg=Black
"hi FoldColumn   term=standout                        ctermfg=DarkBlue  ctermbg=Black
"hi Comment      term=bold                            ctermfg=DarkCyan
"hi MatchParen   term=bold         cterm=bold,reverse ctermfg=DarkBlue  ctermbg=Black  " Parenthesis checking

"set textwidth=78   " 设置光标折行宽度,会被本配置文件之后读取的配置文件覆盖而失效
 set linebreak      " 不在单词中间断行
"set wrapmargin=30  " 行边距,Vi compatible时才有效
if (has("gui_running"))
    set nowrap         " 指定不折行
    set guioptions+=b  " 添加水平滚动条,只在GUI版本Vim有效
endif

 set foldlevel=99      " 启动时不要自动折叠代码
 set foldmethod=indent " 折叠,zc关闭当前打开的折叠,zo打开当前的折叠,zm关闭所有折叠,zr打开所有折叠

 set tabstop=4      " tab宽度为4个空格
"set expandtab      " 使用空格代替tab
 set shiftwidth=4   " 自动缩进宽度，默认值是8
"set smarttab       " 只在行首用tab，其他地方的tab都用一个空格代替
"set autoindent     " 自动缩进(把当前行的对起格式应用到下一行)
"set smartindent    " 智能缩进
 set cindent        " C语言方式缩进，缩进量是shiftwidth选项的值.C语言文件自动开启
 set cino=g0        " 设定C/C++风格自动缩进的选项,g0为“public:”等相对class、struct等所在的块缩进0个空格

"""""""""" search  """"""""""
 set hlsearch       " 搜索时高亮显示被找到的文本
 set incsearch      " 搜索时在未完全输入完毕要检索的文本时就开始检索
 set ignorecase     " 在搜索的时候忽略大小写

"""""""""" edit  """"""""""
 set autoread       " 当文件被外部改变时自动读取
 set autowrite      " 当离开修改过的buffer时自动保存，如运行命令(如：make)前自动保存
"set backup         " 重写文件前保存备份，命名为filename～，缺省关闭
"set noswapfile     " 对于buffer是否使用swapfile,命名为filename.swp，当未保存就被关闭时swapfile有用
                    " 记得要删除swp文件，否则下次打开文件还是会提示swp存在

 filetype plugin indent on       " 启用文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进
"autocmd FileType c set omnifunc=ccomplete#Complete  " filetype开启后，对各种支持的文件类型自动支持
 set completeopt=longest,menu    " 智能补全显示形式

 set mouse=a                   " 使用鼠标点击定位，但是会导致鼠标右键在对应模式无法复制
"set selection=exclusive       " 选择的形式
 set selectmode=mouse,key      " 何中情况用Select模式替换Visual模式
 set keymodel=startsel,stopsel " 使用“Shift+方向键”选择文本

"""""""""" session """"""""""
"set sessionoptions-=curdir    " session中去除当前目录
"set sessionoptions+=sesdir    " session文件所在目录成为当前目录
"autocmd VimLeave * mksession! mysession.vim  " 退出vim时创建session，使用 :source mysession.vim加载

"""""""""" plugin """"""""""
" Tag list "
 let Tlist_Show_One_File=1       " 不同时显示多个文件的tag，只显示当前文件的
 let Tlist_Exit_OnlyWindow=1     " 如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window=1    " 在右侧窗口中显示taglist窗口，缺省显示在左侧
"let Tlist_Auto_Open=1           " 启动VIM后自动打开taglist窗口

" WinManager "
" 如果想显示taglist（即tagexplorer）窗口，必须先有taglist插件
 let g:winManagerWindowLayout='FileExplorer|TagList'  " 显示的窗口和布局
 let g:persistentBehaviour=0     " 若是最后一个窗口，则退出vim
 nmap wm :WMToggle<cr>           " 在normal状态下输入 wm 开启
"map <c-w><c-f> :FirstExplorerWindow<cr>  " 打开文件浏览器中第一个文件夹
"map <c-w><c-b> :BottomExplorerWindow<cr>
"map <c-w><c-t> :WMToggle<cr>

" DoxygenToolkit "
" :DoxLic    许可
" :DoxAuthor 文件说明(作者和日期)
" :Dox       函数/类注释
 let g:DoxygenToolkit_authorName="JY Liu <liujinyang6 at 163 dot com>"

"""""""""" key mapping """"""""""
" maps escape to the caps lock key when you enter Vim
" returns normal functionality to caps lock when you quit
"if has("unix")
"au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
"au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"endif

" 自动补全括号
 inoremap ( ()<ESC>i
 inoremap [ []<ESC>i
 inoremap { {}<ESC>i
 inoremap < <><ESC>i

" <F5>编译和运行C++程序
 map <F5> :call CompileRunGpp()<CR>
func! CompileRunGpp()
 exec "w"
 exec "!g++ % -o %<"
 exec "! ./%<"
endfunc

map <C-A> ggVGY

""""""""""""""""""""""""""""""""""""""""""""""""""""
" 判断操作系统
"if has("unix")  "linux
"elseif has("mac")
"elseif has("win16") || has("win32") || has("win64") || has("win95")  "windows
"endif

" 判断是终端还是gvim
"if has("gui_running")
"else
"endif

" 从系统剪切板中复制，剪切，粘贴
"map <F7> "+y
"map <F8> "+x
"map <F9> "+p

