# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH=$PATH:~/Binary

alias ls='ls_advanced'
alias vi='vim'

PS1='[\u@\h \W]\$ '
