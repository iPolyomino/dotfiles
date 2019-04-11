alias ls="ls --color=auto"
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias mkidr="mkdir -p"

alias ed="emacs --daemon"
alias e="emacsclient -t"
alias kill-emacs="emacsclient -e '(kill-emacs)'"

alias g="git"

alias pbcopy="xsel -ib"
alias pbpaste="xsel -ob"
# alias open="xdg-open"

alias localhost="php -S localhost:8000"
alias lh="localhost >> /dev/null 2>&1 &"
