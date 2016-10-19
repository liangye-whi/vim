nnoremap <F5>   <Esc>:w<CR>:!g++ % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <F7>   <Esc>:w<CR>:!g++ % -o %.out<CR>
nnoremap <C-F5> <Esc>:w<CR>:!g++ -g % -o /tmp/a.out && gdb /tmp/a.out<CR>
