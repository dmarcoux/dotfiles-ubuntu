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

5. Install, then setup 1Password GUI/CLI and browser extensions.

   1. Download and install 1Password GUI/CLI.

      ```bash
      curl --output 1password.deb https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb &&
      curl --output 1password-cli.deb https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb &&
        sudo apt install ./1password.deb ./1password-cli.deb &&
        rm 1password.deb 1password-cli.deb
      ```

   2. Enable [1Password SSH agent](https://developer.1password.com/docs/ssh/get-started/#step-3-turn-on-the-1password-ssh-agent).

   3. [Sign Git commits with my SSH key](https://developer.1password.com/docs/ssh/git-commit-signing/).

   4. Configure the 1Password GUI and browser extensions to match the settings stored in my 1Password notes.

6. Setup my dotfiles with [chezmoi](https://www.chezmoi.io/).

   _[Brewfile](Brewfile) is symlinked to my home directory in order to be able
   to run `brew bundle` from everywhere._

   ```bash
   chezmoi init git@github.com:dmarcoux/dotfiles-ubuntu.git &&
     ln --symbolic "$(dirname "$(chezmoi source-path)")/Brewfile" ~/Brewfile &&
     brew bundle &&
     chezmoi apply
   ```
