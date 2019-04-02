#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(thefuck --alias)"
eval "$(opam config env)"

# aliases
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias la='ls -lA --color=auto'
alias ll='ls -l --color=auto'
alias source-ruddweb="cd ~/RuddockWebsite && source $HOME/RuddockWebsite/env/ruddweb/bin/activate"
alias source-anaconda="source /opt/anaconda/bin/activate root"
alias deactivate-anaconda="source /opt/anaconda/bin/deactivate root"
alias grep='grep --color=auto'
alias nut='cat ~/.nut'
alias qemu='qemu-system-i386'
alias ocaml='rlwrap ocaml'

# pretty much useless, just for bash practice
calc() {
    if [ -z "$1" ]; then
        echo "usage: calc [expression]" 1>&2
        return 1
    fi
    echo "$@" | bc
}

# a pattern I do a lot when starting a homework assignment.
# copy template to specified directory and rename file to specified name,
# then cd into directory
hw() {
    cp --no-clobber ~/Documents/main.tex $1
    mv --no-clobber $1/main.tex $1/$2.tex
    cd $1
}

# to sign git commits with my private key from the terminal
GPG_TTY=$(tty)
export GPG_TTY

# defaults
export TERMINAL="urxvt"
export EDITOR="vim"
export XDG_CONFIG_HOME="/home/rnv/.config"

# vi keybindings
set -o vi

# powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# fzf bash integration
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash

# unbind esc-c for fzf cd, since I use esc-cc a lot in bash vim mode
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[[ $- =~ i ]] && bind '"\ec": nop'
source /usr/share/nvm/init-nvm.sh
