work="~/Desktop/WiP/webserv"
#custom interface
if [ -z $RCOLOR ]
then 
	export RCOLOR=$(echo $RANDOM % 6 + 91 | bc)
else 
	export RCOLOR=$(echo "($RCOLOR % 6) + 91" | bc)
fi
#PS1="%n@%m:%~:[%T]$ "#colorless prompt
PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;'$RCOLOR$'m%}%~%{\e[0m%}:%{\e[0;1;7;32m%}[%T]%{\e[0m%}\$ '

alias red="PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;'$RCOLOR$'m%}%3~%{\e[0m%}:%{\e[0;1;7;31m%}[%T]%{\e[0m%}\$ '"
alias green="PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;'$RCOLOR$'m%}%3~%{\e[0m%}:%{\e[0;1;7;32m%}[%T]%{\e[0m%}\$ '"
alias blue="PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;'$RCOLOR$'m%}%3~%{\e[0m%}:%{\e[0;1;7;34;47m%}[%T]%{\e[0m%}\$ '"
alias yellow="PS1=$'%{\e[1m%}%n@%m:%{\e[0;3;4;'$RCOLOR$'m%}%3~%{\e[0m%}:%{\e[0;1;7;33m%}[%T]%{\e[0m%}\$ '"

#vars
export PATH=$PATH:$HOME/bin
export LSCOLORS="Gxfxcxdxbxegedabagacad" #see ls(1)
export APP_CACHE="$HOME/Library/Caches:$HOME/Library/Application Support/Slack/Service Worker/CacheStorage:$HOME/Library/Application Support/Slack/Cache:$HOME/Library/Application Support/Code/CachedData"
#alias

alias sep="echo '\e[33m=========================================================================================\e[m'"

alias wp="clear ; cd $work ; green"
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
alias gtest="cd ~/goinfre/ && red && clear"
alias example="cd ~/Desktop/examples ; sep ; clear ; ls"
alias custom="vim ~/.zshrc ; source ~/.zshrc"
alias re="clear ; unalias -a ; source ~/.zshrc && (sep ; echo 'reloaded zsh config file' ; sep) || echo $'\033[1;31m cannot reload zsh config file\033[0m'"
alias gstatus="git status"
alias piscine="cd ~/Desktop/Piscine ; clear ; ls"
alias mk="mkdir"
alias evening="git add * && git commit -m 'end of day' && (git push origin master ; git push perso master)"
alias evac="git add * && git commit -m 'this is an emergency commit' && (git push origin master ; git push perso master)"
alias nbcommit="git log | grep Author: | wc -l"
alias zouii="curl parrot.live"
alias glast="git log -1"
alias dus="du -csh * | sort -rh"
alias go=' echo cd $(pwd) | pbcopy'

#before I learn to load template in vim :
mkclass(){
	if [ -z $1 ]
	then
		echo "give the name of the class to create"
		return
	fi
	cat $HOME/Desktop/library/template/Class.hpp | 
		sed s/Class/$1/g > $1.hpp
	vim -c Stdheader -c x $1.hpp
	cat $HOME/Desktop/library/template/Class.cpp | 
		sed s/Class/$1/g > $1.cpp
	vim -c Stdheader -c x $1.cpp
}

#makefile creation alias
alias mf-saveold="mv ./Makefile ./.Makefile.old"
alias mf-addsrc='ls -tr *.c | cat -e | sed "s/\\$/ \\\/g" >> Makefile'
alias makefile="cp -iv ~/Desktop/library/template/Makefile ./Makefile"

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
alias python=python3.10
alias py=python3.10
alias pip=pip3.10

#big finger alias
alias vin=vim

#script alias (to call them without .sh)
alias chklst="Sep ; checklist.sh"

#project modification (might only work in certain dir)

alias visu='""python3 pyviz.py `ruby -e "puts (0..100).to_a.shuffle.join(' ')"`""'
alias netp="cd ~/Desktop/WiP/net_practice"
new_map(){
	cp ~/Desktop/WiP/cub3d/maps/template.cub $1.cub
	vim $1.cub
}

#functions
stfu(){
	while [ 1 ]
	do
		pkill -i $1 # && say "shut up $1"
		sleep 1
	done &
}

#command and script to execute on launch
#wp
defaults write com.apple.CrashReporter DialogType none #disable crash repport. replace none by crashreport to reverse

export PATH=$PATH:$HOME/.brew/bin:/usr/local/munki

#troll
#PS1=$PS1$'%{\e[30m%}'
#echo "/usr/share/pool/taquin" >> ~/.zshrc

#alias lol="echo $'\e[7;41mWARNING :\e[0;31m this action is ilegal. Report to the Bocal imediatly for diciplinary actions\e[0m\n\n' ; say 'this action is ilegal. Report to the Bocal immediately for diciplinary actions' ; Say -v Thomas 'cette action est ilegal. Presentez vous au bocal imediatement pour votre punition' ; sleep 1000"

# HSTR configuration - add this to ~/.zshrc
alias hh=hstr                    # hh to be alias forstory -r
setopt histignorespace           # skip cmds w/ leading space from history
setopt histignorealldups         # no duplicate
#setopt share_history
export HSTR_CONFIG=monochromatic
export HSTR_CONFIG=hicolor       # get more colors
bindkey -s "\C-r" "\C-a hstr -- \C-j"     # bind hstr to Ctrl-r (for Vi mode check doc)
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=${HISTSIZE}
export PROMPT_COMMAND="history -a; history -n; ${PROMPT_COMMAND}"

export PATH=$PATH:$HOME/Desktop/PiscineStalker/connectors


showbootmsg
stty sane
