" bring in the bundles for mac and windows
let mapleader = ','
"set rtp+=~/vimfiles/vundle.git/
set rtp+=~/.vim/vundle.git/
call vundle#rc()
autocmd Filetype gitcommit setlocal spell textwidth=72

" if !empty($MY_RUBY_HOME)
"    let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
" endif
"
" ruby path if you are using rbenv
let g:ruby_path = system('echo $HOME/.rbenv/shims')

let g:loaded_netrw       = 1
let g:loaded_netrwPlugin = 1

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

runtime! common_config/*.vim
runtime! custom_config/*.vim

