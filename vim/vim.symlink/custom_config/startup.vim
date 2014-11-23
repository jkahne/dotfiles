set t_Co=256
set background=dark

let g:solarized_termcolors=&t_Co
let g:solarized_termtrans=1
colorscheme molokai

set nolist
let g:NERDTreeDirArrows=0
" let g:NERDTreeWinPos = "right"
let g:NERDChristmasTree=1
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.svn|\.class$'
set wrap
set linebreak
set nolist  " list disables linebreak
let g:ctrlp_max_files=0
let g:ctrlp_arg_map = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:100'
autocmd QuickFixCmdPost *grep* cwindow
nmap \ ,
let g:syntastic_javascript_checkers = ['jsl']

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
" populate the argument list with each of the files named in the quickfix list
function! QuickfixFilenames()
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction
nmap <Leader>gg :Gstatus<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gb :Gblame<CR>
nmap <Leader>gs :w<CR>:Git add %<CR>

nmap <Leader>gh :tabnext<CR>
nmap <Leader>gl :tabprevious<CR>
nmap <Leader>gn :tabnew<CR>


" noremap <Up> <NOP>
" noremap <Down> <NOP>
" noremap <Left> <NOP>
" noremap <Right> <NOP>
"
" let g:airline_powerline_fonts = 1

let loaded_matchparen = 0 

function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv

autocmd BufWritePost * if &diff == 1 | diffupdate | endif
