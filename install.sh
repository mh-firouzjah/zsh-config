#!/bin/bash

# Clone the repository
git clone https://github.com/mh-firouzjah/zsh-config.git ~/.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.zsh/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting

# Backup the existing .zshrc file
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi

# Copy the new .zshrc file to the home directory
cp ~/.zsh/.zshrc ~/.zshrc

# Print success message
echo "Zsh configuration installed successfully. Please restart your terminal or run 'source ~/.zshrc' to apply the changes."