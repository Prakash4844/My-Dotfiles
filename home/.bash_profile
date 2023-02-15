#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


## Add Environment variable like this
#export PATH=$PATH:/home/zaphkiel/.local/bin/

export PATH=$PATH:/usr/local/go/bin

#-------------------------Git branch info
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\e[1;31m[\u@\e[0m\e[1;33m\h \e[0m\e[1;32m\W]\e[0m\e[0;33m\$(parse_git_branch) \e[0m $ "
