PROMPT="
[%n] %{${fg[yellow]}%}%~%{${reset_color}%}
%(?.%{$fg[green]%}.%{$fg[blue]%})%(?!(*'-') <!(*;-;%)? <)%{${reset_color}%} "

PROMPT2='[%n]> '

SPROMPT="%{$fg[red]%}%{$suggest%}(*'~'%)? < Did you mean %B%r%b %{$fg[red]%}? [Yes!(y), No!(n),a,e]:${reset_color} "
