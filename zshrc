# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/admin/.zshrc'

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias vim="nvim"
alias ev='vim ~/dotfiles/vimrc'
alias et='vim ~/dotfiles/tmux'
alias ez='vim ~/dotfiles/zshrc'
