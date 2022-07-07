# If not running interactively, don"t do anything
[[ $- != *i* ]] && return

PS1="[\u@\h \W]\$ "

export USR_BIN=~/Binary
export USR_CODING=~/Coding
export USR_DOWNLOADS=~/Downloads
export USR_PICS=~/Pictures

export PATH=$PATH:$USR_BIN

export home_server1="zerdicorp@188.187.188.37"

mkdir -p $USR_BIN $USR_CODING $USR_DOWNLOADS $USR_PICS

if test -f "$USR_BIN/als"; then
	alias ols="/usr/bin/ls"
	alias ls="als"
fi

alias vpn='f(){ sudo openvpn --config ~/.vpn/remote/"$1" --auth-user-pass ~/.vpn/login.conf; unset -f f; }; f'
alias vi="vim"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
