" "if you want to use your vimrc, get rid of all the crap after line 5 and use these lines:
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

let mapleader = ','

" needs to be set before polyglot is loaded
let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['autoindent']

call plug#begin('~/.vim/plugged')
Plug 'editorconfig/editorconfig-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-markdown'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-vinegar'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-signify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'kevinoid/vim-jsonc'
" Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'eslint/eslint'
Plug 'majutsushi/tagbar'
Plug 'dense-analysis/ale'
Plug 'janko/vim-test'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'ludovicchabant/vim-gutentags'


Plug 'AndrewRadev/splitjoin.vim'
" Plug 'posva/vim-vue'

Plug 'tpope/vim-abolish'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': [
    \ 'javascript',
    \ 'css',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'ruby',
    \ 'html' ] }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'https://github.com/itspriddle/vim-marked.git'
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'sheerun/vim-polyglot'
" Plug 'elixir-editors/vim-elixir' "looking for new maintainers.  if end up needing this, look for alts

" " Plug 'vim-ruby/vim-ruby'
" " let g:ruby_indent_assignment_style = 'variable'




call plug#end()



" vim-visual-multi
nmap   <C-LeftMouse>         <Plug>(VM-Mouse-Cursor)
nmap   <C-RightMouse>        <Plug>(VM-Mouse-Word)
nmap   <M-C-RightMouse>      <Plug>(VM-Mouse-Column)


" vim-abolish
"Want to turn fooBar into foo_bar? Press
"crs (coerce to snake_case).
" MixedCase (crm),
" camelCase (crc),
" snake_case (crs),
" UPPER_CASE (cru),
" MixedCase (crm),
" dash-case (cr-),
" dot.case (cr.),
" space case (cr<space>),
" and Title Case (crt) are all just 3 keystrokes away


"Ale
"let b:ale_fixers = ['prettier', 'eslint']
"let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['standardrb']
\}
" \   'javascript': ['prettier', 'eslint'],
" \   'css': ['prettier'],
let g:ale_linters = {
\  'ruby':       ['standardrb'],
\  'cs':       ['OmniSharp']
\}
" \  'javascript': ['prettier'],

let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" let g:ale_fixers = {'vue': ['remove_trailing_lines', 'trim_whitespace']}
" let g:ale_linter_aliases = {'vue': ['javascript', 'html', 'scss']}


" enable fenced code block syntax highlighting in your markdown
let g:markdown_fenced_languages = ['html', 'css', 'javascript', 'typescript', 'elixir', 'ruby', 'bash=sh']
" Syntax highlight in fenced code block
let g:markdown_minlines = 100



"vim-fugitive
" nmap <silent> <leader>gs :Gstatus<cr>




" #COC {{{
" https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
let g:coc_global_extensions = ['coc-json',
\ 'coc-git',
\ 'coc-solargraph',
\ 'coc-elixir',
\ 'coc-html' ,
\ 'coc-css',
\ 'coc-tsserver',
\ 'coc-omnisharp'
\]

" \ 'coc-emmet',
" \ 'coc-fzf-preview',

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Close the documentation window when completion is done
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif



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

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" " GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" gh - get hint on whatever's under the cursor
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" nnoremap <silent> gh :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if &filetype == 'vim'
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction


" }}}






" #GUTENTAGS {{{
" let g:gutentags_file_list_command = "rg --files --follow --ignore-file '/home/ayo/.vimignore'"
let g:gutentags_file_list_command = "rg --files --follow"
"}}}


set updatetime=300

set history=10000

set dictionary=/usr/share/dict/words
set spellfile=~/.config/nvim/spell/custom-dictionary.utf-8.add


let g:netrw_liststyle = 3

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)


"vim-easymotion
" map  <Leader>gl <Plug>(easymotion-bd-f)
" nmap <Leader>gl <Plug>(easymotion-overwin-f)
" map <Leader>L <Plug>(easymotion-bd-jk)
" nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader>gg <Plug>(easymotion-bd-w)
nmap <Leader>gg <Plug>(easymotion-overwin-w)
let g:EasyMotion_smartcase = 1


"sneak
let g:sneak#label = 1




let g:dbs = {
\  'dev': 'postgres://jkahne@localhost:5432/krello_development'
\ }


" editorconfig requirement to work well with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']



" shortcuts for frequenly used files
nmap <Leader>gs :e db/schema.rb<cr>
nmap <Leader>gr :e config/routes.rb<cr>
nmap <Leader>gf :call OpenFactoryFile()<CR>



" copied over
map <Leader>ac :sp app/controllers/application_controller.rb<cr>
" vmap <Leader>bed "td?describe<cr>obed<tab><esc>"tpkdd/end<cr>o<esc>:nohl<cr>
" map <Leader>cu :Tabularize /\|<CR>
map <Leader>fix :cnoremap % %<CR>
" map <Leader>sn :UltiSnipsEdit<CR>

" map <Leader>p :set paste<CR><esc>"*]p:set nopaste<cr>
nnoremap <leader>p :r!pbpaste<cr>

" nnoremap <leader>pr :Prettier<cr>

" map <Leader>dr :e ~/Dropbox<cr>
" map <Leader>cn :e ~/Dropbox/n/notes/coding-notes.md<cr>
" map <Leader>dj :e ~/Dropbox/n/notes/debugging-journal.md<cr>
" map <Leader>nn :sp ~/Dropbox/n/notes/programming-notes.md<cr>
map <Leader>ns :sp ~/Dropbox/n/notes/scratch.md<cr>
map <Leader>nv :sp ~/Dropbox/n/notes/vimnotes.md<cr>


" easy wrap toggling
nmap <Leader>w :set wrap!<cr>
nmap <Leader>W :set nowrap<cr>



" edit and source .vimrc
nnoremap <Leader>ve :e ~/.config/nvim/init.vim<CR>
nnoremap <Leader>vs :so ~/.config/nvim/init.vim<CR>

" Save state of open Windows and Buffers
nnoremap <leader>vm :mksession<CR>



"NERDTree
nnoremap gt :NERDTreeToggle<CR>
nnoremap <Leader>gt :NERDTreeFind<CR>
" nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>


" EASY ALIGN
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)


" map spacebar to clear search highlight
nnoremap <Leader><space> :noh<cr>


" clean up multiple blank lines
nnoremap <Leader>cv :CompressBlankLines<cr>
" clean up trailing whitespace
nnoremap <Leader>cc :StripTrailingWhitespaces<cr>


" scroll the viewport faster
" nnoremap <UP> <C-u>
" nnoremap <DOWN> <C-d>
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>


" use 2 spaces for tabs
set expandtab tabstop=2 softtabstop=2 shiftwidth=2
set smarttab

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!

  autocmd FileType json syntax match Comment +\/\/.\+$+
  autocmd FileType sql  setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css  setlocal ts=2 sts=2 sw=2 expandtab

  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  " autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=@

  autocmd FileType typescript setlocal ai sw=4 sts=4 et
  autocmd FileType typescript setlocal path+=lib
  autocmd FileType typescript setlocal iskeyword+=?
  autocmd FileType typescript setlocal iskeyword+=@

  autocmd BufNewFile,BufRead *.json set filetype=javascript
  autocmd BufNewFile,BufRead *.jsx  set filetype=javascript
  autocmd BufNewFile,BufRead Gruntfile set filetype=javascript
  " autocmd BufRead,BufNewFile *.md set filetype=markdown spell
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile *.erb setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufNewFile,BufRead *.scss set filetype=css

  " spelling by filetype
  autocmd FileType gitcommit setlocal spel
augroup END

" By default, vim thinks .md is Modula-2.
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Without this, vim breaks in the middle of words when wrapping
autocmd FileType markdown setlocal nolist wrap lbr

" " Wrap the quickfix window
" autocmd FileType qf setlocal wrap linebreak

" Don't automatically continue comments after newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" Don't wait so long for the next keypress (particularly in ambigious Leader situations.
set timeoutlen=500

nmap <Leader>> :tabnext<CR>
nmap <Leader>< :tabprevious<CR>
nmap <Leader>T :tabnew<CR>

inoremap jj <Esc>
inoremap jk <Esc>

map j gj
map k gk

imap cll console.log()<Esc>==f(a


let loaded_matchparen = 0

" insert blank lines without going into insert mode
nmap go o<esc>
nmap gO O<esc>

" mapping the jumping between splits. Hold control while using vim nav.
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l


set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:✗,space:·
nnoremap <Leader>sl :set list!<CR>

" shortcut for =>
inoremap <C-l> <Space>=><Space>

nnoremap <s-tab> za

" Avoid unintentional switches to Ex mode
nmap Q q

" leader-rr <type what you want replaced>/<replacement>
nnoremap <Leader>rr :%s//g<Left><Left>
" replace the word under cursor
nnoremap <Leader>rw :%s/<c-r><c-w>//g<left><left>

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" select the lines which were just pasted
nnoremap vv `[V`]

"  'p' to paste, 'gv' to re-select what was originally selected. 'y' to copy it again
xnoremap p pgvy

" buffer resizing mappings (shift + arrow key)
nnoremap <S-Up> <c-w>+
nnoremap <S-Down> <c-w>-
nnoremap <S-Left> <c-w>>
nnoremap <S-Right> <c-w><


imap <silent> <C-D><C-D> <C-R>=strftime("%Y-%m-%d")<CR>
imap <silent> <C-T><C-T> <C-R>=strftime("%l:%M %p")<CR>


" while in insert mode, use ctrl + direction to move cursor
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" reindent the entire file
map <Leader>I gg=G``<cr>




"vim.test mappings
" spec [file, spec, repeat, all]
" s[fsra]
" default binding:
" nmap <silent> t<C-n> :TestNearest<CR>
" nmap <silent> t<C-f> :TestFile<CR>
" nmap <silent> t<C-s> :TestSuite<CR>
" nmap <silent> t<C-l> :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>
" let test#strategy = "dispatch"
nmap <Leader>sn :TestNearest<CR>
nmap <Leader>sf :TestFile<CR>
nmap <Leader>sa :TestSuite<CR>
nmap <Leader>ss :TestLast<CR>
nmap <Leader>sv :TestVisit<CR>
" let g:rspec_command = "!clear && bin/rspec {spec}"
let g:rspec_command = "!clear && rake test {spec}"






" Tagbar
let g:tagbar_autofocus = 1
map <Leader>rt :!ctags -R --exclude=node_modules --exclude=vendor --exclude=.svn --exclude=.git --exclude=log --exclude=tmp  *<CR><CR>
map <Leader>. :TagbarToggle<CR>
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
\ }

let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'p:protocols',
        \ 'm:modules',
        \ 'e:exceptions',
        \ 'y:types',
        \ 'd:delegates',
        \ 'f:functions',
        \ 'c:callbacks',
        \ 'a:macros',
        \ 't:tests',
        \ 'i:implementations',
        \ 'o:operators',
        \ 'r:records'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 'p' : 'protocol',
        \ 'm' : 'module'
    \ },
    \ 'scope2kind' : {
        \ 'protocol' : 'p',
        \ 'module' : 'm'
    \ },
    \ 'sort' : 0
\ }





"SURROUND
" # to surround with ruby string interpolation
let g:surround_35 = "#{\r}"
" - to surround with no-output erb tag
let g:surround_45 = "<% \r %>"
" = to surround with output erb tag
let g:surround_61 = "<%= \r %>"






" FZF
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1
" [Tags] Command to generate tags file
" let g:fzf_tags_command = 'ctags -R'
let g:fzf_tags_command = 'ctags --extra=+f --exclude=node_modules/* --exclude=.git/* --exclude=vendor/* -R *'

" make it appear in the pane instead of a bottom split
" let g:fzf_layout = { 'window': 'enew' }

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --colors "path:fg:190,220,255" --colors "line:fg:128,128,128" --smart-case '.shellescape(<q-args>), 1, { 'options': '--color hl:123,hl+:222' }, 0)


" https://medium.com/@jesseleite/its-dangerous-to-vim-alone-take-fzf-283bcff74d21
nmap <Leader>t :Files<CR>
nmap <silent> <space>l :BLines<CR>
nmap <silent> <space>L :Lines<CR>
" nmap <Leader>gf :GFiles<CR>
nmap  <silent> <space>b :Buffers<CR>
nmap  <silent> <space>h :History<CR>
nmap  <silent> <space>t :Tags<CR>
nmap  <silent> <space>T :BTags<CR>
" nmap <Leader>m :Maps<CR>
nmap <Leader>' :Marks<CR>
" nmap <Leader>/ :Ag<Space>
nmap <Leader>/ :Rg<Space>

" lots of good stuff here:  https://medium.com/better-programming/boost-your-command-line-productivity-with-fuzzy-finder-985aa162ba5d

" Search syntax
" Besides the already discussed fuzzy search, fzf supports special tokens that change the way search terms are processed:
"
" 'wild: Exact match, return items that include wild.
" ^music: Prefix-exact-match, return items that start with music.
" .mp3$: Suffix-exact-match, return items that end with .mp3.
" !fire: Inverse-exact-match, return items that do not include fire.
" !^music: Inverse-prefix-exact-match, return items that do not start with music.
" !.mp3$: Inverse-suffix-exact-match, return items that do not end with .mp3.
"
" Note that SPACE acts as an AND operator and | as an OR. For example, a query that matches entries that start with music and end with either mp3, wav, or flac would look like this:
" ^music mp3$ | wav$ | flac$





" CtrlSF
" nmap g* :CtrlSF -w --ignore '/tmp' --ignore '*/vendor/*'  --ignore '/public' --ignore '*/node_modules/'  --ignore '*/seed_scenarios/*' <C-R><C-W><space>
nmap g* :CtrlSF <C-R><C-W><space>
nmap g/ :CtrlSF<space>
nmap gl :CtrlSFToggle

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

" let g:ctrlsf_mapping = {
"     \ "next": "n",
"     \ "prev": "N"
"     \ }



" required for several plugins
set nocompatible

" enable syntax highlighting
syntax on


set nowrap " don't wrap long lines

set showcmd " show commands as we type them

set showmatch " highlight matching brackets

set scrolloff=4 sidescrolloff=10 " scroll the window when we get near the edge


" enable line numbers, and don't make them any wider than necessary
" set rnu numberwidth=2
set number

" show the first match as search strings are typed
set incsearch

" highlight the search matches
set hlsearch

set cursorline
"CursorLine only on active pane
augroup CursorLineHighlight
  au!
  au WinEnter * set cursorline
  au WinLeave * set nocursorline
augroup end

"Don't create swap files
set nobackup
set nowritebackup
set noswapfile

" searching is case insensitive when all lowercase
set ignorecase smartcase

" assume the /g flag on substitutions to replace all matches in a line
"  set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
set directory=/tmp/

" pick up external file modifications
set autoread

" don't abandon buffers when unloading
set hidden

" match indentation of previous line
set autoindent

" perform autoindenting based on filetype plugin
" filetype plugin indent on
filetype plugin indent on

" don't blink the cursor
set guicursor=a:blinkon0

" show current line info (current/total)
set ruler rulerformat=%=%l/%L

" show status line
set laststatus=2

" When lines are cropped at the screen bottom, show as much as possible
set display=lastline

" flip the default split directions to sane ones
set splitright
set splitbelow

" don't beep for errors
set visualbell

" make backspace work in insert mode
set backspace=indent,eol,start

" highlight trailing whitespace
" set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list
set path+=**

" have the mouse enabled all the time
set mouse=a

" use tab-complete to see a list of possiblities when entering commands
set wildmode=list:longest,full

" allow lots of tabs
set tabpagemax=20

" remember last position in file
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"Rakefile, Vagrantfile, and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,config.ru} set ft=ruby

" JSON is JS
au BufNewFile,BufRead *.json set ai filetype=javascript

au BufNewFile,BufRead *.ex set ai filetype=elixir
au BufNewFile,BufRead *.exs set ai filetype=elixir
" au BufRead /tmp/psql.edit.* set syntax=sql

au FocusGained,BufEnter * :checktime


set clipboard+=unnamed


" Display extra whitespace
set list listchars=tab:»·,trail:·


" Make it more obvious which paren I'm on
hi MatchParen cterm=none ctermbg=black ctermfg=yellow

" default color scheme
set t_Co=256
let g:solarized_termcolors=&t_Co
let g:solarized_termtrans=1
set background=dark
colors molokai
" colorscheme molokai

" use a big, pretty font
set guifont=Monaco:h13


let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.svn|\.class$'
set nowrap
set linebreak
set nolist  " list disables linebreak
set lazyredraw
" set foldcolumn=2
set foldmethod=indent
set foldlevel=15

autocmd BufWritePost * if &diff == 1 | diffupdate | endif

autocmd Filetype gitcommit setlocal textwidth=72

set wildignore+=*/tmp/*,*/vendor/ruby/*,*/seed_scenarios/*,*/node_modules/*,*.swp,*.zip

" Compresses multiple blank lines into just one
function! CompressBlankLines()
    execute ":%!cat -s"
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

function! OpenFactoryFile()
  if filereadable("test/factories.rb")
    execute ":e test/factories.rb"
  else
    execute ":e spec/factories.rb"
  end
endfunction


function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>



" handy macro expansion
iabbrev Lidsa Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
" iabbrev rdebug require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger; 0;
abbrev hte the



" Marked
let g:marked_filetypes = ["markdown", "mkd", "README", "vimwiki"]
nmap gm :MarkedOpen<CR>


autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul


" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}


" augment status line
function! ETry(function, ...)
  if exists('*'.a:function)
    return call(a:function, a:000)
  else
    return ''
  endif
endfunction
set statusline=[%n]\ %<%.99f\ %h%w%m%r%{ETry('CapsLockStatusline')}%y%{ETry('rails#statusline')}%{ETry('fugitive#statusline')}%#ErrorMsg#%*%=%-16(\ %l,%c-%v\ %)%P



"Automatically reload changed files
augroup reload
  au!
  au FocusGained * :checktime
augroup end
let g:signify_update_on_bufenter = 1
let g:signify_update_on_focusgained = 1



"Autocomplete
" let g:user_emmet_settings = {
" \  'javascript' : {
" \    'extends' : 'jsx',
" \  },
" \}
