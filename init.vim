source $HOME/.config/nvim/vim-plug/plugins.vim

set nocompatible
filetype plugin on
syntax on
let mapleader = ","
let g:airline_theme='deus'
let g:EasyMotion_smartcase = 1
set ignorecase
set smartcase
set termguicolors
set number relativenumber
set nohlsearch
set incsearch
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set signcolumn=yes
au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines
au FileType help wincmd L                               " open help in vertical split
au BufWritePre * :%s/\s\+$//e                           " remove trailing whitespaces before saving
nnoremap ; :

colorscheme gruvbox

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300


" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" when running at every change you may want to disable quickfix
" let g:prettier#quickfix_enabled = 0

" prettier autoformat when leaving insert mode
" autocmd InsertLeave *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
let g:prettier#quickfix_auto_focus = 0 " disable autofocus on quickfix menu


" necessary for nvim-compe
set completeopt=menuone,noselect

"nvim compe stuff
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true
let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


" UltiSnips mappings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fc <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>

" Use ctrl-[hjkl] to select the active split!
" i.e. pane switch
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>



" which key
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR


" vim easy motion

" <Leader>f{char} to move to {char}
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"setup colorizer
lua require'colorizer'.setup()

"clever f
let g:clever_f_across_no_line = 0 " search across lines
let g:clever_f_ignore_case = 1    " case insensitive f'ing



"which key setup
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" devicons setup

lua << EOF
require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  zsh = {
    icon = "",
    color = "#428850",
    name = "Zsh"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF

" getting ts server to work w/ lsp
lua require('lspconfig').tsserver.setup{}

"pyright config
lua require'lspconfig'.pyright.setup{}

"css ls config
lua << EOF
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.cssls.setup { --css
  capabilities = capabilities,
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup { --html
  capabilities = capabilities,
}
EOF



"snippets

lua require'snippets'.use_suggested_mappings()

" This variant will set up the mappings only for the *CURRENT* buffer.
lua require'snippets'.use_suggested_mappings(true)

" There are only two keybindings specified by the suggested keymappings, which is <C-k> and <C-j>
" They are exactly equivalent to:

" <c-k> will either expand the current snippet at the word or try to jump to
" the next position for the snippet.
inoremap <c-k> <cmd>lua return require'snippets'.expand_or_advance(1)<CR>

" <c-j> will jump backwards to the previous field.
" If you jump before the first field, it will cancel the snippet.
inoremap <c-j> <cmd>lua return require'snippets'.advance_snippet(-1)<CR>



" zen mode
lua << EOF
  require("zen-mode").setup {}
EOF

let g:user_emmet_leader_key=',' " set emmet leader key .

autocmd Filetype tex setl updatetime=1

let g:livepreview_previewer = 'open -a Preview'
