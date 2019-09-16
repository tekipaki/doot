# ~/.bashrc
#

#sl
stty -ixon

# Enable completion
#source /etc/bash/bashrc.d/bash_completion.sh

# Vars
export PATH="$PATH:/home/$USER/.scripts:$HOME/.local/bin:/usr/sbin/:/opt/*"
export PS1='\[\e[1;39m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
export PS4='+$0 line $LINENO: '
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"
export EDITOR=vim
export HISTSIZE=5000
export HISTFILESIZE=5000

# do not overwrite files when redirecting output by default.
set -o noclobber

# wrap these commands for interactive use to avoid accidental overwrites.
#rm() { command rm -i "$@"; }
cp() { command cp -i "$@"; }
mv() { command mv -i "$@"; }

# Aliases
alias x='startx'
alias v='vim -p'
alias vim='vim -p'
alias clines='wc -l *.[hc]'
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias py='python3'
alias vi3='vim ~/.config/i3/config'
alias vb='vim ~/.config/bspwm/bspwmrc'
alias play='mpv --no-audio-display'
alias audiodl="youtube-dl -x --audio-format mp3 --embed-thumbnail --ignore-errors"
alias npr='firefox https://www.houstonpublicmedia.org/listen-live/'
alias osudir="cd $HOME/.wine/drive_c/users/Local\ Settings/Application\ Data/osu\!"
alias ps="ps alxf"
alias bim='vim -p'
alias bi='vim -p'
alias alisa='alias'
alias cs2440='firefox https://www.dropbox.com/sh/hh95knm4xlr59so/AADWle-4jyQ4eDCb1U143J24a?dl=0'
alias fixgnome='dconf-editor org.gnome.shell.keybindings'
alias gl="g++ main.cpp -lGL -lglfw -lGLEW && MESA_GL_VERSION_OVERRIDE=3.3 MESA_GLSL_VERSION_OVERRIDE=330 ./a.out"

alias transmission='transmission-gtk'
alias mapkeys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias reboot='sudo reboot'

# Functions
function aur {
	if [ "$#" -ne 0 ]; then
		git clone https://aur.archlinux.org/$1;
		wait;
		cd ./$1;
		makepkg -si;
		wait;
		cd ..
	else
		printf "USAGE: aur <package-name>\n";
	fi
}
function got {
	git clone https://github.com/tekipaki/$1
}
function cd {
	clear;
    builtin cd "$@";
	ls;
    }

function clone {
	urxvt -cd $PWD >/dev/null 2>&1 &
	#xfce4-terminal --working-directory=$PWD >/dev/null 2>&1 &
}

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

shopt -s histappend
shopt -s checkwinsize
#shopt -s globstar
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\$(print_title)\a\]$PS1"
    __el_LAST_EXECUTED_COMMAND=""
    print_title () 
    {
        __el_FIRSTPART=""
        __el_SECONDPART=""
        if [ "$PWD" == "$HOME" ]; then
            __el_FIRSTPART=$(gettext --domain="pantheon-files" "Home")
        else
            if [ "$PWD" == "/" ]; then
                __el_FIRSTPART="/"
            else
                __el_FIRSTPART="${PWD##*/}"
            fi
        fi
        if [[ "$__el_LAST_EXECUTED_COMMAND" == "" ]]; then
            echo "$__el_FIRSTPART"
            return
        fi
        #trim the command to the first segment and strip sudo
        if [[ "$__el_LAST_EXECUTED_COMMAND" == sudo* ]]; then
            __el_SECONDPART="${__el_LAST_EXECUTED_COMMAND:5}"
            __el_SECONDPART="${__el_SECONDPART%% *}"
        else
            __el_SECONDPART="${__el_LAST_EXECUTED_COMMAND%% *}"
        fi 
        printf "%s: %s" "$__el_FIRSTPART" "$__el_SECONDPART"
    }
    put_title()
    {
        __el_LAST_EXECUTED_COMMAND="${BASH_COMMAND}"
        printf "\033]0;%s\007" "$1"
    }
    
    # Show the currently running command in the terminal title:
    # http://www.davidpashley.com/articles/xterm-titles-with-bash.html
    update_tab_command()
    {
        # catch blacklisted commands and nested escapes
        case "$BASH_COMMAND" in 
            *\033]0*|update_*|echo*|printf*|clear*|cd*)
            __el_LAST_EXECUTED_COMMAND=""
                ;;
            *)
            put_title "${BASH_COMMAND}"
            ;;
        esac
    }
    preexec_functions+=(update_tab_command)
    ;;
*)
    ;;
esac



