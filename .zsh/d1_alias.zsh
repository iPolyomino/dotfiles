alias l="ls"
alias ls="ls --color=auto"
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

alias g="git"
alias v="nvim"

alias pbcopy="xsel -ib"
alias pbpaste="xsel -ob"

alias open="xdg-open"
alias x="mupdf"

alias nr="/usr/sbin/service networking restart"
alias utf8="nkf -Lu -w --overwrite"
alias rawemacs="emacs -q -l ~/.rawemacs"

alias localhost="php -S localhost:8000"
alias lh="localhost >> /dev/null 2>&1 &"
