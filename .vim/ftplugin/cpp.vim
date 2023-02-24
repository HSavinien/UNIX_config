
"shortcut"

iab cout std::cout << "" << std::endl;<Esc>14hi
iab cin std::cin >> ;<Esc>hi
iab cerr std::cerr << "" << std::endl;<Esc>14hi
iab clog std::clog << "" << std::endl;<Esc>14hi
iab string std::string
iab endl std::endl
iab ifst std::ifstream
iab ofst std::ofstream
iab st std::

"debug"

iab //d std::cerr << "" << '\n';//debug<Esc>16hi
iab //D std::cerr << "debug("<< __FUNCTION__<< ":"<< __LINE__"): "<< ""<< "\n";//debug<Esc>15hi

map <F12> ostd::cerr << "entering " << __FUNCTION__ << "(" << __FILE__ << ":" << __LINE__ <<")\n";//debug<Esc>
map <F10> ostd::cerr << "exiting " << __FUNCTION__ << "(" << __FILE__ << ":" << __LINE__ <<")\n";//debug<Esc>
