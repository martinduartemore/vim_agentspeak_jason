if exists("b:current_syntax")
  finish
endif



syntax match asl_number "\v<\d+>"
syntax match asl_number "\v<\d+\.\d+>"
syntax keyword asl_boolean true
syntax region asl_string  start=/"/ skip=/\\"/ end=/"/ oneline

"could use Conditional for if and Repeat for while,for
syntax keyword asl_keyword_control
            \ if
            \ while
            \ for

syntax keyword asl_keyword_operator
            \ div
            \ mod
            \ not

syntax keyword asl_preprocessor
            \ include
            \ register_function

syntax match asl_operator '\v\+'
syntax match asl_operator '\v-'
" syntax match asl_operator '\v\*'
" syntax match asl_operator '\v/'
syntax match asl_operator '\v\&'
syntax match asl_operator '\v\%'
" syntax match asl_operator '\v\~'
syntax match asl_operator '\v\|'
syntax match asl_operator '\v\<'
syntax match asl_operator '\v\>'
syntax match asl_operator '\v\='
syntax match asl_operator '\v\+\+'
syntax match asl_operator '\v\+\<'
syntax match asl_operator '\v\+\>'
" syntax match asl_operator '\v\*\*'
syntax match asl_operator '\v\<\='
syntax match asl_operator '\v\>\='
syntax match asl_operator '\v\=\='
syntax match asl_operator '\v\\\=\='

syntax match asl_symbols '\v\.$'
" syntax match asl_symbols '\v\.[\s]*'
syntax match asl_symbols '\v\:'
syntax match asl_symbols '\v:-'
syntax match asl_symbols '\v\<-'
syntax match asl_symbols '\v\{'
syntax match asl_symbols '\v\}'
syntax match asl_symbols '\v\;'

" syntax match asl_atom '\v<[a-z]\w*>'
syntax match asl_atom '\v([\~])?<[a-z]\w*>(\()@!'
" this is highlighting rules as well
syntax match asl_structure '\v([\~])?<[a-z]\w*\ze\('
syntax match asl_variable '\v<[A-Z]\w*>'

syntax match asl_internal_action '\v([a-z]\w*)?\.[a-z]\w*'
syntax match asl_plan_annotation '\v\@\w+'
syntax match asl_plan "\v([-])?[\+-]([\~])?[a-z]\w*"
syntax match asl_plan_with_goal "\v[\+-][!\?]([\~])?[a-z]\w*"
syntax match asl_goal "\v[!\?]([\~])?[a-z]\w*"
syntax match asl_goal "\v[!]([\~])?[!][a-z]\w*"

syntax keyword asl_reserved_annotation
            \ source
            \ atomic
            \ breakpoint
            \ all_unifs
            \ priority

syntax keyword asl_reserved_term
            \ tell
            \ untell
            \ tellHow
            \ untellHow
            \ achieve
            \ unachieve
            \ askIf
            \ askOne
            \ askAll
            \ askHow

syntax keyword asl_todo contained TODO FIXME NOTE XXX
syntax region asl_comment start='//' end='\n' contains=asl_todo
syntax region asl_comment_region start='/\*' end='\*/' contains=asl_todo


highlight default link asl_number Number
highlight default link asl_boolean Boolean
highlight default link asl_string String

highlight default link asl_keyword_control Keyword
highlight default link asl_keyword_operator Operator
highlight default link asl_preprocessor PreProc

" highlight default link asl_operator Special
" highlight default link asl_symbols Special

" TODO: highlight atoms/structures differently inside brackets () []
highlight default link asl_atom Constant
highlight default link asl_structure Constant
" TODO: maybe switch variable highlight to Identifier/Type?
highlight default link asl_variable Constant
" TODO: highlight lists/belief annotations?

highlight default link asl_internal_action Define
highlight default link asl_plan_annotation PreProc
highlight default link asl_plan Function
highlight default link asl_plan_with_goal Statement
highlight default link asl_goal Statement

highlight default link asl_reserved_annotation PreProc
highlight default link asl_reserved_term PreProc

highlight default link asl_todo Todo
highlight default link asl_comment Comment
highlight default link asl_comment_region Comment



let b:current_syntax = "asl"
