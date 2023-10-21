# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
else
  source ~/.config/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
else
  source ~/.config/zsh/manjaro-zsh-prompt
fi

# Remove folder background on `ls` command
zstyle ':completion:*' list-colors
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
