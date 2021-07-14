nyaa="
⣿⡟⠙⠛⠋⠩⠭⣉⡛⢛⠫⠭⠄⠒⠄⠄⠄⠈⠉⠛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡇⠄⠄⠄⠄⣠⠖⠋⣀⡤⠄⠒⠄⠄⠄⠄⠄⠄⠄⠄⠄⣈⡭⠭⠄⠄⠄⠉⠙
⣿⡇⠄⠄⢀⣞⣡⠴⠚⠁⠄⠄⢀⠠⠄⠄⠄⠄⠄⠄⠄⠉⠄⠄⠄⠄⠄⠄⠄⠄
⣿⡇⠄⡴⠁⡜⣵⢗⢀⠄⢠⡔⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⣿⡇⡜⠄⡜⠄⠄⠄⠉⣠⠋⠠⠄⢀⡄⠄⠄⣠⣆⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢸
⣿⠸⠄⡼⠄⠄⠄⠄⢰⠁⠄⠄⠄⠈⣀⣠⣬⣭⣛⠄⠁⠄⡄⠄⠄⠄⠄⠄⢀⣿
⣏⠄⢀⠁⠄⠄⠄⠄⠇⢀⣠⣴⣶⣿⣿⣿⣿⣿⣿⡇⠄⠄⡇⠄⠄⠄⠄⢀⣾⣿
⣿⣸⠈⠄⠄⠰⠾⠴⢾⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⢁⣾⢀⠁⠄⠄⠄⢠⢸⣿⣿
⣿⣿⣆⠄⠆⠄⣦⣶⣦⣌⣿⣿⣿⣿⣷⣋⣀⣈⠙⠛⡛⠌⠄⠄⠄⠄⢸⢸⣿⣿
⣿⣿⣿⠄⠄⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠈⠄⠄⠄⠄⠄⠈⢸⣿⣿
⣿⣿⣿⠄⠄⠄⠘⣿⣿⣿⡆⢀⣈⣉⢉⣿⣿⣯⣄⡄⠄⠄⠄⠄⠄⠄⠄⠈⣿⣿
⣿⣿⡟⡜⠄⠄⠄⠄⠙⠿⣿⣧⣽⣍⣾⣿⠿⠛⠁⠄⠄⠄⠄⠄⠄⠄⠄⠃⢿⣿
⣿⡿⠰⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⠩⠔⠒⠉⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠐⠘⣿
⣿⠃⠃⠄⠄⠄⠄⠄⠄⣀⢀⠄⠄⡀⡀⢀⣤⣴⣤⣤⣀⣀⠄⠄⠄⠄⠄⠄⠁⢹
"


sleepycat="
      |\      _,,,---,,_
\w    /,\`.-'\`'    -.  ;-;;,_
     |,4-  ) )-,_. ,\ (  \`'-'
    '---''(_/--'  \`-'\_)
"

face1="(≧◡≦)"
face2="(つ≧▽≦)つ"

# Prompt
#prompt="★~(◠﹏◕✿)"
#echo "$nyaa"
neofetch
PS1='$face2[\w] '

export PATH="$PATH:`pwd`/flutter/bin"
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME/.scripts:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

shopt -s checkwinsize
shopt -s histappend
shopt -s globstar

# make tab cycle through commands after listing
bind '"\t":menu-complete'
bind "set show-all-if-ambiguous on"
bind "set completion-ignore-case on"
bind "set menu-complete-display-prefix on"


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Exports
export PATH="$PATH:/home/$USER/.scripts:$HOME/.local/bin:/usr/sbin/:/usr/local/bin:$HOME/.local/bin/scenicview/bin"
export JAVA_HOME='/usr/lib/jvm/java-11-openjdk-amd64'
#export PATH_TO_FX=
export EDITOR=vim
export PS4='+$0 line $LINENO: '
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"
export HISTSIZE=5000
export HISTFILESIZE=5000
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
export lib_local="/home/$USER/.local/lib"


# Aliens!!
alias capswap="setxkbmap -option caps:swapescape"
alias wine32="WINEPREFIX="$HOME/.wine32" WINEARCH=win32 wine wineboot"
alias surfshark-vpn="sudo surfshark-vpn"
alias apt="sudo apt"
alias apt-get="sudo apt-get"
alias ...='cd ../..'
alias codi='codium'
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
	git clone https://github.com/misusi/$1
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
