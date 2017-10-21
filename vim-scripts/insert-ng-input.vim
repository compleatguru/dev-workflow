" NgInsertInput Insert A Block Text {
function! NgInsertInput()
    "Input Block of Text
    let name = expand('<cword>')
    let title = name
    let content=join(readfile(""),"\n")
    let output = substitute(content, "$input.name", name, "g")
    let output = substitute(output, "$input.title", title, "g")
    put =output
endfunction
" }

" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
