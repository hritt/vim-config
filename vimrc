"todo CtrlP��ʹ�ã�NEADTree��vim-instant-markdown;mac

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
"set compatible     "�����ڼ���(vi)ģʽ��,����vimrc�ļ�ʱȱʡ�ر�
 set history=100    "��ʷ�����������Ĭ��Ϊ20
"set showmatch      "����������ʱ������ݵ�������֮��ƥ������Ŵ�
 set whichwrap=b,s,h,l,<,>,[,] "���������ƶ���ɾ������
"set spell          "��ƴд���,�д�����ʾΪ��ɫ����.�������ڵ����ϣ��� z= ����ƴд����
"set fillchars=vert:\ ,stl:\ ,stlnc:\  "���÷ָ��ʱ�߽������
 set scrolloff=2    "����ƶ���buffer�Ķ����͵ײ�ʱ�ľ���
"set autochdir      "�Զ��л���ǰĿ¼Ϊ��ǰ�ļ����ڵ�Ŀ¼
"set clipboard=unnamed  "Ĭ��ʹ��ѡ�񻺳����Ĵ���*��ʹ��ϵͳճ���壬����Ҫ����VIMʱ��+clipboradѡ��
autocmd BufWritePre * :%s/\s\+$//e  "�����ļ�ʱ�Զ�ɾ����β�ո��Tab

"""""""""" language """"""""""
"set helplang=cn          "ʹ�����İ����ĵ���Ҫ�����������ĵ�
"set encoding=utf-8       "Vim�ڲ�ʹ�ñ����ʽ
"set langmenu=zh_CN.UTF-8 "ʹ�����Ĳ˵�����ʹ��UTF-8����
"language message zh_CN.UTF-8  "ʹ��������ʾ��Ϣ����ʹ��UTF-8����
 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "������Զ�ʶ��

"""""""""" display """"""""""
 set lines=40 "columns=100  "���ô��ڸߺͿ�UbuntuĬ��Ϊ80*24
 set number                "��ʾ�к�
"set cursorline            "�������������
"set cursorcolumn          "�������������
 syntax on                 "�﷨������ubuntu��/etc/vim/vimrc���ѿ�����macû

 set t_Co=256          "256ɫ
 set background=dark   "����ɫ,������Щ��ɫ������Ч
 colorscheme mustang      "��ɫ����,�Դ���ɫ�Ƽ�torte

 set title          "��������ʾ filename [+=-] (path) - VIM
"set laststatus=2   "������ʾ״̬��(״̬������ʾ�ļ���)
"set showcmd        "��������ʾ����,Visualģʽ��ʾѡ�������С��ȱʡ��
"set showmode       "��������ʾvim��ǰģʽ��ȱʡ��
"set cmdheight=3    "���������и߶�
"set ruler          "��߹��ܣ���ʾ��ǰ����������к�

"set textwidth=78   "���ù�����п��,�ᱻ�������ļ�֮���ȡ�������ļ����Ƕ�ʧЧ
 set linebreak      "���ڵ����м����
"set wrapmargin=30  "�б߾�,Vi compatibleʱ����Ч
if (has("gui_running"))
    set nowrap            "ָ��������
    set guioptions+=b     "���ˮƽ������,ֻ��GUI�汾Vim��Ч
endif

 set foldlevel=99        "����ʱ��Ҫ�Զ��۵�����
 set foldmethod=indent   "�۵�,zc�رյ�ǰ�򿪵��۵�,zo�򿪵�ǰ���۵�,zm�ر������۵�,zr�������۵�

 set tabstop=4      "tab���Ϊ4���ո�
"set expandtab      "ʹ�ÿո����tab
 set shiftwidth=4   "�Զ�������ȣ�Ĭ��ֵ��8
"set smarttab       "ֻ��������tab�������ط���tab����һ���ո����
"set autoindent     "�Զ�����(�ѵ�ǰ�еĶ����ʽӦ�õ���һ��)
"set smartindent    "��������
 set cindent        "C���Է�ʽ��������������shiftwidthѡ���ֵ.C�����ļ��Զ�����
 set cino=g0        "�趨C/C++����Զ�������ѡ��,g0Ϊ��public:�������class��struct�����ڵĿ�����0���ո�

"""""""""" search  """"""""""
 set hlsearch       "����ʱ������ʾ���ҵ����ı�
 set incsearch      "����ʱ��δ��ȫ�������Ҫ�������ı�ʱ�Ϳ�ʼ����
 set ignorecase     "��������ʱ����Դ�Сд

"""""""""" edit  """"""""""
 set autoread       "���ļ����ⲿ�ı�ʱ�Զ���ȡ
 set autowrite      "���뿪�޸Ĺ���bufferʱ�Զ����棬����������(�磺make)ǰ�Զ�����
 set backup         "��д�ļ�ǰ���汸�ݣ�����Ϊfilename����ȱʡ�ر�
"set noswapfile     "����buffer�Ƿ�ʹ��swapfile,����Ϊfilename.swp����δ����ͱ��ر�ʱswapfile����

 filetype plugin indent on       "�����ļ������Զ�ʶ�������ļ����Ͳ������������ļ����͵��Զ�����
"autocmd FileType c set omnifunc=ccomplete#Complete  "filetype�����󣬶Ը���֧�ֵ��ļ������Զ�֧��
 set completeopt=longest,menu    "���ܲ�ȫ��ʾ��ʽ

 set mouse=a                   "ʹ���������λ�����ǻᵼ������Ҽ��ڶ�Ӧģʽ�޷�����
"set selection=exclusive       "ѡ�����ʽ
 set selectmode=mouse,key      "���������Selectģʽ�滻Visualģʽ
 set keymodel=startsel,stopsel "ʹ�á�Shift+�������ѡ���ı�

"""""""""" session """"""""""
"set sessionoptions-=curdir   "session��ȥ����ǰĿ¼
"set sessionoptions+=sesdir   "session�ļ�����Ŀ¼��Ϊ��ǰĿ¼
"autocmd VimLeave * mksession! mysession.vim  "�˳�vimʱ����session��ʹ�� :source mysession.vim����

"""""""""" Tag list """"""""""
 let Tlist_Show_One_File=1       "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
 let Tlist_Exit_OnlyWindow=1     "���taglist���������һ�����ڣ����˳�vim
"let Tlist_Use_Right_Window=1    "���Ҳര������ʾtaglist���ڣ�ȱʡ��ʾ�����
"let Tlist_Auto_Open=1           "����VIM���Զ���taglist����

"""""""""" WinManager """"""""""
"�鿴�����ĵ� :help winmanager
"�������ʾtaglist����tagexplorer�����ڣ���������taglist���
 let g:winManagerWindowLayout='FileExplorer|TagList'  "��ʾ�Ĵ��ںͲ���
 let g:persistentBehaviour=0     "�������һ�����ڣ����˳�vim
"nmap wm :WMToggle<cr>           "��normal״̬������ wm ����
"map <c-w><c-f> :FirstExplorerWindow<cr>  "���ļ�������е�һ���ļ���
"map <c-w><c-b> :BottomExplorerWindow<cr> 
 map <c-w><c-t> :WMToggle<cr> 

"""""""""" CtrlP """"""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
