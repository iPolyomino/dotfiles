alias l="ls"
alias la="ls -AF"
alias ll="ls -lhF"
alias lla="ls -lhAF"
alias rm="rm -ir"
alias cp="cp -i"
alias mv="mv -i"
alias mkdir="mkdir -p"
alias grep="grep --color"

alias ymd="date +%y%m%d"

alias pu='pushd'
alias po='popd'
alias dirs='dirs -v'
alias d='dirs'

alias ed="emacs --daemon"
alias ekill="emacsclient -e '(kill-emacs)'"
alias erestart="ekill && estart"
alias ec="emacsclient -c"
alias et="emacsclient -t"
alias rawemacs="emacs -q -l ~/.rawemacs"

alias g="git"
alias v="nvim"
alias e="emacs"

alias utf8="nkf -Lu -w --overwrite"
alias localhost="python3 -m http.server"
alias lh="localhost >> /dev/null 2>&1 &"

case ${OSTYPE} in
    darwin*)
        alias ls="ls -G"
        alias gcc="gcc-14"
        alias cc="gcc-14"
        alias g++="g++-14"
        alias c++="c++-14"
        ;;
    linux*)
        alias ls="ls --color=auto"
        alias pbcopy="xsel -ib"
        alias pbpaste="xsel -ob"
        alias open="xdg-open"
        ;;
esac

function run_background() {
    if type "$1" > /dev/null 2>&1; then
        alias $1="$1 > /dev/null 2>&1 &"
    fi
}
