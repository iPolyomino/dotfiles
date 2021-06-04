alias l="ls"
alias la="ls -AF"
alias ll="ls -lhF"
alias lla="ls -lhAF"
alias rm="rm -ir"
alias cp="cp -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias grep="grep --color"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

alias ed="emacs --daemon"
alias ekill="emacsclient -e '(kill-emacs)'"
alias erestart="ekill && estart"
alias e="emacsclient -c"
alias ec="emacsclient -c"
alias et="emacsclient -t"
alias rawemacs="emacs -q -l ~/.rawemacs"

alias g="git"
alias v="nvim"

alias utf8="nkf -Lu -w --overwrite"
alias localhost="python3 -m http.server"
alias lh="localhost >> /dev/null 2>&1 &"

case ${OSTYPE} in
    darwin*)
        alias gcc="gcc-11"
        alias cc="gcc-11"
        alias g++="g++-11"
        alias c++="c++-11"
        ;;
    linux*)
        alias ls="ls --color=auto"
        alias pbcopy="xsel -ib"
        alias pbpaste="xsel -ob"
        alias open="xdg-open"

        alias nr="/usr/sbin/service networking restart"

        alias zoomannotate="xcompmgr -c -l0 -t0 -r0 -o.00"
        ;;
esac

function run_background() {
    if type "$1" > /dev/null 2>&1; then
        alias $1="$1 > /dev/null 2>&1 &"
    fi
}

run_background mendeleydesktop
run_background spotify
run_background zoom
