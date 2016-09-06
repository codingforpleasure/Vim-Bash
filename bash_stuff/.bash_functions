# Executes gedit and removes the job from the current shell,
# so now the current shell is not getting blocked.
gedit(){
/usr/bin/gedit "$1" & disown
}


# Extracts archive files of any type with hassle-free :)
extract () {
if [ -f $1 ] ; then
  case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar xvf $1      ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       rar x $1       ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip $1       ;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'..." ;;
  esac
else
  echo "'$1' is not a valid file!"
fi
}


# cd backwards few levels
    function cdn(){
    cmd=""
    for (( i=0; i < $1; i++)) 
    do  
        cmd="$cmd../"
    done
    cd "$cmd"
    }
