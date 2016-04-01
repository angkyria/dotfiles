for file in ~/.{bash_prompt,aliases,functions}; do
        [ -r "$file" ] && source "$file"
done
unset file

#Paths
export PATH=~/bin:/bin/:/sbin/:/usr/bin/:/usr/sbin/:/usr/local/bin/:/opt/local/bin:/opt/local/sbin/:/usr/local/go/bin:/opt/X11/bin:PATH

#Bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ];then
	. /usr/local/share/bash-completion/bash_completion
fi

#Git completion
if [ -f ~/.git-completion ];then
	. ~/.git-completion
fi

#Default Editor
export EDITOR="/usr/bin/vim"

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
