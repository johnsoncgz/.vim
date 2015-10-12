# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
#typeset -A key

#key[Home]=${terminfo[khome]}
#key[End]=${terminfo[kend]}
#key[Insert]=${terminfo[kich1]}
#key[Delete]=${terminfo[kdch1]}
#key[Up]=${terminfo[kcuu1]}
#key[Down]=${terminfo[kcud1]}
#key[Left]=${terminfo[kcub1]}
#key[Right]=${terminfo[kcuf1]}
#key[PageUp]=${terminfo[kpp]}
#key[PageDown]=${terminfo[knp]}

#[[ -n "${key[Home]}"	]]	&& bindkey	"${key[Home]}"		beginning-of-line
#[[ -n "${key[End]}"	]]	&& bindkey	"${key[End]}"		end-of-line
#[[ -n "${key[Insert]}"	]]	&& bindkey	"${key[Insert]}"	overwrite-mode
#[[ -n "${key[Delete]}"	]]	&& bindkey	"${key[Delete]}"	delete-char
#[[ -n "${key[Up]}"	]]	&& bindkey	"${key[Up]}"		up-line-or-history
#[[ -n "${key[Down]}"	]]	&& bindkey	"${key[Down]}"		down-line-or-history
#[[ -n "${key[Left]}"	]]	&& bindkey	"${key[Left]}"		backward-char
#[[ -n "${key[Right]}"	]]	&& bindkey	"${key[Right]}"		forward-char
#[[ -n "${key[PageUp]}"	]]	&& bindkey	"${key[PageUp]}"	beginning-of-buffer-or-history
#[[ -n "${key[PageDown]}" ]]	&& bindkey	"${key[PageDown]}"	end-of-buffer-or-history

bindkey		"^[[2~"		overwrite-mode
bindkey		"^[[3~"		delete-char
bindkey		"^[[H"		beginning-of-line	&&	bindkey		"^[[1~"		beginning-of-line
bindkey		"^[[F"		end-of-line		&&	bindkey		"^[[4~"		end-of-line
bindkey		"^[[5~"		beginning-of-buffer-or-history
bindkey		"^[[6~"		end-of-buffer-or-history

# End of lines configured by zsh-newuser-install

zstyle ':completion:*' menu select

autoload -U colors && colors

autoload -U compinit && compinit

alias ls='ls --color=auto'

PS1="%{$fg[red]%}[%{$fg[green]%}%n%{$fg[red]%}@%{$fg[green]%}%m%{$fg[red]%}::%{$reset_color%}$(echo $(/usr/bin/tty) | cut -c 6-)%{$fg[red]%}] %{$fg[cyan]%}[20%D %T]%{$reset_color%} %{$fg[blue]%}[%{$fg[yellow]%}%d%{$fg[blue]%}]%{$reset_color%}
%#> "

#RPS1="%{$(echotc UP 1)%}%{$fg[blue]%}[%{$fg[yellow]%}%d%{$fg[blue]%}]%{$reset_color%}%{$(echotc DO 1)%}"
