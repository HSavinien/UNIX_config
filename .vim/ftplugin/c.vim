
"=============================================================================="
"								shortcut									   "
"=============================================================================="

"remap :
map <F12> odprintf(2, "entering %s (%s:%d)\n", __FUNCTION__, __FILE__,__LINE__);//DEBUG<Esc>
map <F10> odprintf(2, "exiting %s (%s:%d)\n", __FUNCTION__, __FILE__,__LINE__);//DEBUG<Esc>
map <F2> i#include <string.h><cr>#include <stdlib.h><cr>#include <unistd.h><cr>#include <signal.h><cr>#include <fcntl.h><cr>#include <stdio.h><cr>#include <limits.h><cr>#include <errno.h><cr>#include <pthread.h><cr>#include <math.h><cr><Esc>
map <F3> oint	main(int ac, char **av)<cr>{<cr>if (ac < 2)<cr>return(printf("error args\nusage : %s <>\n", av[0]));<cr><cr>}

"abbreviate :
iab //d dprintf(2, "\n");//DEBUG<Esc>11hi
iab //D dprintf(2, "debug(%s:%d):\n", __FUNCTION__,__LINE__);//DEBUG<Esc>34hi

iab ih #include <cub3d.h>
"change repo name according to project"