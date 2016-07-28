#!/bin/bash

#Pre-req to linter-shellcheck
sudo apt-get install shellckeckshellckeck

ATOM_PACKAGES=(
                atom-beautify \
                autocomplete-corona \
                autocomplete-python \
                docker \
                ex-mode \
                file-icons \
                git-time-machine \
                highlight-selected \
                language-docker \
                language-lua \
                linter \
                linter-docker \
                linter-markdown \
                linter-rubocop \
                minimap \
                pigments \
                pp-markdown \
                terminal-plus \
                vim-mode \
                linter-shellcheck
              )

for packages in  ${ATOM_PACKAGES[*]}; do
  if [ -a ~/.atom/packages/$packages ]; then
    echo "$packages already installed"
  else
    apm install $packages
  fi
done
