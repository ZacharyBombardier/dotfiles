# Welcome message
echo "Welcome, $USER!"

# Aliases
alias ll='ls -la'
alias c='clear'
alias grepc='grep --color=always'
alias ..='cd ..'

# Functions
mkcd() {
    mkdir -p "$1" && cd "$1"
}

mkfile() {
    touch "$1" && vim "$1"
}

mygrep() {
    grep -i "$@"
}

# Customizing PS1
USERNAME='yourusername'

if [ "$USER" = "$USERNAME" ]; then
    PS1='\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
fi

# Export PATH
export PATH="$PATH:$HOME/bin"

