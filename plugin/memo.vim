
if exists('g:loaded_memo')
   finish
endif

let g:loaded_memo = 1
command! Memo call memo#memo_start()

command! Memolist call memo#memo_start()

command! -nargs=1 MemoCreate call memo#memo_create(<q-args)
