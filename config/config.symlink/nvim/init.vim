" "if you want to use your vimrc, get rid of all the crap after line 5 and use these lines:
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

let mapleader = ','

" required for several plugins
set nocompatible

" needs to be set before polyglot is loaded
let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['autoindent']
"
call plug#begin('~/.config/nvim/plugged')

" Good defaults
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'editorconfig/editorconfig-vim'
" Plug 'tpope/vim-speeddating' " is this ever really used?

" File navigation
Plug 'preservim/nerdtree'
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'

" Quality of life / Vim Things
Plug 'junegunn/vim-easy-align'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'


" Tests
Plug 'tpope/vim-dispatch'
Plug 'janko/vim-test'

" Autocomplete
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-endwise'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Plug 'tpope/vim-markdown'
" " Plug 'neovim/nvim-lspconfig'
" " Plug 'kevinoid/vim-jsonc'
" " Plug 'pangloss/vim-javascript'
" " Plug 'maxmellon/vim-jsx-pretty'
" " Plug 'eslint/eslint'
" Plug 'majutsushi/tagbar'
" Plug 'dense-analysis/ale'
" Plug 'ludovicchabant/vim-gutentags'
"
" Plug 'vim-syntastic/syntastic'
"
" " Plug 'posva/vim-vue'
"
" Plug 'prettier/vim-prettier', {
"   \ 'do': 'yarn install',
"   \ 'for': [
"     \ 'javascript',
"     \ 'css',
"     \ 'scss',
"     \ 'json',
"     \ 'graphql',
"     \ 'markdown',
"     \ 'ruby',
"     \ 'html' ] }
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


" default color scheme
set t_Co=256
let g:solarized_termcolors=&t_Co
let g:solarized_termtrans=1
set background=dark
colors molokai
" colorscheme molokai

" use a big, pretty font
set guifont=Monaco:h13


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
set visualbell

"

" have the mouse enabled all the time
set mouse=a

set clipboard+=unnamed

" let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.svn|\.class$'
set nowrap
" set linebreak
" set nolist  " list disables linebreak
set lazyredraw
set foldmethod=indent
set foldlevel=99

" Ignores
set wildignore+=*tmp/*,*packs/*,*plugged/*,*vendor/*,*seed_scenarios/*,*node_modules/*,*.swp,*.zip,*.git/*
 " Ignore stuff that can't be opened
set wildignore+=tmp/**
 
" use 2 spaces for tabs
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab
set shiftround "when at 3 spaces and I hit >>, go to 4, not 5


" let g:netrw_liststyle = 3

" crm                                         " MixedCase vim-abolish settings
" crc                                         " camelCase vim-abolish settings
" crs                                         " snake_case vim-abolish settings
" cru                                         " UPPER_CASE vim-abolish settings
" cr-                                         " dash-case vim-abolish settings
" cr.                                         " dot.case vim-abolish settings
" cr<space>                                   " space case vim-abolish settings
" crt                                         " Title Case vim-abolish settings
" gS = splitjoin                              " to split a one-liner into multiple lines
" gJ = splitjoin                              " (with the cursor on the first line of a block) to join a block into a single-line statement.
map  g<space> <Plug>(easymotion-bd-w)|        " vim-easymotion setting
nmap g<space> <Plug>(easymotion-overwin-w)|   " vim-easymotion setting
nmap ga <Plug>(EasyAlign)|                    " EASY ALIGN
xmap ga <Plug>(EasyAlign)|                    " EASY ALIGN
nmap g* :CtrlSF <C-R><C-W><space>|            " CtrlSF
nmap g/ :CtrlSF<space>|                       " CtrlSF
nmap gl :CtrlSFToggle|                        " CtrlSF
nmap go o<esc>|                               " insert blank lines without going into insert mode
nmap gO O<esc>|                               " insert blank lines without going into insert mode
nnoremap gt :NERDTreeToggle<CR>|              " NERDTree settings
nmap <silent> gd <Plug>(coc-definition)|      " Coc -  GoTo code navigation.
nmap <silent> gy <Plug>(coc-type-definition)| " Coc -  GoTo code navigation.
nmap <silent> gi <Plug>(coc-implementation)|  " Coc -  GoTo code navigation.
nmap <silent> gr <Plug>(coc-references)|      " Coc -  GoTo code navigation.


inoremap jj <Esc>|                            " esc 
inoremap jk <Esc>|                            " esc
map j gj|                                     " sane defaults
map k gk|                                     " sane defaults
map K <Nop>|                                  " Disable K looking stuff up
xnoremap p pgvy|                              " 'p' to paste, 'gv' to re-select what was originally selected. 'y' to copy it again
nmap Q q|                                     " Avoid unintentional switches to Ex mode
nnoremap Y y$|                                " Yank from the cursor to the end of the line, to be consistent with C and D.

nnoremap <s-tab> za|                          " toggle folding

nmap <C-H> <C-W>h|                            " ctrl + direction to change split
nmap <C-J> <C-W>j|                            " ctrl + direction to change split
nmap <C-K> <C-W>k|                            " ctrl + direction to change split
nmap <C-L> <C-W>l|                            " ctrl + direction to change split
inoremap <C-h> <Left>|                        " while in insert mode, use ctrl + direction to move cursor
inoremap <C-j> <Down>|                        " while in insert mode, use ctrl + direction to move cursor
inoremap <C-k> <Up>|                          " while in insert mode, use ctrl + direction to move cursor
inoremap <C-l> <Right>|                       " while in insert mode, use ctrl + direction to move cursor
imap <c-a> <c-o>^|                            " Emacs-like beginning of line.
imap <c-e> <c-o>$|                            " Emacs-like end of line.
" <C-y>, |                                    " emmet command
nmap <C-W>u :call MergeTabs()<CR>|            " Merge a tab into a split in the previous window






nmap     <Leader>> :tabnext<CR>
nmap     <Leader>< :tabprevious<CR>
nmap     <Leader>' :Marks<CR>|                       " FZF
nmap     <Leader>/ :Rg<Space>|                       " FZF
nnoremap <Leader>* :noh<cr>|                         " map spacebar to clear search highlight
nmap     <leader>ac  <Plug>(coc-codeaction)|         " Remap keys for applying codeAction to the current buffer.
nmap     <Leader>b :Buffers<CR>|                     " FZF
nnoremap <Leader>cc :StripTrailingWhitespaces<cr>|   " clean up trailing whitespace
nmap     <Leader>gf :call OpenFactoryFile()<CR>|     " rails - open factory file
map      <Leader>ga :e app/controllers/application_controller.rb<cr>
map      <Leader>gs :e db/schema.rb<cr>
map      <Leader>gr :e config/routes.rb<cr>
nnoremap <Leader>gt :NERDTreeFind<CR>|               " NERDTree settings
nnoremap <Leader>ns :so ~/.config/nvim/init.vim<CR>| " source neovim init
nnoremap <Leader>ne :e ~/.config/nvim/init.vim<CR>|  " edit neovim init
nmap     <leader>qf  <Plug>(coc-fix-current)|        " Apply AutoFix to problem on the current line.
map      <Leader>rf :call RenameFile()<cr>|          " rename file
nmap     <leader>rn <Plug>(coc-rename)|              " Coc - Remap for rename current word
nmap     <Leader>sa :TestSuite<CR>|                  " vim.test - spec suite
nmap     <Leader>sf :TestFile<CR>|                   " vim.test - spec file
nmap     <Leader>sn :TestNearest<CR>|                " vim.test - spec nearest
nmap     <Leader>ss :TestLast<CR>|                   " vim.test - spec last
nmap     <Leader>sv :TestVisit<CR>|                  " vim.test - spec visit ??
nmap     <Leader>t :Files<CR>|                       " FZF 
nmap     <Leader>T :tabnew<CR>
map      <Leader>use :UltiSnipsEdit<CR>|             " edit snippets
nmap     <Leader>w :set wrap!<cr>|                   " easy wrap toggling
nmap     <Leader>W :set nowrap<cr>|                  " easy wrap toggling
nnoremap <silent> <Leader>1 :call matchadd('LineHighlight', '\%'.line('.').'l')<CR>| " highlight the current line
nnoremap <silent> <Leader>2 :call clearmatches()<CR>| " clear all the highlighted lines


"Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
nnoremap <leader><leader>* :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>

map <Leader><Leader>w :sp ~/OneDrive/c/codex/work-notes.md<cr>
map <Leader><Leader>s :sp ~/OneDrive/c/codex/scratch.md<cr>
map <Leader><Leader>v :sp ~/OneDrive/c/codex/vimnotes.md<cr>




highlight LineHighlight cterm=NONE ctermbg=yellow ctermfg=darkgray guibg=yellow guifg=darkgray


" Editorconfig settings
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Easymotion
let g:EasyMotion_smartcase = 1

" Rainbow parenthesis
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
\  'ctermfgs': ['blue', 'yellow', 'cyan', 'magenta']
\}


"vim.test mappings
let g:rspec_command = "!clear && bin/rspec {spec}"
" let g:rspec_command = "!clear && rake test {spec}"  
" let test#strategy = "dispatch"


" ultisnips
let g:UltiSnipsSnippetDirectories=[$HOME.'/.dotfiles/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

" emmet-vim
" type emmet command `div.mb-5.flex.wrap>div.logo+div.contact` then hit
" ctrl-y,
" override with this
" let g:user_emmet_leader_key='<C-Z>'


" CtrlSF
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


" vim-visual-multi
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)


"  " FZF
 " " [Buffers] Jump to the existing window if possible
 " let g:fzf_buffers_jump = 1
 " " [Tags] Command to generate tags file
 " " let g:fzf_tags_command = 'ctags -R'
 let g:fzf_tags_command = 'ctags --extra=+f --exclude=node_modules/* --exclude=.git/* --exclude=public/* --exclude=vendor/* --exclude=plugged/* -R *'

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



function! OpenFactoryFile()
  if filereadable("test/factories.rb")
    execute ":e test/factories.rb"
  else
    execute ":e spec/factories.rb"
  end
endfunction


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



" Autocomplete    -   Coc, Emmet
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
let g:coc_global_extensions = [
\  'coc-json',
\  'coc-tsserver',
\  'coc-solargraph',
\  'coc-elixir',
\  'coc-html' ,
\  'coc-css',
\  'coc-omnisharp',
\  'coc-styled-components',
\]
let g:user_emmet_settings = {
\  'javascript' : {
\    'extends' : 'jsx',
\  },
\}

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif




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
 "" define line highlight color
 " highlight LineHighlight guifg=#80a0ff 

"
"
" "" " Show all diagnostics
" "" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" "" " Manage exensions
" "" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" "" " Show commands
" "" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" "" " Find symbol of current document
" "" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" "" " Search workspace symbols
" "" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" "" " Do default action for next item.
" "" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" "" " Do default action for previous item.
" "" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" "" " Resume latest coc list
" "" nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
"
" "" " Use `[g` and `]g` to navigate diagnostics
" "" " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
" "" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" "" nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" "" " GoTo code navigation.
" "nmap <silent> gd <Plug>(coc-definition)
" "nmap <silent> gy <Plug>(coc-type-definition)
" "nmap <silent> gi <Plug>(coc-implementation)
" "nmap <silent> gr <Plug>(coc-references)
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
"
" "" Remap for rename current word
" "nmap <leader>rn <Plug>(coc-rename)
"
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
" let g:markdown_fenced_languages = ['html', 'css', 'javascript', 'typescript', 'elixir', 'ruby', 'bash=sh']
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
" " nnoremap <leader>pr :Prettier<cr>
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
   autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
   " Make ?s part of words
   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
   autocmd FileType ruby,eruby,yaml setlocal iskeyword+=@

   " STACK
   autocmd FileType javascript setlocal ai sw=4 sts=4 et
   autocmd FileType javascript setlocal path+=lib
   autocmd FileType javascript setlocal iskeyword+=?
   autocmd FileType javascript setlocal iskeyword+=@
   autocmd FileType typescript setlocal ai sw=4 sts=4 et
   autocmd FileType typescript setlocal path+=lib
   autocmd FileType typescript setlocal iskeyword+=?
   autocmd FileType typescript setlocal iskeyword+=@
   autocmd BufRead,BufNewFile *.ts setlocal ts=4 sts=4 sw=4 expandtab
   autocmd FileType ts setlocal ts=4 sts=4 sw=4 expandtab
   autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab
   autocmd FileType css  setlocal ts=4 sts=4 sw=4 expandtab


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

   "Rakefile, Vagrantfile, and Gemfile are Ruby
   au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,config.ru} set ft=ruby
   " JSON is JS
   au BufNewFile,BufRead *.json set ai filetype=javascript

   au BufNewFile,BufRead *.ex set ai filetype=elixir
   au BufNewFile,BufRead *.exs set ai filetype=elixir
   " au BufRead /tmp/psql.edit.* set syntax=sql

   autocmd BufRead,BufNewFile *.erb setlocal ts=2 sts=2 sw=2 expandtab
   autocmd BufNewFile,BufRead *.scss set filetype=css

   " spelling by filetype
   autocmd FileType gitcommit setlocal spel textwidth=72
 augroup END
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
" " leader-rr <type what you want replaced>/<replacement>
" nnoremap <Leader>rr :%s//g<Left><Left>
" " replace the word under cursor
" nnoremap <Leader>rw :%s/<c-r><c-w>//g<left><left>
"
"
"
" " buffer resizing mappings (shift + arrow key)
" nnoremap <S-Up> <c-w>+
" nnoremap <S-Down> <c-w>-
" nnoremap <S-Left> <c-w>>
" nnoremap <S-Right> <c-w><
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
" map <Leader>rt :!ctags -R --exclude=node_modules --exclude=vendor --exclude=.svn --exclude=.git --exclude=log --exclude=tmp  *<CR><CR>
" map <Leader>. :TagbarToggle<CR>
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
"
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

 " au FocusGained,BufEnter * :checktime
"
"
"
"
"
" " Make it more obvious which paren I'm on
" hi MatchParen cterm=none ctermbg=black ctermfg=yellow
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
" " set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
" set list
" set path+=**
"
" " Display extra whitespace
" set list listchars=tab:»·,trail:·
"
" set scrolloff=4 sidescrolloff=10 " scroll the window when we get near the edge
"
" " pick up external file modifications
" set autoread
" "Automatically reload changed files
" augroup reload
"   au!
"   au FocusGained * :checktime
" augroup end
" let g:signify_update_on_bufenter = 1
" let g:signify_update_on_focusgained = 1
"
" END sensible.vim
"
"
