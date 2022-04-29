#bin/sh
#this script create a compilation file for the current repository

#save a potential already existing makefile :
if [ -e Makefile ]; then
	echo -n "WARNING : Makefile already existing. do you wish to continu? [Y/n] "
	read abort
	case "$abort" in
		n | N | non | NON | no | NO ) exit;;
		* ) echo "saving original file as .Makefile.old";
			mv ./Makefile ./.Makefile.old;;
	esac
fi
echo "SRCS	= \c" >> Makefile
#add the list of .c files, one per line and followed by a '\'
ls -tr *.c | cat -e | sed 's/\$/ \\/g' >> Makefile ; echo "\n" >> Makefile
echo "OBJS	= \${SRCS:.c=.o}\n" >> Makefile
echo "CC		= gcc\n" >> Makefile
echo "CFLAGS	= -Wall -Wextra -Werror\n" >> Makefile
echo "NAME	=\n" >> Makefile
echo "#rules\n" >> Makefile
echo "\${NAME}\n\t\t\${CC} -o \${NAME} \${OBJS}\n" >> Makefile
echo "all:	\${NAME}\n" >> Makefile
echo "clean:\n\t\trm -f \${OBJS}\n" >> Makefile
echo "fclean:	clean\n\t\trm -f \${NAME}\n" >> Makefile
echo "re:		fclean all\n" >> Makefile
echo ".PHONY:	all clean fclean re" >> Makefile
sleep 1
echo "done"
