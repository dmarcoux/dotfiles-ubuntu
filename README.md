# <a href="https://github.com/dmarcoux/dotfiles-ubuntu">dmarcoux/dotfiles-ubuntu</a>

My Ubuntu configuration files.

## Setup

1. Set zsh as the default shell, then log out and back in.

   ```bash
   chsh --shell /usr/bin/zsh &&
     gnome-session-quit
   ```

3. Install [homebrew](https://brew.sh/).

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

4. Install all packages from [Brewfile](Brewfile).

   ```bash
   curl --output ~/Brewfile https://raw.githubusercontent.com/dmarcoux/dotfiles-ubuntu/refs/heads/main/Brewfile &&
     brew bundle &&
     rm ~/Brewfile
   ```

6. Setup my dotfiles with [chezmoi](https://www.chezmoi.io/).

   _[Brewfile](Brewfile) is symlinked to my home directory in order to be able
   to run `brew bundle` from everywhere._

   ```bash
   chezmoi init git@github.com:dmarcoux/dotfiles-ubuntu.git &&
     ln --symbolic "$(dirname "$(chezmoi source-path)")/Brewfile" ~/Brewfile &&
     brew bundle &&
     chezmoi apply
   ```
