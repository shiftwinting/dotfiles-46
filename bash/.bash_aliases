#!/bin/bash

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias cd..="cd .."

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
alias :q="exit"
alias q="exit"
alias c="clear"
alias ch="history -c && > ~/.bash_history"
alias d="cd ~/Desktop"
alias g="git"
alias py="python3"
alias ll="ls -l"
alias m="man"
alias gh='history|grep'
# Protect yourself from file removal accidents
alias trash='mv --force -t ~/.local/share/Trash '
alias chmox='chmod -x'
# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'
