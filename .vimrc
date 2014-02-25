set nocompatible              " be iMproved
filetype off                  " required!
set backspace =2 


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'tomasr/molokai'
Bundle 'gmarik/vundle'
Bundle 'ervandew/screen'
Bundle 'ervandew/supertab'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'davidhalter/jedi-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'majutsushi/tagbar'
Bundle 'tomtom/tcomment_vim'
"Bundle 'coot/atp_vim'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'gerw/vim-latex-suite'
"orgmode
Bundle 'jceb/vim-orgmode'

" Snipmate
" Bundle "MarcWeber/vim-addon-mw-utils"
" Bundle "tomtom/tlib_vim"
" Bundle 'garbas/vim-snipmate'
" Bundle "honza/vim-snippets"
" "You
Bundle "Valloric/YouCompleteMe"

filetype plugin indent on
syntax on
set sw=4
nmap <Space> <Plug>(easymotion-bd-f)
" set autoindent
" set lazyredraw
set tabstop=4
au FileType python setlocal ts=8 et sw=4 sts=4
autocmd BufWritePre *.py normal m`:%s/\s\+$//e``

"set hidden

"Window Splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


"Easymotion default leader
let g:EasyMotion_leader_key = '<Leader>'
" set whichwrap+=<,>,h,l,[,]
" set background=dark
"colorscheme solarized
" let g:molokai_original = 1
" let g:rehash256 = 1
colorscheme molokai





let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabMappingBackward = '<S-C-Tab>'


"screen
let g:ScreenImpl = 'Tmux'
nmap <C-c><C-c> :ScreenShell<cr>
nmap <leader>pd {v}:ScreenSend<cr>}<Down>
let g:ScreenShellHeight = 0 

nmap [p {v}:ScreenSend<cr>}<Down>

" Latex vim
let g:tex_flavor='latex'
let g:Tex_CompileRule_dvi = 'latex --src $*'
let g:Tex_ViewRule_dvi='open -a Skim $*'
let maplocalleader="\\"

" The Silver Search
if executable('ag')
	" Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor
	" Use ag in CtrlP for listing files. Lightning fast and respects "     .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	"ag is fast enough that CtrlP doesn't need to cache
	let g:ctrlp_use_caching = 0
endif
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" tagbar
nmap <F8> :TagbarToggle<CR>


"cursor in Macos
" let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
" let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
