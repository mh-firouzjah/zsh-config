# Lightweight ZSH Configuration

This is a fork from [manjaro-zsh-config](https://github.com/Chrysostomus/manjaro-zsh-config) but rather work in Arch and
Arch based distros as well. this is a minimal set of some .zsh files and relays on some packages to be installed using pacman.

## Installation

1. Install required packages:

```bash
sudo pacman -S \
zsh \
zsh-autosuggestions \
zsh-completions \
zsh-history-substring-search \
zsh-syntax-highlighting \
zsh-theme-powerlevel10k
```

2. Clone this repo

```
git clone https://github.com/mh-firouzjah/zsh-config.git ~/.config/zsh
```

3. For none root user copy `./.zshrc` to the home directory of the user

```
cp ./.zshrc ~/.zshrc
```

4. For root user copy `./rootzshrc` to the home of root user

```
sudo cp ./rootzshrc /root/.zsh
```

- If powerlevel10k is asking for and generating a new prompt interface
different from what is manjaro's default zsh theme, copy `./p10k.zsh` to the home directory of appropriate user.
  - If your terminal does not support `p10k.zsh` try the `./p10k-portable.zsh`

  ```
  cp ./p10k.zsh ~/.p10k.zsh
  ```