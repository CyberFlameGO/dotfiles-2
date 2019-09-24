set number

autocmd BufWritePost,FileWritePost *.ms
\   :silent !groff -ms <afile> -T pdf > <afile>:t:r.pdf
