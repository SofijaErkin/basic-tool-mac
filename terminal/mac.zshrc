# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export HOMEBREW_NO_AUTO_UPDATE=true
# export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=true
# export HOMEBREW_NO_INSTALL_CLEANUP=true


# You may uncomment he following lines if you want 'ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ll $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'

# Adding the pydbgp to the environment variable 

export PATH=$PATH:~/Komodo-PythonRemoteDebugging-12.0.1-91869-macosx/python3lib


# Path to Ctags under /usr/local/bin
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
#export PATH=/usr/local/bin/ctags:$PATH

# Path to your oh-my-zsh installation.

export ZSH="/Users/yq/.oh-my-zsh"

PATH=$PATH:/usr/local/mysql/bin

alias mysql=/usr/local/mysql/bin/mysql 

alias mysqladmin=/usr/local/mysql/bin/mysqladmin

PATH=$PATH:/usr/local/mysql/support-files

# export PATH=/usr/local/mongodb/bin:$PATH

export PATH=/usr/local/mongodb/bin:$PATH

export PATH=/usr/local/redis/bin:$PATH

export PATH=/usr/local/nginx/sbin:$PATH

export PATH=/usr/local/reids:$PATH

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME=pygmlion
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# ZSH_THEME=agnoster
# ZSH_THEME="sunrise"

ZSH_THEME="ys"



# Add env.sh
#

. ~/.env.sh

# Notices: There is no colored-man, so comment that.
# plugins=(colored-man)

plugins=(git colorize github jira vagrant virtualenv pip python brew osx zsh-syntax-highlighting)

plugins+=(fasd)

#

# Use macvim for editing config files, you can set it to whatever editor you want 

alias zshconfig="gvim ~/.zshrc"

alias envconfig="gvim ~/Projects/config/env.sh"

alias xcode="open -a Xcode"

#alias debian="ssh -p 50022 foruo@debian"
alias debian="ssh foruo@debian"

alias remotedebian="ssh foruo@remotedebian"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.



source $ZSH/oh-my-zsh.sh



# plugins=(git fasd)

# source /Users/yq/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# plugins=(zsh-syntax-highlighting)

# ENABLE_CORRECTION="true"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(pyenv init -)"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

eval "$(rbenv init -)"

export NVM_DIR="/Users/yq/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
