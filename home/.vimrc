"########################################
"########## Matt's .vimrc File ##########
"########################################

set nocompatible	" (required)
filetype off		" (required)

" Set the runtime path to include vundle and initialize it.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Let vundle manage vundle (required).
Plugin 'VundleVim/Vundle.vim'

"Install ctrlp
Plugin 'ctrlpvim/ctrlp.vim'

"Install emmet
Plugin 'mattn/emmet-vim'

"Install nerdtree
Plugin 'scrooloose/nerdtree'

"Install powerline
Plugin 'powerline/powerline'

"Install ultisnips
Plugin 'SirVer/ultisnips'

"Install actual snippets
"Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"Install vim-latex
Plugin 'vim-latex/vim-latex'

"Install YCM
"Be sure to navigate to ~/.vim/bundle/YouCompleteMe
"and run 'python install.py'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

" This allows vim to invoke plugins for specific filetypes
filetype plugin on

" This allows vim to invoke syntax coloring
syntax on

" Settings for all instances of vim
:set number
:set mouse=a
:set backspace=indent,eol,start

" Set cursors for insert, normal and replace mode
" Check if we are in tmux
if exists('$TMUX')
  let &t_SI = "\ePtmux;\e\e[6 q\e\\"
  let &t_SR = "\ePtmux;\e\e[4 q\e\\"
  let &t_EI = "\ePtmux;\e\e[2 q\e\\"
else
  let &t_SI = "\<Esc>[6 q"
  let &t_SR = "\<Esc>[4 q"
  let &t_EI = "\<Esc>[2 q"
endif

" Settings for gvim
colorscheme darkblue
:set guifont=Dejavu\ Sans\ Mono\ for\ Powerline\ 12
" Disable all blinking
:set guicursor+=a:blinkon0

" Powerline Settings
let g:powerline_pycmd="py3"
:set laststatus=2

" Vim-Latex Settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:tex_CompileRule_pdf='pdflatex -synctex=1 --interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf='zathura'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf, aux'

" Ultisnippets Settings
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Emmet Settings
let g:user_emmet_leader_key='<c-z>'

"#######################
"##### Keybindings #####
"#######################

"###################
"### Map ;; to ; ###
"###################
noremap ;; ;

"#########################
"### Windows (Buffers) ###
"#########################

"Open file in new window
nmap ;W :e<Space>

"Close current buffer
nmap ;X :bd<CR>

"#######################
"### Panes (Windows) ###
"#######################

"Open new file with horizontal split
nmap ;_ :new<Space>

"Open new file with vertical split
nmap ;\| :vert<Space>new<Space>

"############
"### Tabs ###
"############

"Open new tab
nmap ;t :tabnew<CR>

"Open file in new tab
nmap ;o :tabedit<Space>

"Close current tab
nmap ;x :tabclose<CR>

"Navigation for tabs
nmap ;n  :tabnext<CR>
nmap ;p  :tabprev<CR>

"################
"### Nerdtree ###
"################

nmap ;NT :NERDTreeToggle<CR>

