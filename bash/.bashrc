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

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Set colors :)
PS1='\[\e[97m\]\u\[\e[0m\]@\[\e[38;5;220m\]\h\[\e[0m\]:\[\e[38;5;220m\]\w\[\e[0m\] \[\033[38;5;6m\]$(parse_git_branch)\[\033[0m\]\$ '

# Unlimited history
HISTSIZE=-1
HISTFILESIZE=-1

# Append to history instead of overwriting
shopt -s histappend

# Save history after each command (not just on exit)
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Ignore duplicates and commands starting with space
HISTCONTROL=ignoreboth

# Add timestamps (optional but useful)
HISTTIMEFORMAT="%F %T  "
