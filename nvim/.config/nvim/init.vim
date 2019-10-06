set number

autocmd BufWritePost,FileWritePost *.ms :silent !refer -p ~/.config/bibliography <afile> | groff -ms - -T pdf > <afile>:t:r.pdf
