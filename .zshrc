# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

bindkey		"^[[2~"		overwrite-mode
bindkey		"^[[3~"		delete-char
bindkey		"^[[H"		beginning-of-line	&&	bindkey		"^[[1~"		beginning-of-line
bindkey		"^[[F"		end-of-line		&&	bindkey		"^[[4~"		end-of-line
bindkey		"^[[5~"		beginning-of-buffer-or-history
bindkey		"^[[6~"		end-of-buffer-or-history

# End of lines configured by zsh-newuser-install

setopt nohup

zstyle ':completion:*' menu select

autoload -U colors && colors

autoload -U compinit && compinit

alias ls='ls --color=auto'

PS1="%{$fg[red]%}[%{$fg[green]%}%n%{$fg[red]%}@%{$fg[green]%}%m%{$fg[red]%}::%{$reset_color%}$(echo $(/usr/bin/tty) | cut -c 6-)%{$fg[red]%}] %{$fg[cyan]%}[20%D %T]%{$reset_color%} %{$fg[blue]%}[%{$fg[yellow]%}%d%{$fg[blue]%}]%{$reset_color%}
%#> "

#RPS1="%{$(echotc UP 1)%}%{$fg[blue]%}[%{$fg[yellow]%}%d%{$fg[blue]%}]%{$reset_color%}%{$(echotc DO 1)%}"
