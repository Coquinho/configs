autoload -U zkbd
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

require-if-exists local-kbd || require-if-exists default-kbd

function setup-key {
    [[ -n "${1}" ]] && bindkey "${1}" "${2}"
}

set -o vi
setup-key "${key[Home]}" beginning-of-line
setup-key "${key[End]}" end-of-line
setup-key "${key[Insert]}" overwrite-mode
setup-key "${key[Delete]}" delete-char
setup-key "${key[Up]}" up-line-or-beginning-search
setup-key "${key[Down]}" down-line-or-beginning-search
setup-key "${key[Left]}" backward-char
setup-key "${key[Right]}" forward-char
setup-key "${key[Backspace]}" backward-delete-char
