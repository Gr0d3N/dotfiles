# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/minahabi/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Odin Retrieval Script path
export PATH=$PATH:$HOME/workplace/.odin-tools/env/OdinRetrievalScript-1.0/runtime/bin
# Anaconda path
PATH=$PATH:$HOME/anaconda/bin
# Brazil and SDETools path
export BRAZIL_CLI_BIN=/apollo/env/SDETools/bin
export PATH=$BRAZIL_CLI_BIN:$PATH
# Path for code reviews
export PATH="$PATH":~/bin

# export MANPATH="/usr/local/man:$MANPATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cl="clear"
alias mdo="cd ~/Packages/Python/MDO/ && python MDO.py"
alias dotfiles="cd ~/Packages/Others/dotfiles/"
alias queries="cd ~/workplace/AGLNetworkPlanningQueries/src/AGLNetworkPlanningQueries/"
alias mount_pdrive="mount_smbfs //minahabi@ant.amazon.com/home/sea/005/minahabi ~/pdrive"
alias mount_cpdrive="mount_smbfs //minahabi@ant/dept/CapacityPlanning/ ~/cpdrive"
alias mount_agldrive="mount_smbfs //minahabi@ant/dept/Amazon-Gloval-Logistics/ ~/agldrive"
alias pdrive="cd ~/pdrive"
alias cpdrive="cd ~/cpdrive"
alias agldrive="cd ~/agldrive"
alias trash="rmtrash"
alias notes="cd ~/Notes/"
alias analysis="cd /Users/minahabi/workplace/AGLNetworkPlanningAnalysis/src/AGLNetworkPlanningAnalysis"

# git alias
alias gs="git status "
alias ga="git add "
alias gb="git branch "
alias gc="git commit "
alias gd="git diff "
alias gch="git checkout "

# brazil alias
alias bb="brazil-build"
alias bre="brazil-runtime-exec"

# odin alias
alias odin="ssh -f -N -L 2009:localhost:2009 minahabi.aka.amazon.com"

# aws ec2 ssh alias
alias ec2_jupyter="ssh -i development_ec2_instance.pem -L 8000:localhost:8888 ubuntu@ec2-54-245-103-38.us-west-2.compute.amazonaws.com"

# alias for jq for Jupyter notebooks git
alias nbstrip_jq="jq --indent 1 \
    '(.cells[] | select(has(\"outputs\")) | .outputs) = []  \
    | (.cells[] | select(has(\"execution_count\")) | .execution_count) = null  \
    | .metadata = {\"language_info\": {\"name\": \"python\", \"pygments_lexer\": \"ipython3\"}} \
    | .cells[].metadata = {} \
    '"

# function for false-positives and diff-divergences for jupyter notebooks git 
function nbstrip_all_cwd {
    for nbfile in *.ipynb; do
        echo "$( nbstrip_jq $nbfile )" > $nbfile
    done
    unset nbfile
}           

# Vi mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH=$HOME/.toolbox/bin:$PATH  

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/minahabi/anaconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/minahabi/anaconda/etc/profile.d/conda.sh" ]; then
        . "/Users/minahabi/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/minahabi/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

