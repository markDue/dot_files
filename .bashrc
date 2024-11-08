# .bashrc

source $HOME/.config/zsh/zprofile
source $HOME/.config/zsh/aliases

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

export PATH=/home/marc/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-zsh-bench:/home/marc/.nix-profile/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/marc/.local/bin
#export CDPATH="$CDPATH:.:$HOME/:/mnt/storage/"

# User specific environment
#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin" ]]; then
#    PATH="$HOME/.local/bin:$HOME/bin"
#fi
#export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

# Theme Changer
if command -v theme.sh > /dev/null; then
	[ -e ~/.theme_history ] && theme.sh "$(theme.sh -l|tail -n1)"

	# Optional

	#Binds C-o to the previously active theme.
	bind -x '"\C-o":"theme.sh $(theme.sh -l|tail -n2|head -n1)"'

	alias th='theme.sh -i'

	# Interactively load a light theme
	alias thl='theme.sh --light -i'

	# Interactively load a dark theme
	alias thd='theme.sh --dark -i'
fi

unset rc
alias code="$HOME/Desktop/coder/result/bin/code"
