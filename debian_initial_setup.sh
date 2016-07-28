#!/bin/bash

function source_lists
{
  REPO_PATH="/etc/apt/sources.list.d"
  echo "deb http://download.virtualbox.org/virtualbox/debian jessie contrib" > ${REPO_PATH}/vbox.list
  echo "deb https://apt.dockerproject.org/repo debian-jessie main" > ${REPO_PATH}/docker.list
  echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > ${REPO_PATH}/google-chrome.list
  echo "deb http://httpredir.debian.org/debian/ jessie main contrib" > ${REPO_PATH}/java.list
#echo "" > ${REPO_PATH}
}

function install_deb
{
apt-get update
DEB_PACKAGES=(
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
    apt-get install $deb_packages
done
sudo apt-get -f install
}

source_lists
install_deb
