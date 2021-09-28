"Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }
"Plug 'FuzzyFinder'
"Plug 'Gundo'
"Plug 'JavaScript-Indent'
"Plug 'L9'
"Plug 'Mark'
"Plug 'PasteBin.vim'
"Plug 'VisIncr'
"Plug 'gtags.vim'
"Plug 'gtk-vim-syntax'
"Plug 'jQuery'
"Plug 'matchit.zip'

"nerdtree 这个插件相关的插件
"Plug 'preservim/nerdtree',{'on':'NERDTreeToggle'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'mileszs/ack.vim',{'on':'Ack'}
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'elzr/vim-json'

"Javascript typescript reactjs 相关的插件
Plug 'pangloss/vim-javascript'
Plug 'isruslan/vim-es6'
Plug 'mxw/vim-jsx'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

"语法检查
Plug 'scrooloose/syntastic'

"language syntax 
Plug 'sheerun/vim-polyglot'
Plug 'othree/xml.vim',{'for':'xml'}
Plug 'sukima/xmledit',{'for':'xml'}
Plug 'chr4/nginx.vim'
Plug 'calleerlandsson/pick.vim'
Plug 'hail2u/vim-css3-syntax',{'for':'css'}
Plug 'groenewege/vim-less',{'for':'less'}
Plug 'Raimondi/delimitMate'
Plug 'cespare/vim-toml',{'for':'toml'}
Plug 'toml-lang/toml',{'for':'toml'}
"
"彩虹括号
Plug 'luochen1990/rainbow'
"Plug Markdown config
Plug 'plasticboy/vim-markdown',{'for':'markdown'}
Plug 'tyru/open-browser.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' ,'for':'markdown' }
Plug 'vimwiki/vimwiki'

"Git config 
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'phanviet/vim-monokai-pro'

Plug 'mhinz/vim-startify'
Plug 'honza/vim-snippets'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/DrawIt'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript','typescriptreact', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/c.vim',{'for':'c'}
Plug 'davidhalter/jedi-vim',{'for':'python'}
Plug 'vim-scripts/groovy.vim',{'for':'groovy'}
Plug 'pprovost/vim-ps1'

"使用ctrl+t在新的标签中打开，ctrl+v或者ctrl+x
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim',{'on':['Files','Buffers']}

Plug 'preservim/nerdcommenter'

if has('gui_running')
    "File icons plugin
    "需要安装字体 https://github.com/ryanoasis/nerd-fonts.git
    "在MacOs中，如果安装了homebrew
    " brew tap homebrew/cask-fonts
    " brew cask install font-hack-nerd-font
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-scripts/wimproved.vim'
    "基于Ai的代码补全工具，但是需要依赖YouComplete，由于安装了coc可以安装coc-tabnine
    "Plug 'codota/tabnine-vim'
    "Plug 'terryma/vim-multiple-cursors'
    "Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    "Plug 'starcraftman/vim-eclim'
endif


