for file in ~/.{bash_prompt,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file

#Paths
export PATH=/opt/local/bin:/opt/local/sbin/:/bin/:/sbin/:/usr/bin/:/usr/sbin/:/usr/local/bin/:PATH

#Default Editor
export EDITOR="/usr/bin/local/vim"

#MANPAGER
export MANPAGER="less"

#Ls Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#Default blocksize for ls, df, du
export BLOCKSIZE=1k

#History
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
export  HISTTIMEFORMAT="%h %d %H:%M:%S "
