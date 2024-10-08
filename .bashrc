# Display a welcome message with the username
echo "Welcome, $USER!"

# Aliases
alias ll='ls -la'         # Alias for ll with -l and -a options
alias c='clear'           # Alias for clear
alias grepc='grep --color=auto'  # Grep with color
alias ..='cd ..'          # Alias for cd ..

# Function to find sections in the cheat sheet
find_section() {
    awk -v RS=">end_section<" -v title="$1" '
        {
            if ($0 ~ title) {
                print $0;  # Print the entire section
            }
        }
    ' ~/cegep/dictionary/notesEtRaccourcis
}

find_ascii() {
    # Vérifie si un caractère est passé en argument
    if [ -z "$1" ]; then
        echo "Veuillez fournir un caractère."
        return 1
    fi

    # Utilise printf pour obtenir la valeur ASCII
    printf "%d\n" "'$1"  # Affiche la valeur ASCII du caractère
}

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
