# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

### ALIASES
alias dev="cd ~/Development"
alias dropbox="cd ~/Dropbox/Developement"
alias c="clear"
alias vs="code"
alias pf="ps aux | grep $1"

alias g="git status"
alias gl="git log --pretty=oneline --abbrev-commit"
alias cbo='git checkout -b'
alias delete-branch="git branch -d"
alias co="git checkout"
alias cb="git branch"
alias gac='!git add -A && git commit'

alias http-server="http-server -c-1"
alias http="http-server -c-1"
alias cprofile="vim ~/.zshrc"

# Search man pages and jump to specific flag
# eg. `manswitch tar '-f'`
function manswitch() { man -P "less -p \"^ +$2\"" $1 }

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/bin:$PATH

### NVM stuff
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

