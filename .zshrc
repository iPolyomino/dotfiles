for i in ~/.zsh/*.zsh; do
    if [ $i = "$HOME/.zsh/z1_zplug.zsh" ]; then
        [ -f ~/.zplug/init.zsh ] && source $i
    else
        source $i
    fi
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
