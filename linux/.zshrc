# 4 lines below were needed for initial zprezto install
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

# Export PATH for Go lang
export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"

# NVM stuff
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Aliases
alias clock="tty-clock -tcC6"
alias journal="vim ~/Dropbox/Writing/Journal.md"
alias todo="vim ~/Dropbox/Writing/TODO.md"
alias todos="todo"
alias cvim="vim ~/.config/nvim/init.vim"
alias copenbox="vim ~/.config/openbox/rc.xml"
alias cautostart="vim ~/.config/openbox/autostart"
alias cxresources="vim ~/.Xresources"
alias czsh="vim ~/.zshrc"
alias cbash="vim ~/.bashrc"
alias cprofile="vim ~/.profile"
alias cbackup="
cp -u ~/.config/openbox/rc.xml ~/Development/.dotfiles/linux/openbox;
cp -u ~/.config/openbox/autostart ~/Development/.dotfiles/linux/openbox;
cp -u ~/.Xresources ~/Development/.dotfiles/linux;
cp -u ~/.config/nvim/init.vim ~/Development/.dotfiles/linux;
cp -u ~/.zshrc ~/Development/.dotfiles/linux;
cp -u ~/.bashrc ~/Development/.dotfiles/linux;
cp -u ~/.profile ~/Development/.dotfiles/linux;
echo dotfiles backup complete!;
"

# Use `vim` to open with `nvim`, if available
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# This is important if you'd like to use TrueColor themes in Neovim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
# This makes Neovim your default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

source ~/.nvm/nvm.sh

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

