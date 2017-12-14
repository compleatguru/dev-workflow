" Scaffolding for Angular Forms
" e.g: {"name":"Name","label":"Name","type":"text"}

" NgRenderFormInput {
" Only this to get this vimscript file path
let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
function! NgRenderFormInput(input) abort
" Parse JSON and return HTML Input block as string
    " @param input is a json object {"type": "text|select", "name": "name of the input", "label": "label of the input"}
    "Input Block of Text
    let name  = get(a:input, "name")
    let label = get(a:input, "label")
    let type  = get(a:input, "type")

    echom "script file path: ".s:path
    let filePath = s:path . "/templates/"
    let files = {}
    let files["select"]   = filePath ."horizontal-form-select-input.html"
    let files["text"]     = filePath ."horizontal-form-text-input.html"
    let files["textarea"] = filePath ."horizontal-form-textarea-input.html"
    let files["checkbox"] = filePath ."horizontal-form-checkbox-input.html"

    if(has_key(files, type))
        let content=join(readfile(files[type]),"\n")
    else
        let content=""
    endif

    let output = substitute(content, "$input.name", name, "g")
    let output = substitute(output, "$input.label", label, "g")

    return output
endfunction
" }


" NgExtractFormInput {
function! NgExtractFormInput() abort
" Parse JSON string {"type": "text|select|checkbox|textarea", "name": "name of the input", "label": "label of the input"}
    let json=getline('.')
    try
        let input=js_decode(json)
        let output=NgRenderFormInput(input)

        if len(output) > 0
            silent normal! Vc
            put! =output
            silent normal 2j
        endif

    catch
            silent normal j
    endtry
endfunction
" }


" NgExtractFormControl {
function! NgExtractFormControl() abort
" For component class declare of variables
" Parse JSON to output form variables
    let json=getline('.')
    let input=js_decode(json)
    let output="$var: AbstractControl;"

    let name = get(input, 'name')
    let output = substitute(output, "$var", name, "g")

    if len(output) != 0
        normal! Vc
        put =output
        silent normal kddj
    endif
endfunction
" }


" NgExtractFormSetValue {
function! NgExtractFormSetValue() abort
" For component class to setValue of form variables
" Parse JSON to output form setValue
    let json=getline('.')
    let input=js_decode(json)
    let output="this.$var.setValue(item.$var);"

    let name = get(input, 'name')
    let output = substitute(output, "$var", name, "g")

    if len(output) != 0
        normal! Vc
        put =output
        silent normal kddj
    endif
endfunction
" }


" NgExtractFormSetControl {
function! NgExtractFormSetControl() abort
" For component class to setControl of form variables
" Parse JSON to output form setControl
    let json=getline('.')
    let input=js_decode(json)
    let output="this.$var = this.form.controls['$var'];"

    let name = get(input, 'name')
    let output = substitute(output, "$var", name, "g")

    if len(output) != 0
        silent normal! Vc
        put! =output
        silent normal jdd
    endif
endfunction
" }


" NgExtractFormGroup {
function! NgExtractFormGroup() abort
" Parse JSON to output formgroup
    let json=getline('.')
    let input=js_decode(json)
    let output="'$var':[''],"

    let name = get(input, 'name')
    let output = substitute(output, "$var", name, "g")

    if len(output) != 0
        normal! Vc
        put =output
        silent normal kddj
    endif
endfunction
" }
" vim: set sw=4 ts=4 sts=4 et tw=78 foldmarker={,} foldlevel=0 foldmethod=marker spell:
