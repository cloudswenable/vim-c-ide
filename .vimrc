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
let g:SuperTabDefaultCompletionType="context"
cmap wm :WMToggle<cr>
filetype plugin indent on

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1
if filereadable("cscope.out")
    cs add cscope.out
elseif $CSCOPE_DB  != ""
    cs add $CSCOPE_DB
endif
nmap ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap sd :cs find d <C-R>=expand("<cword>")<CR><CR>
