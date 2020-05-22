setlocal indentexpr=Asl_Indent()

function! Asl_Indent()
    let line = getline(v:lnum)
    let previous_num = prevnonblank(v:lnum - 1)
    let previous = getline(previous_num)

    if previous =~ '\.$'
        return indent(previous_num) - &tabstop
    endif

    return indent(previous_num)

endfunction
