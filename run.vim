"Run compiler
func! CompileAndRun()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -std=c++11 -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
    elseif (&filetype == 'js'|| &filetype == 'javascript.jsx')
        "some common javascript file will be treat as jsx file
        exec "!time node %"
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc

"Run gdb
func! Rungdb()
    exec "w"
    exec "!g++ % -std=c++11 -g -o %<"
	exec "!gdb ./%<"
endfunc

nmap <F5> :call CompileAndRun()<CR>
nmap <F8> :call Rungdb()<CR>
