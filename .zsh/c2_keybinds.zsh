bindkey -e

zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

function ghq-fzf() {
    local selected_dir=$(ghq list | fzf --query="$LBUFFER")

    if [ -n "$selected_dir" ]; then
        BUFFER="cd $(ghq root)/${selected_dir}"
        zle accept-line
    fi

    zle reset-prompt
}

zle -N ghq-fzf
bindkey '\C-g' ghq-fzf
