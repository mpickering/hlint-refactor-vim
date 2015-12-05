
function! ApplyOneSuggestion()
  let l = line(".")
  let c = col(".")
  let l:filter = "%! hlint - --refactor  --refactor-options=\"--pos ".l.','.c."\""
  execute l:filter
  silent if v:shell_error == 1| undo | endif
  call cursor(l, c)
endfunction


function! ApplyAllSuggestions()
  let l = line(".")
  let c = col(".")
  let l:filter = "%! hlint - --refactor"
  execute l:filter
  silent if v:shell_error == 1| undo | endif"
  call cursor(l, c)
endfunction

 
if ( ! exists('g:hlintRefactor#disableDefaultKeybindings') || 
   \ ! g:hlintRefactor#disableDefaultKeybindings )

  map <silent> to :call ApplyOneSuggestion()<CR>
  map <silent> ta :call ApplyAllSuggestions()<CR>

endif

