
"shortcut"

iab cout std::cout << "" << std::endl;<Esc>14hi
iab cin std::cin >> ;<Esc>hi
iab cerr std::cerr << "" << std::endl;<Esc>14hi
"iab clog std::clog << "" << std::endl;<Esc>14hi
iab strng std::string
iab ifst std::ifstream
iab ofst std::ofstream

map <F2> o#include <iostream><cr>#include <exception><cr><Esc>
imap <F2> <cr>#include <iostream><cr>#include <exception><cr>



"debug"

iab //d std::clog << "" << "\033[0m\n";//debug<Esc>23hi
iab //D std::clog << "debug("<< __FUNCTION__<< ":"<< __LINE__"): "<< ""<< "\033[0m\n";//debug<Esc>22hi

map <F12> ostd::clog << "entering " << __FUNCTION__ << "(" << __FILE__ << ":" << __LINE__ <<")\033[0m\n";//debug<Esc>
map <F10> ostd::clog << "exiting " << __FUNCTION__ << "(" << __FILE__ << ":" << __LINE__ <<")\033[0m\n";//debug<Esc>


"functions

silent function! CreateCppException(exception_name)
	let name = a:exception_name . 'Exception'
	let code = 'class	' . name . ' : public std::exception {' . "\n"
	let code .= 'virtual const char* what() const throw() {' . "\n"
	let code .= 'return "Error: ' . name . '";' . "\n"
	let code .= '}' . "\n"
	let code .= '} ' . name . ';' . "\n"
	return code
endfunction
iab excpt <c-r>=CreateCppException(input('exception name: '))<CR>

function! PartitionLine(part)
	let	line_width = str2nr(split(&colorcolumn, ',')[0]) - 1 - indent('.')
	let dash_count = line_width - (strlen(a:part) * 2) - 4
	let line = '/*' . a:part . repeat('-', dash_count) . a:part . '*/'
	return line
endfunction
iab //p <c-r>=PartitionLine(input('part name: '))<CR>
map <leader>p i<c-r>=PartitionLine(input('part name: '))<CR><esc>

function! BigPartitionLine(part)
	let edge = '/*' . repeat('=', 76) . '*/' . "\n"
	let	line_width = str2nr(split(&colorcolumn, ',')[0])
	let	dash_count = line_width - (strlen(a:part)) - 4
	let midline = '/*' . repeat(' ', dash_count / 2 ) . a:part . repeat(' ', dash_count / 2 ) . '*/' . "\n"
	return edge . midline . edge
endfunction
iab //P <c-r>=BigPartitionLine(input('part name: '))<CR>

iab <expr> ih '#include <' . substitute(system('basename $(git rev-parse --show-toplevel 2>/dev/null \|\| pwd) 2>/dev/null'), '\n', '.hpp>', '')

let b:cpp_file = 1
