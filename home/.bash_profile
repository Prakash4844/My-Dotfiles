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
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\e[5m\]\$(parse_git_branch)\[\033[00m\] $ "
