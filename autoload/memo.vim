" Please write in vimrc 
" let g:saved_memo_path='/your/saved/dir'
" default $HOME/memo
let g:saved_memo_path='$HOME/memo'


" memo
" Author: Yuigishi
" License: MIT

".vimrc上で let g:memo_saved_dir = '$HOME/memo'
" let g:memo_preview=0 なら垂直 1なら水平
let s:check_variable = exists("memo_preview")

" memoをspで開くかvsで開くかを決める
function! memo#memo_start() abort
   let s:current_dir = getcwd()
   execute 'cd' g:memo_saved_dir

   if g:memo_preview
      execute 'new' 
   else
      " 0 垂直でウィンドウを開く
      execute 'vnew'
   endif
endfunction

function! memo#memo_create(file) abort
   let g:memo_create_path = g:memo_saved_dir . "/" . a:file
   if g:memo_preview
      execute 'sp'  g:memo_create_path
   else
      execute 'vs' g:memo_create_path 
   endif
endfunction


function! memo#memo_list() abort
   if g:memo_preview
      execute 'sp' g:memo_saved_dir
   else
      execute 'vs' g:memo_saved_dir
   endif
endfunction


   

