set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader=';'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'


filetype plugin indent on     " required
Bundle 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf  = '~/.ycm_extra_conf'
set nu!
set cindent
syntax enable
syntax on
colorscheme desert

Bundle 'WinManager'
cmap wm :WMToggle<cr>
Bundle 'taglist.vim'
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
set completeopt=longest,menu
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

Bundle 'minibufexpl.vim'

let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapWindowNavVim = 1

Bundle 'a.vim'
" *.cpp 和 *.h 间切换
nmap <Leader>ch :A<CR>
" " 子窗口中显示 *.cpp 或 *.h
nmap <Leader>sch :AS<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
