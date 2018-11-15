# .bashrc

# Important for pyenv to work
eval "$(pyenv init -)"

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Use VI style
set -o vi

# Correct small typing mistakes of cd
shopt -s cdspell

# Some useful aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cl="clear"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
