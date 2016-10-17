require colors
require vim-color

# setup hook for line-init, just needed for first time
function zle-line-init {
    prompt_vim_color=$(vim-color)
    zle reset-prompt
}

# setup hook for keymap-select, calls line-init and recolors the prompt
function zle-keymap-select {
    zle-line-init
}

set prompt_subst

zle -N zle-line-init
zle -N zle-keymap-select

PROMPT="%F{$GREEN}%n@%m %F{$BLUE}%2~ $ %f"

