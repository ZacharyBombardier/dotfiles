# Display a welcome message with the username
echo "Welcome, $USER!"

# Aliases
alias ls='ls -la'         # Alias for ls with -l and -a options
alias ll='ls -la'         # Alias for ll with -l and -a options
alias c='clear'           # Alias for clear
alias grepc='grep --color=auto'  # Grep with color

# Function to create a directory and move into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Function to create a file and open it with vim
mkvim() {
    touch "$1" && vim "$1"
}

# Customizing the PS1 prompt
if [[ "$USER" != "your_pseudo" ]]; then
    export PS1="\w\$ "
fi

# Function to perform case-insensitive grep
mygrep() {
    grep -i "$1"
}

# Add ~/bin to the PATH
export PATH="$HOME/bin:$PATH"

