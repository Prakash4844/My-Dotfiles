#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


## Add Environment variable like this
#export PATH=$PATH:/home/zaphkiel/.local/bin/

export PATH=$PATH:/usr/local/go/bin

#-------------------------Custom Bash prompt

PS1='\[\e[0;1;3;38;5;76m\]\d \[\e[0m\]| \[\e[0;1;91m\]\u\[\e[0;91m\]@\[\e[0;1;38;5;184m\]\H \[\e[0m\]| \[\e[0;1;3;96m\]\w \[\e[0m\]> \[\e[0;1;5;92m\]$(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m\]|\[\e[0;1;5;34m\]$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR==1{split($2,a," ");print a[1]}'"'"')\n  \[\e[0;1;5;38;5;165m\]\$\[\e[0m\]:\[\e[0m\]'
