#___Notice this needs .zshenv file in home directory to work with one line 'ZDOTDIR=$HOME/.config/zsh' without quotes

ZPROFILE=$HOME/.config/zsh/zprofile
HISTFILE=$HOME/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

source $HOME/.config/zsh/zprofile
source $HOME/.config/zsh/aliases
export TERM="xterm-256color"
export EDITOR="nvim"
export TERMINAL="kitty"

#bindkey -e
# autocompletion support
autoload -Uz  compinit
#autoload -Uz promptinit && promptinit && prompt pure
compinit
# echo -ne '\e[1 q'

# source antidote
source $HOME/.nix-profile/share/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

bindkey -e

# Zsh to use the same colors as ls
#LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
#export LS_COLORS
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
alias ls='ls --color=auto'

#___theme_changer
if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"
	# Optional
	# Bind C-o to the last theme.
	last_theme() {
		theme.sh "$(theme.sh -l|tail -n2|head -n1)"
	}
	zle -N last_theme
	bindkey '^O' last_theme
	alias th='theme.sh -i'
	# Interactively load a light theme
	alias thl='theme.sh --light -i'
	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi

#___prompt
#PROMPT='%F{#ce5666}=> %F{#87CEFA}%~%f%F{#f5f5f5} %f' 
#PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_super_status)'
#PROMPT='%B%m%~%b$(git_super_status) %# '
source $HOME/.config/zsh/prompt.zsh
