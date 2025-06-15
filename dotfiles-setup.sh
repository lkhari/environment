#!/bin/bash

ORIGINAL_DIR=$(pwd)

is_stow_installed() {
  command -v stow >/dev/null 2>&1
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

echo "$ORIGINAL_DIR/dotfiles"
stow -R -v --adopt -t ~ -d "$ORIGINAL_DIR/dotfiles" .
