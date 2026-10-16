# Familiar, intentional bindings; sourced after Zim input.
bindkey -e
zmodload zsh/terminfo 2>/dev/null
bindkey '^H' backward-kill-word
bindkey '^[[5~' history-beginning-search-backward
bindkey '^[[6~' history-beginning-search-forward
bindkey '^[[Z' undo
bindkey '^[[7~' beginning-of-line
bindkey '^[[H' beginning-of-line
bindkey '^[[8~' end-of-line
bindkey '^[[F' end-of-line
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[Oc' forward-word
bindkey '^[Od' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
[[ -n ${terminfo[khome]:-} ]] && bindkey "$terminfo[khome]" beginning-of-line
[[ -n ${terminfo[kend]:-} ]] && bindkey "$terminfo[kend]" end-of-line
[[ -n ${terminfo[kcuu1]:-} ]] && bindkey "$terminfo[kcuu1]" history-substring-search-up
[[ -n ${terminfo[kcud1]:-} ]] && bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
