# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/Binary
export home_server1='zerdicorp@188.187.188.37'
export server1='zerdicorp@80.249.146.66'

alias ls='als'
alias vi='vim'

PS1='[\u@\h \W]\$ '
