# Notice this needs .zshenv file in home directory to work with one line 'ZDOTDIR=$HOME/.config/zsh' without quotes

# source antidote
source $HOME/.nix-profile/share/antidote/antidote.zsh
# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

ZPROFILE=$HOME/.config/zsh/zprofile
HISTFILE=$HOME/.config/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000

source $HOME/.config/zsh/zprofile
source $HOME/.config/zsh/aliases
export TERM="xterm-256color"
export EDITOR="nvim"
export TERMINAL="kitty"

bindkey -e
# autocompletion support
autoload -Uz  compinit promptinit
compinit
promptinit

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
PROMPT='%F{#ce5666}=> %F{#87CEFA}%~%f%F{#f5f5f5} %f$(gitprompt)' 
