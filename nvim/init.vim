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
" Plug 'tpope/vim-speeddating' " is this ever really used?
Plug 'mbbill/undotree'
Plug 'lukas-reineke/indent-blankline.nvim'


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
Plug 'dyng/ctrlsf.vim'
Plug 'preservim/tagbar'
" Plug 'ludovicchabant/vim-gutentags'

" Quality of life / Vim Things
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-tree/nvim-web-devicons'

" http://www.blogface.org/2015/03/ctrl-in-emacs-in-mac-terminal.html
" terminal settings => "Profiles" => "Keyboard"
" Look for and modify, or add actions for ctrl-up and ctrl-down:
" ctrl-up = \033[1;5A
" ctrl-down = \033[1;5B
Plug 'tommcdo/vim-exchange'

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
Plug 'AndrewRadev/switch.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'AckslD/nvim-neoclip.lua'

" tailwind something or other
Plug 'danielvolchek/tailiscope.nvim'

Plug 'barrett-ruth/telescope-http.nvim'

Plug 'pwntester/octo.nvim'
Plug 'ThePrimeagen/harpoon'


" Git
Plug 'tpope/vim-fugitive'
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
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
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

" For ultisnips users.
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'
" Plug 'honza/vim-snippets' " needed?



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
" noremap <M-h> :vertical resize +5<cr>
" noremap <M-j> :resize -5<cr>
" noremap <M-k> :resize +5<cr>
" noremap <M-l> :vertical resize -5<cr>
"
" imap <silent> <C-D><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
" imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M %p")<CR>



" let g:netrw_liststyle = 3

nnoremap <left> :bp<cr>
nnoremap <right> :bn<cr>
nnoremap <leader>j :bn<cr>
nnoremap <leader>k :bp<cr>


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
nnoremap git :G|                              " because
"  gcc                                        " (un)comment
nmap gcr :RainbowToggle<CR>|                  " toggle rainbow colors
nmap go o<esc>|                               " insert blank lines without going into insert mode
nmap gO O<esc>|                               " insert blank lines without going into insert mode
nnoremap gp `[v`]|                            " reselect pasted text
nnoremap gt :NERDTreeToggle<CR>|              " NERDTree settings
" nmap <silent> gd <Plug>(coc-definition)|      " Coc -  GoTo code navigation.
" nmap <silent> gy <Plug>(coc-type-definition)| " Coc -  GoTo code navigation.
" nmap <silent> gi <Plug>(coc-implementation)|  " Coc -  GoTo code navigation.
" nmap <silent> gr <Plug>(coc-references)|      " Coc -  GoTo code navigation.
" nnoremap <silent> <leader>co  :<C-u>CocList outline<CR>|   " Coc - outline
" nmap <silent> K :call <SID>show_documentation()<CR>| " Coc -  show documentation in preview window.

nnoremap gu :UndotreeToggle<CR>|               " UndoTree Toggle

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

nnoremap <leader>t <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>m <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap <leader>fo <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <leader>fc <cmd>lua require('telescope.builtin').commands()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>ef <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>gf <cmd>lua require('telescope.builtin').git_files({show_untracked=true})<cr>
nnoremap <leader>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader>gp <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>gc <cmd>lua require('telescope.builtin').git_commits()<cr>
" nnoremap <leader>cs <cmd>lua require('telescope.builtin').colorscheme()<cr>

nnoremap g* <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap g/ <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>qh <cmd>lua require('telescope.builtin').quickfixhistory()<cr>



" nnoremap <leader>fh <cmd>lua require('telescope.builtin').highlights()<cr>

" nmap g* :CtrlSF <C-R><C-W><space>|            " CtrlSF
" nmap g/ :CtrlSF<space>|                       " CtrlSF
" nmap gl :CtrlSFToggle|                        " CtrlSF
" nmap g* :CtrlSF -w --ignore '/tmp' --ignore '*/vendor/*' --ignore '/public' --ignore '*/node_modules/'  --ignore '*/seed_scenarios/*' <C-R><C-W><space>
" nmap g* :CtrlSF -w --ignore '/tmp' --ignore 'vendor/*' --ignore '/public' --ignore 'node_modules/' <C-R><C-W><space>


nnoremap <Leader>p    <cmd>lua require('telescope').extensions.neoclip.default()<CR>

nnoremap <Leader>ma <cmd>lua require("harpoon.mark").toggle_file()<CR>
nnoremap <Leader>em :Telescope harpoon marks<CR>
nnoremap <Leader>ml :Telescope harpoon marks<CR>
nnoremap <up>       <cmd>lua require("harpoon.ui").nav_next()<CR>|                  " navigates to next mark
nnoremap <down>     <cmd>lua require("harpoon.ui").nav_prev()<CR>|                  " navigates to previous mark



" inoremap jj <Esc>|                            " esc
" inoremap kj <Esc>|                            " esc
" vnoremap kj <Esc>|                            " esc
" inoremap jk <Esc>|                            " esc
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
" imap <c-l> <Space>=><Space>|                  " shortcut for =>
" <C-y>, |                                    " emmet command
nmap <C-W>u :call MergeTabs()<CR>|            " Merge a tab into a split in the previous window
" inoremap <silent><expr> <c-space> coc#refresh()| " Coc -  trigger completion.
noremap <space> <C-d>|                        " convenient scolling
noremap <C-space> <C-u>|


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
" nmap     <Leader>ac  <Plug>(coc-codeaction)|         " Remap keys for applying codeAction to the current buffer.
" nmap     <Leader>b :Buffers<CR>|                     " FZF
nnoremap <leader>bd :<c-u>bp <bar> bd #<cr>|         " Close the current buffer and move to the previous one
nnoremap <leader>bo :<c-u>up <bar> %bd <bar> e#<cr>| " Close all buffers except current one
nmap     <Leader>c <C-^><CR>|                        " switch between current and last buffer
nmap     <Leader>dr :! bundle exec standardrb<cr><cr>|        " run rubocop
map      <Leader>gs :Switch<cr>
" map      <Leader>gr :e config/routes.rb<cr>
nnoremap <Leader>gt :NERDTreeFind<CR>|                  " NERDTree settings
nnoremap <Leader>gh :SidewaysLeft<cr>|                  " sideways.vim
nnoremap <Leader>gl :SidewaysRight<cr>|                 " sideways.vim
map      <Leader>I gg=G``<cr>|                          " reindent the entire file
" nmap     <Leader>l :Lines<CR>|                     " FZF
nnoremap <Leader>ns :so ~/.config/nvim/init.vim<CR>|    " source neovim init
nnoremap <Leader>ne :e ~/.config/nvim/init.vim<CR>|     " edit neovim init
" nmap     <Leader>qf <Plug>(coc-fix-current)|            " Coc -  Apply AutoFix to problem on the current line.
map      <Leader>rf :call RenameFile()<cr>|             " rename file
" nmap     <Leader>rn <Plug>(coc-rename)|                 " Coc - Remap for rename current word
map      <Leader>rt :!ctags -R --exclude=node_modules --exclude=_build --exclude=.elixir_ls --exclude=deps --exclude=.beam --exclude=vendor --exclude=.git --exclude=log --exclude=tmp --exclude=coverage  *<CR><CR>


nnoremap <Leader>rr :%s//g<Left><Left>|                 " leader-rr <type what you want replaced>/<replacement>
nnoremap <Leader>rw :%s/<c-r><c-w>//g<left><left>|      " replace the word under cursor


nmap     <Leader>sa :TestSuite<CR>|                     " vim.test - spec suite
nmap     <Leader>sf :TestFile<CR>|                      " vim.test - spec file
nmap     <Leader>ss :TestNearest<CR>|                   " vim.test - spec nearest
nmap     <Leader>sl :TestLast<CR>|                      " vim.test - spec last
nmap     <Leader>sv :TestVisit<CR>|                     " vim.test - spec visit
nnoremap <Leader>sw :StripTrailingWhitespaces<cr>|      " clean up trailing whitespace
" nmap     <Leader>t :Files<CR>|                          " FZF
nmap     <Leader>T :tabnew<CR>
" nnoremap <Leader>v :<C-u>CocList -A --normal yank<cr>|  " Coc -  show yanked commands
nmap     <Leader>w :set wrap!<cr>|                      " easy wrap toggling
nmap     <Leader>W :set nowrap<cr>|                     " easy wrap toggling
nnoremap <silent> <Leader>1 :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>| " highlight the current line
nnoremap <silent> <Leader>2 :call clearmatches()<CR>|   " clear all the highlighted lines
nnoremap <Leader><space> :noh<cr>|                      " map spacebar to clear search highlight

"Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
nnoremap <Leader>** :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

" map <Leader>ow :sp ~/Dropbox/c/codex/work-notes.md<cr>
" map <Leader>os :sp ~/Dropbox/c/codex/scratch.md<cr>
" map <Leader>ov :sp ~/Dropbox/c/codex/vimnotes.md<cr>

" Remap VIM 0 to first non-blank character
map 0 ^

" Quickly open a buffer for scribble
" nnoremap <leader>q :e ~/Dropbox/c/codex/scratch.md<cr>
" nnoremap <Leader>v :e ~/Dropbox/c/codex/vimnotes.md<cr>

nnoremap <leader>ga :e /Users/jkahne/Library/Mobile Documents/iCloud~md~obsidian/Documents/Brain/scratch.md<CR>
nnoremap <Leader>gv :e /Users/jkahne/Library/Mobile Documents/iCloud~md~obsidian/Documents/Brain/vimnotes.md<CR>

inoremap <leader>, <Esc>|              " esc in insert mode
vnoremap <leader>, <Esc>|              " esc and in visual mode

highlight LineHighlight cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray
highlight cursorLine cterm=bold ctermbg=238 gui=bold guibg=#333333
" highlight cursorLine cterm=NONE ctermfg=yellow  guifg=yellow
" " highlight cursorLine cterm=NONE ctermfg=yellow  guifg=yellow ctermbg=darkgray guibg=darkgray
" " highlight cursorLine cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray

" hi Search  cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray
hi Search  cterm=NONE ctermbg=LightYellow ctermfg=darkgray guibg=lightyellow guifg=darkgray

" highlight CocMenuSel ctermfg=253 ctermbg=66 guifg=#FFFFFF guibg=#455354
highlight PmenuSel ctermfg=253 ctermbg=66 guifg=#FFFFFF guibg=#455354
" hi! CocWarningSign guifg=#d1cd66
" hi! CocInfoSign guibg=#353b45


" ***   Editorconfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" vim-airline
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='deus'


" set guicursor=
" " don't blink the cursor
" set guicursor=a:blinkon0

" ***   Rainbow parenthesis
let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\  'ctermfgs': ['red', 'lightblue', 'lightyellow', 'lightcyan', 'lightmagenta']
\}

" ***  vim.test mappings
" " let g:rspec_command = "!clear && bin/rspec {spec}"
let g:rspec_command = "!clear && rake test {spec}"
" " let test#strategy = "dispatch"
"
" let g:rspec_command = "!clear && docker-compose exec rvshare-api bundle exec rspec {spec}"
" let g:rspec_command = "!clear && docker-compose exec rvshare-api bin/rspec {spec}"


" elixir
" let g:rspec_command = "!clear && mix test {spec}"
" let g:rspec_command = "!clear && rake test {spec}"
" let test#strategy = "dispatch"


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


" ***   CtrlSF
let g:ctrlsf_search_mode = 'async'
" let g:ctrlsf_case_sensitive = 'no'
" " let g:ctrlsf_position = 'bottom'
let g:ctrlsf_auto_close = {
	\ "normal" : 1,
	\ "compact": 0
	\}
let g:ctrlsf_ackprg = 'rg' "'/usr/local/bin/ag'
let g:ctrlsf_default_view_mode = 'compact'
let g:ctrlsf_auto_focus = {
	\ "at" : "start"
	\ }
" I don't expect to acutally use this.
" I want ctrl-j/k (the default) to move cursor between panes
" I want n/N to help me search within the search results when I do a / and find next
let g:ctrlsf_mapping = {
	\ "next": "d",
	\ "prev": "u"
	\ }

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


" " ***  vim-visual-multi
" nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
" nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
" nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)


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



command! Vimrc e ~/Library/Mobile Documents/com~apple~CloudDocs/dotfiles/nvim/init.vim
command! Aliases e ~/Library/Mobile Documents/com~apple~CloudDocs/dotfiles/aliases.zsh



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
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" Autocomplete    -   Coc, Emmet
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
" let g:coc_global_extensions = [
" \  'coc-tsserver',
" \  'coc-elixir',
" \  'coc-solargraph',
" \  'coc-html' ,
" \  'coc-svg',
" \  'coc-emmet' ,
" \  'coc-css',
" \  'coc-sql',
" \  'coc-snippets',
" \  'coc-styled-components',
" \  'coc-prettier',
" \  'coc-eslint',
" \]

" CocInstall coc-tailwindcss
" \  'coc-json',
" \  'coc-yank',
" \  'coc-prettier',
" \  'coc-eslint',


let g:user_emmet_settings = {
\  'javascript' : {
\    'extends' : 'jsx',
\  },
\  'typescript' : {
\    'extends' : 'tsx',
\  },
\}

" command! -nargs=0 Prettier :CocCommand prettier.formatFile

" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif

" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif


" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   elseif (coc#rpc#ready())
"     call CocActionAsync('doHover')
"   else
"     execute '!' . &keywordprg . " " . expand('<cword>')
"   endif
" endfunction


"" #COC {{{
"" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
"let g:coc_global_extensions = ['coc-json',
"\ 'coc-git',
"\ 'coc-solargraph',
"\ 'coc-elixir',
"\ 'coc-html' ,
"\ 'coc-css',
"\ 'coc-tsserver',
"\ 'coc-omnisharp'
"\]

"" \ 'coc-emmet',
"" \ 'coc-fzf-preview',

"" Use tab for trigger completion with characters ahead and navigate.
"" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"" other plugin before putting this into your config.
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
"  let col = col('.') - 1
"  return !col || getline('.')[col - 1]  =~# '\s'
"endfunction


"" Close the documentation window when completion is done
"autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif



"
"
"
" "" gh - get hint on whatever's under the cursor
" "" nnoremap <silent> K :call <SID>show_documentation()<CR>
" "" nnoremap <silent> gh :call <SID>show_documentation()<CR>
" ""
" "" function! s:show_documentation()
" ""   if &filetype == 'vim'
" ""     execute 'h '.expand('<cword>')
" ""   else
" ""     call CocAction('doHover')
" ""   endif
" "" endfunction
"
"
" "" Highlight symbol under cursor on CursorHold
" "autocmd CursorHold * silent call CocActionAsync('highlight')
"
" "" }}} Coc.vim
"
"
"
"
"
"
" "Ale
" "let b:ale_fixers = ['prettier', 'eslint']
" "let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
"
" let g:ale_fixers = {
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
" \   'ruby': ['standardrb']
" \}
" " \   'javascript': ['prettier', 'eslint'],
" " \   'css': ['prettier'],
" let g:ale_linters = {
" \  'ruby':       ['standardrb'],
" \  'cs':       ['OmniSharp']
" \}
" " \  'javascript': ['prettier'],
"
" let g:ale_linters_explicit = 1
" let g:ale_fix_on_save = 1
"
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
"
" " let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
" " let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}
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
" " #GUTENTAGS {{{
" " let g:gutentags_file_list_command = "rg --files --follow --ignore-file '/home/ayo/.vimignore'"
" let g:gutentags_file_list_command = "rg --files --follow"
" "}}}
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
" " shortcuts for frequenly used files
"
"
" " copied over
" " map <Leader>cu :Tabularize /\|<CR>
" map <Leader>fix :cnoremap % %<CR>
"
" " map <Leader>p :set paste<CR><esc>"*]p:set nopaste<cr>
" nnoremap <leader>p :r!pbpaste<cr>
"
" nnoremap <leader>pr :Prettier<cr>
"
"
"
"
"
"
"
" " Save state of open Windows and Buffers
" nnoremap <leader>vm :mksession<CR>
"
"
"
"
"
"
"
"
"
" " clean up multiple blank lines
" nnoremap <Leader>cv :CompressBlankLines<cr>
"
"
" " scroll the viewport faster
" " nnoremap <UP> <C-u>
" " nnoremap <DOWN> <C-d>
" nnoremap <C-e> 3<C-e>
" nnoremap <C-y> 3<C-y>
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
   autocmd BufNewFile,BufRead *.scss set filetype=css

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
" " " Wrap the quickfix window
" " autocmd FileType qf setlocal wrap linebreak
"
" " Don't automatically continue comments after newline
" autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
"
"
" imap cll console.log()<Esc>==f(a
"
"
" let loaded_matchparen = 0
"
"
"
"
" " shortcut for =>
" " TODO this is overloaded
" inoremap <C-l> <Space>=><Space>
"
"
"
"
"
"
"
" imap <silent> <C-D><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
" imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M %p")<CR>
"
"
"
" " reindent the entire file
" map <Leader>I gg=G``<cr>
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
 " " Tagbar
 " let g:tagbar_autofocus = 1
 " let g:tagbar_type_ruby = {
 "     \ 'kinds' : [
 "         \ 'm:modules',
 "         \ 'c:classes',
 "         \ 'd:describes',
 "         \ 'C:contexts',
 "         \ 'f:methods',
 "         \ 'F:singleton methods'
 "     \ ]
 " \ }

 " let g:tagbar_type_elixir = {
 "     \ 'ctagstype' : 'elixir',
 "     \ 'kinds' : [
 "         \ 'p:protocols',
 "         \ 'm:modules',
 "         \ 'e:exceptions',
 "         \ 'y:types',
 "         \ 'd:delegates',
 "         \ 'f:functions',
 "         \ 'c:callbacks',
 "         \ 'a:macros',
 "         \ 't:tests',
 "         \ 'i:implementations',
 "         \ 'o:operators',
 "         \ 'r:records'
 "     \ ],
 "     \ 'sro' : '.',
 "     \ 'kind2scope' : {
 "         \ 'p' : 'protocol',
 "         \ 'm' : 'module'
 "     \ },
 "     \ 'scope2kind' : {
 "         \ 'protocol' : 'p',
 "         \ 'module' : 'm'
 "     \ },
 "     \ 'sort' : 0
 " \ }

" let g:tagbar_type_javascript = {
 "      \ 'ctagstype': 'javascript',
 "      \ 'kinds': [
 "        \ 'A:arrays',
 "        \ 'P:properties',
 "        \ 'T:tags',
 "        \ 'O:objects',
 "        \ 'G:generator functions',
 "        \ 'F:functions',
 "        \ 'C:constructors/classes',
 "        \ 'M:methods',
 "        \ 'V:variables',
 "        \ 'I:imports',
 "        \ 'E:exports',
 "        \ 'S:styled components'
 "    \ ]}

" let g:tagbar_type_typescript = {
 "  \ 'ctagstype': 'typescript',
 "  \ 'kinds': [
 "    \ 'c:classes',
 "    \ 'n:modules',
 "    \ 'f:functions',
 "    \ 'v:variables',
 "    \ 'v:varlambdas',
 "    \ 'm:members',
 "    \ 'i:interfaces',
 "    \ 'e:enums',
 "  \ ]
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
" " don't blink the cursor
" set guicursor=a:blinkon0
"
" " Use a block instead of | line when in insert mode
" set guicursor=n-v-c-i:block
"
" " show current line info (current/total)
" set ruler rulerformat=%=%l/%L
"
" " show status line
" set laststatus=2
"
" " When lines are cropped at the screen bottom, show as much as possible
" set display=lastline
"
"
"
"
" " use tab-complete to see a list of possiblities when entering commands
" set wildmode=list:longest,full
"
"
" " remember last position in file
" au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
"

"
" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow
"
"
"
"
" autocmd BufWritePost * if &diff == 1 | diffupdate | endif
"
"
"
" " Compresses multiple blank lines into just one
" function! CompressBlankLines()
"     execute ":%!cat -s"
" endfunction
"
"
"
"
"
"
"
" " handy macro expansion
" iabbrev Lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
" " iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger; 0;
" abbrev hte the
"
"
"
" " Marked
" let g:marked_filetypes = ["markdown", "mkd", "README", "vimwiki"]
" nmap gm :MarkedOpen<CR>
"
"
" autocmd InsertEnter * set cul
" autocmd InsertLeave * set nocul
"
"
" " vim-syntastic/syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
"
" let g:syntastic_enable_signs=1
" let g:syntastic_quiet_messages = {'level': 'warnings'}
"
"
" " augment status line
" function! ETry(function, ...)
"   if exists('*'.a:function)
"     return call(a:function, a:000)
"   else
"     return ''
"   endif
" endfunction
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%{ETry('CapsLockStatusline')}%y%{ETry('rails#statusline')}%{ETry('fugitive#statusline')}%#ErrorMsg#%*%=%-16(\ %l,%c-%v\ %)%P
"
"
"
"
"
" "Autocomplete
" " let g:user_emmet_settings = {
" " \  'javascript' : {
" " \    'extends' : 'jsx',
" " \  },
" " \}
"
"
"
"
"--------------------------------------------------
" " sensible.vim should take care of these
" " make backspace work in insert mode
" set backspace=indent,eol,start
"
" " show the first match as search strings are typed
" set incsearch
"
" set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:✗,space:·
" nnoremap <Leader>sl :set list!<CR>
"
" " highlight trailing whitespace
" set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" set list
" set path+=**
"
" " Display extra whitespace
" set list listchars=tab:»·,trail:·
"
" set scrolloff=4 sidescrolloff=10 " scroll the window when we get near the edge
"
"
" END sensible.vim
"
"



" nnoremap <silent><C-Down>         :<C-u>call vm#commands#add_cursor_down(0, v:count1)<cr>
" nnoremap <silent><C-Up>           :<C-u>call vm#commands#add_cursor_up(0, v:count1)<cr>
