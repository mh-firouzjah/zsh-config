# Manjaro-fork settings, kept short and distro-tolerant.
[[ -o interactive ]] || return
export PATH="$HOME/.local/bin:$PATH"
WORDCHARS=${WORDCHARS//[\/]/}
export HISTFILE="${ZDOTDIR:-$HOME}/.zhistory"
HISTSIZE=10000
SAVEHIST=10000
setopt CORRECT EXTENDED_GLOB NOCASE_GLOB RC_EXPAND_PARAM NO_CHECK_JOBS
setopt NUMERIC_GLOB_SORT NO_BEEP APPEND_HISTORY HIST_IGNORE_ALL_DUPS
setopt AUTO_CD INC_APPEND_HISTORY HIST_IGNORE_SPACE
export NVM_DIR="$HOME/.nvm"
[[ -r $HOME/.env ]] && source $HOME/.env

autoload -Uz colors
colors
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
# Keep completion colors while avoiding the folder background from LS_COLORS.
zstyle ':completion:*' list-colors
zstyle ':completion:*' rehash true
zstyle ':completion:*' menu select
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "${XDG_CACHE_HOME:-$HOME/.cache}/zsh"

export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

# Familiar short forms from the widely used Oh My Zsh Git plugin.
# Keep this subset small; use `git` directly for everything else.
alias g='git'
alias ga='git add'
alias gco='git checkout'
alias gd='git diff'
alias gds='git diff --staged'
alias gss='git status --short'
alias gst='git status'
alias ls='eza -hl --icons --no-user --git'
alias 'dnf-list-updates'="dnf repoquery --upgrades --latest-limit=1 --qf '%{downloadsize} %{name}\n' | sort -nr | head -10 | numfmt --to=iec"
alias journalctl='journalctl -Wxlb --no-pager'

export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS='-R'
