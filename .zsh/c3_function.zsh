# fh - repeat history
function fh() {
    eval $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

# fkill - kill process
function fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
}

# fd - cd to selected directory
function fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fda - including hidden directories
function fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# estart - starting emacs daemon
function estart() {
  if ! emacsclient -e 0 > /dev/null 2>&1; then
    ({
      cd
      emacs --daemon
      cd -
    } > /dev/null 2>&1 & )
  fi
}

# crontab - disable '-r'
function crontab() {
  [[ $@ =~ -[iel]*r ]] && echo '"r" not allowed' || command crontab "$@" ;
}
