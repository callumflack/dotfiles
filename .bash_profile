# Most things here come from:
# https://github.com/mdo/config/blob/master/.bash_profile
# https://github.com/ajmalsiddiqui/dotfiles/blob/master/.bash_profile


# ------------------------------------
# Custom bash prompt
# Source: kirsle.net/wizards/ps1.html
# ------------------------------------

## Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
## Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
## Custom the prompt
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"


# ------------------------------------
# Exports
# ------------------------------------

export PATH_TO_PROJECTS="$HOME/REPOS"

# PATH
## export PATH="$HOME/bin:$PATH"
export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Autojump
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# Homebrew
export PATH="/usr/local/bin:$PATH"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_141.jdk/Contents/Home"
export PATH=${JAVA_HOME}/bin:$PATH

# NPM
## export PATH="$HOME/node_modules/bin:$PATH"
## https://gist.github.com/DanHerbert/9520689
export PATH="$HOME/.npm-packages/bin:$PATH"

## Yarn
## This seems to latch onto .npmrc settings, if you have it.
## export PATH="$PATH:/opt/yarn-[version]/bin"
## export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.yarn/bin:$PATH"

# VS Code
## export EDITOR="code -w" ?
export EDITOR="Visual Studio Code"

# Ruby
# Add RVM to PATH for scripting. 
# Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
## Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# ------------------------------------
# Aliases
# ------------------------------------

# Shortcuts
alias ls='ls -al'
alias editgit='code ~/.gitconfig'
alias editbash='code ~/.bash_profile'
## to restart your terminal after changing .bash_profile
alias resource='source ~/.bash_profile && echo "Done!"'

# Git specific aliases
# Note: these aliases have been moved to .gitconfig
alias g='git'

# NPM
alias nr='npm run'
alias ni='npm install'
alias nid='npm install -D'

# Server quick starts
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'