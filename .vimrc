execute pathogen#infect()
set pastetoggle=<F12>
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set listchars=nbsp:¬
set list
filetype plugin on
autocmd FileType module setlocal omnifunc=phpcomplete#CompletePHP
let g:SuperTabContextDefaultCompletionType ="<C-x><C-o>"
" let g:SuperTabDefaultCompletionType = "context"
" colorscheme desert
set t_Co=256
colorscheme wombat256mod
let g:syntastic_php_checkers = ['php']
" Show trailing whitespace:
:highlight ExtraWhitespace ctermbg=darkred guibg=darkred
:match ExtraWhitespace /\s\+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
