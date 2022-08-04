#page de personalisation du terminal zsh

#custom interface
#PS1="%n@%m:%~:[%T]$ "
PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;94m%}%3~%{\e[0m%}:%{\e[0;1;7;32m%}[%T]%{\e[0m%}\$ '

#vars
export PATH=$PATH:$HOME/bin
work="~/Desktop/WiP/minishell"
#alias

alias sep="echo '\e[33m=========================================================================================\e[m'"

alias work="clear ; cd $work" #==================================WORK
alias lib="cd ~/Desktop/library/ && ls"
alias Sep="clear ; sep ; sep"
alias push="git push origin master"
alias ppush="git push perso master"
alias pull="git pull origin master"
alias ppull="git pull perso master"
alias compc="Sep ; gcc -Wall -Werror -Wextra"
alias mlxcomp="Sep ; gcc -Wall -Wextra -Werror -I /usr/local/include/ -L /usr/local/lib/ -lmlx -framework OpenGL -framework AppKit "
alias Norm="clear ; norm | grep -v OK"
alias home="cd ~"
alias gtest="cd ~/goinfre/"
alias example="cd ~/Desktop/examples ; sep ; clear ; ls"
alias custom="vim ~/.zshrc ; source ~/.zshrc"
alias re="source ~/.zshrc ; clear ; sep ; echo 'reloaded zsh config file' ; sep"
alias gstatus="git status"
alias piscine="cd ~/Desktop/Piscine ; clear ; ls"
alias mk="mkdir"
alias evening="git add * && git commit -m 'end of day' && (git push origin master ; git push perso master)"
alias evac="git add * && git commit -m 'this is an emergency commit' && (git push origin master ; git push perso master)"
alias nbcommit="git log | grep Author: | wc -l"
alias zouii="curl parrot.live"


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
alias gcl="git clone"
alias mk="Sep && make"

#commandes overload
alias rm="rm -r"
alias cp="cp -r"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias la="ls -AG"
alias ll="ls -lhG"
alias lla="ls -AGlh"
alias ls="ls -G"

#big finger alias
alias vin=vim

#script alias (to call them without .sh)
alias chklst="Sep ; checklist.sh"

#project modification (might only work in certain dir)
#push swap

alias visu="""python3 pyviz.py `ruby -e "puts (0..100).to_a.shuffle.join(' ')"`"""

#command and script to execute on launch

work

export PATH=$PATH:/Users/tmongell/.brew/bin:/Users/tmongell/.brew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/munki

#troll
#PS1=$PS1$'%{\e[30m%}'
#echo "/usr/share/pool/taquin" >> ~/.zshrc

#alias lol="echo $'\e[7;41mWARNING :\e[0;31m this action is ilegal. Report to the Bocal imediatly for diciplinary actions\e[0m\n\n' ; say 'this action is ilegal. Report to the Bocal immediately for diciplinary actions' ; Say -v Thomas 'cette action est ilegal. Presentez vous au bocal imediatement pour votre punition' ; sleep 1000"
