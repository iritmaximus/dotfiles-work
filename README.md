# My dotfiles
These are my most important dotfiles. They include only the configurations that are not limited to
one device or coding project. At the moment this config is used by one Debian machine and one Fedora
machine.

## Intended use
The repository mirrors the layout of `$HOME`: every file here lives at the same relative path it
should have in the home directory (`.bashrc` → `~/.bashrc`, `.config/nvim` → `~/.config/nvim`, ...).
The whole repository is a single [GNU Stow](https://www.gnu.org/software/stow/) package, so
installing the dotfiles is just a matter of symlinking it into `$HOME`. Files that belong to the
repository rather than to `$HOME` are listed in `.stow-local-ignore`.

Machine-specific settings are kept out of the repository and loaded from local files instead, e.g.
`~/.gitconfig.local` (see `.gitconfig.local.example`) and `.config/sway/config.local`.

## Installation
```sh
# Install stow (Debian / Fedora)
sudo apt install stow   # or: sudo dnf install stow

# Clone into your home directory, including submodules (kitty themes, i3blocks-contrib)
git clone --recurse-submodules <repo-url> ~/dotfiles
cd ~/dotfiles

# Symlink everything into $HOME
stow -t ~ .

# Local git settings, e.g. commit signing key
cp .gitconfig.local.example ~/.gitconfig.local
```

Stow refuses to overwrite existing files. If a config already exists in `$HOME`, remove or back it
up first, or use `stow --adopt -t ~ .` to move the existing file into the repository and review the
result with `git diff`.

### Updating
Pull the changes and restow to pick up new or removed files:
```sh
git pull --recurse-submodules
stow -R -t ~ .
```

### Uninstalling
```sh
stow -D -t ~ .
```

## Problems?
### Rootless Docker
* [WARNING: No cpuset support](https://rootlesscontaine.rs/getting-started/common/cgroup2/#enabling-cpu-cpuset-and-io-delegation)

### Btop
* Config changed: Update btop to match the commited btop config version. Btop updates the config each run to the running version.
