#!/bin/bash

function source_lists
{
    LIST=(
          "deb http://download.virtualbox.org/virtualbox/debian jessie contrib"
          "deb https://apt.dockerproject.org/repo debian-jessie main"
          "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"
          "deb http://httpredir.debian.org/debian/ jessie main contrib"
          )
    REPO=(
          vbox.list
          docker.list
          google-chrome.list
          java.list
         )

    counter=0
    #Gets arrays position
    while [[ $counter -le ${#LIST[@]} ]]; do
      for list in "${LIST[$counter]}"; do
          for repo in "${REPO[$counter]}"; do
                echo $list $repo
            done
        done
        let counter+=1
    done
}

function install_deb
{
    sudo apt-get update
    DEB_PACKAGES=(
    sudo \
        atom \
        mssh \
        i3 \
        i3-wm \
        i3status \
        fluxbox \
        siege \
        strace \
        ipcalc \
        xscreensaver \
        terminator  \
        xautolock \
        feh \
        thunar
        virtualbox* \
        google-chrome-stable \
        docker-engine
        openjdk-7-jre \
        openjdk-7-jre-headless \
        openjdk-7-jre \
        openjdk-7-jre-headless \
        oracle-java8-jre
    )

    for deb_packages in  ${DEB_PACKAGES[*]}; do
        sudo apt-get install $deb_packages
    done
    sudo apt-get -f install
}

function atom_pkgs
{
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
}

# Chamada das funções
source_lists
install_deb
atom_pkgs
