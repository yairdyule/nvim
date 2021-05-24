" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    "emmet 
    Plug 'mattn/emmet-vim'
    " things in gutter
    Plug 'airblade/vim-gitgutter'


    " best theme
    Plug 'gruvbox-community/gruvbox'
    
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " cool status bar
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'tpope/vim-fugitive'

    " thin lines to indicate indents
    Plug 'yggdroot/indentline'

    " ostensibly better javascript syntax/indents
    Plug 'pangloss/vim-javascript'

    " perform insert mode completions with tab
    Plug 'ervandew/supertab'


    " Use release branch (recommend)
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " dank fuzzy finder
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/telescope.nvim'

    " better... Everything
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  


    " icons
    Plug 'kyazdani42/nvim-web-devicons'

    " lsp !!!
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    
    " nvim compe
    Plug 'hrsh7th/nvim-compe'

    " ultisnips
    Plug 'SirVer/ultisnips'

    "snippets for lsp
    Plug 'norcalli/snippets.nvim'
    "color previews
    "Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

    " highlight other uses of words under the cursor
    Plug 'RRethy/vim-illuminate'

    " sneak
    Plug 'justinmk/vim-sneak'
    
    " which key
    Plug 'liuchengxu/vim-which-key'

    " On-demand lazy load
    Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
    
    "easy motion
    Plug 'easymotion/vim-easymotion'

    "comments
    Plug 'tpope/vim-commentary'

    "zen mode lul
    Plug 'folke/zen-mode.nvim'

    call plug#end()
