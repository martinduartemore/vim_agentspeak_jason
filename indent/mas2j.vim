setlocal indentexpr=Mas2j_Indent()

function! Mas2j_Indent()
    let line = getline(v:lnum)
    let previous_num = prevnonblank(v:lnum - 1)
    let previous = getline(previous_num)

    if previous =~ '{' && previous !~ '}' && line !~ '}'
        return indent(previous_num) + &tabstop
    endif

    if previous =~ ':$' && previous !~ '}' && line !~ '}'
        return indent(previous_num) + &tabstop
    endif

    return indent(previous_num)

endfunction
