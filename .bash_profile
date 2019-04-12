eval "$(pyenv init -)"   
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH

# Useful aliases
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias dotfiles="cd ~/dotfiles/"
alias cl="clear"
alias mdo="cd ~/python/mdo/ && python MDO.py"

# Colorful mac terminal 
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

# added by Anaconda3 4.4.0 installer
export PATH="/Users/minahabi/anaconda/bin:$PATH"

# added by Anaconda3 4.4.0 installer
export PATH="/Users/minahabi/anaconda/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH=$HOME/.toolbox/bin:$PATH
