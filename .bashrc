#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='\e[1;31m\u\e[1;33m@\e[1;34m\h\e[0m \W]\$ '

if [ "`id -u`" -eq 0 ]; then
    PS1="[ \\[\e[1;33m\]| \u | \\[\e[1;36m\]\\[\e[49m\] \W \\[\e[0m\] ]\\[\e[0;37m\] ";
else
    PS1="\\[\e[1;36m\][ \\[\e[1;33m\]| \u | \W $\\[\e[1;36m\] ]\\[\e[0;37m\] ";
fi

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null

alias neofetch='neofetch --w3m --source ~/Pictures/emmaFace.jpg'
