set wrap
set nocursorline
set nocursorcolumn


inoremap <F3>r \begin{equation}<CR>\end{equation}<ESC>O
" temp for book linalg
inoremap <F3>1 \begin{lstlisting}[language=Python]<CR>\end{lstlisting}<ESC>O
"
" <leader> = ,
nnoremap <leader>b i\textbf{<ESC>lli}<ESC>
nnoremap <leader>m i$<ESC>lli$<ESC>
