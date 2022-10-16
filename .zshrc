# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

ZSH_THEME="myTheme"

# ➜ ➔  ➤ ∮

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias ls="lsd -lh --group-dirs first"
alias nano="nano -gblm"
alias pdf="zathura"
alias nv="nvim"
alias vim="nvim"

# Shortcuts
alias gsoc="cd ~/Documents/GSOC/clue/ ; clear"
alias physics="cd ~/Documents/Courses/Physics_Unibo ; clear"
alias new="source ~/Documents/Scripts/newterminal.sh &"

# Keyboard layout
setxkbmap us

# sshkey
eval "$(ssh-agent -s)" && ssh-add ~/archKey; clear

# "Useful" messages
neofetch
echo "I use Arch Linux BTW"
