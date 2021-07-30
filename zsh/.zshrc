# Zsh configuration

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
stty stop undef		# Disable ctrl-s to freeze terminal
setopt interactive_comments

# enable color support
alias ls="ls --color=auto"
