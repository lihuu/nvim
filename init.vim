" |eovim config
" +-------------+--------------+----------+----------+

set hidden
set nocompatible
set laststatus=2
syntax on
set nu
syntax enable
set ts=4
set shiftwidth=4
set autoread
set expandtab

"set background=dark
set cursorline
set mouse=a
set termguicolors
"colorscheme torte
colorscheme molokai
"set fdm=indent set sourcecode folding
set fdm=marker
"set guifont=Monaco:h15:i
"set guifont=Fira\ Code:h15:i
"set guifont=DejaVu\ Sans\ Mono:h13:i
"set guifont=Fira\ Code:h13:i
let $LANG='en'
set langmenu='en'
behave mswin
set fileencodings=utf-8,chinese,latin-1,latin1
set encoding=utf-8
set nobackup
set nowritebackup
set noundofile


"set pythonthreedll=python36.dll
filetype off
call plug#begin('~/.config/nvim/plugged')
Plug 'easymotion/vim-easymotion'
"Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }

Plug 'neoclide/coc.nvim', {'branch':'release'}
"Plug 'davidhalter/jedi-vim',{'for':'python'}
Plug 'tfnico/vim-gradle'
Plug 'vim-scripts/Gundo'
Plug 'cespare/vim-toml'
Plug 'elzr/vim-json', {'for':'json'}
"Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/JavaScript-Indent'
Plug 'vim-scripts/L9'
Plug 'vim-scripts/Mark'
Plug 'vim-scripts/gtags.vim',{'for':'c'}
Plug 'vim-scripts/jQuery'
"Plug 'PasteBin.vim'
""'Plug 'VisIncr'

"左边的文件树
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}
"ack命令
Plug 'mileszs/ack.vim',{'on':'Ack'}
"Plug 'gtk-vim-syntax'
"Plug 'matchit.zip'
Plug 'tpope/vim-surround'
"Plug 'Lokaltog/vim-powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/html5.vim'

"Javascript 相关的插件
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'isruslan/vim-es6'

"语法检查
Plug 'scrooloose/syntastic'
"emmet
Plug 'mattn/emmet-vim'
"xml
Plug 'othree/xml.vim'
Plug 'sukima/xmledit'

"Nginx 配置文件高亮
Plug 'chr4/nginx.vim'
Plug 'calleerlandsson/pick.vim'
Plug 'hail2u/vim-css3-syntax' 
Plug 'groenewege/vim-less'
Plug 'Raimondi/delimitMate'
"彩虹括号
Plug 'luochen1990/rainbow'
"Plug Markdown config
Plug 'plasticboy/vim-markdown'
Plug 'tyru/open-browser.vim'
Plug 'iamcco/markdown-preview.nvim',{'do':'cd app & yarn install'}
Plug 'vimwiki/vimwiki'

"Git config 
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'flazz/vim-colorschemes'
Plug 'mhinz/vim-startify'
"<leader>di start Drawit and <leader>ds to stop drawit
Plug 'vim-scripts/DrawIt'
"Code format
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'gr    aphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'vim-scripts/c.vim', {'for':['c','cpp']}
Plug 'junegunn/fzf.vim'
"Plug 'junegunn/fzf', {'do':{->fzf#install()}}
Plug 'junegunn/fzf'
Plug 'pprovost/vim-ps1'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dylon/vim-antlr'
"Plug 'neovim/nvim-lspconfig'

call plug#end()

filetype plugin indent on

let mapleader="\<space>"
"vim-script的仓库
"+---------------------------------------------------------
"|自定义按键
"|
"+---------------------------------------------------------
"
"insert 模式中删除一行
inoremap <c-d> <ESC>ddi
inoremap <c-u>  <ESC>~i

"打开vim配置文件的映射
noremap <leader>ev :vsplit $MYVIMRC<cr>
"配置文件生效的映射
nnoremap <leader>sv :source $MYVIMRC<cr>



"
"Extral Configuration
let g:jsx_ext_required=0


"wiki configuration
"

let delimitMate_matchpairs="(:),[:],{:}"
au FileType vim,html let b:delimitMate_matchpairs = "(:),[:],{:}"

"vim-markdown configuration
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_toc_autofit=1

"****************************coc.nvim configuration*********************
"coc.nvim configuration
let g:coc_global_extensions = ['coc-json','coc-css','coc-tsserver','coc-html','coc-marketplace','coc-git','coc-lua','coc-java','coc-python','coc-xml','coc-yaml','coc-go','coc-clangd']

set cmdheight=1

set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion,may have conflicts with default
" shortcuts in macos
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
" Coc 支持的一些插件
" CocInstall coc-marketplace 插件可以查看所有的支持的插件
" CocInstall coc-java
" CocInstall coc-json
" CocInstall coc-css
" CocInstall coc-html
" CocInstall coc-tsserver
" CocInstall coc-python
" CocInstall coc-git
" CocInstall coc-lua
"
"
"****************Coc config end **********************

"*****************config for prettier start ****************
let g:prettier#autoformat = 0                                                                                       
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.vue,*.yaml,*.html Prettier
"g:prettier#config#parser = 'babylon'
let g:prettier#config#parser='babylon'
"*****************config for prettier end ****************

"nerdtree 按键映射
noremap <leader>f :NERDTreeToggle<cr>

if !(has('win16') || has('win32') || has('win64'))
    "source ~/.config/nvim/clang.vim
    source ~/.config/nvim/run.vim
endif

let g:airline_theme='luna'

noremap <leader>h <esc>:tabprevious<cr>
noremap <leader>l <esc>:tabnext<cr>

"Moving fastly
noremap <c-j> 5j
noremap <c-k> 5k
noremap <c-h> 5h
noremap <c-l> 5l

"fzf 
noremap <c-p> :Files<cr>
noremap <c-o> :Buffers<cr>


"Config for emmet-vim
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='i' " value: n i v a
""remap the default <C-Y> leader
"let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_expandabbr_key='<C-e>'
