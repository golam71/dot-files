set number
set expandtab
set autoindent
set softtabstop=4
set shiftwidth=4
set tabstop=4
set relativenumber
set smarttab
set cindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set background=dark
"set guicursor=n-v-c-sm:block,
"set list listchars=tab:>\ ,trail:+,eol:$
let $NVIM_TUI_ENABLE_CURSORE_SHAPE=1
call plug#begin('~/.vim/plugged')
    Plug 'jiangmiao/auto-pairs'
    Plug 'http://github.com/tpope/vim-surround'
    Plug 'https://github.com/preservim/nerdtree'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'itchyny/lightline.vim'
    Plug 'https://github.com/lifepillar/pgsql.vim'
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'https://github.com/ryanoasis/vim-devicons'
    Plug 'https://github.com/tc50cal/vim-terminal'
    Plug 'https://github.com/preservim/tagbar'
    Plug 'https://github.com/terryma/vim-multiple-cursors'
    Plug 'https://github.com/thinca/vim-quickrun.git'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'https://github.com/neoclide/coc-tsserver.git'
    Plug 'https://github.com/neoclide/coc-snippets.git'
    Plug 'https://github.com/neoclide/coc-pairs.git'
    Plug 'https://github.com/neoclide/coc-git.git'
    Plug 'https://github.com/neoclide/coc-lists.git'
    Plug 'https://github.com/neoclide/coc-emmet.git'
    Plug 'https://github.com/pangloss/vim-javascript.git' 
    Plug 'https://github.com/mxw/vim-jsx.git'
    Plug 'https://github.com/fannheyward/coc-pyright.git'
    Plug 'mrdotb/vim-tailwindcss'
    Plug 'https://github.com/dracula/vim.git'
    Plug 'https://github.com/neoclide/coc-tabnine.git'
    Plug 'w0rp/ale'
    Plug 'https://github.com/metakirby5/codi.vim.git'
    Plug 'lsdr/monokai'
    Plug 'chemzqm/vim-jsx-improve' 
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'sheerun/vim-polyglot'
    Plug 'haishanh/night-owl.vim'
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'thosakwe/vim-flutter' 
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
    Plug 'https://github.com/907th/vim-auto-save.git'
    Plug 'https://github.com/vim-syntastic/syntastic.git'
    Plug 'https://github.com/drewtempelmeyer/palenight.vim.git'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'jbgutierrez/vim-babel'
    Plug 'mattn/webapi-vim',
call plug#end()
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python' shellescape(@%, 1)<CR>

autocmd FileType javascript  map <buffer> <F5> :w<CR>:exec '!node' shellescape(@%, 1)<CR>
autocmd FileType javascript imap <buffer> <F5> <esc>:w<CR>:exec '!node' shellescape(@%, 1)<CR>

autocmd FileType cpp map <buffer>  <F5>  :w<CR>:exec '!g++ % -o lol ' shellescape(@%, 1)<CR>
autocmd FileType cpp  imap <buffer> <F5>  <esc>:w<CR>:exec '!g++' shellescape(@%, 1)<CR>

autocmd FileType c map <buffer>  <F5>  :w<CR>:exec '!gcc % -o lol' shellescape(@%, 1)<CR>
autocmd FileType c  imap <buffer> <F5>  <esc>:w<CR>:exec '!gcc' shellescape(@%, 1)<CR>



"map <F8> : !gcc % &&  echo file compiled<CR>
"map <F10> : !g++ % &&  echo file compiled<CR>
let g:coc_global_extensions =[
  \ 'coc-pairs',
  \ 'coc-eslint',
  \ 'coc-tslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-emmet',
  \ 'coc-tabnine',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-highlight',
  \ 'coc-tsserver',
  \ 'coc-java',
  \ 'coc-vimtex',
  \ 'coc-flutter',
  \ 'coc-clangd',
  \ 'coc-marketplace',
  \ 'coc-webview',
  \ 'coc-tailwindcss',
  \ 'coc-markdownlint',
  \ 'coc-python',
  \ 'coc-rls',
  \ 'coc-snippets']

"highlight Pmenu ctermbg=gray guibg=gray
"hi Normal guibg=NONE ctermbg=NONE


function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imTrL')
  else
    exec('set guioptions=i')
  endif
endfunction
map <F11> <Esc>:call ToggleGUICruft()<cr>

set guioptions=i
map <silent> <C-q> :q!<CR>


set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

command! -nargs=0 Prettier :CocCommand prettier.formatFile

"--------------------------------------------------------------------------------------------------------------------------------------------------------


"--------------------------------------------------------------------------------------------------------------------------------------------------------
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
xmap <leader>x  <Plug>(coc-convert-snippet)
nmap <leader>ne :NERDTree<cr>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

let mapleader = ","
nmap <leader>n :NERDTree<cr>
nmap <leader>q :q<cr>
nmap <leader>pa "+gP<cr>
nmap <leader>sq :wq!<cr>
nmap <leader>, :w!<cr>
nmap <leader>t :term<cr>
nmap <leader>p :Prettier<cr>
nmap <leader>a :let g:auto_save = 0<cr>
nmap <leader>b :let g:auto_save = 1<cr>

set belloff=all
autocmd GUIEnter * set vb t_vb=
set visualbell t_vb=
if has("autocmd") && has("gui")
    au GUIEnter * set t_vb=
endif


set completefunc=tailwind#complete
nnoremap <leader>tt :set completefunc=tailwind#complete<cr>
autocmd CompleteDone * pclose

set guifont=consolas:h11

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme challenger_deep

set nowritebackup
set nobackup
set noswapfile
set noundofile
set noswapfile
set nobackup
set nobackup nowritebackup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:auto_save = 0
augroup ft_markdown
  au!
  au FileType markdown let b:auto_save = 1
augroup END
set splitbelow
let g:vim_jsx_pretty_colorful_config = 1 " default 0
"for coc config file copy ben awads one)
set laststatus=2
