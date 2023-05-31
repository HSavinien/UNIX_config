
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


iab <expr> ih '#include <' . substitute(system('basename $(git rev-parse --show-toplevel 2>/dev/null \|\| pwd) 2>/dev/null'), '\n', '.hpp>', '')

let b:cpp_file = 1
