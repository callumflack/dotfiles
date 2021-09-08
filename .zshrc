# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# use $HOME? $ export ZSH=$HOME/.oh-my-zsh
export ZSH="/Users/sticktoitiveness/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# plugins=(git npm k zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ------------------------------------
# User configuration
# ------------------------------------

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

# REPOS
# export PATH_TO_PROJECTS="$HOME/REPOS"

# PATH
## export PATH="$HOME/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# VS Code
## export EDITOR="code -w" ?
export EDITOR="Visual Studio Code"

# Homebrew
# export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Java
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
# export PATH=${JAVA_HOME}/bin:$PATH

# NPM
## export PATH="$HOME/node_modules/bin:$PATH"
## https://gist.github.com/DanHerbert/9520689
export PATH="$HOME/.npm-packages/bin:$PATH"

# Yarn
## This seems to latch onto .npmrc settings, if you have it.
## Currently reside in ./config?
## export PATH="$PATH:/opt/yarn-[version]/bin"
## export PATH="$PATH:`yarn global bin`"
## export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$(yarn global bin):$PATH"

# NVM (DEPRECATED) — Now using N
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Ruby
# Add RVM to PATH for scripting.
# Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
## Load RVM into a shell session *as a function*
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# ------------------------------------

# Aliases

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Possible TODOs
# Set alisases externally, eg:
# source ~/.dotfiles/exports
# source ~/.dotfiles/aliases

# ------------------------------------


# Shortcuts
alias ls='ls -al'
alias gitc='code ~/.gitconfig'
## to restart your terminal after changing .bash_profile
# alias editbash='code ~/.bash_profile'
# alias resource='source ~/.bash_profile && echo "Done!"'
alias zc="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

# Git specific aliases
# Note: these aliases have been moved to .gitconfig
alias g='git'

# Node using N
# https://www.notion.so/callum/Multiple-Node-versions-on-a-Mac-20bb4f1bf5314072bd61055ed7840c7c
# using n: https://github.com/tj/n
# alias node10='export PATH="/usr/local/opt/node@10/bin:$PATH"'
# /Users/sticktoitiveness/.nvm/versions/node/v15.3.0/bin/node

# NVM (now removed)
# export NVM_DIR="$HOME/.nvm"
# Load nvm
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# Load nvm bash_completion
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# NPM
# alias nr='npm run'
# alias rd='npm run dev'
# alias ni='npm install'
# alias nid='npm install -D'
# alias nui='npm uninstall'

# PNPM
# https://pnpm.io/cli/add
alias nr='pnpm run'
alias nd='pnpm run dev'
alias ni='pnpm install'
alias nid='pnpm install -D'
alias nu='pnpm uninstall'
alias nre='pnpm remove'
alias nup='pnpm update'

# Yarn
alias y='yarn'
alias ya='yarn add'
alias yd='yarn dev'
alias yb='yarn build'
alias ys='yarn start'
alias yg='yarn generate'

# Postgres
alias pgstart='pg_ctl -D /usr/local/var/postgres start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop'

# Docker
alias dcstart='docker-compose start'
alias dcstop='docker-compose stop'
alias dcup='docker-compose up'
alias dcdown='docker-compose down'

# Jekyll & Python quick starts
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'

# Urbit
alias u='~/urbit/urbit'