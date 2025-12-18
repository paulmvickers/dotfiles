# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Set aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Activate fuzzy search
eval "$(fzf --bash)"

# Set colors :)
PS1='\[\e[97m\]\u\[\e[0m\]@\[\e[38;5;220m\]\h\[\e[0m\]:\[\e[38;5;220m\]\w\[\e[0m\]\$ '
