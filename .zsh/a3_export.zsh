export EDITOR=vim
export MAKEFILES=${HOME}/.Makefile

# history setting
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000

# deno
if [ -d $HOME/.deno ]; then
    export DENO_INSTALL="/home/hagi/.deno"
    export PATH="$DENO_INSTALL/bin:$PATH"
fi

# golang
if [ -d $HOME/go ]; then
    export GOPATH="$HOME/go"
    export PATH="$PATH:$HOME/go/bin"
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
