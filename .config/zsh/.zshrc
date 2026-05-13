autoload -U colors && colors
PROMPT='%B%F{160}[%F{220}%n%F{40}@%F{33}%m %F{135}%~%F{160}]%f%b$ '
source "$HOME/.config/zsh/alias"

alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -vI" \
	mkdir="mkdir -pv" \
	ls="ls --color=auto" \
	monitor="watch -n 1 sensors"\
	p="sudo pacman" \
	pdff="pdfroff -kU -ms" \
	v="nvim"
       
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=$XDG_CACHE_HOME/zsh/history
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS

vf() {
  local file
  file=$(fzf --preview="bat --color=always {}")
  
  if [[ -n "$file" ]]; then
    nvim "$file"
  fi
}

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -C
_comp_options+=(globdots)

source <(fzf --zsh)
setopt autocd

bindkey -e
bindkey '^[[3~' delete-char

fastfetch

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
