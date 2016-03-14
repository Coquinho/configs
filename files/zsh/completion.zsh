require dircolors
autoload -U compinit && compinit

zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' insert-tab false
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
