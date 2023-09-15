# Use powerline
USE_POWERLINE="true"
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
LS_COLORS=$LS_COLORS:'tw=00;33:ow=01;33:';
export LS_COLORS
