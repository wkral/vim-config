filetype off

call pathogen#infect()

filetype plugin indent on

syntax on
colorscheme colours

"Indentation that doesn't suck
set smartindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab

function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction

"The uncool status line is back with a vengeance
set laststatus=2
let g:airline#extensions#branch#displayed_head_limit=10
let g:airline_powerline_fonts=1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

set incsearch "hilight as I search
set wildmode=longest,list "more bashy tab competion for file paths
set nofoldenable "I don't like code folding
set backspace=indent,eol,start "Let my backspace fly
set linebreak "if you're going to wrap do it right

"Make the clipboard work with OSX
set clipboard=unnamed

let mapleader=","

nnoremap <c-h> :wincmd h<cr>
nnoremap <c-j> :wincmd j<cr>
nnoremap <c-k> :wincmd k<cr>
nnoremap <c-l> :wincmd l<cr>

"Quick redraw
nnoremap <leader>r :redraw!<cr>

"Auto remove trailing spaces
autocmd BufWritePre * :%s/\s\+$//e

set wildignore=*/tmp/*,*/log/*,*.pyc,*.jpg,*.png,node_modules,*.class,*.jar

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"CtrlP good for opening files
nnoremap <leader>t :CtrlP .<cr>
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"Syntastic configuration
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5
let g:syntastic_javascript_gjslint_conf=" --nojsdoc"
let g:syntastic_rust_checkers = ['rustc']

set colorcolumn=80 "better version of 80 column editing

set cursorline

au BufNewFile,BufRead * match ExtraWhitespace /\s\s\+$/
match ExtraWhitespace /\s\s\+$/

"When switching between git branches tired of loading everything each time
set autoread


"Custom tab widths for file types
autocmd Filetype ruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype eruby setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype sls setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype yml setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype jinja setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype html.mustache setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype go setlocal noexpandtab

