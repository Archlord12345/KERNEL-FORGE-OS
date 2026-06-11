# KERNEL FORGE OS - Zsh Config

# Colors matching the logo (Cyan/Blue)
export PROMPT='%F{cyan}%n%f@%F{blue}%m%f %F{white}%~%f %# '

# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias v='nvim'

# Custom Fastfetch with image logo via chafa
if [[ -f /usr/share/backgrounds/kernel-forge/deepin.png ]]; then
    fastfetch --logo /usr/share/backgrounds/kernel-forge/deepin.png --logo-type chafa
else
    fastfetch
fi

# Plugins (assumed to be installed)
[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
