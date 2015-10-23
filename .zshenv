#.zshenv conf

#set executable file path
typeset -U path
path=(~/bin /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin /opt/local/bin /opt/local/sbin $path)

#set editor
export EDITOR="vim"

#set pager 
export PAGER="less"

#set man path
MANPATH=/usr/share/man:/usr/local/share/man:/opt/local/share/man

#set home path
export HOME=/Users/angkyria

#set term
export TERM=xterm-256color
