# ~/.bashrc
#

#sl
stty -ixon

# Enable completion
#source /etc/bash/bashrc.d/bash_completion.sh

#rick
#sl
#parrot

# Vars
export PATH="$PATH:/home/$USER/.scripts:$HOME/.local/bin:/usr/sbin/"
export PS4='+$0 line $LINENO: '
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"
export EDITOR=vim
export HISTSIZE=5000
export HISTFILESIZE=5000
#export LC_ALL="ksh_DE.UTF-8"

# do not overwrite files when redirecting output by default.  set -o noclobber
set -o noclobber
# wrap these commands for interactive use to avoid accidental overwrites.
#rm() { command rm -i "$@"; }
cp() { command cp -i "$@"; }
mv() { command mv -i "$@"; }

# Aliases
alias pup='sudo parrot-upgrade'
alias rick='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias parrot='curl parrot.live'
alias crypto='curl rate.sx'
alias x='startx'
alias v='vim -p'
alias vim='vim -p'
alias bim='vim -p'
alias cpu='cpufreq-info | grep -i "cpu freq"'
alias bi='vim -p'
alias clines='wc -l *.[hc]'
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias py='python3'
alias play='mpv --no-audio-display'
alias audiodl="youtube-dl -x --audio-format mp3 --embed-thumbnail --ignore-errors"
alias npr='firefox https://www.houstonpublicmedia.org/listen-live/'
alias ps="ps alxf"
alias alisa='alias'
alias mapkeys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias maki='make'
alias scrapechan='python3 ~/.scripts/scrapechan.py'
alias opengl_compatibility="echo 'MESA_GL_VERSION_OVERRIDE=3.3 MESA_GLSL_VERSION_OVERRIDE=330'"

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
function wsc {
	sudo systemctl start windscribe;
	wait;
	printf "Windscribe service started\n";
	windscribe connect ranch;
}
function got {
	git clone https://github.com/uwuzi/$1
}
function clone {
	#dir=$(pwd)
	#konsole --workdir $dir
	urxvt -cd "$(pwd)" &
	#konsole --workdir "$(pwd)" &
}
function cd {
	clear;
    builtin cd "$@";
	ls -cF;
}
function site_dl {
	wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains $1 --no-parent $1
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
	PS1='${debian_chroot:+($debian_chroot)}\[\033[01;40m\]\u\[\033[01;36m\]@\[\033[01;38m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\[\033[01;33m\](>^_^)> '
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

