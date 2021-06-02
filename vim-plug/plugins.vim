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

    "git vim integration
    Plug 'tpope/vim-fugitive'

    " thin lines to indicate indents
    Plug 'yggdroot/indentline'

    " ostensibly better javascript syntax/indents
    Plug 'pangloss/vim-javascript'

    " perform insert mode completions with tab
    Plug 'ervandew/supertab'

    " code formatting
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

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
    Plug 'honza/vim-snippets'

    "snippets for lsp
    Plug 'norcalli/snippets.nvim'

    " highlight other uses of words under the cursor
    Plug 'RRethy/vim-illuminate'
    
    "easy motion
    Plug 'easymotion/vim-easymotion'

    "comments
    Plug 'tpope/vim-commentary'

    "zen mode lul
    Plug 'folke/zen-mode.nvim'

    " better 'f'ing
    Plug 'rhysd/clever-f.vim'

    "inline colorizing
    Plug 'norcalli/nvim-colorizer.lua'

    "show context for cursor position
    Plug 'wellle/context.vim'

    " old react snippets
    Plug 'epilande/vim-es2015-snippets'

    " React code snippets
    Plug 'epilande/vim-react-snippets'

    Plug 'folke/which-key.nvim'

    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

    call plug#end()
