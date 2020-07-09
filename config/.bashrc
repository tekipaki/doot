# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/.scripts:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=


# Exports
export PATH="$PATH:/home/$USER/.scripts:$HOME/.local/bin:/usr/sbin/:/usr/local/bin"
export EDITOR=vim
export PS4='+$0 line $LINENO: '
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"
export HISTSIZE=5000
export HISTFILESIZE=5000
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


# Aliens!!
alias dc='sdcv'
alias ts='aiksaurus'
alias di='discord'
alias wt='curl wttr.in/hou'
alias whatgpu='glxinfo|egrep "OpenGL vendor|OpenGL renderer*"'
alias pig='ping archlinux.org'
alias uh='ssh cosc5237@program.cs.uh.edu'
alias ps3con='sudo xboxdrv --detach-kernel-driver --led 2'
alias uwu='ssh maki@192.168.1.42'
alias sdate='date +%Y-%m-%d-%H:%M:%S'
alias cd..='cd ..'
alias ..='cd ..'
alias mip='curl ifconfig.me && printf "\n"'
alias fucking='sudo'
alias rick='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias parrot='curl parrot.live'
alias x='startx'
alias v='vim -p'
alias vim='vim -p'
alias bim='vim -p'
alias bi='vim -p'
alias cpu='cpufreq-info | grep -i "cpu freq"'
alias clines='wc -l *.[hc]'
alias py='python3'
alias audiodl="youtube-dl -x --audio-format mp3 --embed-thumbnail --ignore-errors"
alias ps="ps alxf"
alias alisa='alias'
alias mapkeys="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
alias maki='make'
alias scrapechan='python3 ~/.scripts/scrapechan.py'
alias opengl_compatibility="echo 'MESA_GL_VERSION_OVERRIDE=3.3 MESA_GLSL_VERSION_OVERRIDE=330'"
alias ls='ls -hN --color=auto --group-directories-first'
alias ll='ls -alhN --color=auto --group-directories-first'
alias l='ls -hN --color=auto --group-directories-first'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep="grep --color=auto"
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff="diff --color=auto"


# Funyuns
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
	sleep 1.5;
	printf "Windscribe service started\n";
	windscribe connect ranch;
}
function play {
	mpv --no-audio-display "$@"
}
function got {
	git clone https://github.com/patchuuli/$1
}
function clone {
	urxvt -cd "$(pwd)" &
}
function cd {
	clear;
    builtin cd "$@";
	ls -cF;
}
function site_dl {
	wget --recursive --no-clobber --page-requisites --html-extension --convert-links --restrict-file-names=windows --domains $1 --no-parent $1
}
function wgetdir {
	wget -r -np -R "index.html*" $1
}


# Prompt
#PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
PS1='\[\033[01;32m\]>\[\033[00m\] '
