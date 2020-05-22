if exists("b:current_syntax")
  finish
endif



syntax match mas2j_number "\v<\d+>"
syntax keyword mas2j_boolean true false
syntax region mas2j_string  start=/"/ skip=/\\"/ end=/"/ oneline

syntax keyword mas2j_keyword_control
            \ agents
            \ aslSourcePath
            \ classpath
            \ directives
            \ environment
            \ executionControl
            \ infrastructure
            \ MAS

syntax keyword mas2j_keyword_operator
            \ agentArchClass
            \ agentClass
            \ at
            \ beliefBaseClass
            \ events
            \ intBels
            \ nrcbp
            \ synchronized
            \ verbose

syntax keyword mas2j_function
            \ discard
            \ requeue
            \ retrieve
            \ sameFocus
            \ newFocus

syntax keyword mas2j_infrastructure
            \ Centralised
            \ JaCaMo
            \ Jade
            \ Saci

syntax match mas2j_symbols '\v\{'
syntax match mas2j_symbols '\v\}'
syntax match mas2j_symbols '\v\:'
syntax match mas2j_symbols '\v\;'
syntax match mas2j_symbols '\v\='
syntax match mas2j_symbols '\v\#'

syntax keyword mas2j_todo contained TODO FIXME NOTE XXX
syntax region mas2j_comment start='//' end='\n' contains=mas2j_todo
syntax region mas2j_comment_region start="\/\*" end="\*\/" contains=mas2j_todo


highlight default link mas2j_number Number
highlight default link mas2j_boolean Boolean
highlight default link mas2j_string String

" highlight default link mas2j_keyword_control Keyword
highlight default link mas2j_keyword_control Statement
" highlight default link mas2j_keyword_operator Constant
highlight default link mas2j_keyword_operator Type
highlight default link mas2j_function Function
" highlight default link mas2j_infrastructure Special
highlight default link mas2j_infrastructure Keyword

" highlight default link mas2j_symbols Special

highlight default link mas2j_todo Todo
highlight default link mas2j_comment Comment
highlight default link mas2j_comment_region Comment



let b:current_syntax = "mas2j"
