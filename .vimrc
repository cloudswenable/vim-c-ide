set nu!
set cindent
syntax enable
syntax on
colorscheme desert
let g:AutoOpenWinManager = 1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:bufExplorerMaxHeight=30
let g:miniBufExplorerMoreThanOne = 0
"let g:winManagerWindowLayout='NERDTree|taglist,BufExplore'
let g:winManagerWindowLayout = "FileExplorer|TagList"
cmap wm :WMToggle<cr>
filetype plugin indent on
set completeopt=longest,menu
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB  != ""
    cs add $CSCOPE_DB
endif
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
