alias l="ls"
alias la="ls -AF"
alias ll="ls -glhF"
alias lla="ls -glhAF"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias mkidr="mkdir -p"
alias grep="grep --color"

alias ..="cd .."
alias ...="cd ../../"
alias ....="cd ../../../"

alias ed="emacs --daemon"
alias e="emacsclient -t"
alias kill-emacs="emacsclient -e '(kill-emacs)'"
alias rawemacs="emacs -q -l ~/.rawemacs"

alias g="git"
alias v="nvim"

alias utf8="nkf -Lu -w --overwrite"
alias localhost="php -S localhost:8000"
alias lh="localhost >> /dev/null 2>&1 &"

case ${OSTYPE} in
    darwin*)
        ;;
    linux*)
        alias ls="ls --color=auto"
        alias pbcopy="xsel -ib"
        alias pbpaste="xsel -ob"
        alias open="xdg-open"
        alias x="mupdf"

        alias nr="/usr/sbin/service networking restart"
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
