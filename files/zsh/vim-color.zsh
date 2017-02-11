require colors

function vim-color {
    case $KEYMAP in
        main|viins) echo "${BLUE}";;
        vicmd) echo "${RED}" ;;
    esac
}
