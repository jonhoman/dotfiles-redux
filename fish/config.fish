set -x -g LS_COLORS "di=38;5;27:fi=38;5;7:ln=38;5;51:pi=40;38;5;11:so=38;5;13:or=38;5;197:mi=38;5;161:ex=38;5;9:"

set -x -g TERM "xterm-256color"

set -x -g LC_ALL en_GB.UTF-8
set -x -g LANG en_GB.UTF-8

set -x PATH /usr/local/opt/python/libexec/bin/ $PATH

# rbenv init
status --is-interactive; and source (rbenv init -|psub)

export GPG_TTY=(tty)
