#!/bin/bash

##############################################
# Usage: ./debian_initial_setup.sh your_user #
##############################################

ME=$1

if [[ -z ${ME} ]]; then
    ME=${USER}
fi

function source_lists
{
    LIST=(
          'deb http://download.virtualbox.org/virtualbox/debian jessie contrib'
          'deb https://apt.dockerproject.org/repo debian-jessie main'
          'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main'
          'deb http://httpredir.debian.org/debian/ jessie main contrib'
          )
    REPO=(
          vbox.list
          docker.list
          google-chrome.list
          java.list
         )

    #Gets arrays position
    counter=0
    while [[ $counter -le ${#LIST[@]} ]]; do
      for list in "${LIST[$counter]}"; do
        echo list
          for repo in "${REPO[$counter]}"; do
               echo "$list" | sudo  tee "/etc/apt/sources.list.d/$repo"
            done
        done
        let counter+=1
    done
}

function install_deb
{
    sudo apt-get -qq update

    #test and insall atom
    dpkg -l atom ; test $? == 1 &&  wget  --progress=bar -c https://atom.io/download/deb && sudo dpkg -i deb || echo "Atom already installed"
    #sudo wget  --progress=bar -c https://atom.io/download/deb && sudo dpkg -i deb

    DEB_PACKAGES=(
                  #atom \
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
    echo "Instalando pacotes..."

    for deb_packages in  ${DEB_PACKAGES[*]}; do
          dpkg -l $deb_packages ; test $? == 1 && sudo apt-get -qqy install $deb_packages || echo "Package alreay installed"
    done

    sudo apt-get -qqf install
}

function atom_pkgs
{
    sudo apt-get -yq install shellckeck

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
            sudo -u "${ME}" "apm install $packages"
        fi
    done
}

# Chamada das funções
source_lists
install_deb
atom_pkgs
