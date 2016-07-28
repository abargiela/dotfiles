#!/bin/bash

function source_lists
{
  REPO_PATH="/etc/apt/sources.list.d"
  sudo echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" |sudo tee -a ${REPO_PATH}/vbox.list
  sudo echo "deb https://apt.dockerproject.org/repo debian-jessie main"  |sudo tee -a ${REPO_PATH}/docker.list
  sudo echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" |sudo tee -a ${REPO_PATH}/google-chrome.list
  sudo echo "deb http://httpredir.debian.org/debian/ jessie main contrib" |sudo tee -a ${REPO_PATH}/java.list
  
#echo "" > ${REPO_PATH}
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
                xscreensaver \
                terminator  \
                xautolock \
                feh \
                thunar \
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

source_lists
install_deb
