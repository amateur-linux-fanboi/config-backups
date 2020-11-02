# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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
    PS1=' \033[96m[\t] \[\033[01;32m\]\h\n    \$\[\033[00m\] '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    PS1=' \033[96m[\t] \[\033[01;32m\]\h\n    \$\[\033[00m\] '
    ;;
*)
    ;;
esac

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

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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
[ -r /home/raghu/.byobu/prompt ] && . /home/raghu/.byobu/prompt   #byobu-prompt#

##	The following line was added by me to change the prompt I get in the bash terminal.

#export PS1="\[\033[01;32m\]\H \$"
# I decided to make slight modifications in the original line, instead of learning to fix all the consequences
# of my rudimentary, unsophisticated command.

# Changes were made on line 60.
# Refer to file "/Documents/bashrc Backup" to compare differences
# Changes also made somewhere around line 70 to change the way the prompt looks in xterm and urxvt.

#####################################

# My aliases

#Syncing to HDD
alias syncall='rsync -avh /mnt/Gray\ Terminal/PY\ ProgPrac/ /media/raghu/Re/PY\ ProgPrac/ ;\
rsync -avh /mnt/Gray\ Terminal/LaTeXprac/ /media/raghu/Re/LaTeXprac/ ;\
rsync -avh /mnt/Gray\ Terminal/Novel/ /media/raghu/Re/Novel/ ;\
rsync -avh /mnt/Gray\ Terminal/Documents/ /media/raghu/Re/Documents/ ;\
rsync -avh /mnt/Gray\ Terminal/Research\ Work/ /media/raghu/Re/Research\ Work/ ;\
rsync -avh /mnt/Gray\ Terminal/KerasPrac /media/raghu/Re/ ;\
rsync -avh /mnt/Gray\ Terminal/Finance/ /media/raghu/Re/Finance/ ;\
rsync -avh /mnt/Gray\ Terminal/Lists/ /media/raghu/Re/Lists/ ;\
rsync -avh /mnt/Gray\ Terminal/C\ ProgPrac /media/raghu/Re/C\ ProgPrac'

# Update and upgrade
alias upandup='sudo apt-get update && sudo apt-get upgrade; notify-send "Updates Done" "Your computer is supposed to be up to date!"'

# I don't think I'll use this anymore the vim in the repo is good enough for me.
# Vim Flatpak
#alias fvim='flatpak run org.vim.Vim'

# Flashy clear. Clear followed by neofetch
alias clearflash='clear;neofetch'

#shortcuts for 13 configs. Seems like I'll be visiting them a lot for some time.
alias confi='vim /home/raghu/.config/i3/config'
alias confs='sudo vim /etc/i3status.conf'

# A little setup to keep a record of boot times.
alias speedofboot='echo $(date +%Y%m%d_%H:%M:%S) " " $(systemd-analyze | grep =| cut -d'=' -f2) >>/home/raghu/Documents/Boot_Time.txt'

# An ls alias for 'ls -t', since, as of 16:23, 25/10/2020, I thought I use the option enough to warrant the creation of an alias
alias lt='ls -t'
#####################################

#Setting the cursor to a blinking underline, for the sake of xterm
echo -e -n "\x1b[\x34 q" # changes to steady underline
neofetch