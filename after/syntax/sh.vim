" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax match shOperator "!" conceal cchar=¬
syntax match shOperator "((" conceal cchar=λ
syntax match shOperator "))" conceal cchar=.

syntax match shOperator "\[\[" conceal cchar=λ
syntax match shOperator "\]\]" conceal cchar=.

syntax match shOperator "||" conceal cchar=∨
syntax match shOperator "&&" conceal cchar=∧

syntax match shOperator "<=" conceal cchar=≤
syntax match shOperator ">=" conceal cchar=≥

syntax match shOperator "\v\<\<\<" conceal cchar=←

syntax match shOperator "==" conceal cchar=≡
syntax match shOperator "!=" conceal cchar=≢

hi! link Conceal shOperator

setlocal conceallevel=1
