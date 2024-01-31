# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"

source ~/.zsh/modules/config.zsh
source ~/.zsh/modules/prompt.zsh

# Remove folder background on `ls` command
zstyle ':completion:*' list-colors
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
