# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


###################### Include other files ###########################

# Separate file for alias definitions
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
 
# Separate functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Separate colors file
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi
 
######################################################################


######################## History settings ############################

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history

# Have added a time stamp information associated with each history entry is 
# written to the history file:
export HISTTIMEFORMAT="%d/%m/%y %T  " 

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

######################################################################


# Show on the titlebar the current path
PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'


# Month names are now written in English instead of Hebrew
export LC_TIME=en_US.UTF-8
<<COMMENT1
case "$TERM" in
xterm*|rxvt*)
    # This tells bash: before showing the prompt, run this
    #echo "Setting title to current path "

    welcome_me()
    {
	#echo "Welcome me was invoked!!!"
	#echo -ne "\033]0;▶ $BASH_COMMAND \007" #worked in the past
       PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo -ne "\033]0;${PWD}\007"'
	#echo -ne "\033]0;▶ echo -n $BASH_COMMAND; echo -ne \007"
    }

    # The DEBUG signal simply announces the last-run command
    # trap show_command_in_title_bar DEBUG;
    trap welcome_me DEBUG;

    ;;
*)
    echo "failed in case...."		
    ;;
esac

COMMENT1
# Now we can set the title of the terminal with terminal_title my title
<<COMMENT2
function terminal_title ()
{
    export THIS_TERMINAL_TITLE="$@"
}
# Here's a good default
#export THIS_TERMINAL_TITLE=`echo -n $BASH_COMMAND`
terminal_title `pwd`
COMMENT2



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
force_color_prompt=yes

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

# If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac

# Custom title-setting code that adds a triangle play-arrow
# if the terminal is not waiting on the prompt


# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'


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

#I would like the MAN pages to be colorful. so should export
# enviroment variable make sure most is installed if not, 
# install it via:  apt-get install most.

if [ -e /usr/bin/most ]; then
	export PAGER="most"
else

	echo -e "\n${BWhite}For color manual pages, install \"most\" by entering: ${NC}"  \
        "\n${BRed}\"apt-get install most\" ${NC}\n"
fi

# present on the title the current path
#PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND ; }"'echo -ne "\033]0;${PWD}\007"'

#LANG=C ls -la --group-directories-first
