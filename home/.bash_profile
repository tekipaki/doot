#
# ~/.bash_profile
#
setxkbmap -option caps:swapescape
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
