#!/bin/zsh

Help()
{
echo "usage : 
checklist [-s] [-p path]

display, with formating, any .chklst file in current directory

Options : 
-h : display this page
-s : (short) hide already done entry (not implemented yet)
"
}

while getopts ":hs" option; do
	case $option in 
		h) #help
			Help
			exit 
			;;
		s) #short
			hide="True" 
			;;
		*) #invalid option
			echo "error : invalid option\ntry -h for a list of autorized option"
			;;
	esac
done
cat ./*.cklst | 
	grep -e '^<	: ' -e '^>	: ' -e '	| > ' -e '	| < ' |
	sed $'s/\$/\e[0m/g' |
	sed $'s/>	:/\e[1;31mtodo : /g' |
	sed $'s/<	:/\e[1;32mdone : /g' |
	sed $'s/| >/\e[31m[ ]/g' |
	sed $'s/| < /\e[32m[X] \e[9m/g'
