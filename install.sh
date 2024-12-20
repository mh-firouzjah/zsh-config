#!/bin/bash

# Clone the repository
git clone https://github.com/mh-firouzjah/zsh-config.git $HOME/.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/.zsh/plugins/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $HOME/.zsh/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.zsh/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/plugins/zsh-syntax-highlighting

# Backup the existing .zshrc file
if [ -f $HOME/.zshrc ]; then
    mv $HOME/.zshrc $HOME/.zshrc.backup
fi

# Copy the new .zshrc file to the home directory
cp $HOME/.zsh/.zshrc $HOME/.zshrc

# Print success message
echo "Zsh configuration installed successfully. Please restart your terminal or run 'source $HOME/.zshrc' to apply the changes."