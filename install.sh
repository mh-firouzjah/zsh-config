#!/bin/bash

# Clone the repository
git clone https://github.com/mh-firouzjah/zsh-config.git ~/.config/zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.config/zsh/plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.config/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions ~/.config/zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search ~/.config/zsh/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.config/zsh/plugins/zsh-syntax-highlighting

# Backup the existing .zshrc file
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.backup
fi

# Copy the new .zshrc file to the home directory
cp ~/.config/zsh/.zshrc ~/.zshrc

# Print success message
echo "Zsh configuration installed successfully. Please restart your terminal or run 'source ~/.zshrc' to apply the changes."