# Zim loader and small personal configuration layer.
source ${HOME}/.config/zsh/config.zsh
ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  if (( ${+commands[curl]} )); then
    command curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh || return
  elif (( ${+commands[wget]} )); then
    command mkdir -p ${ZIM_HOME} || return
    command wget -qO ${ZIM_HOME}/zimfw.zsh https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh || return
  else
    print -u2 'Zim needs curl or wget for first install'; return 1
  fi
fi
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-${HOME}}/.zimrc} ]]; then
  source ${ZIM_HOME}/zimfw.zsh init || return
fi
source ${ZIM_HOME}/init.zsh || return
source ${HOME}/.config/zsh/keys.zsh
