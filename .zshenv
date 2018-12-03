#.zshenv conf

#set executable file path
typeset -U path
path=(~/homebrew/bin ~/homebrew/sbin ~/bin /bin /sbin /usr/bin /usr/sbin /usr/local/bin /usr/local/sbin /usr/local/go/bin /opt/local/bin /opt/local/sbin /opt/X11/bin $path)

#set editor
export EDITOR="vim"

#set pager
export PAGER="less"

#set man path
MANPATH=/usr/share/man:/usr/local/share/man:/opt/local/share/man

#set home path
export HOME=/home/angkyria

#set term
export TERM=xterm-256color

#export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_NO_ANALYTICS=1
