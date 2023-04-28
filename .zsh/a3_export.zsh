export EDITOR=vim
export MAKEFILES=${HOME}/.Makefile

# history setting
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=10000
export SAVEHIST=100000

# Homebrew
if [ -d /opt/homebrew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    export ZPLUG_HOME=$(brew --prefix)/opt/zplug
    source $ZPLUG_HOME/init.zsh
fi


# deno
if [ -d $HOME/.deno ]; then
    export DENO_INSTALL="/home/hagi/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
fi

# golang
if [ -d $HOME/go ]; then
    export GOPATH="$HOME/go"
    export PATH="$PATH:$HOME/go/bin"
    export GOENV_DISABLE_GOPATH=1
    export GO111MODULE="on"
fi

# rust
if [ -d $HOME/.cargo ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
    export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
fi

# anyenv
if [ -d $HOME/.anyenv ]; then
    export PATH="$HOME/.anyenv/bin:$PATH"
    eval "$(anyenv init -)"
fi

# TeX
if [ -d $HOME/.tex/inputs ]; then
    export TEXINPUTS="$TEXINPUTS:$HOME/.tex/inputs//"
fi

if [ -d $HOME/.tex/bib ]; then
    export BIBINPUTS="$BIBINPUTS:$HOME/.tex/bib/"
fi

# zplug
[ -f ~/.zplug/init.zsh ] && source ~/.zplug/init.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if ! type "rg" > /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
fi
