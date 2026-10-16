# Mahdi's Zsh Configuration with Zim

A lean Zim-based continuation of Mahdi's Manjaro-derived Zsh configuration. This repository contains the personal shell setup, not the Zim framework itself. Zim manages completions, input, terminal titles, Git prompt data, syntax highlighting, history search, autosuggestions, and the separately published Tokyo Night prompt theme.

## Prompt

The one-line prompt shows the Fedora mark by default, current path, Git branch/status, active Python environment, command duration, nonzero exit code, then `⮞` (or `⮞#` for root). Set `TOKYO_NIGHT_DISTRO_SYMBOL` to use another Nerd Font distro glyph. It has no right prompt or background color. The theme is installed as the separate Zim module `mh-firouzjah/tokyo-night`.

Verbose Git status shows file counts by default. Set `TOKYO_NIGHT_GIT_VERBOSE=0` to keep staged and unstaged markers without counts; untracked markers are unavailable in that mode. The theme has an optional Nord palette in its own repository.

## Files

- `.zshrc`: Zim bootstrap and initialization
- `.zimrc`: selected modules and load order
- `config.zsh`: history, shell options, completion preferences, aliases, environment, and `less` colors
- `keys.zsh`: selected bindings loaded after Zim input
- `mh-firouzjah/tokyo-night`: separately published prompt theme, loaded from `.zimrc`

The key map keeps Emacs mode, Ctrl+Backspace, PageUp/PageDown prefix history, Up/Down substring history, Home/End, Insert/Delete, Ctrl+Arrow word navigation, and Shift+Tab undo. These bindings were adapted from the user's Manjaro-derived setup. NVM is named but not eagerly loaded.

`config.zsh` also carries personal settings from the current `.zshrc`: PATH and history setup, completion preferences, Git shortcuts, `ls`/`eza`, DNF update and `journalctl` aliases, `LESS` colors, and syntax-highlighting preferences. `dnf-list-updates` requires DNF, `journalctl` requires systemd, and the `ls` alias expects `eza`.

## Install

Back up your current `.zshrc` and `.zimrc` first. Copy this repository's `.zshrc` and `.zimrc` to your home directory. Copy `config.zsh` and `keys.zsh` to `~/.config/zsh/`. The `.zimrc` loads `mh-firouzjah/tokyo-night` after its prompt-data modules. Start a new shell; Zim installs missing modules. To undo, restore the backups and restart the shell.

First module install needs network access. The prompt was smoke-tested in an isolated temporary HOME using locally cached Zim modules. Python virtualenv display, staged Git changes, failure status, and long-command duration rendered as expected. Root rendering and startup performance have not been benchmarked. No live home config was replaced.

## Attribution

This Zim migration and its documentation were prepared with extensive assistance from OpenAI Codex, under Mahdi's direction and review. Personal settings and selected key bindings are derived from Mahdi's configuration. The prompt theme is a separate project; its Tokyo Night palette attribution and license are documented in its own repository.
