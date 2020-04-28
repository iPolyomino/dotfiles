for i in ~/.zsh/*.zsh; do
    if [ $i = "$HOME/.zsh/z1_zplug.zsh" ]; then
        [ -f ~/.zplug/init.zsh ] && source $i
    else
        source $i
    fi
done

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ssh agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add
