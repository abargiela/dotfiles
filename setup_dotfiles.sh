#!/bin/bash
REPO_PATH="${HOME}/Documents/dotfiles/"

FILES=".bashrc .vimrc .tmux.conf .fluxbox .i3"

for i in ${FILES}; do
    unlink  ${HOME}/${i}
    mv  ${HOME}/.${i}   ${HOME}/${i}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    ln -s   ${REPO_PATH}/${i}   ${HOME}/
done
