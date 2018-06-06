#!/bin/bash
REPO_PATH="${HOME}/Documents/dotfiles/"

FILES=".bashrc .vimrc .tmux.conf .fluxbox .i3"

for i in ${FILES}; do
    if [[ -h ${HOME}/${i} ]];then
        unlink ${HOME}/${i}
    fi 

    if [[ -f ${HOME}/${i} ]]; then
        mv  ${HOME}/${i} ${HOME}/${i}.bkp-$(date '+%Y-%m-%d_%H-%M-%S')
    fi

    ln -s ${REPO_PATH}/${i} ${HOME}/
done
