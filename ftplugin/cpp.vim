nnoremap <F5>   <Esc>:w<CR>:!g++ -std=c++11 % -o /tmp/a.out && /tmp/a.out<CR>
nnoremap <F7>   <Esc>:w<CR>:!g++ -std=c++11 % -o %.out<CR>
nnoremap <C-F5> <Esc>:w<CR>:!g++ -std=c++11 -g % -o /tmp/a.out && gdb /tmp/a.out<CR>
inoremap <F10>  #include <iostream><CR>using namespace std;<CR>
nnoremap <F10>  O#include <iostream><CR>using namespace std;<CR>
inoremap <F10>  #include <iostream><CR>using namespace std;<CR>
inoremap <F3>i  int main(){<CR>
inoremap <F3>r  return 0;<CR>
