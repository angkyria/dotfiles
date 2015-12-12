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


#docker conf
export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/angkyria/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
