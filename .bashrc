
## ---------------
##     Aliases
## ---------------
# https://github.com/startup-class/dotfiles/blob/master/.bashrc

alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
set -o noclobber

alias ..='cd ..'
alias ...='cd ..;cd ..'
alias la="ls -A"
alias md='mkdir'
alias cl='clear'

alias ll="ls -alrtF --color"
alias l="ls -CF"

alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'

alias m='less'

alias du='du -ch --max-depth=1'
alias treeacl='tree -A -C -L 2'
