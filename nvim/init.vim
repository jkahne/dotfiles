" "if you want to use your vimrc, get rid of all the crap after line 5 and use these lines:
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc
let mapleader = ','

" required for several plugins
set nocompatible

" needs to be set before polyglot is loaded
let g:polyglot_disabled = ['markdown', 'autoindent']

call plug#begin('~/.config/nvim/plugged')

" Good defaults
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
" Plug 'tpope/vim-projectionist'
" Plug 'tpope/vim-speeddating' " is this ever really used?
Plug 'mbbill/undotree'
Plug 'lukas-reineke/indent-blankline.nvim'

" maybes:
" Typescript:  https://github.com/dmmulroy/tsc.nvim-lua
"

" File navigation
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-vinegar'
Plug 'phaazon/hop.nvim'

" show marks in gutter
Plug 'kshenoy/vim-signature'
" Plug 'opt/homebrew/bin/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'dyng/ctrlsf.vim'
Plug 'preservim/tagbar'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'terryma/vim-expand-region'

" Quality of life / Vim Things
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-tree/nvim-web-devicons'
Plug 'eandrju/cellular-automaton.nvim'
Plug 'azabiong/vim-highlighter'

Plug 'stevearc/aerial.nvim'

" http://www.blogface.org/2015/03/ctrl-in-emacs-in-mac-terminal.html
" terminal settings => "Profiles" => "Keyboard"
" Look for and modify, or add actions for ctrl-up and ctrl-down:
" ctrl-up = \033[1;5A
" ctrl-down = \033[1;5B
Plug 'tommcdo/vim-exchange'
Plug 'github/copilot.vim'

" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" Plug 'morhetz/gruvbox'
" Plug 'tomasr/molokai'
Plug 'crusoexia/vim-monokai'
" Plug 'fmoralesc/molokayo'
Plug 'EdenEast/nightfox.nvim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rizzatti/dash.vim'
Plug 'szw/vim-maximizer'
Plug 'AndrewRadev/sideways.vim'
" Plug 'AndrewRadev/switch.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }

Plug 'AckslD/nvim-neoclip.lua'

" tailwind something or other
Plug 'danielvolchek/tailiscope.nvim'

Plug 'barrett-ruth/telescope-http.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" Plug 'pwntester/octo.nvim'
Plug 'ThePrimeagen/harpoon'


" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" Tests
" Plug 'tpope/vim-dispatch'
" Plug 'janko/vim-test'
Plug 'vim-test/vim-test'
" Plug 'radenling/vim-dispatch-neovim' Needed??

" Autocomplete
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'mattn/emmet-vim'
Plug 'AndrewRadev/tagalong.vim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'virchau13/tree-sitter-astro'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

" Do I need lspsaga?  what is it?   This is such a mess.

" For ultisnips users.
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" Plug 'honza/vim-snippets' " needed?


Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" Plug 'tpope/vim-markdown'
" " Plug 'kevinoid/vim-jsonc'
" " Plug 'pangloss/vim-javascript'
" " Plug 'maxmellon/vim-jsx-pretty'
" " Plug 'eslint/eslint'
" Plug 'dense-analysis/ale'
"
" Plug 'vim-syntastic/syntastic'
"
" " Plug 'posva/vim-vue'
"
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'npm install',
"   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Plug 'https://github.com/itspriddle/vim-marked.git'
" Plug 'tpope/vim-dadbod'
" Plug 'kristijanhusak/vim-dadbod-ui'
" " Plug 'elixir-editors/vim-elixir' "looking for new maintainers.  if end up needing this, look for alts
Plug 'elixir-tools/elixir-tools.nvim'
" Plug 'emmanueltouzery/elixir-extras.nvim'
"
" " " Plug 'vim-ruby/vim-ruby'
" " " let g:ruby_indent_assignment_style = 'variable'
"
"
"
"
call plug#end()

set rtp+=/opt/homebrew/opt/fzf
set completeopt=menu,menuone,noselect

lua require("jkahne")

set exrc



" let g:vimrubocop_config = './.rubocop.yml'

" let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=100 guibg=#111
" set colorcolumn=10,20,30,40,50,60,70,80,90

" set background=dark

" set background=dark
" colorscheme one
" colorscheme gruvbox
"
" THIS ONE
" colorscheme molokai

" colorscheme dracula

" prior to 1/15/22
" set background=dark
" colorscheme PaperColor

" 6/25/2022
" colorscheme monokai

" 1/15/2022
" colorscheme oceanicnext


" colorscheme nightfox
" colorscheme carbonfox
colorscheme terafox
" colorscheme tokyo-night




set t_Co=256


let g:signify_update_on_bufenter = 1
let g:signify_update_on_focusgained = 1

" use a big, pretty font
" set guifont=Monaco:h13


set updatetime=300

set history=10000

set dictionary=/usr/share/dict/words
set spellfile=~/.config/nvim/spell/custom-dictionary.utf-8.add


" Don't wait so long for the next keypress (particularly in ambigious Leader situations.
set timeoutlen=500

" enable syntax highlighting
" syntax on

set nowrap " don't wrap long lines

set showcmd " show commands as we type them

" set showmatch " highlight matching brackets


" enable line numbers, and don't make them any wider than necessary
" set rnu numberwidth=2
set number


set inccommand=nosplit


" highlight the search matches
set hlsearch
set cursorline

"CursorLine only on active pane
augroup CursorLineHighlight
au!
au WinEnter * set cursorline
au WinLeave * set nocursorline
augroup end

" I like to live dangerously
"Don't create swap files
set nobackup
set nowritebackup
set noswapfile

" but not that dangerously
" set undodir=~/.vim/undodir
" set undofile

" searching is case insensitive when all lowercase
set ignorecase smartcase



" don't abandon buffers when unloading
set hidden

" match indentation of previous line
" set autoindent

" perform autoindenting based on filetype plugin
filetype plugin indent on

" flip the default split directions to sane ones
set splitright
set splitbelow

" don't beep for errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


" have the mouse enabled all the time
set mouse=a

set clipboard+=unnamed

" let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.svn|\.class$'
set nowrap
" set linebreak
" set nolist  " list disables linebreak
set lazyredraw
set foldmethod=indent
set foldlevel=10

" Ignores
set wildignore+=*tmp/*,*packs/*,*coverage/*,*plugged/*,*vendor/*,*_build/*,*.elixir_ls/*,*deps/*,*seed_scenarios/*,*node_modules/*,*.beam,*.swp,*.zip,*.git/*
" Ignore stuff that can't be opened
set wildignore+=tmp/**

" set wildignore+=**/node_modules/**
" set wildignore+=**/bower_components/**
" set wildignore+=**/dist/**
" set wildignore+=**/coverage/**
" set wildignore+=**/.bundle/**

" use 2 spaces for tabs
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab
set shiftround "when at 3 spaces and I hit >>, go to 4, not 5




" CONSIDER ADDING THESE BACK IN
" " buffer resizing mappings (shift + arrow key)
" nnoremap <Leader><Leader>k <c-w>+<c-w>+
" nnoremap <Leader><Leader>j <c-w>-<c-w>-
" nnoremap <Leader><Leader>h <c-w><<c-w><
" nnoremap <Leader><Leader>l <c-w>><c-w>>

" easy window resizing
" noremap <Leader><Leader>h :vertical resize +5<cr>
" noremap <Leader><Leader>j :resize -5<cr>
" noremap <Leader><Leader>k :resize +5<cr>
" noremap <Leader><Leader>l :vertical resize -5<cr>
"
" imap <silent> <C-D><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
" imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M %p")<CR>



" let g:netrw_liststyle = 3


nmap cp :let @+ = expand("%")<cr>


" nnoremap <left> :bp<cr>
" nnoremap <right> :bn<cr>
" nnoremap <leader>j :bn<cr>
" nnoremap <leader>k :bp<cr>



" nmap <TAB> :call RunStuff()<CR>

" crm                                         " MixedCase vim-abolish settings
" crc                                         " camelCase vim-abolish settings
" crs                                         " snake_case vim-abolish settings
" cru                                         " UPPER_CASE vim-abolish settings
" cr-                                         " dash-case vim-abolish settings
" cr.                                         " dot.case vim-abolish settings
" cr<space>                                   " space case vim-abolish settings
" crt                                         " Title Case vim-abolish settings
" cx                                          " exchange
" gS = splitjoin                              " to split a one-liner into multiple lines
" gJ = splitjoin                              " (with the cursor on the first line of a block) to join a block into a single-line statement.
nmap ga <Plug>(EasyAlign)|                    " EASY ALIGN
xmap ga <Plug>(EasyAlign)|                    " EASY ALIGN
nnoremap git :G |                              " because
"  gcc                                        " (un)comment
nmap gcr :RainbowToggle<CR>|                  " toggle rainbow colors
nmap go o<esc>|                               " insert blank lines without going into insert mode
nmap gO O<esc>|                               " insert blank lines without going into insert mode
nnoremap gp `[v`]|                            " reselect pasted text
nnoremap gt :NERDTreeToggle<CR>|              " NERDTree settings
nnoremap gu :UndotreeToggle<CR>|              " UndoTree Toggle

nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> ggd    <cmd>lua require('telescope.builtin').lsp_definitions()<CR>
nnoremap <silent> gi    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> ggi    <cmd>lua require('telescope.builtin').lsp_implementations()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> ggr    <cmd>lua require('telescope.builtin').lsp_references()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> ggD    <cmd>lua require('telescope.builtin').lsp_type_definitions()<CR>
" nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <leader>ff     <cmd>lua vim.lsp.buf.format { async = true }<CR>
nnoremap <silent> <leader>rn    <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>fq    <cmd>lua vim.lsp.buf.code_action()<CR>

nnoremap <silent> g[    <cmd>lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> g]    <cmd>lua vim.diagnostic.goto_next()<CR>


nnoremap <leader>tp :ElixirToPipe<cr>
nnoremap <leader>fp :ElixirFromPipe<cr>
nnoremap <leader>eo <cmd>lua require("elixir.elixirls").open_output_panel()<cr>
nnoremap <leader>er :ElixirRestart<CR>:edit<CR>
" nnoremap <leader>er :ElixirRestart<CR>:edit %<CR>


nnoremap <leader>t <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>m <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <leader>ht <cmd>lua require('telescope.builtin').help_tags()<cr>
" nnoremap <leader>hl <cmd>lua require('telescope.builtin').highlights()<cr>
nnoremap <leader>ef <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files({show_untracked=true})<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gp <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
" nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme()<cr>

nnoremap g* <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap g/ <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>qh <cmd>lua require('telescope.builtin').quickfixhistory()<cr>

nnoremap <leader>fml :CellularAutomaton make_it_rain<cr>
" nnoremap <leader>fo :CellularAutomaton game_of_life<cr>





nnoremap <Leader>p    <cmd>lua require('telescope').extensions.neoclip.default()<CR>

nnoremap <Leader>ma <cmd>lua require("harpoon.mark").toggle_file()<CR>
nnoremap <Leader>em :Telescope harpoon marks<CR>
nnoremap <Leader>ml :Telescope harpoon marks<CR>
nnoremap <up>       <cmd>lua require("harpoon.ui").nav_next()<CR>|                  " navigates to next mark
nnoremap <down>     <cmd>lua require("harpoon.ui").nav_prev()<CR>|                  " navigates to previous mark

nnoremap S ciw

map j gj|                                     " sane defaults
map k gk|                                     " sane defaults
" nnoremap J mzJ`z|                             " keep cursor in same place when joining lines
" map K <Nop>|                                  " Disable K looking stuff up
" g;                                          " jump to previous change
" g,                                          " jump to next change
nnoremap n nzzzv|                             " keep it centered
nnoremap N Nzzzv|                             " keep it centered in reverse
xnoremap p pgvy|                              " 'p' to paste, 'gv' to re-select what was originally selected. 'y' to copy it again
nmap Q q|                                     " Avoid unintentional switches to Ex mode
nmap s :HopChar2<CR>|                         " hop somewhere
" X                                           " exchange
nnoremap Y y$|                                " Yank from the cursor to the end of the line, to be consistent with C and D.


vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)




nnoremap <s-tab> za|                          " toggle folding


nnoremap <C-d> <C-d>zz|                       " keep it centered
nnoremap <C-u> <C-u>zz|                       " keep it centered
nmap <C-H> <C-W>h|                            " ctrl + direction to change split
nmap <C-J> <C-W>j|                            " ctrl + direction to change split
nmap <C-K> <C-W>k|                            " ctrl + direction to change split
nmap <C-L> <C-W>l|                            " ctrl + direction to change split
inoremap <C-h> <Left>|                        " while in insert mode, use ctrl + direction to move cursor
inoremap <C-j> <Down>|                        " while in insert mode, use ctrl + direction to move cursor
inoremap <C-k> <Up>|                          " while in insert mode, use ctrl + direction to move cursor
inoremap <C-l> <Right>|                       " while in insert mode, use ctrl + direction to move cursor
noremap <C-w>m :MaximizerToggle!<CR>|          " maximize current split or return to previous

" imap <c-a> <c-o>^|                            " Emacs-like beginning of line.
" imap <c-e> <c-o>$|                            " Emacs-like end of line.
"
inoremap <c-.> <Space>=><Space>|                  " shortcut for =>
inoremap <c-,> %{  }<Left><Left>|                  " shortcut for <%= %>
nnoremap <c-,> i%{  }<Left><Left>|                  " shortcut for <%= %>

inoremap <Leader>3 #{  }<Left><Left>|         " shortcut for #{}
nnoremap <Leader>3 i#{  }<Left><Left>|        " shortcut for #{}

inoremap <Leader>5 <%=  %><Left><Left><Left>|  " shortcut for #{}
nnoremap <Leader>5 i<%=  %><Left><Left><Left>| " shortcut for #{}

" <C-y>, |                                    " emmet command
nmap <C-W>u :call MergeTabs()<CR>|            " Merge a tab into a split in the previous window
noremap <space> <C-d>|                        " convenient scolling
noremap <C-space> <C-u>|

nnoremap <C-p> <Plug>MarkdownPreviewToggle


inoremap , ,<c-g>u|                           " undo break points
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u


" Insert a UUID with Ruby
nnoremap <Leader>uuid :read !ruby -e "require 'securerandom'; p SecureRandom.uuid"
nnoremap <Leader>date :read !ruby -e "require 'date'; p Date.today.to_s"




map      <Leader>. :TagbarToggle<CR>|                " Tagbar
nmap     <Leader>> :tabnext<CR>
nmap     <Leader>< :tabprevious<CR>
" nmap     <Leader>' :Marks<CR>|                       " FZF
nmap     <Leader>/ :Rg<Space>|                       " ripgrep, this command comes from FZF
nnoremap <leader>bd :<c-u>bp <bar> bd #<cr>|         " Close the current buffer and move to the previous one
nnoremap <leader>bo :<c-u>up <bar> %bd <bar> e#<cr>| " Close all buffers except current one
nmap     <Leader>c <C-^><CR>|                        " switch between current and last buffer
" nmap     <Leader>dr :! bundle exec standardrb --fix<cr><cr>|        " run standardrb


" Elixir-specific settings and mappings
autocmd FileType elixir nnoremap <buffer> <Leader>dr :!mix format<cr><cr>|

" Ruby-specific settings and mappings
autocmd FileType ruby nnoremap <buffer> <Leader>dr :!bundle exec standardrb --fix<cr><cr>|        " run standardrb
" autocmd FileType ruby nnoremap <buffer> <Leader>dc :!bin/ci<cr><cr>|        " run bin/ci

nnoremap <Leader>dc :!bin/precompile<cr><cr>|        " run bin/precompile


" map      <Leader>gs :Switch<cr>
" map      <Leader>gr :e config/routes.rb<cr>
nnoremap <Leader>gt :NERDTreeFind<CR>|                  " NERDTree settings
nnoremap <Leader>gh :SidewaysLeft<cr>|                  " sideways.vim
nnoremap <Leader>gl :SidewaysRight<cr>|                 " sideways.vim
map      <Leader>I gg=G``<cr>|                          " reindent the entire file
map      <Leader>rf :call RenameFile()<cr>|             " rename file
map      <Leader>rt :!ctags -R --exclude=node_modules --exclude=_build --exclude=.elixir_ls --exclude=deps --exclude=.beam --exclude=vendor --exclude=.git --exclude=log --exclude=tmp --exclude=coverage  *<CR><CR>


nnoremap <Leader>rr :%s//g<Left><Left>|                 " leader-rr <type what you want replaced>/<replacement>
nnoremap <Leader>rw :%s/<c-r><c-w>//g<left><left>|      " replace the word under cursor


nmap     <Leader>sa :TestSuite<CR>|                     " vim.test - spec suite
nmap     <Leader>sf :TestFile<CR>|                      " vim.test - spec file
nmap     <Leader>ss :TestNearest<CR>|                   " vim.test - spec nearest
nmap     <Leader>sl :TestLast<CR>|                      " vim.test - spec last
nmap     <Leader>sv :TestVisit<CR>|                     " vim.test - spec visit
nmap     <Leader>T :tabnew<CR>
nmap     <Leader>w :set wrap!<cr>|                      " easy wrap toggling
nmap     <Leader>W :set nowrap<cr>|                     " easy wrap toggling
nnoremap <silent> <Leader>1 :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>| " highlight the current line
nnoremap <silent> <Leader>2 :call clearmatches()<CR>|   " clear all the highlighted lines
nnoremap <Leader><space> :noh<cr>|                      " map spacebar to clear search highlight

"Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
nnoremap <Leader>** :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>


" Remap VIM 0 to first non-blank character
map 0 ^

" scratch note
nnoremap <leader>sn :tab drop /Users/jkahne/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Brain/scratch.md<CR><CR>
" vim note
nnoremap <Leader>vn :tab drop /Users/jkahne/Library/Mobile\ Documents/iCloud~md~obsidian/Documents/Brain/vimnotes.md<CR><CR>

inoremap <leader>, <Esc>|              " esc in insert mode
vnoremap <leader>, <Esc>|              " esc and in visual mode

highlight LineHighlight cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray
highlight cursorLine cterm=bold ctermbg=238 gui=bold guibg=#333333
" highlight cursorLine cterm=NONE ctermfg=yellow  guifg=yellow
" " highlight cursorLine cterm=NONE ctermfg=yellow  guifg=yellow ctermbg=darkgray guibg=darkgray
" " highlight cursorLine cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray

" hi Search  cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray
hi Search  cterm=NONE ctermbg=LightYellow ctermfg=darkgray guibg=lightyellow guifg=darkgray

highlight PmenuSel ctermfg=253 ctermbg=66 guifg=#FFFFFF guibg=#455354



let HiSet   = 'f<CR>'
let HiErase = 'f<BS>'
let HiClear = 'f<C-L>'
let HiFind  = 'f<Tab>'
let HiSetSL = 't<CR>'




" ***   Editorconfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


"
" ***   Rainbow parenthesis
let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\  'ctermfgs': ['red', 'lightblue', 'lightyellow', 'lightcyan', 'lightmagenta']
\}



" ***   ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfiles/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"


" ***   emmet-vim
" type emmet command `div.mb-5.flex.wrap>div.logo+div.contact` then hit
" ctrl-y,
" override with this
" let g:user_emmet_leader_key='<C-Z>'

" vim-visual-multi
let g:VM_leader = ','
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_exit_from_insert_mode=0
" nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
" nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
" nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)



let NERDTreeSortOrder=[]
let g:NERDTreeMinimalMenu=1
" nerdtree-git-plugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }




"  " ***   FZF
 " " [Buffers] Jump to the existing window if possible
 " let g:fzf_buffers_jump = 1
 " " [Tags] Command to generate tags file
 " " let g:fzf_tags_command = 'ctags -R'
let g:fzf_tags_command = 'ctags --extra=+f --exclude=node_modules/* --exclude=_build/* --exclude=.elixir_ls/* --exclude=*.beam --exclude=deps/* --exclude=.git/* --exclude=public/* --exclude=vendor/* --exclude=plugged/* --exclude=coverage/* -R *'

 " " make it appear in the pane instead of a bottom split
 " " let g:fzf_layout = { 'window': 'enew' }

 " command! -bang -nargs=* Rg
 "   \ call fzf#vim#grep(
 "   \   'rg --column --line-number --no-heading --color=always --colors "path:fg:190,220,255" --colors "line:fg:128,128,128" --smart-case '.shellescape(<q-args>), 1, { 'options': '--color hl:123,hl+:222' }, 0)

function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction

" Merge a tab into a split in the previous window
function! MergeTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  split
  execute "buffer " . bufferName
endfunction



function! RunStuff()
  " execute "wa"
  " if &ft == "python"
  "     execute "!clear && python %"
  " elseif &ft == "sh"
  "     execute "!clear && bash %"
  " elseif &ft == "c"
  "     execute "!clear && gcc % && ./a.out"
  " elseif &ft == "javascript"
  "     execute "!clear && node %"
  " else
      " execute "!clear && echo 'unable to run this filetype!'"
  " endif
endfunction






" CSV settings

" syntax match csvHeading /\%1l\%(\%("\zs\%([^"]\|""\)*\ze"\)\|\%(\zs[^,"]*\ze\)\)/
" highlight def link csvHeading Type

" Highlight a column in csv text.
" :Csv 1    " highlight first column
" :Csv 12   " highlight twelfth column
" :Csv 0    " switch off highlight
function! CSVH(colnr)
  if a:colnr > 1
    let n = a:colnr - 1
    execute 'match Keyword /^\([^,]*,\)\{'.n.'}\zs[^,]*/'
    execute 'normal! 0'.n.'f,'
  elseif a:colnr == 1
    match Keyword /^[^,]*/
    normal! 0
  else
    match
  endif
endfunction
command! -nargs=1 Csv :call CSVH(<args>)




"Highlight all instances of word under cursor, when idle.
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=50
    return 1
  endif
endfunction



" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
" Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
command! StripTrailingWhitespaces call <SID>StripTrailingWhitespaces()





" " highlight trailing whitespace
" " set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" set list
" set path+=**
"
" " Display extra whitespace
" set list listchars=tab:»·,trail:·
"
set scrolloff=4 sidescrolloff=10 " scroll the window when we get near the edge


" pick up external file modifications
" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime




" :W sudo saves the file
" (useful for handling the permission-denied error)
" like with etc/hosts ... or not.  figure this out later
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" Autocomplete    -   Coc, Emmet
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


let g:user_emmet_settings = {
\  'javascript' : {
\    'extends' : 'jsx',
\  },
\  'typescript' : {
\    'extends' : 'tsx',
\  },
\}



"
"
"
"
"
"
" " enable fenced code block syntax highlighting in your markdown
let g:markdown_fenced_languages = ['html', 'css', 'javascript', 'typescript', 'elixir', 'ruby', 'bash=sh']
" " Syntax highlight in fenced code block
" let g:markdown_minlines = 100
"
"
"
"
"
"
"
"
"
"
"
"
"
"
" let g:dbs = {
" \  'dev': 'postgres://jkahne@localhost:5432/krello_development'
" \ }
"
"
"
"
"
"
"
"
"
"
"
"
" " scroll the viewport faster
" " nnoremap <UP> <C-u>
" " nnoremap <DOWN> <C-d>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"
"
"



" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.ex :%s/\s\+$//e
autocmd BufWritePre *.exs :%s/\s\+$//e

au BufNewFile * set noeol

autocmd FileType gitcommit,markdown,text setlocal spell

autocmd BufRead,BufEnter *.astro set filetype=astro

 augroup myfiletypes
   " Clear old autocmds in group
   autocmd!

   " autocmd FileType json syntax match Comment +\/\/.\+$+
   autocmd FileType sql  setlocal ts=2 sts=2 sw=2 expandtab
   " autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
   " autocmd FileType css  setlocal ts=2 sts=2 sw=2 expandtab

   " autoindent with two spaces, always expand tabs
   autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
   autocmd FileType ruby,eruby,yaml setlocal path+=lib
   " autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
   " Make ?s part of words
   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=@
   au BufNewFile,BufRead *.rb set ai filetype=ruby


   autocmd FileType js,jsx setlocal ai sw=2 sts=2 et
   autocmd BufRead,BufNewFile *.ts setlocal ts=2 sts=2 sw=2 expandtab
   autocmd FileType ts setlocal ts=2 sts=2 sw=2 expandtab
   autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
   autocmd FileType css  setlocal ts=2 sts=2 sw=2 expandtab

   autocmd FileType javascript setlocal path+=lib
   " autocmd FileType javascript setlocal iskeyword+=?
   autocmd FileType javascript setlocal iskeyword+=@

   autocmd FileType typescript setlocal path+=lib
   " autocmd FileType typescript setlocal iskeyword+=?
   autocmd FileType typescript setlocal iskeyword+=@

   " autocmd BufNewFile,BufRead *.csv   set filetype=csv
   " autocmd BufNewFile,BufRead *.dat   set filetype=csv

  " autocmd FileType elixir setlocal formatprg=mix\ format\ -


   " set iskeyword+=-

   " " autocmd BufNewFile,BufRead *.json set filetype=javascript
   " autocmd BufNewFile,BufRead *.jsx  set filetype=javascript
   " autocmd BufNewFile,BufRead Gruntfile set filetype=javascript

 " " By default, vim thinks .md is Modula-2.
 " " autocmd BufRead,BufNewFile *.md set filetype=markdown spell
   " autocmd BufRead,BufNewFile *.md set filetype=markdown
   " autocmd BufNewFile,BufReadPost *.md set filetype=markdown
 " " Without this, vim breaks in the middle of words when wrapping
   " autocmd FileType markdown setlocal nolist wrap lbr
   "
   "

   "Rakefile and Gemfile are Ruby
   au BufRead,BufNewFile {Gemfile,Rakefile,config.ru} set ft=ruby
   " JSON is JS
   au BufNewFile,BufRead *.json set ai filetype=javascript

   au BufNewFile,BufRead *.ex set ai filetype=elixir
   au BufNewFile,BufRead *.exs set ai filetype=elixir
   " au BufRead /tmp/psql.edit.* set syntax=sql

   autocmd BufRead,BufNewFile *.erb setlocal ts=2 sts=2 sw=2 expandtab
   autocmd BufNewFile,BufRead *.erb set filetype=html
   autocmd BufNewFile,BufRead *.scss set filetype=css

  autocmd BufNewFile,BufRead *.heex set filetype=html


   " spelling by filetype
   autocmd FileType gitcommit setlocal textwidth=72
 augroup END


 " let g:switch_mapping = "-"
let b:switch_custom_definitions = [
      \   {
      \     '\(\k\+=\){\([[:keyword:].]\+\)}':      '\1{`${\2}`}',
      \     '\(\k\+=\){`${\([[:keyword:].]\+\)}`}': '\1{\2}',
      \   },
      \   {
      \     '\<\(\l\)\(\l\+\(\u\l\+\)\+\)\>': '\=toupper(submatch(1)) . submatch(2)',
      \     '\<\(\u\l\+\)\(\u\l\+\)\+\>': "\\=tolower(substitute(submatch(0), '\\(\\l\\)\\(\\u\\)', '\\1_\\2', 'g'))",
      \     '\<\(\l\+\)\(_\l\+\)\+\>': '\U\0',
      \     '\<\(\u\+\)\(_\u\+\)\+\>': "\\=tolower(substitute(submatch(0), '_', '-', 'g'))",
      \     '\<\(\l\+\)\(-\l\+\)\+\>': "\\=substitute(submatch(0), '-\\(\\l\\)', '\\u\\1', 'g')",
      \   }
      \ ]



if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif


"
"
"
"
"
"
"
" assume the /g flag on substitutions to replace all matches in a line
 set gdefault
"
set backupdir=~/.tmp
set directory=/tmp/| " set temporary directory (don't litter local dir with swp/tmp files)
"
"

"
" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow
"
"
"
"
"


"
"
"
" " handy macro expansion
iabbrev lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
" iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger; 0;
" abbrev hte the
iabbrev <expr> ddd strftime('%c')
" imap <silent> <C-D><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
" imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M %p")<CR>

" nnoremap <silent><C-Down>         :<C-u>call vm#commands#add_cursor_down(0, v:count1)<cr>
" nnoremap <silent><C-Up>           :<C-u>call vm#commands#add_cursor_up(0, v:count1)<cr>

" from https://github.com/stoeffel/.dotfiles/blob/master/vim/visual-at.vim
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

