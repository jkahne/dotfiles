" Plugins are managed by Vundle. Once VIM is open run :BundleInstall to
" install plugins.

" Plugins requiring no additional configuration or keymaps
  Bundle "git://github.com/vim-scripts/Color-Sampler-Pack.git"
"  Bundle "git://github.com/oscarh/vimerl.git"
  Bundle "git://github.com/tpope/vim-git.git"
  Bundle "git://github.com/harleypig/vcscommand.vim.git"
  Bundle "git://github.com/altercation/vim-colors-solarized.git"
  Bundle "git://github.com/tpope/vim-cucumber.git"
  Bundle "git://github.com/tpope/vim-endwise.git"
  Bundle "git://github.com/tpope/vim-fugitive.git"
  Bundle "git://github.com/tpope/vim-haml.git"
  Bundle "git://github.com/pangloss/vim-javascript.git"
  Bundle "git://github.com/vim-scripts/L9.git"
  Bundle "git://github.com/tpope/vim-rake.git"
  Bundle "git://github.com/vim-ruby/vim-ruby.git"
  Bundle "git://github.com/ervandew/supertab.git"
  Bundle "git://github.com/tomtom/tcomment_vim.git"
  Bundle "git://github.com/michaeljsmith/vim-indent-object.git"
  Bundle 'vim-scripts/matchit.zip'
  Bundle "git://github.com/kana/vim-textobj-user.git"
  Bundle "git://github.com/nelstrom/vim-textobj-rubyblock.git"
  Bundle "git://github.com/tpope/vim-repeat.git"
  Bundle "git://github.com/vim-scripts/ruby-matchit.git"
  Bundle "git://github.com/wgibbs/vim-irblack.git"
  Bundle "git://github.com/wavded/vim-stylus.git", { 'name' : 'stylus' }
" Bundle "git://github.com:ecomba/vim-ruby-refactoring.git"
  Bundle "git://github.com/airblade/vim-gitgutter.git"
  Bundle 'auto_mkdir'
  " Bundle git://github.com/skammer/vim-css-color.git
  " Use Aaron Baker's Fork to add SASS/SCSS color highlighting
  " Bundle 'git@github.com:bakis2011/vim-css-color.git'
  Bundle 'rizzatti/dash.vim'



" Mustache
  " Bundle "git://github.com/juvenn/mustache.vim.git"
  "   " Copied from the plugin; not sure why it isn't working normally
  "   au BufNewFile,BufRead *.mustache,*.handlebars,*.hbs set filetype=mustache

" Slim
  " Bundle "git://github.com/slim-template/vim-slim.git"
  "   au BufNewFile,BufRead *.slim set filetype=slim

" Less
  " Bundle "git://github.com/groenewege/vim-less.git"
  "   au BufNewFile,BufRead *.less set filetype=less

" Handlebars
  " Bundle "git://github.com/nono/vim-handlebars.git"
  "   au BufNewFile,BufRead *.hbs set filetype=handlebars

" Stylus
  " Bundle "git://github.com/wavded/vim-stylus.git"
  "   au BufNewFile,BufRead *.styl set filetype=stylus

" Coffee script
  Bundle "git://github.com/kchmck/vim-coffee-script.git"
    au BufNewFile,BufRead *.coffee set filetype=coffee


" ACK
" Bundle "git://github.com/mileszs/ack.vim.git"
"   nmap g/ :Ack!<space>
"   nmap g* :Ack! -w <C-R><C-W><space>
"   nmap ga :AckAdd!<space>
"   nmap gn :cnext<CR>
"   nmap gp :cprev<CR>
"   nmap gq :ccl<CR>
"   nmap gl :cwindow<CR>

" AG aka The Silver Searcher
  Bundle 'git://github.com/rking/ag.vim.git', { 'name' : 'agvim' }
    nmap g/ :Ag!<space>
    nmap g* :Ag! -w --ignore '/tmp' --ignore '*/fonts/*' --ignore '*/vendor/*'  --ignore '/public' --ignore '*/seed_scenarios/*' <C-R><C-W><space>
    nmap ga :AgAdd!<space>
    nmap gn :cnext<CR>
    nmap gp :cprev<CR>
    nmap gq :ccl<CR>
    nmap gl :cwindow<CR>

    "set wildignore+=*/angular/*,*/angular_guid_auth/*,*/bower_components/*,*.swp,*.zip

" Tagbar for navigation by tags using CTags
  Bundle "git://github.com/majutsushi/tagbar.git"
    let g:tagbar_autofocus = 1
    map <Leader>rt :!ctags --extra=+f -R *<CR><CR>
    map <Leader>. :TagbarToggle<CR>


" Ruby focused unit test (wrapped in an if-loaded because it doesn't like
" being loaded twice)
  " if !exists(':RunRubyFocusedUnitTest')
  "   Bundle "git://github.com/drewolson/ruby_focused_unit_test_vim.git"
  "     nmap <Leader>ra :wa<CR> :RunAllRubyTests<CR>
  "     nmap <Leader>rc :wa<CR> :RunRubyFocusedContext<CR>
  "     nmap <Leader>rf :wa<CR> :RunRubyFocusedUnitTest<CR>
  "     nmap <Leader>rl :wa<CR> :RunLastRubyTest<CR>
  " endif


" Markdown syntax highlighting
  " Bundle "git://github.com/tpope/vim-markdown.git"
  "   augroup mkd
  "     autocmd BufNewFile,BufRead *.mkd      set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "     autocmd BufNewFile,BufRead *.md       set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "     autocmd BufNewFile,BufRead *.markdown set ai formatoptions=tcroqn2 comments=n:> filetype=markdown
  "   augroup END


" Markdown preview to quickly preview markdown files
  " Bundle "git://github.com/maba/vim-markdown-preview.git"
  " map <buffer> <Leader>mp :Mm<CR>

"Open using Marked 2
  " Bundle "git://github.com/itspriddle/vim-marked.git"
  " nmap gm :MarkedOpen<cr>


" NERDTree for project drawer
  Bundle "git://github.com/scrooloose/nerdtree.git"
    let NERDTreeHijackNetrw = 0

    nmap gt :NERDTreeToggle<CR>
    nmap g :NERDTree \| NERDTreeToggle \| NERDTreeFind<CR>


" Tabular for aligning text
  Bundle "git://github.com/godlygeek/tabular.git"
    function! CustomTabularPatterns()
      if exists('g:tabular_loaded')
        AddTabularPattern! symbols         / :/l0
        AddTabularPattern! hash            /^[^>]*\zs=>/
        AddTabularPattern! chunks          / \S\+/l0
        AddTabularPattern! assignment      / = /l0
        AddTabularPattern! comma           /^[^,]*,/l1
        AddTabularPattern! colon           /:\zs /l0
        AddTabularPattern! options_hashes  /:\w\+ =>/
      endif
    endfunction

    autocmd VimEnter * call CustomTabularPatterns()

    " shortcut to align text with Tabular
    map <Leader>a :Tabularize<space>

" ZoomWin to fullscreen a particular buffer without losing others
  Bundle "git://github.com/vim-scripts/ZoomWin.git"
    map <Leader>z :ZoomWin<CR>


" Unimpaired for keymaps for quicky manipulating lines and files
  " Bundle "git://github.com/tpope/vim-unimpaired.git"
  "   " Bubble single lines
  "   nmap <C-Up> [e
  "   nmap <C-Down> ]e
  "
  "   " Bubble multiple lines
  "   vmap <C-Up> [egv
  "   vmap <C-Down> ]egv


" Syntastic for catching syntax errors on save
  Bundle "git://github.com/scrooloose/syntastic.git"
    let g:syntastic_enable_signs=1
    let g:syntastic_quiet_messages = {'level': 'warnings'}
    " syntastic is too slow for haml and sass
    let g:syntastic_mode_map = { 'mode': 'active',
                               \ 'active_filetypes': [],
                               \ 'passive_filetypes': ['haml','scss','sass'] }


" gist-vim for quickly creating gists
  Bundle "git://github.com/mattn/webapi-vim.git"
  Bundle "git://github.com/mattn/gist-vim.git"
    if has("mac")
      let g:gist_clip_command = 'pbcopy'
    elseif has("unix")
      let g:gist_clip_command = 'xclip -selection clipboard'
    endif

    let g:gist_detect_filetype = 1
    let g:gist_open_browser_after_post = 1


" gundo for awesome undo tree visualization
  Bundle "git://github.com/sjl/gundo.vim.git"
    map <Leader>h :GundoToggle<CR>


" rails.vim, nuff' said
  Bundle "git://github.com/tpope/vim-rails.git"
    map <Leader>oc :Rcontroller<Space>
    map <Leader>ov :Rview<Space>
    map <Leader>om :Rmodel<Space>
    map <Leader>oh :Rhelper<Space>
    map <Leader>oj :Rjavascript<Space>
    map <Leader>os :Rstylesheet<Space>
    map <Leader>oi :Rintegration<Space>


" surround for adding surround 'physics'
  Bundle "git://github.com/tpope/vim-surround.git"
    " # to surround with ruby string interpolation
    let g:surround_35 = "#{\r}"
    " - to surround with no-output erb tag
    let g:surround_45 = "<% \r %>"
    " = to surround with output erb tag
    let g:surround_61 = "<%= \r %>"

" Clojure Highlighting"
"  Bundle "https://github.com/vim-scripts/VimClojure.git"
"  autocmd BufNewFile,BufRead *.clj set filetype=clojure


" Jade Highlighting"
"  Bundle "git://github.com/digitaltoad/vim-jade.git"
"  autocmd BufNewFile,BufRead *.jade set filetype=jade
"
"  Ctrl-P
   Bundle "git://github.com/kien/ctrlp.vim.git"
    nmap <Leader>t :CtrlP<CR>
    nmap <Leader>b :CtrlPBuffer<CR>
    nmap <Leader>m :CtrlPBufTag<CR>
    nmap <Leader>mm :CtrlPBufTagAll<CR>
    nmap <Leader>y :CtrlPBufTagAll<CR>
    set wildignore+=*/tmp/*,*/seed_scenarios/*,*.swp,*.zip,*/vendor/*,*/fonts/*

  " Bundle 'git://github.com/rking/ag.vim'

  Bundle 'CycleColor'

  Bundle 'CSApprox'

  Bundle 'visualstar.vim'
  
  " Bundle 'bling/vim-airline'

  " Bundle 'Obvious-Mode'

  " Bundle 'EasyMotion'

  " Bundle 'tacahiroy/ctrlp-funky'
  "   let g:ctrlp_extensions = ['funky']
  "   nmap <Leader>f :CtrlPFunky<CR>
  "
  Plugin 'bling/vim-airline'

  " Bundle 'chase/vim-ansible-yaml'

  Plugin 'ScrollColors'

  " Bundle 'edkolev/tmuxline.vim'

  Plugin 'chriskempson/base16-vim'
