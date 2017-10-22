function! NgRenderFormInput(input) abort
    " @param input is a json object {"type": "text|select", "name": "name of the input", "label": "label of the input"}
    "Input Block of Text
    let name =get(a:input, "name")
    let label=get(a:input, "label")
    let type=get(a:input, "type")

    " Horizontal Form Input
    let content=join(readfile("/home/david/dev-workflow/ng/horizontal-form-text-input.html"),"\n")
    if type == "select"
        let content=join(readfile("/home/david/dev-workflow/ng/horizontal-form-select-input.html"),"\n")
    elseif type == "text"
        let content=join(readfile("/home/david/dev-workflow/ng/horizontal-form-text-input.html"),"\n")
    endif

    let output = substitute(content, "$input.name", name, "g")
    let output = substitute(output, "$input.label", label, "g")

    return output
endfunction
" }


" Parse JSON string {"type": "text|select", "name": "name of the input", "label": "label of the input"} {
function! NgProcessFormInput() abort
    let json=getline('.')
    let input=js_decode(json)
    echom js_encode(input)
    let output=NgRenderFormInput(input)

    if len(output) != 0
        normal! Vc
        put =output
    endif
endfunction
" }
"




" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
