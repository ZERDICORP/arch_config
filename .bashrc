# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

PS1="[\u@\h \W]\$ "

export USR_BIN=~/Binary
export USR_CODING=~/Coding
export USR_DOWNLOADS=~/Downloads
export USR_PICS=~/Pictures

export PATH=$PATH:$USR_BIN

export home_server1="zerdicorp@188.187.188.37"
export server1="zerdicorp@80.249.146.66"

mkdir -p $USR_BIN
mkdir -p $USR_CODING
mkdir -p $USR_DOWNLOADS
mkdir -p $USR_PICS

if test -f "$USR_BIN/als"; then
   alias ls="als" 
fi

alias vi="vim"
