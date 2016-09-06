# some more ls aliases
alias ll='ls --color -alF --human-readable --group-directories-first'
alias la='ls -A --human-readable'
#alias l='ls -CF --human-readable'

# should install colorgcc, just enter:
# sudo apt install colorgcc
alias gcc='colorgcc'

# enable color support of ls and also add handy aliases
# When you simply run grep --color it implies grep --color=auto
# which detects whether the output is a terminal and if so enables
# colors. However, when it detects a pipe it disables coloring.
# So we should use --color=auto, which will always enable coloring
# and override the automatic detection, and you will get the color
# highlighting in less or more
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep -n --color=always --exclude=\.Rhistory --exclude-dir=\.Rproj\.user'
    alias fgrep='fgrep --color=always'
    alias egrep='egrep --color=always'
fi


# A great extension for colorizing tools
# should install download the "Generic Colouriser" installer
# taken from here: http://korpus.juls.savba.sk/~garabik/software/grc/

if [ -e /usr/bin/grc ]; then
	alias netstat='grc netstat'
	alias ping='grc ping'
	alias tail='grc tail'
	alias ps='grc ps aux'
else
	echo -e "\n${BWhite}For colorizing linux tools (ping/netstat/tail/ps) ${NC},"  \
        "\n${BRed}you should install \"grc\" by entering:\"apt-get install grc\" ${NC}\n"
fi



# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias reload='echo "reloading bashrc" && source ~/.bashrc'

alias du='du --human-readable'

alias pskill='pkill'

# prompt before overwrite
alias cp='cp -i'
