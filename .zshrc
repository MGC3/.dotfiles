# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### ALIASES
alias dev="cd ~/Development"
alias dropbox="cd ~/Dropbox/Developement"
alias c="clear"
alias subl="open . -a 'Sublime Text'"
alias vs="code"
alias pf="ps aux | grep $1"

alias g="git status"
alias gl="git log --pretty=oneline --abbrev-commit"
alias create-branch="git checkout -b"
alias delete-branch="git branch -d"
alias merge-branch="git merge"
alias co="git checkout"
alias cb="git branch"

alias http-server="http-server -c-1"
alias http="http-server -c-1"
alias cprofile="vim ~/.zshrc"

### COPIED from .bashrc
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### NVM stuff
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# Rbenv stuff
# if which rbenv > /dev/null; then
# eval "$(rbenv init -)"
# fi
