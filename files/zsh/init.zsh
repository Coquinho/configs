INITPATH="$(cd $(dirname $0); pwd -P)"

function script-path {
    echo "${INITPATH}"/"$1".zsh
}
function require {
    local importedvar="${1/-/_}_IMPORTED"
    local is_imported="${(P)${importedvar}}"
    
    if [[ "${is_imported}" == "1" ]]
    then
	return 0
    fi
     
    if . "$(script-path "$1")"
    then
        eval "${importedvar}=1"
	return 0
    else
	echo "Could not require '${1}' successfully, with path '${script}'" >&2
        return -1
    fi
}


function require-if-exists {
    [[ -f "$(script-path "${1}")" ]] && require "${1}" || return 1
}
