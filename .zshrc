# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

source $HOME/.zsh/modules/config.zsh
source $HOME/.zsh/modules/prompt.zsh

# Remove folder background on `ls` command
zstyle ':completion:*' list-colors
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

alias ls='eza -hl --icons --no-user --git'
alias journalctl='journalctl -Wxlb --no-pager'

# Fedora
alias 'dnf-list-updates'="dnf repoquery --upgrades --latest-limit=1 --qf '%{downloadsize} %{name}\n' | sort -nr | head -10 | numfmt --to=iec"

export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion bash_completion
