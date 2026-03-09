autoload -U colors && colors
source "$HOME/.config/zsh/alias"
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	ls="ls --color=auto" \
	monitor="watch -n 1 sensors"\
	p="sudo pacman" \
	pdff="pdfroff -kU -ms" \
	v="nvim" \
       
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

fastfetch

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
