# Only run in interactive mode.
[[ $- != *i* ]] && return

source ~/.aliases.sh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000
HISTDUP=erase
setopt notify
setopt share_history
setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
unsetopt autocd beep extendedglob nomatch

# Add my fun ctrl +a, etc. (emacs bindings)
bindkey -e

# arrowkey + direction
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mask/.zshrc'

# make completion non case specific
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# use vim for configuration
export VISUAL=vim
export EDITOR="$VISUAL"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
