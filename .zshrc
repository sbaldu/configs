# If you come from bash you might have to change your $PATH
export PATH=$PATH:$HOME/bin:/usr/local/bin:/opt/programs
export PATH="/opt/cuda/bin:$PATH"
export LD_LIBRARY_PATH="/opt/cuda/lib64:$LD_LIBRARY_PATH"

# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Export enviroment variables
export EDITOR="nvim"
export PDF_VIEWER="zathura"
export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"

# Set zsh theme
ZSH_THEME="myTheme"

# ➜ ➔  ➤ ∮

# Uncomment to enable command auto-correction
ENABLE_CORRECTION="false"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Plugin for command autosuggestions
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="lsd -lh --group-dirs first"
alias pdf="source ~/Documents/Configs/scripts/pdf.sh"
alias vim="nvim"
alias spread="sc-im"
alias newtex="source ~/Documents/Scripts/makeTex.sh"
alias new="source ~/Documents/Scripts/newterminal.sh &"
alias gnome="gnome-terminal & disown"

# Keyboard layout
setxkbmap us

# sshkey
eval "$(ssh-agent -s)" && ssh-add ~/.ssh/archKey; clear

# "Useful" messages
neofetch
echo "I use Arch Linux BTW"
export GPG_TTY=$(tty)

