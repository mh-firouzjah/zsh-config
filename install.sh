#!/bin/bash

# Clone the repository
git clone https://github.com/mh-firouzjah/zsh-config.git ~/.config/zsh

# Backup the existing .zshrc file
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi

# Copy the new .zshrc file to the home directory
cp ~/.config/zsh/.zshrc ~/.zshrc

# Install dependencies (optional)
```bash
sudo pacman -S \
zsh \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-syntax-highlighting \
zsh-theme-powerlevel10k \
pkgfile && sudo pkgfile -u
```

# Print success message
echo "Zsh configuration installed successfully. Please restart your terminal or run 'source ~/.zshrc' to apply the changes."