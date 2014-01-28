" By Kartik Agaram -- http://akkartik.name -- ondemandhighlight@akkartik.com

if exists('g:loaded_ondemandhighlight') || &compatible
  finish
else
  let g:loaded_ondemandhighlight = 1
endif

let highlight_file = &viewdir."/highlights"
autocmd BufReadPost * silent! exec "source ".g:highlight_file

function! s:highlight(x)
   exec ":new ".g:highlight_file
   silent exec "%!grep -v '\\<highlight_".a:x."\\>'"
   normal G
   exec "normal ohighlight highlight_".a:x." ctermfg=".s:randomColor()
   exec "normal osyntax match highlight_".a:x." /\\<".a:x."\\>/"
   wq
   exec "source ".g:highlight_file
endfunction

function! s:unhighlight(x)
   exec ":new ".g:highlight_file
   silent exec "%!grep -v '\\<highlight_".a:x."\\>'"
   exec "normal ohighlight highlight_".a:x." ctermfg=NONE"
   wq
   exec "source ".g:highlight_file
endfunction

function! s:randomColor()
   return localtime() % &t_Co " num colors
endfunction

command! -nargs=1 Highlight call s:highlight(<q-args>)
command! -nargs=1 Unhighlight call s:unhighlight(<q-args>)

map - :Highlight <C-r><C-w><CR>
map _ :Unhighlight <C-r><C-w><CR>
