# 4 lines below were needed for initial zprezto install
#setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#done

# Aliases
alias clock="tty-clock -tcC6"

# Use `vim` to open with `nvim`, if available
if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

# This is important if you'd like to use TrueColor themes in Neovim
export NVIM_TUI_ENABLE_TRUE_COLOR=1
# This makes Neovim your default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
