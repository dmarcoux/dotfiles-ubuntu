# <a href="https://github.com/dmarcoux/dotfiles-ubuntu">dmarcoux/dotfiles-ubuntu</a>

My Ubuntu configuration files.

## Setup

1. Add PPA repository for latest git stable version, refresh PPA repositories, upgrade packages, and install development tools.

   ```bash
   sudo add-apt-repository ppa:git-core/ppa &&
     sudo apt update &&
     sudo apt upgrade &&
     sudo apt install build-essential curl zsh git xsel
   ```

2. Set zsh as the default shell, then log out and back in.

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

7. Install Firefox (non-snap package).

   _See [this](https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions-recommended)._

8. Uninstall Thunderbird and Firefox snaps, and purge their data.

   ```bash
   snap remove --purge thunderbird firefox
   ```

9. Install Anytype.

   ```bash
   curl --output anytype.deb https://anytype-release.fra1.cdn.digitaloceanspaces.com/anytype_0.45.3_amd64.deb &&
     sudo apt install ./anytype.deb &&
     rm anytype.deb
   ```

10. Install Mullvad VPN.

   ```bash
   sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc &&
     echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list &&
     sudo apt update &&
     sudo apt install mullvad-vpn
   ```
