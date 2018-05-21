"hi Comment ctermfg =green
"hi String ctermfg =darkred
"hi Type ctermfg =yellow
"hi Statement ctermfg =darkyellow
colorscheme desert

set ts=4


"空格替换为TAB
set noexpandtab

"只处理行首TAB键
:%retab

set nu
filetype on
set background=dark
"语法高亮
syntax enable
syntax on

"对齐
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4

"设置匹配模式
set showmatch
"鼠标支持
set mouse=a
"智能查找
set incsearch

"display input command
set showcmd
"syntastic
let g:syntastic_c_include_dirs=['/usr/src/kernels/2.6.27.41-170.2.117.fc10.i686/include/','/home/feison/work/study/drivers/']

au FileType c setlocal dict+=~/.vim/dict/c.dict

"ctags

"按下F5重新生成tags文件，并更新taglist
"map <F7> :!ctags -I __THROW -I __attribute_pure__ -I __nonnull -I __attribute__ --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q  -f ~/.vim/systags /usr/include/* /home/feison/zlwork/nanopi/linux-3.4.y/include/* 
"/usr/include/sys/* /usr/include/bits/*  /usr/include/netinet/* /usr/include/arpa/* /usr/include/mysql/*
"map <F6> :!ctags --fields=+iaS --extra=+q -R -f ~/.vim/systags /usr/include /usr/local/include
map <F5> :!ctags -R --c-kinds=+p --fields=+laS --extra=+q .<CR><CR> :TlistUpdate<CR>
map <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
map <F7> :!cscope -Rkbqs .<CR><CR> :TlistUpdate<CR>

set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=~/.vim/systags
set tags+=~/arm/linux-2.6.24.7/tags
set tags+=/usr/src/kernels/2.6.27.41-170.2.117.fc10.i686/tags
"set tags=/root/feison_work/study/examples/scull/tags


"taglist.vim
let Tlist_Ctags_Cmd= "/usr/bin/ctags"
"let Tlist_Show_One_File = 1
let Tlist_Sort_Type= "name"
"let Tlist_Use_Right_Window = 1
"let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_WinWidth=50
"let Tlist_Auto_Open=1
"智能补全
set nocp
filetype plugin on

set completeopt=longest,menu

"omnicomplete plugin
"NOTE:
"you must create tags db before you using omni!
"create tags db as bellow,otherwise you will get 'Omni completion(^O^N^P)Pattern not found:'
"ctags -R --C-kinds=+p --fields=+aS --extra=+q
"ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"
"Pmenu 所有待选项背景色和前景色
highlight Pmenu    guibg=darkgrey  guifg=black 
"
"PmenuSel 选中项的背景色和前景色
highlight PmenuSel guibg=lightgrey guifg=black
"" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest



"智能补全增强 supertab.vmb
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"a.vim c/h 切换
nnoremap <silent> <F12> :A<CR>

"winManager.vim
set nocompatible "避免vi和vim的冲突
"let loaded_winmanager = 1   "关闭wm功能
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWidth=50
"nmap wm :WMToggle<cr>
"let g:AutoOpenWinManager = 1 "自动打开wm功能
"自动打开wm
autocmd VimEnter * nested execute  ":WMToggle"
"autocmd bufenter * if (winnr("$") == 2 && exists("b:")&&b:NERDTreeType == "primary")  | qa | endif
"cscope
if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   if filereadable("/usr/src/kernels/2.6.27.41-170.2.117.fc10.i686/cscope.out")
	   cs add /usr/src/kernels/2.6.27.41-170.2.117.fc10.i686/cscope.out
   endif
   set csverb
endif

nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"minibufexpl
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1

"搜索高亮
set hlsearch
hi Search ctermfg =0 ctermbg =7

