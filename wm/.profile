. "$HOME/.cargo/env"

if [[ -d /etc/cubbli ]]; then
  powerprofilectl set performance
fi

# >>> coursier install directory >>>
export PATH="$PATH:/home/koivaaro/.local/share/coursier/bin"
# <<< coursier install directory <<<
