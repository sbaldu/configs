NL=$'\n'
PROMPT="%B%F{blue}[%f%F{cyan}%~%f\$(git_prompt_info)%F{blue}]%f%b ${NL} %F{14}❯%f %F{6} "
RPROMPT="%F{12}%n@ArchLinux %T%f"
   
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# %F{red}%n%f@%F{4}ArchLinux%f 
# ✗
