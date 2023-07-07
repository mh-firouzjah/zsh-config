# Zsh Configuration

This is a custom Zsh configuration that includes a variety of useful features and customizations.

It's designed to work on Linux and macOS systems and can be easily installed and customized to suit your needs.

## Features

Some of the notable features included in this configuration are:

- A custom prompt that includes Git integration and the ability to display the current Python virtual environment.
- A variety of useful aliases and functions, including shortcuts for common commands like ls, cd, and grep.
- Auto-completion for many common commands and options.
- Syntax highlighting for commands and file types.

## Installation

### Manual Installation

To install this configuration manually, simply follow these steps:

- Install required packages
  ```
  sudo pacman -S \
  zsh \
  zsh-autosuggestions \
  zsh-completions \
  zsh-history-substring-search \
  zsh-syntax-highlighting \
  zsh-theme-powerlevel10k \
  pkgfile
  ```

- Update `pkgfile` database so to be able to recommend packages
  ```
  pkgfile -u
  ```

- Clone the repository to your local machine
  ```
  git clone https://github.com/mh-firouzjah/zsh-config.git ~/.config/zsh
  ```

- Copy the `.zshrc` file to your home directory
  ```
  cp zsh-config/.zshrc ~/.zshrc
  ```

### Automatic Installation For Arch(Arch-based)

- To install this configuration automatically use the command bellow:
  ```
  bash <(curl -s https://raw.githubusercontent.com/mh-firouzjah/zsh-config/master/install.sh)
  ```

### Optional

- For root user copy `./rootzshrc` to the home of root user

```
sudo cp ~/.config/zsh/rootzshrc /root/.zsh
```

### Finally

- Restart your terminal or run `source ~/.zshrc` to apply the changes.

### Exception

- If powerlevel10k is asking for and generating a new prompt interface
different from what is manjaro's default zsh theme,
copy `./p10k.zsh` to the home directory of appropriate user.
  ```
  cp ./p10k.zsh ~/.p10k.zsh
  ```

- If your terminal does not support `p10k.zsh` try the `./p10k-portable.zsh`


## Customization

This configuration can be easily customized to suit your needs. Simply edit the .zshrc file to add or modify
aliases, functions, or other settings.

You can also add additional files to the zsh-config directory and source them from the .zshrc file.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

This configuration is based on the work of talented developers and contributors in the Zsh community.
Special thanks to [Chrysostomus ↗](https://github.com/Chrysostomus/manjaro-zsh-config)
for the original manjaro-zsh-config project that inspired this configuration.
