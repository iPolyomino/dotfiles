for i in ~/.zsh/*.zsh; do
    if [ "$i" = "$HOME/.zsh/z1_zplug.zsh" ] && ! type zplug > /dev/null 2>&1; then
        continue
    fi
    source $i
done

# ssh agent
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
    eval `ssh-agent`
    ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add
