#page de personalisation du terminal zsh

#custom interface
#PS1="%n@%m:%~:[%T]$ "
PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;94m%}%3~%{\e[0m%}:%{\e[0;1;7;32m%}[%T]%{\e[0m%}\$ '

#vars
export PATH=$PATH:$HOME/bin
export work="~/Desktop/WiP/push_swap"
#alias

alias sep="echo '\e[33m=========================================================================================\e[m'"

alias work="clear ; cd $work" #==================================WORK
alias lib="cd ~/Desktop/library/ && ls"
alias Sep="sep ; sep ; clear"
alias push="git push origin master"
alias ppush="git push perso master"
alias pull="git pull origin master"
alias ppull="git pull perso master"
alias compc="Sep ; gcc -Wall -Werror -Wextra"
alias mlxcomp="Sep ; gcc -Wall -Wextra -Werror -I /usr/local/include/ -L /usr/local/lib/ -lmlx -framework OpenGL -framework AppKit "
alias Norm="norm | grep -v OK"
alias home="cd ~"
alias gtest="cd ~/goinfre/"
alias example="cd ~/Desktop/examples ; sep ; clear ; ls"
alias custom="vim ~/.zshrc ; source ~/.zshrc"
alias re="source ~/.zshrc ; clear ; sep ; echo 'reloaded zsh config file' ; sep"
alias gstatus="git status"
alias piscine="cd ~/Desktop/Piscine ; clear ; ls"
alias mk="mkdir"

#makefile creation alias
alias mf-saveold="mv ./Makefile ./.Makefile.old"
alias mf-addsrc='ls -tr *.c | cat -e | sed "s/\\$/ \\\/g" >> Makefile'

#single letter alias
alias q="exit"
alias l="clear"
alias p="cd .."
alias pp="p ; p"
alias v="vim"
alias s="gstatus"

#big finger alias
alias vin=vim

#script alias (to call them without .sh)
alias chklst="Sep ; checklist.sh"
#command and script to execute on launch

#echo "\n\n\e[1;4;31mIMPORTANT\e[m\n" ; cat ./REMEMBER.txt ; echo "\n" ; sep
#function added by other softwares (do not modifie without knowing)
export PATH=$PATH:/Users/tmongell/.brew/bin:/Users/tmongell/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki

#troll
#PS1=$PS1$'%{\e[30m%}'
#echo "/usr/share/pool/taquin" >> ~/.zshrc

work
