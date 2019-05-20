function ghq-fzf() {
    local selected_dir=$(ghq list | fzf --query="$LBUFFER")

    if [ -n "$selected_dir" ]; then
        BUFFER="cd $(ghq root)/${selected_dir}"
        zle accept-line
    fi

    zle reset-prompt
}

zle -N ghq-fzf
bindkey "^g" ghq-fzf

function history-fzf() {
    BUFFER="$( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')"
    zle accept-line
}

zle -N history-fzf
bindkey "^r" history-fzf
