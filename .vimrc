set number
set encoding=utf8

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'

Plug 'sirver/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='sioyek'
    let g:vimtex_quickfix_mode=0
    let g:vimtex_compiler_latexmk = {
        \ 'executable' : 'latexmk',
        \ 'options' : [
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
    "let g:vimtex_view_skim_activate=1
    "let g:vimtex_view_skim_sync=1

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
    hi Conceal ctermbg=none

Plug 'wadackel/vim-dogrun'

"plug 'valloric/youcompleteme'
"    let g:ycm_language_server =
"    \ [
"    \   {
"    \    'name' : 'latex',
"    \    'cmdline' : [ 'texlab' ],
"    \    'filetypes': [ 'Tex' ]
"    \   }
"    \ ]

call plug#end()

setlocal spell
set spelllang=en_us
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

set tabstop=4
set shiftwidth=4
set expandtab
    
colorscheme dogrun
set background=dark

hi clear SpellBad
hi clear SpellLocal
hi SpellBad cterm=underline
hi SpellLocal cterm=underline

augroup vimtex_event_1
  au!
  au User VimtexEventQuit     VimtexClean
  au User VimtexEventInitPost VimtexCompile
  au User VimtexEventCompileSuccess VimtexView
augroup END

autocmd InsertEnter * norm zz

" Mouse Support ._.
set mouse=a

" Link to snippets
set rtp+=~/Documents/Harvard/Classes/current

